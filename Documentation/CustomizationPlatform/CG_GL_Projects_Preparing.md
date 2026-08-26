# To Prepare a Project for Publication {#_b46ba682-01af-42ff-bd94-c5b4d3d5c066 .task}

Before you publish a customization project, we recommend that you make sure you have included all the needed changes in the customization project.

To do this, you should take the following actions:

1.  Make sure that you have added all custom files to the project and uploaded the latest version of the files to the project.
2.  Make sure that the database schema is updated in the customization project. You may have modified custom tables by using a database management tool, such as SQL Management Studio. On the page toolbar of the Database Scripts page, click **Reload from Database**. This action regenerates the database table schema of the custom tables.
3.  Open the Site Map page, make sure that you have added the needed site map nodes to the project. If you have modified the site map nodes after you have added them to the project, click **Reload from Database** to update the customization project.
4.  Make sure that all other objects \(such as generic inquiries, system locales, integration scenarios, shared reusable filters, access rights, wikis, web service endpoints, analytical reports, push notifications\) are updated in the project. If an object was changed in the application instance, open the appropriate page of the [Customization Project Editor](../UserGuide/SM_20_45_10.md), and click **Reload from Database** on the page toolbar to update the corresponding item in the project. \(See [To Update a Project](CG_GL_Projects_Updating.md) for details.\)

**Parent topic:**[Publishing Customization Projects](../CustomizationPlatform/CG_GL_Projects_Publishing.md)

