# Vehicles: General Information {#_b31739ea-8156-4963-9380-acdc660940fb .concept}

In Acumatica ERP, you can enter information about all your company's vehicles.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create vehicle types
-   Create vehicles

## Applicable Scenarios { .section}

You enter and manage vehicle information in Acumatica ERP when you need to track and organize your company’s fleet.

## Vehicle Types {#section_p5k_wml_d2c .section}

Vehicle types are used to group vehicles with the same properties. When you add a vehicle type on the [Vehicle Types](../UserGuide/FS_20_42_00.md) \(FS204200\) form, you specify the identifier and a description of the type. On the **Attributes** tab, you can also specify any number of attributes that you want to track for the vehicles of the type. For attributes to be added on this tab, they must be defined on the [Attributes](../UserGuide/CS_20_50_00.md) \(CS205000\) form.

When you create a vehicle and assign a vehicle type on the [Vehicles](../UserGuide/FS_20_36_00.md) \(FS203600\) form, the system fills in the **Attributes** tab on this form with the attributes that have been specified for the vehicle type \(and any default values you have specified for the attributes\).

## Entering a Vehicle {#section_mtg_xml_d2c .section}

You use the [Vehicles](../UserGuide/FS_20_36_00.md) \(FS203600\) form to enter into the system the details about a particular vehicle of your company. For each vehicle you add, you have to specify the type of the vehicle in the **Vehicle Type ID** box and the branch location where the vehicle is located in the **Branch Location** box.

If attributes are specified for the vehicle type, you can specify or modify the values of these attributes on the **Attributes** tab of the form. Values must be specified for each attribute for which the **Required** check box is selected.

If the vehicle you're entering has already been entered as a fixed asset in the system, you can associate the fixed asset with the vehicle. To do this, you select the identifier of the necessary fixed asset in the **Fixed Asset** box. If the serial number \(that is, the vehicle identification number or VIN\) and purchase information has been specified for the vehicle on the [Fixed Assets](../UserGuide/FA_30_30_00.md) \(FA303000\) form, the system fills this information on the [Vehicles](../UserGuide/FS_20_36_00.md) form. For details on fixed assets, see [Fixed Asset Creation: General Information](../UserGuide/FixedAssets_Adding_Fixed_Asset_GeneralInfo.md).

When you save the vehicle information you have entered, the system creates an equipment entity that corresponds to the vehicle on the [Equipment](../UserGuide/FS_20_50_00.md) \(FS205000\) form. For this equipment, the system selects the **Vehicle** check box on this form. In the **Equipment Nbr.** box, the system assigns an identifier to the equipment based on the numbering sequence specified in the **Equipment Numbering Sequence** box on the [Service Management Preferences](../UserGuide/FS_10_01_00.md) \(FS100100\) form. The system copies this number into the **Vehicle ID** box of the [Vehicles](../UserGuide/FS_20_36_00.md) form when you save a new vehicle. For details on equipment, see [Managing Equipment](../UserGuide/FS__MNG_Equipment_chapter.md).

## Specifying Identification Numbers and General Information for a Vehicle {#section_opg_2nl_d2c .section}

In the Summary area of the [Vehicles](../UserGuide/FS_20_36_00.md) \(FS203600\) form, you can specify the license plate number of a vehicle in the **License Nbr.** box and the vehicle identification number in the **VIN** box.

On the **General** tab of the form, you can specify the following information:

-   The date when the vehicle was registered in your company in the **Registered Date** box
-   The identification number marked on the engine of the vehicle in the **Engine Nbr.** box
-   The number of axles of the vehicle in the **Axles** box
-   The maximum number of miles per hour for the vehicle in the **Max. Miles** box
-   The unladen weight of the vehicle in the **Tare Weight** box
-   The maximum weight at which a vehicle can be operated in the **Gross Vehicle Weight** box
-   The color of the vehicle in the **Color ID** box

## Specifying Purchase Information {#section_gbq_2nl_d2c .section}

You can specify the following information related to purchasing the vehicle on the **Purchase** tab of the [Vehicles](../UserGuide/FS_20_36_00.md) \(FS203600\) form:

-   The way the vehicle was acquired \(**Property Type**\)
-   The vendor that sold or rented the vehicle \(**Vendor**\)
-   The date of the purchase \(**Purchase Date**\)
-   The purchase order number \(**Purchase PO Number**\)
-   The adquisition cost of the vehicle \(**Purchase Amount**\)

**Tip:** If you select a fixed asset in the **Fixed Asset** box for which the purchase information has been specified on the [Fixed Assets](../UserGuide/FA_30_30_00.md) \(FA303000\) form, the system fills in the boxes of the **Purchase** tab of the [Vehicles](../UserGuide/FS_20_36_00.md) form automatically.

**Parent topic:**[Vehicles](../ImplementationGuide/config_RouteMgmt_Vehicles_Mapref.md)

