# Project Unpublishing: General Information {#_f615b416-8313-4439-ae98-14fbb1edefce .concept}

If the changes that you have made to the website are no longer required, you can revert them by unpublishing your customization project or projects.

## Learning Objectives { .section}

In this chapter, you will learn how to unpublish customization projects.

## Applicable Scenarios { .section}

You unpublish customization projects in the following cases:

-   You have published multiple customization projects, and you want to unpublish all of them
-   You have published multiple customization projects, and you want to unpublish only certain projects

## Rollback of Changes Made by Customization Projects { .section}

Each time you publish a customization project or multiple projects, the system unpublishes all previously published projects that were not selected for publication. Thus, you can also unpublish any number of projects. To unpublish unneeded projects, you publish all other projects without the projects that you want to unpublish.

During the unpublishing of a customization project, the system reverses the changes that have been introduced by the customization as follows:

-   Any Acumatica ERP forms customized within the project return to their original layout, workflow, and functionality.
-   The files of the project with customization code are removed from the website folder in the file system.
-   The custom files of the project are removed from the website folder on the file system.

Note the following points regarding the changes that are not reversed during the unpublishing of a customization project:

-   Database changes remain in the database. Thus, the database still holds any generic inquiries, reports, changes to the site map, custom tables, custom database objects, and custom data from the customization project.

    Also, changes to the site map remain in the navigation menu of Acumatica ERP. If you need to remove these changes, you must do so manually.

-   The `.sln` file of the integrated Microsoft Visual Studio solution and any projects remain in the file system.

    However, the customization code of the unpublished customization project and the external files added to the customization project are removed from the solution.


For example, if a customization project introduces a new report, after you publish and unpublish the project, the report stays in the database and remains available in the application, so if you want it to be deleted, you need to remove it manually.

There is no difference in the unpublishing process for a single-tenant site and a multitenant site: The platform deletes the same files in the file system and keeps all the changes in the database.

When you unpublish a customization project that contains system-wide configuration of a form, this system-wide form configuration stays in place. You can reverse these modifications only in UI Configuration mode \(by clicking **Reset to Default** on the UI Configuration pane\).

## Steps to Unpublish a Customization Project or Multiple Projects {#section_vv2_1y4_y4b .section}

If there are multiple customization projects published in an instance of Acumatica ERP, you can unpublish all of these projects or some of them.

To unpublish all customization projects, you perform the following general steps:

1.  You open the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form.
2.  On the form toolbar, you click **Unpublish All**.

The system removes all published customization projects from the Acumatica ERP instance.

To unpublish some of the customization projects, you perform the following general steps:

1.  You open the [Customization Projects](../UserGuide/SM_20_45_05.md) form.
2.  In the list of customization projects, you select the check boxes for the projects that you want to remain published, and clear the check boxes for the unnecessary projects.
3.  On the form toolbar, you click **Publish**.

The system removes all published customization projects from the Acumatica ERP instance, merges the content of the customization projects that are currently selected on the form, and applies the merged content to the instance.

**Parent topic:**[Unpublishing Customization Projects](../CustomizationPlatform/CustomizationProjects_UnpublishingProjects_Mapref.md)

