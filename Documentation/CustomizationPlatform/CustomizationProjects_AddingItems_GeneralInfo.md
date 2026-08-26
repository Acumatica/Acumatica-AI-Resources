# Customization Items: General Information {#_3868cf66-0a05-436e-b0b4-62e79bea6d1f .concept}

You start customizing Acumatica ERP forms by adding the appropriate customization items to the customization project. A customization item is a programming or non-programming component of a customization project.

For each type of customization item that a customization project can include, the Customization Project Editor provides a page you can use to add or modify one of these items.

## Learning Objectives { .section}

In this chapter, you’ll learn how to add items to your customization project and how to update these items in the project.

## Applicable Scenarios { .section}

You add customization items to a customization project when you need to make certain modifications to these items. You update these items if the items have been updated outside of the project \(for example, in an Acumatica ERP instance or in the database\).

## Addition and Update of Items in a Customization Project { .section}

You add items to a customization project by using the Customization Project Editor, which has separate pages that you use to add and manage each type of customization items in the currently opened customization project.

To add an item to the customization project, you open the page that corresponds to the type of item you want to add. Then on the page, you add a new item or an item that already exists in the system.

When you modify an object \(such as a generic inquiry, report, or dashboard\) that has been added to the customization project, information about the object is saved only to the instance database. So after modifying the object, you have to update the corresponding customization item so that the changes are saved to the customization project.

## Adding UI Configurations {#section_cwx_cz3_2gc .section}

In Acumatica ERP, users can easily personalize forms to meet their needs, and administrators can perform system-wide configuration. A *form configuration* is a set of these changes to a particular form. You can incorporate any form configuration in a customization project as a *UI configuration*. You do this by using the [UI Configurations](../UserGuide/AU_23_00_10.md) page of the Customization Project Editor.

A form configuration \(and the corresponding UI configuration\) can include such changes as the following on the Acumatica ERP form:

-   The visibility and order of tabs
-   In tables, the visibility, order, width, and tab stops of columns
-   Boxes’ visibility, order, tab stops, and visibility in collapsed state
-   The captions of groups of elements \(fieldsets\); you can also add and remove their available elements
-   The addition of user-defined fields to a form and the location of each field

Below you can see an added UI configuration for the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form.

![](images/CustomizationProjects_ConfiguringFormLayout_AddedSavedUIConfig.png "The added UI configuration")

You may have previously configured user-defined fields and added them while personalizing the form. These fields are automatically added to the [User-Defined Fields](../UserGuide/AU_23_00_00.md) page of the Customization Project Editor when you add the form configuration on the [UI Configurations](../UserGuide/AU_23_00_10.md) page. For details on how to add user-defined fields, see [User-Defined Fields in Customization Projects: General Information](CustomizationProjects_AddingUserDefinedFields_GeneralInfo.md).

**Parent topic:**[Adding Customization Items to Customization Projects](../CustomizationPlatform/CustomizationProjects_AddingItems_Mapref.md)

