# System Preparation for Manufacturing Implementation: General Information {#_2fdbd4d4-6195-4c85-80a9-8a260873ac0a .concept}

Before you start implementing the manufacturing functionality in Acumatica ERP, you need to prepare the system—that is, specify the general settings that will be used by particular manufacturing processes—as described in the following sections.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Enable the needed set of features before you start implementing manufacturing
-   Specify the required settings to prepare the system for implementing manufacturing
-   Create the stock items involved in manufacturing

## Applicable Scenarios { .section}

You configure the general settings for manufacturing in either or both of the following cases:

-   When you are initially implementing Acumatica ERP, and the *Manufacturing* feature is included in your license
-   When you have purchased the *Manufacturing* feature, and you need to configure manufacturing in the existing Acumatica ERP system

## Prerequisites { .section}

Before you start preparing the system for implementing manufacturing, you should make sure that the following criteria have been met:

1.  The general ledger functionality has been configured, as described in [General Ledger: General Information](config_GL_Generalinfo.md).
2.  Inventory and order management functionality have been configured. For details, see [Configuration of Order Management: Implementation Activity](config_InvMgmt_Basic_Implem_Activity.md).
3.  For integration with projects, the project management functionality has been configured, as described in [Basic Project Configuration: General Information](config_Project_Basic_GeneralInfo.md).

## System Preparation for Manufacturing Implementation { .section}

To implement the general configuration of manufacturing in Acumatica ERP, you perform the following steps:

1.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, you make sure that the features in the *Manufacturing* group of features that you are going to use in your system are enabled. For the list of the manufacturing-related features, see [Preparing an Instance: Acumatica ERP Features](config_SA_Prep_Instance_for_Implem_Features_Overview.md).

    **Note:** In a production environment, before you can enable the features, you have to activate the Acumatica ERP license by using the [Activate License](../UserGuide/SM_20_15_10.md) \(SM201510\) form. Each particular feature may be subject to additional licensing; please consult the Acumatica ERP sales policy for details.

2.  On the [Numbering Sequences](../UserGuide/CS_20_10_10.md) \(CS201010\) form, you create the numbering sequences for manufacturing batches and entities.
3.  On the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, you specify the number of decimal places for quantities and for prices and costs.
4.  On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, you create the GL accounts to be used in manufacturing processes. For details, see [System Preparation for Manufacturing Implementation: General Ledger Accounts](config_MFG_GL_Accounts.md).
5.  On the [Posting Classes](../UserGuide/IN_20_60_00.md) \(IN206000\) form, you create the posting classes to be used for the inventory items involved in manufacturing.
6.  On the [Availability Calculation Rules](../UserGuide/IN_20_15_00.md) \(IN201500\) form, you specify the availability calculation rules for the stock items to be involved in manufacturing.
7.  If the *Inventory Replenishment* feature \(in the *Inventory and Order Management* group of features\) is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) form, on the [Replenishment Classes](../UserGuide/IN_20_88_00.md) \(IN208800\) form, you create replenishment classes for items to be manufactured and purchased. If the feature is disabled, you specify replenishment settings for item classes or particular stock items.
8.  On the [Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\) form, you define the warehouses and locations that will be involved in manufacturing.
9.  On the [Item Classes](../UserGuide/IN_20_10_00.md) \(IN201000\) form, you create the item classes that will provide the default settings for the stock items involved in manufacturing.
10. On the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, you create the stock items to be used in manufacturing.
11. On the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) \(IN204500\) form, for items involved in manufacturing that can be stored in multiple warehouses, you specify the item settings that are specific to a particular warehouse.
12. On the [Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form, you specify the needed setting for employees that will be involved in production.
13. On the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form, you configure the sales order types that will be used in production management.
14. On the [User Roles](../UserGuide/SM_20_10_05.md) \(SM201005\) form, you assign user roles dedicated for manufacturing functionality to users involved in production.

## Posting Settings { .section}

A variety of GL accounts must be created in the system on the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form and then specified on the forms that provide posting settings for transactions related to manufacturing processes. You need to create specific GL accounts and specify them in the system as follows:

-   You need to create the Work in Process \(WIP\) account and the WIP Variance account, which are required for users to create production orders. The **Use WIP Account From** box on the [Posting Classes](../UserGuide/IN_20_60_00.md) \(IN206000\) form determines which WIP account will be used during the creation of a production order for items of that class by default:
    -   *Inventory Item*: Newly created production orders will use the WIP account specified on the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form for the produced item. If an account is not specified, then the **WIP Account** for the **Order Type** will be used.
    -   *Warehouse*: Newly created production orders will use the WIP account specified on the [Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\) form for the production warehouse. If an account is not specified, the **WIP Account** for the **Order Type** will be used.
    -   *Posting Class*: Newly created production orders will use the WIP account specified on the [Posting Classes](../UserGuide/IN_20_60_00.md) \(IN206000\) form for the produced item. If an account is not specified, the **WIP Account** for the **Order Type** will be used.
    -   Null / Blank: Newly created production orders will use the WIP account for the **Order Type** specified on the [Production Order Types](../UserGuide/AM_20_11_00.md) \(AM201100\) form.
-   You need to create a specific Labor account for labor expenses to be reported. Then you create a labor code by using the [Labor Codes](../UserGuide/AM_20_65_00.md) \(AM206500\) form and specify the corresponding account in the settings of this code. Labor codes are required when you create work centers on the [Work Centers](../UserGuide/AM_20_70_00.md) \(AM207000\) form. If indirect time is to be reported according to the manufacturing processes of your organization, you can also create a GL account for indirect labor expenses or you can use the same account as you use for direct labor. If you create a separate GL account for indirect labor expenses, you also need to create a separate labor code.
-   If overhead, tooling, machine, or scrap costs are to be charged to production orders, then you need to create a separate expense account to track each of these types of costs. You specify the following accounts on the following forms:
    -   [Overhead](../UserGuide/AM_20_25_00.md) \(AM202500\): The overhead GL account for each overhead
    -   [Machines](../UserGuide/AM_20_45_00.md) \(AM204500\): A GL account used for machine costs
    -   [Tools](../UserGuide/AM_20_55_00.md) \(AM205500\): A GL account used for tool costs
    -   [Reason Codes](../UserGuide/CS_21_10_00.md) \(CS211000\): The GL account to be used for scrap costs \(after you have created a reason code specifically for scrap\)

## Warehouse Settings { .section}

You need to define each warehouse and its locations where the stock items involved in manufacturing will be stored. You may use an existing warehouse or create a separate one.

You use the [Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\) form to define a warehouse involved in manufacturing as follows:

1.  On the **Locations** tab, you define the locations that will be involved in manufacturing as follows:
    -   For each warehouse location that is used for planning purposes within inventory planning, you select the **Inventory Planning** check box.
    -   For each location used for storing materials or manufactured items, you select the **Production Allowed** check box to indicate that this location can be used to issue items to production orders and to receive items from production orders.
2.  On the **GL Accounts** tab, you specify the **Work in Process** and **WIP Variance** accounts.
3.  In the **Inventory Planning Settings** section of the **Inventory Planning** tab, you select check boxes for the entities or documents to indicate which supply and demand are considered for this warehouse during inventory planning. We recommend that all check boxes be selected in a production system.

For more information about warehouses and warehouse locations, see [Warehouses: General Information](../UserGuide/Warehouses_GeneralInfo.md) and [Warehouse Locations and Single-Step Transfers: General Information](../UserGuide/Warehouse_Locations_GeneralInfo.md).

## Availability Calculation Settings { .section}

For each item to be added to manufacturing transactions, you need to specify whether it will be available for issuing. For this purpose, on the [Availability Calculation Rules](../UserGuide/IN_20_15_00.md) \(IN201500\) form, you create or modify an availability calculation rule, in which you also select or clear check boxes for plan types related to manufacturing. You can include or deduct the quantities of items added to production orders in the available quantities of items.

For details about availability calculation, see [Availability Calculation Rules: General Information](../UserGuide/Availability_Calculation_Rules_GeneralInfo.md).

## Replenishment Settings { .section}

To indicate that a stock item is manufactured and must be included in inventory planning, you specify replenishment settings as follows:

-   If you use the replenishment functionality in Acumatica ERP—that is, the *Inventory Replenishment* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form—on the [Replenishment Classes](../UserGuide/IN_20_88_00.md) \(IN208800\) form, you create two replenishment classes: one for a source of *Purchase* and another for a source of *Manufacturing*, because these are the two key source types inventory planning will use. Then you will specify the appropriate replenishment class, which depends on whether the item will be manufactured or purchased, in the replenishment settings of particular item classes, items, or both.
-   If the *Inventory Replenishment* feature is disabled, you select the needed replenishment source in the **Source** box of the **Inventory Planning** tab on the [Item Classes](../UserGuide/IN_20_10_00.md) \(IN201000\) form for the item class or in the **Source** box on the **Inventory Planning** tab of the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form for the item.

## Settings of Items Involved in Manufacturing { .section}

Items involved in manufacturing can be purchased \(these items are usually components used in the production process\) or manufactured \(these items are usually the finished goods to be sold to customers\). To provide default settings for groups of similar items, you create item classes on the [Item Classes](../UserGuide/IN_20_10_00.md) \(IN201000\) form. For each item class, you specify the following settings:

-   The posting class with the Work in Progress and WIP Variance GL accounts specified
-   The default warehouse where the items of the class will be stored
-   The availability calculation rule, which provides information for calculating the availability of items involved in manufacturing
-   Replenishment settings that indicate if items of the class will be produced or purchased

For more information about item classes, see [Item Classes for Stock Items: General Information](../UserGuide/Item_Classes_GeneralInfo.md).

Then on the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, you create stock items; this process differs depending on whether the item is manufactured or purchased. For items being manufactured, you perform the following general steps:

1.  You select an item class that was created for items being manufactured.
2.  Depending on whether the *Inventory Replenishment* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, you do the following:
    -   If the feature is enabled, on the **Inventory Planning** tab, you make sure that a replenishment class with the *Manufacturing* replenishment source has been added, and you specify the value of the **Safety Stock** box. This will set a certain level of inventory in the system to be planned for within inventory planning.
    -   If the feature is disabled, in the **Inventory Planning Settings** section of the **Inventory Planning** tab, you make sure that the *Manufacturing* replenishment source is specified, and you add the value in the **Safety Stock** box.
3.  In the **General** and **Scheduling** sections of the **Manufacturing** tab, you specify the needed settings.

For items being purchased, you perform the following general steps:

1.  You select an item class that was created for items being purchased.
2.  On the **Vendors** tab, you specify the vendors from which the item will be purchased and make sure that the lead time is specified. The specification of the lead time is important so that during the inventory planning process, personnel can consider this time when planning the supply.
3.  On the **Warehouses** tab, you make sure that at least one warehouse is specified.
4.  On the **Price/Cost** tab, specify the cost as follows, depending on the valuation method: For items with the *Standard* method, specify the cost in the **Pending Cost** box; for items with all other methods, specify the cost in the **Last Cost** box.
5.  Depending on whether the *Inventory Replenishment* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) form, you do the following:
    -   If the feature is enabled, on the **Replenishment** tab, you make sure that a replenishment class with the *Purchase* replenishment source has been added.
    -   If the feature is disabled, in the **Planning Settings** section of the **Manufacturing** tab, you make sure that the *Purchase* replenishment source is specified.
6.  In the **General** and **Scheduling** sections of the **Manufacturing** tab, you specify the needed settings.

For each item that has warehouse-specific settings, on the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) \(IN204500\) form, you also need to do the following:

1.  You make sure that warehouse locations are specified in the **Default Receipt To** and **Default Issue From** boxes, to make data entry easier for users.
2.  If an item cost depends on the warehouse where the item is stored, on the **Price/Cost** tab, you enter a warehouse-specific cost for the item.
3.  Depending on whether the *Inventory Replenishment* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) form, you do the following:
    -   If the feature is enabled, on the **Inventory Planning** tab, you make sure that the replenishment class and the replenishment source are specified correctly in the **Replenishment Class** and **Replenishment Source** boxes respectively.
    -   If the feature is disabled, on the **Inventory Planning** tab, you make sure that the needed replenishment source is specified in the **Source** box.

## Settings of Employees Involved in Manufacturing { .section}

To record the labor expenses for employees involved in manufacturing, on the [Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form, you select the **Production Employee** check box on the **General Info** tab.

If you want to post labor transactions by using the employee cost, on the [Labor Rates](../UserGuide/PM_20_99_00.md) \(PM209900\) form, you create the needed cost rates and then specify a cost rate for each employee involved in manufacturing.

## Settings of Sales Documents { .section}

If the business process of your organization involves users creating production orders directly from sales orders, you must configure this functionality for each order type you use. On the **General** tab of the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form, you do the following:

1.  Select the **Enable Linking to Production Orders** check box.
2.  In the **Linkable Sales Order Statuses** list, specify which sales order statuses permit linking sales orders to production orders.

Order types typically used to create production orders are based on the following templates: *SO* \(a regular sales order\), *TR* \(a transfer order\), and *QT* \(a quote\). For quotes, you can also select the **Allow Estimating** check box to allow users entering estimate data in sales orders of the type.

**Attention:** We recommend that you not select this check box for other order types because estimates may include non-inventory items that cannot be shipped or issued.

## Predefined User Roles for Manufacturing { .section}

When you configure user access to manufacturing-related forms, you can use the predefined user roles that provide access to the forms needed in the everyday work of particular employees. You can modify the role permissions to meet the organization's access policies. You can also apply multiple roles to the same user who takes over multiple duties.

In the following table, you can view the details of the predefined user roles dedicated for manufacturing.

|Role Name|Description|Responsibilities|
|---------|-----------|----------------|
|*MFG Engineer*|A manufacturing engineer who supports the shop floor|-   Creates and maintains bills of materials
-   Initiates engineering change requests and executes engineering change orders
-   Suggests cost-effective alternate processes and materials when possible

|
|*MFG Engineering MGR*|A manager of manufacturing engineers who sets up engineering change control and monitors changes in bills of material|-   Sets preferences related to engineering
-   Creates and maintains bills of material \(except creating labor codes, overhead, and shifts\)
-   Handles mass changes and cost rolling

|
|*MFG Shop Floor*|A shop floor worker whose time is typically value-added|-   Performs the manufacturing of items
-   Clocks in and out of jobs
-   Views work center schedules and production dashboards

|
|*MFG Production MGR*|A manufacturing production manager who resolves problems for the shop floor and ensures that production is moving along|-   Works with planning, scheduling, engineering, and warehouse personnel to resolve problems
-   Creates and changes production orders
-   Approves clock entries of production workers
-   Specifies production settings \(except labor codes\)

|
|*MFG Scheduler*|A manufacturing scheduler who sets up and reviews the production schedule; this person also adjusts constraints and communicates completion dates|-   Identifies and resolves scheduling conflicts in advance
-   Has the primary KPI to keep the on-time delivery percent high
-   Uses inventory planning tools
-   Regenerates inventory planning
-   Runs rough-cut planning

|
|*MFG Scheduling MGR*|A manufacturing scheduling manager who defines the scheduling methodology and monitors the scheduling and planning process|-   Sets the preferences for scheduling
-   Maintains advanced planning and scheduling
-   Works closely with the planner and the production manager to make sure the planning, production, and scheduling areas align
-   Regenerates inventory planning
-   Runs rough-cut planning

|
|*MFG Planner*|A manufacturing planner who regularly evaluates the requirements needed to successfully execute both customer- and replenishment-driven production orders|-   Uses statistical analysis to suggest stocking levels for raw materials, semi-finished goods, and finished goods
-   Makes recommendations on staffing levels based on trends and data
-   Generates and manages forecasts

|
|*MFG Planning MGR*|A manufacturing planning manager who develops production plans in adherence to the organization's budget and deadlines|-   Uses statistical analysis to suggest stocking levels for raw materials, semi-finished goods, and finished goods
-   Makes recommendations on staffing levels based on trends and data
-   Generates and manages forecasts
-   Uses master production schedules for planning

|
|*MFG Sales Engineer*|A manufacturing sales engineer who works closely with sales or independently|-   Takes customer requirements and applies information to an estimate
-   Has a primary key performance indicator \(KPI\) of an estimate or request for quotation \(RFQ\) turnaround time
-   Has secondary KPIs of winning percent and profitability percent
-   Uses estimating functionality \(except for preferences\)
-   Creates inventory items from non-inventory items
-   Converts estimates to bills of material

|
|*MFG Warehouse*|A manufacturing warehouse worker who supports production|-   Primarily performs cycle counts, picking of material, and moving of items in production from one location to another
-   Helps place material on shelves
-   Issues materials to production orders
-   Supports the traceability of items by lot or serial number

|
|*MFG Viewer*|An employee outside of the production department who needs to view manufacturing processes, monitoring milestones and the statuses of specific production orders|-   Tracks the progress of production orders to inform customers
-   Tracks the progress of production for projects

|
|*MFG Admin*|A manufacturing administrator; this person may be a production manager or an employee of an IT department|Maintains and oversees all manufacturing settings|
|*MFG Cost Accountant*|A manufacturing cost accountant|Reviews and adjusts production orders before closing the production order|

The following forms and reports show details about access to forms:

-   [Access Rights by Role](../UserGuide/SM_20_10_25.md) \(SM201025\)
-   [Access Rights by Screen](../UserGuide/SM_20_10_20.md) \(SM201020\)
-   [Access Rights by Role](../UserGuide/SM_65_15_00.md) \(SM651500\)

**Parent topic:**[Preparing the System for Manufacturing Implementation](../ImplementationGuide/config_MFG_General_Settings_Mapref.md)

