# Purchases to the Project Site with a Receipt: Implementation Checklist {#_54191052-0009-4261-a456-4b23ac415685 .concept}

The following sections provide details you can use to ensure that the system is configured properly for the processing of purchases for projects with drop-shipping to the project site and with receipt processing, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_ulm_zxs_4qb .section}

Before you initially process a project-related purchase to a project site with receipt processing, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure that the *Inventory and Order Management*, *Inventory*, and *Projects* features are enabled.|
|Multiple forms|Make sure that all necessary settings related to order management have been specified, as described in [Configuration of Order Management: Implementation Activity](../ImplementationGuide/config_InvMgmt_Basic_Implem_Activity.md).|
|[Vendors](AP_30_30_00.md) \(AP303000\) form|Make sure that all needed vendors have been configured, as described in [Vendors: Implementation Activity](Vendor_Implem_Activity.md).|
|[Stock Items](IN_20_25_00.md) \(IN202500\) form|Make sure that the needed stock items have been configured, as described in [Stock Items: Implementation Activity](Stock_Items_Implem_Activity.md).|
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\) form|Make sure that the needed non-stock items have been configured, as described in [Non-Stock Items: Implementation Activity](Non_Stock_Items_OrderMgmt_Implem_Activity.md).|

## Project Settings {#section_usx_ntz_4qb .section}

Before you initially process a purchase for a project with drop shipping and receipt processing, you should make sure that the project accounting functionality is configured and the project has specific settings, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Projects Preferences](PM_10_10_00.md) \(PM101000\) form|Make sure that all necessary settings related to project accounting have been specified, as described in [Basic Project Configuration: General Information](../ImplementationGuide/config_Project_Basic_GeneralInfo.md).

 Also, select the **Internal Cost Commitment Tracking** check box to track purchase orders as project cost commitments and to see committed values in the project cost budget.

|
|[Projects](PM_30_10_00.md) \(PM301000\)|Make sure that the necessary projects and project tasks have been created, and that the following settings have been specified for the projects on the **Defaults** tab:-   **Drop-Ship Receipt Processing**: *Generate Receipt*

With this setting, the processing of a purchase order of the *Project Drop-Ship* type involves the processing of a purchase receipt.

-   **Record Drop-Ship Expense**: *On Receipt Release*

With this setting, purchase expenses will be recorded to the project on release of the purchase receipt.


|

## Other Settings That Affect the Workflow {#section_vlm_zxs_4qb .section}

You can affect the processing workflow by specifying additional settings as follows:

-   To change the format of project drop-ship order identifiers, adjust the predefined *POORDER* numbering sequence on the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form, or create a new numbering sequence and select this sequence in the **Regular Order Numbering Sequence** box on the **General** tab of the [Purchase Orders Preferences](PO_10_10_00.md) \(SC101000\) form. For more information on numbering sequences, see [Use of Numbering Sequences](CS__con_Multiple_Numbering_Sequences.md).

    **Important:** A user can create project drop-ship orders by clicking the **Create Drop-Ship** button on the **Commitments** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form only if the numbering sequence that is used for numbering project drop-ship orders is automatically numbered.

-   To record expenses to the project budget on release of the accounts payable bill, select *On Bill Release* in the **Record Drop-Ship Expense** box of the [Projects](PM_30_10_00.md) \(PM301000\) form for the project.
-   To create new projects so that the drop-ship purchases will be processed with receipts by default, select *Generate Receipt* in the **Drop-Ship Receipt Processing** box and *On Receipt Release* in the **Record Drop-Ship Expense** box on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form and in the settings of the project templates on the [Project Templates](PM_20_80_00.md) \(PM208000\) form.
-   To reduce input errors when users enter orders, set up the validation of order totals by selecting the **For Project Drop-Ship Orders** check box in the **Validate Total on Entry** section of the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form.
-   To cause the system to create accounts payable bills with the *Balanced* status, clear the **Hold Documents on Entry** check box on the **General** tab \(**Data Entry Settings** section\) of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form.
-   To cause the system to automatically post general ledger batches generated during the processing of purchase and accounts payable documents, select the **Automatically Post on Release** check box in the **Posting Settings** section on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form.

With these settings specified, users in your company can process purchases on projects quickly and accurately with a minimum of manual actions.

## Known Project Drop-Ship Limitations { .section}

The following limitations apply to the project drop-ship functionality:

-   A project drop-ship order cannot be created from a change order or from a sales order.
-   Landed costs cannot be applied to a project drop-ship order.
-   The purchase price variance is always recorded in the bill transaction, regardless of the option that is specified in the **Allocation Mode** box on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form.

**Parent topic:**[Purchasing Materials to Project Site with Receipt](../UserGuide/Projects_Purchase_with_Receipt_Mapref.md)

