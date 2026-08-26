# Assignment of Serial or Lot Numbers for Project Stock Items in Service Documents {#_5ae978e1-87f1-4db6-b6ab-b6e40bd02c17 .concept}

In Acumatica ERP, serial and lot numbers can be specified for project stock items on the [Service Orders](FS_30_01_00.md) and [Appointments](FS_30_02_00.md) forms if a service order or an appointment is linked to a project where *Track by Project Quantity and Cost* or *Track by Project Quantity* is specified in the **Inventory Tracking** box on the [Projects](PM_30_10_00.md) form.

**Important:** To make it possible to manage project stock items, the *Project-Specific Inventory* feature must be enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Serial or Lot Numbers for Project Stock Items in Service Orders and Appointments {#section_yvr_q2z_m2c .section}

You can assign lot or serial numbers to stock items with the *Track Serial Numbers* or *Track Lot Numbers* tracking method specified in the stock item's lot or serial class on the [Lot/Serial Classes](IN_20_70_00.md) \(IN207000\) form.

You assign a lot or serial number on the [Service Orders](FS_30_01_00.md) \(FS300100\) form, where serial or lot numbers are available in the **Line Details** dialog box in the **Lot/Serial Nbr.** column. To open the dialog box, select a detail line and click the **Line Details** button on the table toolbar of the **Details** tab. In service orders, you can assign serial or lot numbers to stock items whose lot or serial class has the *When Received* assignment method specified on the [Lot/Serial Classes](IN_20_70_00.md) form.

On the [Appointments](FS_30_02_00.md) form, you can select a lot or serial number in two ways:

**Important:** For stock items whose lot or serial class has the *When Used* assignment method specified on the [Lot/Serial Classes](IN_20_70_00.md) form, a serial or lot number can be assigned only on the [Appointments](FS_30_02_00.md) \(FS300200\) form.

-   In the lookup table that opens when you click the magnifier button in the **Lot/Serial Nbr.** column on the **Details** tab. This table only shows the serial or lot numbers for the selected project stock item.
-   In the **Line Details** dialog box that opens after you select a detail line and click the **Lot/Serial Nbrs** button on the table toolbar of the **Details** tab, only the serial or lot numbers of the selected project stock item are displayed.

For details about generating and assigning lot or serial numbers in appointments, see [Assigning Lot and Serial Numbers in Appointments](ServMgmt_Assigning_Lot_Serial_Numbers_to_Stock_Items_in_Appointments.md).

**Parent topic:**[Processing Service Documents with Projects](../UserGuide/ServMgmt_Processing_Service_Documents_with_Projects_Mapref.md)

