# Approval Configuration: General Information {#_ec768874-a269-45c3-89b6-ed447c48cece .concept}

In Acumatica ERP, you can set up approvals for various types of records in the system.

## Learning Objectives { .section}

In this chapter, you will learn how to perform the initial configuration for the approval functionality. In particular, you will do the following:

-   Enable the feature that activates the approval functionality
-   Learn about the preference settings that have to be specified for records to be approved
-   Learn how to create an approval map for a particular entity type

## Applicable Scenarios { .section}

You perform the configuration of the approval functionality if the company that you are configuring needs to assign records to authorized employees for approval. Acumatica ERP offers the approval functionality for a variety of records, as described in the [Setup of Specific Approvals](#_84d86707-a5c1-4b07-b66f-1b064da0bbf9) section of this topic.

Before users can start approving records in the system, you configure the approval functionality in the system by performing the following general steps:

-   Enabling the *Approval Workflow* feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS101000\) form.
-   Creating at least one approval map for each entity type whose records will be approved by using the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form.
-   Optionally, creating notification templates by using the [Email Templates](../UserGuide/SM_20_40_03.md) \(SM204003\) form. These templates can be used to notify approvers of records that require their review.
-   Specifying approval settings on the preferences form for the record types for which you have created an approval map. \(See the [Setup of Specific Approvals](#_84d86707-a5c1-4b07-b66f-1b064da0bbf9) section of this topic for details about these forms.\)

## Approval Map Creation { .section}

An *approval map* is used for assigning approvers to records of a particular entity type. By clicking the **Add Approval Map** button on the form toolbar of the [Assignment and Approval Maps](../UserGuide/EP_20_55_00.md) \(EP205500\) form, you can open the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form and start creating an approval map.

**Tip:** The options in the **Entity Types** box correspond to the names of the creation forms for these records. The availability of entity types depends on the applied license and the set of features enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) form. For more information about licensing, see the Acumatica ERP sales policy.

You use the [Assignment and Approval Maps](../UserGuide/EP_20_55_00.md) form as a starting point to modify an existing approval map. The form lists all existing assignment maps and approval maps, and the name of each map is a link that you can click to open the map.

For details about approval maps, see [Approval Configuration: Approval Maps](config_Approvals_Create_Approval_Maps.md).

## Approval and Rejection Reasons { .section}

Your organization may need approvers to enter a reason when they approve or reject a document. You set up approval and rejection reasons on the **Rule Actions** tab \(**Reason Settings** section\) of the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form.

By default, the **Reason for Approval** and **Reason for Rejection** boxes contain *Is Not Prompted*. To make approvers enter reason codes when approving or rejecting documents, you select one of the following options in the needed boxes:

-   *Is Optional*: The approver will be prompted to enter a reason when they approve or reject a document, but the reason is an optional setting.
-   *Is Required*: The approver will be prompted to enter a reason when they approve or reject a document, and the reason must be specified.

For an entity type with optional or required approval configured, when a user approves or rejects a document of the type on the data entry form, the system displays the **Enter Reason** dialog box. The approver enters the reason for approval or rejection in this dialog box and clicks **OK**.

The reason is also displayed on the **Approvals** tab of the data entry forms that support the entry of approval and rejection reasons.

## Notification Template Preparation { .section}

Optionally, you can prepare notification templates and use them for approval notifications in Acumatica ERP. These notification templates are designed to inform authorized employees via email when a document requires their approval. This is an optional step; authorized users can approve and reject records regardless of whether they receive notifications. You can create new templates or edit existing ones by using the [Email Templates](../UserGuide/SM_20_40_03.md) \(SM204003\) form.

For the notification template to be used, it must be specified along with the approval map on the applicable preferences form. For more information about approval notifications, see [Approval Configuration: Pending Approval Notifications](config_Approvals_Notifications.md).

## Setup of Specific Approvals {#_84d86707-a5c1-4b07-b66f-1b064da0bbf9 .section}

The creation of an approval map does not cause records of the entity type to be subject to approval until you modify the applicable system preferences to use the approval map.

For each entity type for which you have created at least one approval map, you must specify an approval map for the specific type of record on the preferences form associated with the entity type. In some cases, you can create multiple approval maps for the same entity type, with each designed for different record types, and specify both maps for the record types on the preferences form. For example, you can create two approval maps for purchase orders, with one designed for project drop-ship purchase orders and one designed for purchase orders of other types. On the [Purchase Orders Preferences](../UserGuide/PO_10_10_00.md) \(PO101000\) form, you specify the map to be used for each purchase order type.

If you have created notification templates to be used for the records of any entity type, you can also specify them on the preferences form.

The applicable preferences form where you specify the approval map depends on the **Entity Type** selected on the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form as follows:

-   [Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\) to set up approvals for AP documents of particular types \(bills, credit adjustments, debit adjustments, prepayment requests, payments, prepayments, or cash purchases\). On this form, you can specify approval maps for which one of the following entity types is selected on the [Approval Maps](../UserGuide/EP_20_50_15.md) form: *Bills and Adjustments*, *Checks and Payments*, or *Cash Purchases*.
-   [Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) \(AR101000\) to set up approvals for AR documents of particular types: invoices, prepayment invoices, debit memos, credit memos, refunds, or cash returns. On this form, you can specify approval maps for which one of the following entity types is selected on the [Approval Maps](../UserGuide/EP_20_50_15.md) form: *Invoices and Memos*, *Payments and Applications*, or *Cash Sales*.
-   [BOM Preferences](../UserGuide/AM_10_10_00.md) \(AM101000\) to set up approvals for engineering change orders or requests. On this form, you can specify approval maps for which one of the following entity types is selected on the [Approval Maps](../UserGuide/EP_20_50_15.md) form: *Engineering Change Order* or *Engineering Change Request*.
-   [Cash Management Preferences](../UserGuide/CA_10_10_00.md) \(CA101000\) to set up approvals for cash transactions and reconciliation statements. On this form, you can specify approval maps for which the *Cash Transactions* or *Reconciliation Statements* entity type is selected on the [Approval Maps](../UserGuide/EP_20_50_15.md) form.
-   [Customer Management Preferences](../UserGuide/CR_10_10_00.md) \(CR101000\) to set up approvals for sales quotes. On this form, you can specify an approval map for which the *Sales Quotes* entity type is selected on the [Approval Maps](../UserGuide/EP_20_50_15.md) form.

    **Attention:** This approval map can be applied to sales quotes created on the [Sales Quotes](../UserGuide/CR_30_45_00.md) \(CR304500\) form, not sales orders of the *QT* type created on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form.

-   [General Ledger Preferences](../UserGuide/GL_10_20_00.md) \(GL102000\) to set up approvals for journal transactions of particular types \(normal, consolidation, trial balance, reclassification, or allocation\). On this form, you can specify approval maps for which the *Journal Transactions* entity type is selected on the [Approval Maps](../UserGuide/EP_20_50_15.md) form.
-   [Project Management Preferences](../UserGuide/PJ_10_10_00.md) \(PJ101000\) to set up approvals for daily field reports. On this form, you can specify an approval map for which the *Daily Field Report* entity type is selected on the [Approval Maps](../UserGuide/EP_20_50_15.md) form.
-   [Projects Preferences](../UserGuide/PM_10_10_00.md) \(PM101000\) to set up approvals for projects and project-related documents. On this form, you can specify approval maps for which one of the following entity types is selected on the [Approval Maps](../UserGuide/EP_20_50_15.md) form: *Projects*, *Pro Forma Invoices*, *Change Orders*, *Change Requests*, *Project Quotes*, *Cost Projection*, *Cost Projection by Date*, or *Progress Worksheets*.
-   [Purchase Orders Preferences](../UserGuide/PO_10_10_00.md) \(PO101000\) to set up approvals for purchase orders of particular types \(normal, drop-ship, project drop-ship, blanket, or standard\). On this form, you can specify approval maps for which the *Purchase Orders* entity type is selected on the [Approval Maps](../UserGuide/EP_20_50_15.md) form.
-   [Purchase Requisitions Preferences](../UserGuide/RQ_10_10_00.md) \(RQ101000\) to set up approvals for purchase requests and requisitions. On this form, you can specify approval maps for which one of the following entity types is selected on the [Approval Maps](../UserGuide/EP_20_50_15.md) form: *Requests* or *Requisitions*.
-   [Subcontracts Preferences](../UserGuide/SC_10_10_00.md) \(SC101000\) to set up approvals for subcontracts. On this form, you can specify an approval map for which the *Subcontracts* entity type is selected on the [Approval Maps](../UserGuide/EP_20_50_15.md) form.
-   [Sales Orders Preferences](../UserGuide/SO_10_10_00.md) \(SO101000\) to set up approvals for various types of documents. On this form, you can specify approval maps for which one of the following entity types is selected on the [Approval Maps](../UserGuide/EP_20_50_15.md) form:
    -   *Sales Orders*: You can specify a map for orders with any custom or predefined order type.
    -   *Invoices*: You can specify a map for any of the following types of sales documents: invoices, credit memos, debit memos, cash sales, or cash returns.

        **Attention:** The records for which the *Invoices* entity type is used are created on the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form; the *Invoices and Memos* entity type refers to AR documents created on the [Invoices and Memos](../UserGuide/AR_30_10_00.md) \(AR301000\) form.

-   [Time and Expenses Preferences](../UserGuide/EP_10_10_00.md) \(EP101000\) form to set up approvals for various records related to employees' time and expenses. On this form, you can specify approval maps for which one of the following entity types is selected on the [Approval Maps](../UserGuide/EP_20_50_15.md) form: *Employee Time Cards*, *Equipment Time Cards*, *Expense Claim*, or *Expense Receipt*.

**Parent topic:**[Configuring Approvals](../ImplementationGuide/config_Approvals_Functionality.md)

