# Scales: General Information {#_9bf9b785-d516-49af-b013-b729ee530dd3 .concept}

If the DeviceHub application is installed and configured for use with the Acumatica ERP instance, a system administrator can configure the digital scale devices to be used in automated warehouse operations.

This topic describes the use of scales in Acumatica ERP, as well as the way you can specify a default scale for a user account.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Configure a digital scale in DeviceHub
-   Review results of weighing results in Acumatica ERP
-   Add the results of weighing to a package

## Supported Devices { .section}

The scale for use with DeviceHub must be HID-compliant and enumerate as a scale under the HID class specification.

## Implementation Workflow { .section}

To implement the ability to weigh packages with DeviceHub in Acumatica ERP, you perform the following general steps, as described in [Scales: To Add a Scale to DeviceHub](DeviceHub_To_Add_a_Scale_Implem_Activity.md):

1.  In DeviceHub, you add the scales.
2.  In Acumatica ERP, you specify user settings for weighing packages on the [Pick, Pack, and Ship](../UserGuide/SO_30_20_20.md) \(SO302020\) form.

## Scales in Acumatica ERP { .section}

When a user puts a package on a digital scale, DeviceHub automatically sends the result of weighing to Acumatica ERP. You can review this result in the **Last Weight** column on the [Scales](../UserGuide/SM_20_65_30.md) \(SM206530\) form.

When a user processes a package in Pack mode on the [Pick, Pack, and Ship](../UserGuide/SO_30_20_20.md) \(SO302020\) form, the system can automatically insert the weighing result into the **Weight** box in the **Package Content** table on package confirmation. To achieve this result, the user needs to select the **Use Digital Scale** check box in the **Settings** dialog box on the [Pick, Pack, and Ship](../UserGuide/SO_30_20_20.md) form and save their settings.

The user can also process packages for shipments on the [Shipments](../UserGuide/SO_30_20_00.md) \(SO302000\) form. In this case, the user selects a package in the upper table of the **Packages** tab of this form and clicks **Capture Weight** on the table toolbar. The system inserts the weighing result of the default scale of the user account into the **Weight** column of this table.

Additionally, the user can specify the weight of a package in the **Shop for Rates** dialog box on the [Shipments](../UserGuide/SO_30_20_00.md) form before they get the carrier rates. To perform this operation, the user adds the packages to the **Packages** table in the dialog box, selects a package, and clicks the **Capture Weight** button on the table toolbar. The system inserts the weighing result of the default scale of the user account into the **Weight** column of this dialog box.

## A User Account’s Default Scale {#section_vv2_1y4_y4b .section}

A user can specify the default digital scale device to be used in automated warehouse operations for their own user account on the [User Profile](../UserGuide/SM_20_30_10.md) \(SM203010\) form. In the **Personal Settings** section of the **General Info** tab, they specify a configured device in the **Default Scales** box.

**Parent topic:**[Configuring Digital Scales](../ImplementationGuide/Config_Scales_DeviceHub_Mapref.md)

