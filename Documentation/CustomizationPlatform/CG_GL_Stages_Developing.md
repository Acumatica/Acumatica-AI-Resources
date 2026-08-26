# To Develop a Customization Project {#_df3b1865-51dd-46fe-8d83-d0a421150c16 .concept}

During the development stage, you develop the customization, which involves implementing your planned changes by using the framework and tools provided by the Acumatica Customization Platform.

**Attention:** We recommend that a separate application instance be used for each developer working on a single project or group of projects. Multiple developers should not work simultaneously with the same project or projects. The customization scope should be divided among the developers on a separate areas so each developer works with a separate application instance. The created customization projects can be sequentially imported into the customer's production environment and applied as if all the divided tasks had been resolved as a single common one.

Follow this recommended workflow during the development process:

1.  In your application instance, create a new customization project or select an existing one.
2.  Open the project in the [Customization Project Editor](../UserGuide/SM_20_45_10.md).
3.  Perform the customization steps, such as:

    -   Add a UI element. See [Customizing Elements of the User Interface](CG_GL_UI.md) for details.
    -   Extend the business logic. See [Customizing Business Logic](CG_GL_BL.md) and [Customizing the Database Schema](CG_GL_DBSchema.md) for details.
    -   Customize the database. See [Customizing the Database Schema](CG_GL_DBSchema.md) for details.
    After completing each step, validate the changes you have performed.

4.  Debug your customization project. See [To Debug the Customization Code](CG_Troubleshooting_ToDebug.md) for details.
5.  Publish the project. See [Publishing Customization Projects](CG_GL_Projects_Publishing.md) for details.
6.  Test the customized application instance.

You develop and maintain customization projects by using the [Customization Tools](CG_Platform_Tools.md) of Acumatica Customization Platform. The platform provides the mechanisms to develop and publish customization projects. After the customization project is ready, you prepare the deployment package to distribute the customization project to the staging or production environment \(see [Deployment of a Customization Result](CG_Platform_Project_Deployment.md) for details\).

**Parent topic:**[Getting Started](../CustomizationPlatform/cg_gettingstarted.md)

