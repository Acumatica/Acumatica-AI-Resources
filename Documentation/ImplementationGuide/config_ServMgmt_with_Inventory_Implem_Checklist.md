# Basic Service Management Configuration: Implementation Checklist {#_653aa336-c1a0-4872-b275-3579d9e3e827 .concept}

The following sections provide details you can use to ensure that the system is configured properly for the processing of service orders and their appointments that may include stock items, and to specify settings that affect this processing workflow.

## Prerequisite Configuration { .section}

We recommend that before you initially set up the service management functionality, you make sure the needed entities have been created, and settings have been specified, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|Multiple forms|Make sure that the minimum company settings are specified, as described in [Company Without Branches](config_Basic_Company_Mapref.md), [Company with Branches that Do Not Require Balancing](config_Company_with_Branches_No_Balancing_Mapref.md), or [Company with Branches that Require Balancing](config_Company_with_Branches_with_Balacing_Mapref.md) \(depending on your company structure\).|
|Multiple forms|To offer the provision of inventory items as part of providing field services, make sure that the sales order management configuration has been implemented, as described in [Configuration of Order Management: Implementation Checklist](config_InvMgmt_Basic_Implem_Checklist.md) .|
|[Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form|Make sure that the employees to be involved in field service processes have been created. For details, see [Employee Settings](../UserGuide/OS__con_Employee_Settings.md).|

## Implementation Checklist { .section}

Once the needed prerequisites are met, you should navigate to the forms listed below and perform the tasks described in the table to be able to use the basic service management functionality.

|Form|Things to Do|Notes|
|----|------------|-----|
|[Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form|Enable the *Service Management* feature.| |
|[Work Calendar](../UserGuide/CS_20_90_00.md) \(CS209000\) form|Create the calendar with the staff members' work days, work times for each day, and unpaid break time. For details, see [Basic Service Management Configuration: Implementation Activity](config_ServMgmt_with_Inventory_Implem_Activity.md).| |
|[Numbering Sequences](../UserGuide/CS_20_10_10.md) \(CS201010\) form|Create the numbering sequences for service orders, staff members' schedules, and field service billing documents. For details, see [Basic Service Management Configuration: Implementation Activity](config_ServMgmt_with_Inventory_Implem_Activity.md).| |
|[Service Management Preferences](../UserGuide/FS_10_01_00.md) \(FS100100\) form|Specify the necessary numbering sequences and work calendar.| |
|[Billing Cycles](../UserGuide/FS_20_60_00.md) \(FS206000\) form|Create the necessary billing cycles \(which define the way billing documents are generated for the services provided to customers\). For details, see [Billing Cycles](ServMgmt_Billing_Cycles_Mapref.md).| |
|[Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form|Do the following:-   Create all customers that are expected to request the company's services.
-   Assign the necessary billing cycles to customers who may be billed for services.

| |
|[Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form|Define the employees to be involved in field service processes as staff members—that is, select the **Staff Member in Service Management** check box for these employees. For details, see [Staff Members](ServMgmt_Staff_Member_Mapref.md).| |
|[Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form|To offer the provision of inventory items as part of providing field services, make sure that for the sales order types that will be used for the field service processes, the **Enable Field Services Integration** check box is selected. For details, see [Basic Service Management Configuration: Implementation Activity](config_ServMgmt_with_Inventory_Implem_Activity.md).| |
|[Service Order Types](../UserGuide/FS_20_23_00.md) \(FS202300\) form|Create the service order types that suit the company's processes, as described in the [Service Order Types](config_Service_Order_Types_Mapref.md) chapter.|To generate billing documents that may include both services and inventory items, you select the *Sales Orders* or *SO Invoices* option in the **Generated Billing Documents** box on the **General** tab of the form.|
|[Branch Locations](../UserGuide/FS_20_25_00.md) \(FS202500\) form|Create all branch locations that represent company offices. For details, see [Branch Locations](config_ServMgmt_Branch_Locations_Mapref.md).| |

## Optional Settings { .section}

Depending on your company's processes, you may need the settings described in the table below.

|Form|Things to Check|
|----|---------------|
|[Service Areas](../UserGuide/FS_20_19_00.md) \(FS201900\) form|If staff members are to work within a certain geographical area, make sure that the service areas have been defined and staff members have been assigned to the areas. For details, see [Service Areas](ServMgmt_ServiceArea_Mapref.md).|
|[Skills](../UserGuide/FS_20_06_00.md) \(FS206000\) and [Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) forms|If the assignment of staff members has to be performed based on skills that are necessary for the service, make sure that the skills have been defined and assigned to staff members. For details, see [Skills](ServMgmt_Skills_Mapref.md).|
|[License Types](../UserGuide/FS_20_09_00.md) \(FS200900\) and [Services](../UserGuide/FS_40_08_00.md) \(FS400800\) forms|If the assignment of staff members has to be performed based on licenses that prove that a staff member can perform a service, make sure that the types of these licenses have been defined and assigned to the appropriate services. For details, see [Licenses](ServMgmt_License_Mapref.md).|
|[Licenses](../UserGuide/FS_20_10_00.md) \(FS201000\) and [Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) forms|If the assignment of staff members has to be performed based on licenses that prove that a staff member can perform a service, make sure that the licenses have been entered and assigned to the needed staff members. For details, see [Licenses](ServMgmt_License_Mapref.md).|
|[Item Classes](../UserGuide/IN_20_10_00.md#) \(IN201000\) form|Make sure that the item classes that contain the default settings of the company's services have been created.|
|[Non-Stock Items](../UserGuide/IN_20_20_00.md) form|If services have been created in the system, make sure that the skills that are required for performing these services have been assigned to them.If services have been created in the system, make sure that the type of the licenses that are required for performing these services have been assigned to them.

|
|[Service Management Preferences](../UserGuide/FS_10_01_00.md) \(FS100100\) form|If you plan to use the calendar board forms \([Calendar Board](../UserGuide/FS_30_03_00.md) \(FS300300\), [Room Calendar Board](../UserGuide/FS_30_07_00.md) \(FS300700\), or both\), specify the **Day Start Time** on the [Service Management Preferences](../UserGuide/FS_10_01_00.md) form. This setting is required to properly configure the calendar view.|

**Parent topic:**[Basic Service Management Configuration](../ImplementationGuide/config_ServMgmt_with_Inventory_Mapref.md)

