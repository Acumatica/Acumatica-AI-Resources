# Project Templates and Common Tasks: General Information {#_d14cd111-2ac9-4e6e-a687-fa3ccdaa1e16 .concept}

In Acumatica ERP, you can create project templates from scratch by adding every detail that you think will be required for a typical project of specific type. Alternatively, you can create a template based on an existing project which you think is a typical representative of projects of specific type.

When users create projects based on the templates, they can change any settings for particular projects—templates are used only to provide the default settings, thus making the project creation easier for users.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create a project template based on a project
-   Create a project template from scratch
-   Create a project based on the project template
-   Create a common task and add this task to a project

## Applicable Scenarios { .section}

You create project templates and common tasks if you need to ease the creation of typical projects and typical tasks for existing projects, respectively.

## Templates Created from Existing Projects { .section}

If you need to quickly create a new project based on the existing project, you can create a copy of the project by clicking **Copy Project** on the More menu of the [Projects](PM_30_10_00.md) \(PM301000\) form. If you plan to use some specific types of project in future, you create a project template based on an existing project and then use this template to create new projects of the type.

On the [Projects](PM_30_10_00.md) form, you select a project that is a typical project of specific type and click **Create Template** on the More menu. The system will create a project template and include the project template tasks in this project template. You can modify the settings of the created template. Also, you can delete some of the tasks or add new tasks.

## Templates Created from Scratch { .section}

A project template is an entity that you select when creating a new project to auto-populate the budget, settings, and attributes of the project with default values that are appropriate for projects of the type. In the created project, you can override the default values that have been inserted based on the project template, if needed.

You can create project templates from scratch on the [Project Templates](PM_20_80_00.md) \(PM208000\) form.

**Tip:** Project templates are not used for grouping or classification of projects. You use them solely for providing the default values in the projects that are created based on these templates. If you need to categorize projects, create project groups on the [Project Groups](PM_20_25_00.md) \(PM202500\) form. You can then assign project groups as follows:

-   To project templates on the **Summary** tab of the [Project Templates](PM_20_80_00.md) form
-   To individual projects on the **Summary** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form

When you create a project template, you can specify as many settings as you want, including the following:

-   General information: The broad information about the projects, including the default GL accounts and subaccounts and billing period. In the **Status** box on the Summary area of the form, you can see whether the specific project template is available for creating new projects. You can create projects only by using project templates with the *Active* status.
-   Visibility settings: The list of functional areas where the projects based on this template will be visible.
-   Template tasks: The tasks to be included in the projects based on this template.
-   List of employees: The employees who will work on the projects and the project manager who will be monitoring projects of the type. You also specify labor items and hourly rates for employees working on this project. Also, you can specify whether only the listed employees can work for the project \(by selecting the **Restrict Employees** check box on the **Summary** tab\).
-   List of equipment: The equipment to be used for the projects with appropriate non-stock items designating setup, run, and suspend rates and respective prices specific for projects of the type. You can specify whether only the listed equipment can be used for these projects.
-   Notes and files: Supplementary documents and notes to be provided with a project created based on the template. If the *Project Quotes* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the files and notes attached to a project template are also copied to the projects that are created from project quotes based on this project template.

The settings specified for the project template are copied to each project created based on this project template.

## Template Tasks { .section}

A project template may include project tasks that are actually templates of tasks that can be included in projects based on the template. You can add project task templates to the project template.

You add the project tasks to the project template and specify the settings for these tasks by using the [Project Template Tasks](PM_20_80_10.md) \(PM208010\) form. When you create a new template task, you can specify whether it is automatically included in all projects based on the project template.

Template task settings include the following:

-   General settings: You can specify overall information about the task, including approver, tax category, default accounts and subaccounts, and billing period. The general settings also include visibility settings, the list of functional areas in which this project task must be visible. You can make tasks visible only in the functional areas in which the parent project is visible—the scope for the task cannot be wider than the scope for the project.
-   Recurring billing settings: Recurring billing can be used to implement the flat-price scenario with recurring payments when your future project uses flat rates for services or products you provide to your customer regularly. For more information about recurring billing, see [Project Billing Preparation: Recurring Billing](Projects_Project_Billing_Preparation_Recurring_Billing.md).
-   Notes and files: You can attach supplementary documents and notes to be attached to a project task created based on this template task. If the *Project Quotes* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, files and notes attached to a project template are also copied to the project tasks added to project quotes based on this project template.

The settings specified for the project template task are copied to the project tasks created based on this project template. If any of these settings are not specified in the project template task, the system copies the respective values from the project template.

## Common Tasks { .section}

Common tasks are also templates of tasks, but they are not linked to any specific project or project template. You can add common tasks to any new or existing project and project quote. You create common tasks on the [Common Tasks](PM_20_80_30.md) \(PM208030\) form. Generally, you provide the same types of settings for common tasks as for the template tasks: general, budget, and recurring billing settings.

The settings specified for the common task are copied to the project tasks created based on this common task. If any of these settings are not specified in the common task, the system copies the respective values from the project template specified for the project.

## Ability to Add User-Defined Fields to Project-Related Forms { .section}

User-defined fields are site-specific elements that have been defined to track information deemed as important to the organization. If your user account has the *Administrator* or *Customizer* role, you can add user-defined fields to project-related forms, such as [Project Templates](../Shared/../UserGuide/PM_20_80_00.md) \(PM208000\), [Project Quotes](../Shared/../UserGuide/PM_30_45_00.md) \(PM304500\), [Projects](../Shared/../UserGuide/PM_30_10_00.md) \(PM301000\), [Project Template Tasks](../Shared/../UserGuide/PM_20_80_10.md) \(PM208010\), or [Project Tasks](../Shared/../UserGuide/PM_30_20_00.md) \(PM302000\).

Suppose that you've added user-defined fields and specified their values in a project template on the [Project Templates](../Shared/../UserGuide/PM_20_80_00.md) form. When you create a project on the [Projects](../Shared/../UserGuide/PM_30_10_00.md) form and select this template, the system copies the template’s values of shared user-defined fields to the project.

Similarly, you can add user-defined fields to the [Project Template Tasks](../Shared/../UserGuide/PM_20_80_10.md) and [Project Tasks](../Shared/../UserGuide/PM_30_20_00.md) forms and specify their values in a template task. If a project template includes this template task, the system copies the values of its user-defined fields to each project task created from the task template.

For details, see [Adjustment of the Acumatica ERP UI: Managing User-Defined Fields](../Shared/../UserGuide/GS_Personalization_UI_User_Defined_Fields.md).

**Parent topic:**[Creating Project Templates and Common Tasks](../UserGuide/Projects_Templates_Mapref.md)

