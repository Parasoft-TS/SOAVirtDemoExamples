## SOAVirt Demo Examples
Repo: https://github.com/whaaker/SOAVirtDemoExamples

### Instructions to import into a clean SOAtest/Virtualize Workspace:
1. Launch SOAtest/Virtualize and point to a newly created folder.
2. Delete the default ProvisioningAssets, TestAssets, and VirtualAssets projects, including from disk.
3. Import > Projects from Git > ... > Import Existing Eclipse Projects > [Select all projects in table]
	- If you wish to edit files from the root directory of the repo that start with '.' then you have to click the 3 dots in Project Explorer > Filters and Customization... > uncheck .* resources.
4. Import parasoft_preferences.properties for JDBC Driver setup to be able to run DB Tools for Parabank tests.
5. Create "OAuth2" data repository database in Embedded Server and import from DataRepo_exports to be able to run Auth example tests.