## SOAVirt Demo Examples
Repo: https://github.com/whaaker/SOAVirtDemoExamples

### Instructions to import into a clean SOAtest/Virtualize Workspace:
1. Launch SOAtest/Virtualize and point to a newly created folder.
2. Delete the default ProvisioningAssets, TestAssets, and VirtualAssets projects, including from disk.
3. Import > Projects from Git > ... > Import Existing Eclipse Projects > [Select all projects in table]
	- If you do not wish to edit files outside of these Projects, like .gitignore or README.md, then you do not need to import the SOAVirtDemoExamples Project.  You can just import the ProvisioningAssets, TestAssets, and VirtualAssets Projects.
	- If you do wish to edit files from the root directory of the repo that start with '.' then you have to click the 3 dots in Project Explorer > Filters and Customization... > uncheck .* resources.
