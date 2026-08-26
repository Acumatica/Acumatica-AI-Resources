# To Perform Final Testing of a Customization {#_3cd8d33a-fd91-4b92-9620-a3e488e90e19 .concept}

After you finished developing your customization, you test it in the staging environment, which can be a local copy of the production environment. The staging environment must include a copy of the production database.

To apply the customization to the staging environment, you have to do the following:

1.  Export the deployment package of the customization project in the development environment. See [To Export a Project](CG_GL_Projects_Deploying_Exporting.md) for details.
2.  Prepare the staging environment in accordance with [System Requirements for the Acumatica ERP Installation](../UserGuide/INST_Preparing_Installation_System_Requirements.md).
3.  In the staging environment, install a version with the same Acumatica ERP version number that is used in the production environment \(see [Installing Acumatica ERP On-Premises](../UserGuide/INST_Installing_Locally_Mapref.md) for details\). All further actions must be performed in the staging environment.
4.  Copy the deployment package file to the system where the staging environment was prepared.
5.  Start the application instance.
6.  Import the project. See [Project Publication: To Deploy a Customization Project](CustomizationProjects_PublishingProjects_Activity_DeployProject.md) for details.
7.  Explore the project content. Ensure that the project items contain appropriate data.
8.  Publish the project. See [Publishing Customization Projects](CG_GL_Projects_Publishing.md) for details.
9.  Test the customization.

If you have developed a complex project for an application with multiple customization projects published and you can't address some issues that have emerged during this stage, try to perform the original installation with all previous updates, and then upload the saved content of the current project to the staging environment.

**Parent topic:**[Getting Started](../CustomizationPlatform/cg_gettingstarted.md)

