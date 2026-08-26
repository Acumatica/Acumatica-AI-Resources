# Generic Inquiries in a Customization Project: General Information {#_77187376-b808-47bc-aa37-3a1d0073a084 .concept}

If you have developed a generic inquiry or customized a predefined one, you may want to use this generic inquiry in another Acumatica ERP instance. To do this, you need to include the information about this generic inquiry in a customization project. You can include any number of generic inquiries in a customization project.

**Tip:** After you have included all needed items in a customization project, you export the project as a ZIP file. In the target instance, you import the file and publish this customization project. For details about importing, exporting, and publishing customization projects, see [Managing Customization Projects](../Shared/../CustomizationPlatform/CG_GL_Projects.md) and [Publishing Customization Projects](../Shared/../CustomizationPlatform/CG_GL_Projects_Publishing.md).

## Learning Objectives { .section}

In this chapter, you will learn how to include a generic inquiry in a customization project.

## Applicable Scenarios { .section}

You include a generic inquiry in a customization project in the following cases:

-   You need to use this generic inquiry on another Acumatica ERP instance.
-   You have included in a customization project another Acumatica ERP entity that uses this generic inquiry, such as a push notification definition or a business event.

## Generic Inquiries in a Customization Project { .section}

To include the information about generic inquiries in a customization project, you use the [Generic Inquiries](AU_20_60_00.md) page of the Customization Project Editor.

For each generic inquiry you have included in a customization project, the system also automatically includes project information about the workspace to which the generic inquiry have been added in the UI, along with other information about the generic inquiry. You need to manually include access rights to each included generic inquiry on the [Access Rights](AU_20_52_00.md) page of the Customization Project Editor.

You can include generic inquiries in customization projects that are used for the Self-Service Portal as well.

**Parent topic:**[Including Generic Inquiries in a Customization Project](../UserGuide/GI_CustomizationProject_Mapref.md)

