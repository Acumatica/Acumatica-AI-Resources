# AP Bills with Retainage: Implementation Checklist {#_904721f9-0290-4ff0-9777-f715be44ebe4 .concept}

The following sections provide details you can use to ensure that the system is configured properly for processing AP bills with retainage, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you begin processing AP bills with retainage, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|The following features have been enabled:-   *Retainage Support*
-   *Payment Application by Line*
-   *Projects*
-   *Construction*

|
|[Vendors](AP_30_30_00.md#) \(AP303000\) form|The vendor accounts for the vendors for which you will create AP bills have been defined. Also, make sure that the following retainage settings have been specified for each vendor:-   On the **General** tab, the **Apply Retainage** check box is selected. Optionally, the default retainage percentage is specified in the **Retainage Percent** box.
-   On the **GL Accounts** tab, the **Retainage Payable Account** is specified.

For details, see [AP Bills with Retainage: Configuration of the Default Retainage Settings](Construction_APBill_with_Retainage_GeneralInfo2.md).

|
|[Projects](PM_30_10_00.md#) \(PM301000\) form, **Summary** tab \(**Retainage** section\)|The necessary projects and their project tasks have been created. Also, make sure that the following retainage settings have been specified for the project: -   The retainage mode is selected in the **Retainage Mode** box.
-   The **Retainage \(%\)** box contains the percent to be retained from the amount of the vendor’s bill lines issued for the project.

|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of processing AP bills with retainage by specifying additional settings as follows:

-   The following general ledger settings should be specified on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   To cause GL batches to be immediately posted after they are released, make sure that the **Automatically Post on Release** check box is selected.
    -   To cause every AP transaction you enter to be posted as an individual batch to the general ledger, clear the **Generate Consolidated Batches** check box. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   The following accounts payable settings should be specified on the **General** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form:
    -   To give the created AP bills the *On Hold* status, select the **Hold Documents on Entry** check box in the **Data Entry Settings** section.
    -   To direct the system to automatically remove retainage bills from hold as soon as they are created, clear the **Hold Documents on Entry** check box. With this check box cleared, retainage bills will get the *Pending Approval* status if approvals are set up in your system for the *Bill* document type, or the *Balanced* status if approvals are not used.
    -   Clear the **Require Vendor Reference** check box in the **Data Entry Settings** section to prevent users from having to enter a vendor reference number in the **Vendor Ref.** box when creating an AP bill on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
    -   To cause AP bills to be automatically posted to the general ledger once they are released, make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.
    -   If you want to retain the taxes calculated on the retained amount, select the **Retain Taxes** check box in the **Retainage Settings** section. If you want to pay full tax amount on the bill with retainage, leave this box cleared. For details on tax settings for bills with retainage, see [AP Bills with Retainage: Configuration of the Default Retainage Settings](Construction_APBill_with_Retainage_GeneralInfo2.md).
    -   If you want the system to automatically release retainage bills that you create on the [Release AP Retainage](AP_51_00_00.md#) \(AP510000\) form, you select the **Automatically Release Retainage Documents** check box.

**Parent topic:**[Processing AP Bills with Retainage](../UserGuide/Construction_APBill_with_Retainage_Mapref.md)

