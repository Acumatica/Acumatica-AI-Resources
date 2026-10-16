# System Preparation for Manufacturing Implementation: Implementation Checklist

The following section provides details you can use to ensure that the system is configured properly for implementing manufacturing.

## Implementation Checklist

We recommend that before you start configuring manufacturing-specific settings, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\)

</td><td>

The following features have been enabled:-   The *Manufacturing* group of features. If you use additional manufacturing functionality \(such as estimates\), make sure that the corresponding features have been enabled within this group of features.
-   The *Inventory* feature, and the *Lot and Serial Tracking* feature within the *Inventory and Order Management* group of features.

</td></tr><tr><td>

[Numbering Sequences](../UserGuide/CS_20_10_10.md) \(CS201010\)

</td><td>

Required numbering sequences have been created for the following entities:-   Bill of material
-   Production order
-   Batches of move transactions
-   Batches of labor transactions
-   Batches of material transactions
-   Batches of WIP adjustment transactions
-   Batches of cost transactions
-   Forecast
-   MPS type

**Tip:** You can use the same numbering sequence for the batches of move, labor, and material transactions.

</td></tr><tr><td>

[Companies](../UserGuide/CS_10_15_00.md) \(CS101500\)

</td><td>

The number of decimal places for quantities in the **Quantity Decimal Places** box and for prices and costs in the **Price/Cost Decimal Places** box of the **Company Details** tab is specified according to the business processes of your organization.

</td></tr><tr><td>

[Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\)

</td><td>

The following GL accounts have been created:-   Work in Progress \(required\)
-   WIP Variance \(required\)
-   Direct Labor \(required\)
-   Indirect Labor
-   Overhead
-   Tooling Usage
-   Machine Usage
-   Scrap Expense

</td></tr><tr><td>

[Posting Classes](../UserGuide/IN_20_60_00.md) \(IN206000\)

</td><td>

Posting classes to be used for the inventory items involved in manufacturing have been created, and the Work in Progress and WIP Variance accounts have been specified in the posting class settings.If the GL accounts are not specified in the posting class, when creating a production order, the system will copy the accounts specified in the production order type, which is assigned to the production order.

For more information, see [System Preparation for Manufacturing Implementation: General Information](config_MFG_General_Settings_GeneralInfo.md).

</td></tr><tr><td>

[Availability Calculation Rules](../UserGuide/IN_20_15_00.md) \(IN201500\)

</td><td>

Availability calculation rules have been created for the stock items to be involved in manufacturing.

</td></tr><tr><td>

[Replenishment Classes](../UserGuide/IN_20_88_00.md) \(IN208800\)

</td><td>

If the *Inventory Replenishment* feature \(in the *Inventory and Order Management* group of features\) is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the replenishment classes that will be used for items in manufacturing processes have been created. At least two classes must be created, one with the *Manufacturing* replenishment source \(for items being manufactured\) and one with the *Purchase* replenishment source \(for items being purchased\).

</td></tr><tr><td>

[Item Classes](../UserGuide/IN_20_10_00.md) \(IN201000\)

</td><td>

The item classes that will provide the default settings for the newly created stock items involved in manufacturing have been created.

 **Attention:** If the *Inventory Replenishment* feature is disabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) form, specify the replenishment source for the items of the class in the **Source** box of the **Inventory Planning** tab.

</td></tr><tr><td>

[Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\)

</td><td>

Stock items to be used in manufacturing have been created—both the components and the items to be produced.

</td></tr><tr><td>

[Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\)

</td><td>

The needed warehouses and warehouse locations that will be involved in manufacturing have been defined.

 If the *Material Requirements Planning* feature is enabled, the following should be considered:

 **Attention:**

-   Set the item plans that should be considered during the inventory planning process on the **Inventory Planning** tab for the warehouse
-   For warehouse locations that should not be planned using inventory planning, clear the check box in the **Inventory Planning** column. An example is a quarantine location that should not be planned.

</td></tr><tr><td>

[Item Warehouse Details](../UserGuide/IN_20_45_00.md) \(IN204500\)

</td><td>

For items involved in manufacturing that can be stored in multiple warehouses, all applicable item settings have been specified that are specific to a particular warehouse, such as the replenishment source, cost information, and default warehouse locations for receiving and issuing items.

</td></tr><tr><td>

[Employees](../UserGuide/EP_20_30_00.md) \(EP203000\)

</td><td>

The **Production Employee** check box is selected for each employee for which labor may be entered in a production order.You can define labor rates for employees on the [Labor Rates](../UserGuide/PM_20_99_00.md) \(PM209900\) form if you want to track labor rates by employee.

</td></tr><tr><td>

[Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\)

</td><td>

Sales order types have been configured that will be used for production management so that users can create production orders from orders of this type.

</td></tr><tr><td>

[User Roles](../UserGuide/SM_20_10_05.md) \(SM201005\)

</td><td>

The appropriate user roles have been configured and assigned to users who must have access to manufacturing functionality.

</td></tr><tr><td>

[Reason Codes](../UserGuide/CS_21_10_00.md) \(CS211000\)

</td><td>

The appropriate reason code for scrap and the GL account that will be used for scrap costs have been configured.

</td></tr><tr><td>

[Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\)

</td><td>

The vendor accounts who will represent subcontractors have been created.

</td></tr><tr><td>

[Lot/Serial Classes](../UserGuide/IN_20_70_00.md) \(IN207000\)

</td><td>

The lot or serial classes to be used for produced items and for materials that must be tracked in the system by lot or serial numbers have been created.

</td></tr><tr><td>

[Labor](../UserGuide/AM_30_10_00.md) \(AM301000\)

</td><td>

The specific labor account for labor expenses to be reported has been configured.

</td></tr><tr><td>

[Production Order Types](../UserGuide/AM_20_11_00.md) \(AM201100\)

</td><td>

The production order types needed for creating a production order have been created.

</td></tr><tr><td>

[Labor Codes](../UserGuide/AM_20_65_00.md) \(AM206500\)

</td><td>

The labor codes have been created and the corresponding account in the settings of the labor code has been specified. Labor codes should be specified when you create a work center.

</td></tr><tr><td>

[Overhead](../UserGuide/AM_20_25_00.md) \(AM205000\)

</td><td>

The overhead costs for each overhead has been specified. Overhead entities should be specified when you create a work center or bill of material.

</td></tr><tr><td>

[Tools](../UserGuide/AM_20_55_00.md) \(AM205500\)

</td><td>

The GL account used for tool costs has been specified. Tool entities must be specified when you create a bill of material.

</td></tr><tr><td>

[Machines](../UserGuide/AM_20_45_00.md) \(AM204500\)

</td><td>

The GL account for machine costs has been specified. Machine entities must be specified when you create a work center.

</td></tr><tr><td>

[Shifts](../UserGuide/AM_20_50_00.md) \(AM205000\)

</td><td>

The appropriate shifts required for calculating work time in the work center has been created. Shift entities must be specified when you create a work center.

</td></tr><tr><td>

[Work Centers](../UserGuide/AM_20_70_00.md) \(AM207000\)

</td><td>

The work center has been created with the appropriate production cost drivers.

</td></tr><tr><td>

[Bill of Material](../UserGuide/AM_20_80_00.md) \(AM208000\)

</td><td>

The bill of material has been created.

</td></tr></tbody>
</table>

**Parent topic:**[Preparing the System for Manufacturing Implementation](../ImplementationGuide/config_MFG_General_Settings_Mapref.md)

