# System Preparation for Manufacturing Implementation: Implementation Checklist {#_42d24e79-f6cd-4e59-85d0-1e320a9de866 .concept}

The following section provides details you can use to ensure that the system is configured properly for implementing manufacturing.

## Implementation Checklist { .section}

We recommend that before you start configuring manufacturing-specific settings, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\)|The following features have been enabled:-   The *Manufacturing* group of features. If you use additional manufacturing functionality \(such as estimates\), make sure that the corresponding features have been enabled within this group of features.
-   The *Inventory* feature, and the *Lot and Serial Tracking* feature within the *Inventory and Order Management* group of features.

|
|[Numbering Sequences](../UserGuide/CS_20_10_10.md) \(CS201010\)|Required numbering sequences have been created for the following entities:-   Bill of material
-   Production order
-   Batches of move transactions
-   Batches of labor transactions
-   Batches of material transactions
-   Batches of WIP adjustment transactions
-   Batches of cost transactions
-   Forecast
-   MPS type

**Tip:** You can use the same numbering sequence for the batches of move, labor, and material transactions.

|
|[Companies](../UserGuide/CS_10_15_00.md) \(CS101500\)|The number of decimal places for quantities in the **Quantity Decimal Places** box and for prices and costs in the **Price/Cost Decimal Places** box of the **Company Details** tab is specified according to the business processes of your organization.|
|[Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\)|The following GL accounts have been created:-   Work in Progress \(required\)
-   WIP Variance \(required\)
-   Direct Labor \(required\)
-   Indirect Labor
-   Overhead
-   Tooling Usage
-   Machine Usage
-   Scrap Expense

|
|[Posting Classes](../UserGuide/IN_20_60_00.md) \(IN206000\)|Posting classes to be used for the inventory items involved in manufacturing have been created, and the Work in Progress and WIP Variance accounts have been specified in the posting class settings.If the GL accounts are not specified in the posting class, when creating a production order, the system will copy the accounts specified in the production order type, which is assigned to the production order.

For more information, see [System Preparation for Manufacturing Implementation: General Information](config_MFG_General_Settings_GeneralInfo.md).

|
|[Availability Calculation Rules](../UserGuide/IN_20_15_00.md) \(IN201500\)|Availability calculation rules have been created for the stock items to be involved in manufacturing.|
|[Replenishment Classes](../UserGuide/IN_20_88_00.md) \(IN208800\)|If the *Inventory Replenishment* feature \(in the *Inventory and Order Management* group of features\) is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the replenishment classes that will be used for items in manufacturing processes have been created. At least two classes must be created, one with the *Manufacturing* replenishment source \(for items being manufactured\) and one with the *Purchase* replenishment source \(for items being purchased\).|
|[Item Classes](../UserGuide/IN_20_10_00.md) \(IN201000\)|The item classes that will provide the default settings for the newly created stock items involved in manufacturing have been created.

 **Attention:** If the *Inventory Replenishment* feature is disabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) form, specify the replenishment source for the items of the class in the **Source** box of the **Inventory Planning** tab.

|
|[Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\)|Stock items to be used in manufacturing have been created—both the components and the items to be produced.|
|[Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\)|The needed warehouses and warehouse locations that will be involved in manufacturing have been defined.

 If the *Material Requirements Planning* feature is enabled, the following should be considered:

 **Attention:**

-   Set the item plans that should be considered during the inventory planning process on the **Inventory Planning** tab for the warehouse
-   For warehouse locations that should not be planned using inventory planning, clear the check box in the **Inventory Planning** column. An example is a quarantine location that should not be planned.

|
|[Item Warehouse Details](../UserGuide/IN_20_45_00.md) \(IN204500\)|For items involved in manufacturing that can be stored in multiple warehouses, all applicable item settings have been specified that are specific to a particular warehouse, such as the replenishment source, cost information, and default warehouse locations for receiving and issuing items.|
|[Employees](../UserGuide/EP_20_30_00.md) \(EP203000\)|The **Production Employee** check box is selected for each employee for which labor may be entered in a production order.You can define labor rates for employees on the [Labor Rates](../UserGuide/PM_20_99_00.md) \(PM209900\) form if you want to track labor rates by employee.

|
|[Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\)|Sales order types have been configured that will be used for production management so that users can create production orders from orders of this type.|
|[User Roles](../UserGuide/SM_20_10_05.md) \(SM201005\)|The appropriate user roles have been configured and assigned to users who must have access to manufacturing functionality.|
|[Reason Codes](../UserGuide/CS_21_10_00.md) \(CS211000\)|The appropriate reason code for scrap and the GL account that will be used for scrap costs have been configured.|
|[Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\)|The vendor accounts who will represent subcontractors have been created.|
|[Lot/Serial Classes](../UserGuide/IN_20_70_00.md) \(IN207000\)|The lot or serial classes to be used for produced items and for materials that must be tracked in the system by lot or serial numbers have been created.|
|[Labor](../UserGuide/AM_30_10_00.md) \(AM301000\)|The specific labor account for labor expenses to be reported has been configured.|
|[Production Order Types](../UserGuide/AM_20_11_00.md) \(AM201100\)|The production order types needed for creating a production order have been created.|
|[Labor Codes](../UserGuide/AM_20_65_00.md) \(AM206500\)|The labor codes have been created and the corresponding account in the settings of the labor code has been specified. Labor codes should be specified when you create a work center.|
|[Overhead](../UserGuide/AM_20_25_00.md) \(AM205000\)|The overhead costs for each overhead has been specified. Overhead entities should be specified when you create a work center or bill of material.|
|[Tools](../UserGuide/AM_20_55_00.md) \(AM205500\)|The GL account used for tool costs has been specified. Tool entities must be specified when you create a bill of material.|
|[Machines](../UserGuide/AM_20_45_00.md) \(AM204500\)|The GL account for machine costs has been specified. Machine entities must be specified when you create a work center.|
|[Shifts](../UserGuide/AM_20_50_00.md) \(AM205000\)|The appropriate shifts required for calculating work time in the work center has been created. Shift entities must be specified when you create a work center.|
|[Work Centers](../UserGuide/AM_20_70_00.md) \(AM207000\)|The work center has been created with the appropriate production cost drivers.|
|[Bill of Material](../UserGuide/AM_20_80_00.md) \(AM208000\)|The bill of material has been created.|

**Parent topic:**[Preparing the System for Manufacturing Implementation](../ImplementationGuide/config_MFG_General_Settings_Mapref.md)

