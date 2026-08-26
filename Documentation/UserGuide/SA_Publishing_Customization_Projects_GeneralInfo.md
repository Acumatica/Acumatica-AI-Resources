# Customization Projects: General Information {#_501b6ecb-ee2d-4251-9bf8-dfc148a29df6 .concept}

A customization project is a set of changes to the user interface, metadata, and functionality of Acumatica ERP that you develop by using the Acumatica Customization Platform. An instance of Acumatica ERP consists of the website and the database, and you can use the platform to customize both of these components.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Import deployment packages to a tenant
-   Publish multiple customization projects to an instance
-   Unpublish the projects

## Applicable Scenarios { .section}

You may need to manage customization projects if your company requires changes to the user interface, metadata, or functionality of Acumatica ERP. These customization projects can be developed in-house or purchased from a third-party vendor who produces complementary solutions for Acumatica ERP.

## Development and Deployment of Customization Projects { .section}

To customize the user interface or to extend the business logic, a developer creates and maintains customization projects by using the tools and capabilities of the Acumatica Customization Platform. This platform provides the mechanisms to develop, upgrade, publish, unpublish \(that is, cancel publication\), export, and import a customization project.

After a customization project is ready, it is exported as a deployment package. A deployment package is a redistributable zip file that includes the full content of a customization project. The deployment package can then be imported and published as a customization project on the system.

## Import of Deployment Packages { .section}

To import a deployment package for getting access to the project data and updating the system with the changes in the customization project, click the **Import** button on the form toolbar of the [Customization Projects](SM_20_45_05.md) \(SM204505\) form. The system opens the **Open Package** dialog box, where you select the file and then click **Upload**. The system uploads the package, creates the corresponding customization project, and saves the project in the database. You can view the list of available customization projects on this form, including the project that you have imported.

## Update of Imported Packages { .section}

You may receive an updated version of a deployment package that you have already imported into the system. In this case, you import the new version by clicking **Replace Highlighted Project Content** on the More menu \(under **Import**\) of the [Customization Projects](SM_20_45_05.md) \(SM204505\) form. The system replaces the package and the customization project, and saves the updated project in the database.

To apply the updated project to the system, you need to publish all projects that need to be published.

## Publication of Customization Projects { .section}

Multiple customization projects are often applied to an Acumatica ERP application instance. The information about each published customization project is displayed in the lower right corner of the Sign-In page and in the **About Acumatica** dialog box \(which opens when you click **Settings** &gt; **About** on the form title bar\).

**Attention:** We recommend that you back up the database before you publish customization projects, because unpublishing a project does not revert the changes made to the database. Also, it is safer to perform the publication outside the business hours. If a customization project changes the application code, after the publication is complete, the system will restart the application.

On the [Customization Projects](SM_20_45_05.md) \(SM204505\) form, you select the projects that you would like to apply to the instance and click **Publish** on the form toolbar.

If you want to publish a new customization project in addition to the previously published projects and you would like to keep these projects published, you should select them as well. The published projects have the **Published** check box selected in the table on the form.

During the publication process, the system unpublishes all previously published projects and merges the code of the projects selected for publication into a single customization project. Then the system validates and compiles the customization code included in the project. If there are any validation errors, the system displays the error messages on the webpage and stops the publication process. If the compilation completes successfully, you click **Publish** in the **Compilation** dialog box to apply the changes contained in the project to the website. The system will warn you if active users will be signed out after publication completes. Wait for the *Website updated* message \(in green type\), and close the **Compilation** dialog box.

**Tip:** If validation fails, contact the support service of the customization vendor.

During the publication, the system applies the changes to the application and database objects of the tenant to which you are currently signed in. The system then updates the files in the website folder as follows:

-   The custom layout is applied to the forms of Acumatica ERP.
-   Files with custom code are generated and placed in the file system.
-   The custom files of the project \(for example, new icons or other images\) are added to the website folder.
-   The custom tables are created in the database, and the custom SQL scripts are executed.
-   The custom generic inquiries, reports, workspaces, forms, system locales, integration scenarios, shared reusable filters, access rights, wikis, web service endpoints, user-defined fields, and analytical reports are added to the database.

After the customization project has been published, users see the modified Acumatica ERP instance.

## Application of Access Rights {#section_wgy_gvj_31c .section}

Typically, a developer uses the [Access Rights](AU_20_52_00.md) page of the Customization Project Editor to explicitly specify access rights for the added or customized system objects in a customization project. If this step is not taken, the system applies the following rules when the customization project is being published:

-   If a site map node does not exist in the target instance, the site map node will not be available for any roles; the access rights will be set to *Revoked*. That is, after the customization has been published, you should grant the access rights explicitly.
-   If a site map node is already on the target instance, the existing access rights remain unchanged.

For details on configuring access rights for a customization package, see [To Add Access Rights to a Project](../CustomizationPlatform/CG_GL_Items_AccessRights_Adding.md).

## Execution of Custom SQL Scripts { .section}

A customization project may include custom SQL scripts that introduce changes to the database. When the system publishes a project that contains a database script, it executes the script and tries to avoid the execution of the script at every publication of the project for optimization purposes. Therefore, the system keeps information about each script that has been executed one time and has not yet been changed in the database, and omits the repeated execution of these scripts.

If the changes introduced by the scripts have been manually deleted or modified, you can force the system to run the previously executed scripts again to restore the initial changes. On the [Customization Projects](SM_20_45_05.md) \(SM204505\) form, you select all the customization projects you need to publish and click **Publish to Multiple Tenants** on the More menu \(under **Publish**\). In the **Publish to Multiple Tenants** dialog box, which opens, you select the tenant of the instance, select the **Execute All Database Scripts \(Including Previously Executed\)** check box, and then click **OK**. The system removes all the information about previously executed scripts of the customization project and executes each script while publishing the selected projects.

## Rollback of Customization Projects { .section}

Each time you publish a customization project, the system unpublishes all previously published projects that were not selected for publication.

You can unpublish all published customization projects at once by clicking **Unpublish All** on the More menu of the [Customization Projects](SM_20_45_05.md) \(SM204505\) form \(under **Publish**\). You can instead unpublish a set of selected projects or only one project. To unpublish unneeded projects, you publish all other projects without selecting the check boxes for the projects that are not needed.

During the unpublishing of customization projects, the system reverses the changes introduced by the customization as follows:

-   The forms of Acumatica ERP return to their original layout.
-   The files of the project with customization code are removed from the website folder in the file system.
-   The custom files of these projects are removed from the website folder on the file system.

The following changes are not reversed during the unpublishing of customization projects:

-   Database changes remain in the database. Thus, the generic inquiries, reports, changes to the site map, custom tables, custom database objects, and custom data remain in the database. Changes to the site map, which determines the workspaces in Acumatica ERP where forms and reports are located, remain. If you need to remove these changes, you must do so manually.
-   The SLN file of the integrated Microsoft Visual Studio solution and its projects \(if any\) remain in the file system. However, the customization code of the unpublished customization project and the external files added to the customization project are removed from the solution.

For example, if a customization project introduces a new report, after you publish and unpublish the project, the report stays in the database and remains available in the application, so you need to remove it manually.

There is no difference in the unpublishing process for a single-tenant site and a multitenant site: The platform deletes the same files in the file system and keeps all the changes in the database.

## Publication in Acumatica ERP and on the Self-Service Portal {#section_tlx_mdn_t5b .section}

You can publish a customization project on the [Customization Projects](../Shared/../UserGuide/SM_20_45_05.md) \(SM204505\) form of Acumatica ERP and the Self-Service Portal. Although Acumatica ERP and the Self-Service Portal share a database, customization projects published on the Self-Service Portal are independent from the Acumatica ERP instance due to a special column in the database tables that store customization items. This column identifies whether each customization item belongs to Acumatica ERP or to the Self-Service Portal.

When you unpublish a customization project, the system unpublishes all customization projects from Acumatica ERP or the Self-Service Portal, and it removes only those customization items that are related to the site where you are performing unpublishing. This means that if you unpublish customization projects in Acumatica ERP, all customization projects published in the Self-Service Portal will remain in the database. Similarly, when you unpublish projects in the Self-Service Portal, projects in Acumatica ERP will remain in the database.

**Parent topic:**[Publishing Customization Projects](../UserGuide/SA_Publishing_Customization_Projects_Mapref.md)

