# Equipment Management: Implementation Checklist {#_753aa336-c1a0-4872-b275-3579d9e3e827 .concept}

The following sections provide details you can use to ensure that the system is configured properly for the managing equipment entities and processing service contracts in the system, and to specify the needed settings that affect this processing workflow.

## Prerequisites { .section}

Before you start configuring equipment management, you should make sure that the needed configuration tasks have been performed, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|Multiple forms|Make sure that the minimum company settings are specified, as described in [Company Without Branches](config_Basic_Company_Mapref.md), [Company with Branches that Do Not Require Balancing](config_Company_with_Branches_No_Balancing_Mapref.md), or [Company with Branches that Require Balancing](config_Company_with_Branches_with_Balacing_Mapref.md) \(depending on your company structure\).|
|Multiple forms|To offer the provision of inventory items as part of providing field services, make sure that the sales order management configuration has been implemented, as described in [Configuration of Order Management: Implementation Checklist](config_InvMgmt_Basic_Implem_Checklist.md) .|
|Multiple forms|Make sure that the service management configuration has been implemented, as described in [Basic Service Management Configuration](config_ServMgmt_with_Inventory_Mapref.md).|
|[Numbering Sequences](../UserGuide/CS_20_10_10.md) \(CS201010\) form|Make sure that the numbering sequences have been created for equipment entities.|
|[Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form|Make sure that the *Service Management* feature has been enabled.|

## Required Settings { .section}

To make it possible for users to manage equipment entities and process service contracts, you should navigate to the form listed in the following table and specify the settings that are described.

|Form|Action|
|----|------|
|[Equipment Management Preferences](../UserGuide/FS_10_03_00.md) \(FS100300\) form|Specify the equipment numbering sequence, as well as the equipment and billing settings.|

**Parent topic:**[Configuring Equipment Management](../ImplementationGuide/config_EquipMgmt_Mapref.md)

