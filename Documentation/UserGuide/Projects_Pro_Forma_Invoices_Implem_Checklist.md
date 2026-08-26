# Pro Forma Invoices: Implementation Checklist {#_a53a0b58-16a1-4385-a86e-d9aead34d413 .concept}

The following sections provide details you can use to ensure that the system is configured properly for processing pro forma invoices, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially process pro forma invoices, you make sure the needed settings have been specified and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Projects Preferences](PM_10_10_00.md) \(PM101000\) form|Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see [Basic Project Configuration: General Information](../ImplementationGuide/config_Project_Basic_GeneralInfo.md).|
|[Billing Rules](PM_20_70_00.md) \(PM207000\) form|Make sure that all needed billing rules have been configured in the system. For more information about billing rules, see [Billing Rules: General Information](Billing_Rules_GeneralInfo.md).|
|[Projects](PM_30_10_00.md) \(PM301000\) form|Make sure that the project has been created and prepared for billing. For more details, see [Project Creation and Processing: General Information](Projects_Process_GeneralInfo.md).

 For each project for which you want to turn on the pro forma invoice workflow, make sure that the **Create Pro Forma on Billing** check box is selected on the **Summary** tab \(**Billing and Allocation Settings** section\).

|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of processing pro forma invoices by specifying additional settings as follows:

-   To change the format of pro forma invoice identifiers, adjust the *PROFORMA* numbering sequence on the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form, or create a new numbering sequence and select this sequence in the **Pro Forma Numbering Sequence** box on the **General** tab \(**Numbering Sequence** section\) of the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form. For more information on numbering sequences, see [Use of Numbering Sequences](CS__con_Multiple_Numbering_Sequences.md).

    **Important:** Pro forma invoice identifiers must be assigned only automatically. That is, the **Manual Numbering** check box must be cleared in the Summary area of the [Numbering Sequences](CS_20_10_10.md) form for the numbering sequence used for pro forma invoices.

    By default, the *PROFORMA* numbering sequence specifies that the pro forma invoice identifier is an automatically generated numeric string of six digits, such as *000001*.

-   To give accounts receivable invoices, including those created based on pro forma invoices, the *On Hold* status on creation, select the **Hold Documents on Entry** check box on the **General** tab \(**Data Entry Settings** section\) of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form.
-   To make sending by email accounts receivable invoices optional, including those created based on pro forma invoices that have been agreed upon with the customer, clear the **Send Invoices by Email** check box on the **Billing Settings** tab \(**Print and Email Settings** section\) of the [Customers](AR_30_30_00.md) \(AR303000\) form for applicable customers.
-   To make printing accounts receivable invoices optional, including those created based on pro forma invoices that have been agreed upon with the customer, clear the **Print Invoices** check box on the **Billing Settings** tab \(**Print and Email Settings** section\) of the [Customers](AR_30_30_00.md) form for applicable customers.
-   To cause the system to automatically post general ledger transactions generated on release of all accounts receivable invoices, select the **Automatically Post on Release** check box on the **General** tab \(**Posting Settings** section\) of the [Accounts Receivable Preferences](AR_10_10_00.md) form.
-   To cause the system to post every accounts receivable document as an individual batch to the general ledger, clear the **Generate Consolidated Batches** check box in the **Posting Settings** section of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form.

With these settings specified, users in your company can process pro forma invoices quickly and accurately with a minimum of manual actions.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process a pro forma invoice by performing instructions similar to those described in [Pro Forma Invoices: To Process a Pro Forma Invoice for a Project](Projects_Pro_Forma_Invoices_Process_Activity.md).

**Parent topic:**[Processing Pro Forma Invoices](../UserGuide/Projects_Pro_Forma_Invoices_Mapref.md)

