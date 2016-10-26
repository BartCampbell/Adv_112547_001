SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--	cnm_getProvidersOrChase 0,0,0,107,0,0,1,59,'',''
Create PROCEDURE [dbo].[cnm_getProvidersOrChase] 
	@Channel VARCHAR(1000),
	@Projects varchar(1000),
	@ProjectGroup varchar(1000),
	@office int,
	@provider int,
	@providerList int,
	@User int,
	@ChartStatus int,
	@Sort Varchar(150),
	@Order Varchar(4)
AS
BEGIN
	-- PROJECT/Channel SELECTION
	CREATE TABLE #tmpProject (Project_PK INT)
	CREATE INDEX idxProjectPK ON #tmpProject (Project_PK)

	CREATE TABLE #tmpChannel (Channel_PK INT)
	CREATE INDEX idxChannelPK ON #tmpChannel (Channel_PK)

	IF Exists (SELECT * FROM tblUser WHERE IsAdmin=1 AND User_PK=@User)	--For Admins
	BEGIN
		INSERT INTO #tmpProject(Project_PK) SELECT DISTINCT Project_PK FROM tblProject P WHERE P.IsRetrospective=1
		INSERT INTO #tmpChannel(Channel_PK) SELECT DISTINCT Channel_PK FROM tblChannel 
	END
	ELSE
	BEGIN
		INSERT INTO #tmpProject(Project_PK) SELECT DISTINCT Project_PK FROM tblUserProject WHERE User_PK=@User
		INSERT INTO #tmpChannel(Channel_PK) SELECT DISTINCT Channel_PK FROM tblUserChannel WHERE User_PK=@User
	END

	IF (@Projects<>'0')
		EXEC ('DELETE FROM #tmpProject WHERE Project_PK NOT IN ('+@Projects+')')
		
	IF (@ProjectGroup<>'0')
		EXEC ('DELETE T FROM #tmpProject T INNER JOIN tblProject P ON P.Project_PK = T.Project_PK WHERE ProjectGroup_PK NOT IN ('+@ProjectGroup+')')
		
	IF (@Channel<>'0')
		EXEC ('DELETE T FROM #tmpChannel T WHERE Channel_PK NOT IN ('+@Channel+')')			 
	-- PROJECT/Channel SELECTION

	IF (@providerList=1)
	BEGIN
		SELECT S.Provider_PK,
				ROW_NUMBER() OVER(
				ORDER BY 
					CASE WHEN @Order='ASC'  THEN CASE @SORT WHEN 'CPI' THEN PM.Provider_ID WHEN 'P' THEN PM.Lastname+IsNull(', '+PM.Firstname,'') WHEN 'NPI' THEN PM.NPI WHEN 'A' THEN PO.Address WHEN 'PG' THEN PM.ProviderGroup WHEN 'Pr' THEN CASE WHEN COUNT(DISTINCT C.Channel_PK)=1 THEN MIN(C.Channel_Name) ELSE 'Multiple' END ELSE NULL END END ASC,
					CASE WHEN @Order='DESC' THEN CASE @SORT WHEN 'CPI' THEN PM.Provider_ID WHEN 'P' THEN PM.Lastname+IsNull(', '+PM.Firstname,'') WHEN 'NPI' THEN PM.NPI WHEN 'A' THEN PO.Address WHEN 'PG' THEN PM.ProviderGroup WHEN 'Pr' THEN CASE WHEN COUNT(DISTINCT C.Channel_PK)=1 THEN MIN(C.Channel_Name) ELSE 'Multiple' END ELSE NULL END END DESC,
					CASE WHEN @Order='ASC'  THEN CASE @SORT WHEN 'C' THEN Count(DISTINCT S.Suspect_PK) ELSE NULL END END ASC,
					CASE WHEN @Order='DESC' THEN CASE @SORT WHEN 'C' THEN Count(DISTINCT S.Suspect_PK) ELSE NULL END END DESC 
				) AS RowNumber,
				PM.Provider_ID,PM.Lastname+IsNull(', '+PM.Firstname,'') Provider,PM.NPI,PM.PIN [Plan Provider ID]
				,PO.Address,ZC.City,ZC.County,ZC.State,ZC.Zipcode,PM.ProviderGroup
				,Count(DISTINCT S.Suspect_PK) Charts,PM.Lastname,PM.Firstname,P.ProviderMaster_PK
				,CASE WHEN COUNT(DISTINCT C.Channel_PK)=1 THEN MIN(C.Channel_Name) ELSE 'Multiple' END Project
			FROM tblProviderOffice PO WITH (NOLOCK) 
				INNER JOIN tblProvider P WITH (NOLOCK) ON P.ProviderOffice_PK = PO.ProviderOffice_PK
				INNER JOIN tblProviderMaster PM WITH (NOLOCK) ON PM.ProviderMaster_PK = P.ProviderMaster_PK
				INNER JOIN tblSuspect S WITH (NOLOCK) ON S.Provider_PK = P.Provider_PK	
				INNER JOIN #tmpProject FP ON FP.Project_PK = S.Project_PK
				INNER JOIN #tmpChannel FC ON FC.Channel_PK = S.Channel_PK
				LEFT JOIN tblZipcode ZC WITH (NOLOCK) ON ZC.ZipCode_PK = PO.ZipCode_PK
				LEFT JOIN tblChannel C WITH (NOLOCK) ON C.Channel_PK = S.Channel_PK
		WHERE PO.ProviderOffice_PK = @office
		GROUP BY PM.Provider_ID,PM.Lastname,PM.Firstname,PM.NPI,PM.PIN
				,S.Provider_PK,PO.Address,ZC.City,ZC.County,ZC.State,ZC.Zipcode,PM.ProviderGroup,P.ProviderMaster_PK
	END
	ELSE
	BEGIN
		SELECT S.Suspect_PK,				
				ROW_NUMBER() OVER(
				ORDER BY 
					CASE WHEN @Order='ASC'  THEN CASE @SORT WHEN 'MID' THEN M.Member_ID WHEN 'HN' THEN M.HICNumber WHEN 'M' THEN M.Lastname+IsNull(', '+M.Firstname,'') WHEN 'CPI' THEN PM.Provider_ID WHEN 'P' THEN PM.Lastname+IsNull(', '+PM.Firstname,'') WHEN 'NPI' THEN PM.NPI WHEN 'A' THEN PO.Address WHEN 'PG' THEN PM.ProviderGroup WHEN 'CS' THEN CS.ChaseStatus WHEN 'LOB' THEN Pr.Project_Name WHEN 'Pr' THEN C.Channel_Name ELSE NULL END END ASC,
					CASE WHEN @Order='DESC' THEN CASE @SORT WHEN 'MID' THEN M.Member_ID WHEN 'HN' THEN M.HICNumber WHEN 'M' THEN M.Lastname+IsNull(', '+M.Firstname,'') WHEN 'CPI' THEN PM.Provider_ID WHEN 'P' THEN PM.Lastname+IsNull(', '+PM.Firstname,'') WHEN 'NPI' THEN PM.NPI WHEN 'A' THEN PO.Address WHEN 'PG' THEN PM.ProviderGroup WHEN 'CS' THEN CS.ChaseStatus WHEN 'LOB' THEN Pr.Project_Name WHEN 'Pr' THEN C.Channel_Name ELSE NULL END END DESC,
					CASE WHEN @Order='ASC'  THEN CASE @SORT WHEN 'DOB' THEN M.DOB ELSE NULL END END ASC,
					CASE WHEN @Order='DESC' THEN CASE @SORT WHEN 'DOB' THEN M.DOB ELSE NULL END END DESC 
				) AS RowNumber,
				S.ChaseID,M.Member_ID,M.HICNumber,M.Lastname+IsNull(', '+M.Firstname,'') Member,M.DOB
				,PM.Provider_ID,PM.Lastname+IsNull(', '+PM.Firstname,'') Provider,PM.NPI,PM.PIN [Plan Provider ID]
				,PO.Address,ZC.City,ZC.County,ZC.State,ZC.Zipcode,CS.ChaseStatus [Chase Status]
				,Pr.Project_Name LOB,C.Channel_Name Project
			FROM tblProviderOffice PO WITH (NOLOCK) 
				INNER JOIN tblProvider P WITH (NOLOCK) ON P.ProviderOffice_PK = PO.ProviderOffice_PK
				INNER JOIN tblProviderMaster PM WITH (NOLOCK) ON PM.ProviderMaster_PK = P.ProviderMaster_PK
				INNER JOIN tblSuspect S WITH (NOLOCK) ON S.Provider_PK = P.Provider_PK	
				INNER JOIN #tmpProject FP ON FP.Project_PK = S.Project_PK
				INNER JOIN #tmpChannel FC ON FC.Channel_PK = S.Channel_PK
				INNER JOIN tblMember M WITH (NOLOCK) ON M.Member_PK = S.Member_PK
				INNER JOIN tblProject Pr ON Pr.Project_PK = S.Project_PK
				LEFT JOIN tblChaseStatus CS WITH (NOLOCK) ON CS.ChaseStatus_PK = S.ChaseStatus_PK
				LEFT JOIN tblZipcode ZC WITH (NOLOCK) ON ZC.ZipCode_PK = PO.ZipCode_PK		
				LEFT JOIN tblChannel C WITH (NOLOCK) ON C.Channel_PK = S.Channel_PK
		WHERE (
			(@office>0 AND PO.ProviderOffice_PK = @office) OR 
			(@provider>0 AND P.Provider_PK = @provider) 
			) AND
			(@ChartStatus=-1 OR IsNull(S.ChaseStatus_PK,0)=@ChartStatus)
	END
END
GO
