# Committed Costs: Implementation Checklist {#_a53a0444-16a1-4385-a86e-d9aead34d4c0 .concept}

The following sections provide details you can use to ensure that the system is configured properly for processing cost commitments on projects, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially process cost commitments, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Tasks to Perform|
|----|----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure the following features are enabled:

 -   *Inventory and Order Management*, if you want to process purchase orders with non-stock items and track them as cost commitments to projects
-   *Inventory*, if you want to process purchase orders with stock items and track them as cost commitments to projects
-   *Construction*, if you want to process subcontracts and track them as cost commitments to projects

|
|[Projects Preferences](PM_10_10_00.md) \(PM101000\) form|Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see [Basic Project Configuration: General Information](../ImplementationGuide/config_Project_Basic_GeneralInfo.md).

 Also, make sure that the **Internal Cost Commitment Tracking** check box is selected on the **General** tab \(**General Settings** section\).

|
|[Account Groups](PM_20_10_00.md) \(PM201000\) form|Make sure that all needed account groups have been configured and that for all the needed account groups of the *Expense* type, the **Create Commitment** check box is selected on the **Change Request Settings** tab.|
|[Projects](PM_30_10_00.md) \(PM301000\) form|Make sure that the project has been created, as described in [Project Creation and Processing: General Information](Projects_Process_GeneralInfo.md).|
|[Vendors](AP_30_30_00.md) \(AP303000\) form|Make sure that all needed vendors have been defined in the system, as described in [Vendors: General Information](Vendor_GeneralInfo.md).Also, make sure that the expense account of the vendor specified in the **Expense Account** box on the **GL Accounts** tab is mapped to an account group.

|
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\) form|Make sure that all needed labor items, non-stock items, and services have been defined. For more information about labor items, non-stock items, and services, see [Labor Items: General Information](Non_Stock_Item_Projects_GeneralInfo.md), [Non-Stock Items: General Information](Non_Stock_Items_OrderMgmt_GeneralInfo.md), and [Service Items: General Information](Services_GeneralInfo.md), respectively.**Important:** Make sure that *Purchases* is selected in the **Post Cost to Expenses** box on the **Price/Cost** tab; otherwise, the expenses related to the non-stock item won’t be recorded to the cost budget of the applicable project.

Also, make sure that the following accounts are mapped to account groups of the *Expense* type:

-   The expense account of the item specified in the **Expense Account** box on the **GL Accounts** tab of the [Non-Stock Items](IN_20_20_00.md) form
-   The expense account of the corresponding posting class specified in the **COGS/Expense Account** box on the **GL Accounts** tab of the [Posting Classes](IN_20_60_00.md) form if the non-stock item requires a purchase receipt—that is, the **Require Receipt** check box is selected on the **General** tab \(**Item Defaults** section\) of the [Non-Stock Items](IN_20_20_00.md) form

|
|[Stock Items](IN_20_25_00.md) \(IN202500\) form|Make sure that all stock items have been defined. For more information about stock items, see [Stock Items: General Information](Stock_Items_GeneralInfo.md).Also, make sure that the COGS account of the item specified in the **COGS Account** box on the **GL Accounts** tab of the [Stock Items](IN_20_25_00.md) form is mapped to an account group of the *Expense* type.

**Important:** We recommend that you not map the Inventory account \(which is an account of the *Asset* type\) to an account group of the *Expense* type. If you need to track stock items purchased for the project in the project cost budget, we recommend that you use the commitment tracking functionality. For more information, see [Tracking Cost Commitments](Projects_Commitments_Mapref.md).

|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of processing commitments by specifying additional settings as follows:

-   To change the format of purchase order identifiers, adjust the *POORDER* numbering sequence on the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form or create a new numbering sequence and select this sequence in the **Regular Order Numbering Sequence** box on the **General** tab of the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form. For more information on numbering sequences, see [Use of Numbering Sequences](CS__con_Multiple_Numbering_Sequences.md).

    **Attention:** A user can create purchase orders by using the **Create Purchase Orders** button on the **Commitments** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form only if the numbering sequence that is used for numbering purchase orders is auto-numbered.

-   To cause the system to automatically select a project task when a particular project is selected during the creation of a purchase order, select the **Default** check box on the **Tasks** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form for one of the tasks of the project.
-   To avoid obligatory printing of created purchase orders, clear the **Print Orders** check box on the **Purchase Settings** tab \(**Default Location Settings** section\) of the [Vendors](AP_30_30_00.md) \(AP303000\) form for all applicable vendors. \(A user can still print any purchase order of the vendor, if needed.\)
-   To avoid obligatory emailing of created purchase orders, clear the **Send Orders by Email** check box on the **Purchase Settings** tab \(**Default Location Settings** section\) of the [Vendors](AP_30_30_00.md) form for all applicable vendors. \(A user can still email any purchase order of the vendor, if needed.\)
-   To cause the system to automatically release inventory receipts created on release of purchase receipts, select the **Release IN Documents Automatically** check box on the **General** tab \(**Other** section\) of the [Purchase Orders Preferences](PO_10_10_00.md) PO101000 form.
-   To cause the system to create purchase receipts with the *Balanced* status, clear the **Hold Receipts On Entry** check box on the **General** tab \(**Other** section\) of the [Purchase Orders Preferences](PO_10_10_00.md) form.
-   To cause the system to not copy non-stock lines of the *Service* type in purchase orders of the *Normal* type to purchase receipts and bill such lines directly from purchase orders, clear the **Process Service Lines from Normal Purchase Orders via Purchase Receipt** check box on the **General** tab \(**Other** section\) of the [Purchase Orders Preferences](PO_10_10_00.md) form.
-   To cause the system to not copy non-stock lines of the *Service* type in purchase orders of the *Drop-Ship* type to purchase receipts and bill such lines directly from purchase orders, clear the **Process Service Lines from Drop-Ship Purchase Orders via Purchase Receipt** check box on the **General** tab \(**Other** section\) of the [Purchase Orders Preferences](PO_10_10_00.md) form.

With these settings specified, users in your company can process commitments quickly and accurately with a minimum of manual actions.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that you perform instructions similar to those described in [Committed Costs: Process Activity](Projects_Commitments_Process_Activity.md).

**Parent topic:**[Tracking Cost Commitments](../UserGuide/Projects_Commitments_Mapref.md)

