# Joint Payments: Implementation Checklist {#_b8b8720c-8edf-4441-a2f0-7d3d81d7d4b1 .concept}

The following sections provide details you can use to ensure that the system is configured properly for processing joint payments, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially processing joint payments, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure that the *Construction* feature is enabled.|
|[Vendors](AP_30_30_00.md) \(AP303000\)|Verify the existence of the vendor records for the main vendor and, optionally, for joint payees. For details, see [Vendors: Implementation Activity](Vendor_Implem_Activity.md).|
|[Projects](PM_30_10_00.md#) \(PM301000\) form|Make sure that the necessary project and project tasks have been created.|
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\)|Verify the existence of non-stock items that can be used when creating AP bills. For details, see [Labor Items: General Information](Non_Stock_Item_Projects_GeneralInfo.md).|

## Settings That Affect the Workflow { .section}

You can affect the joint payment processing workflow by specifying additional system settings as follows:

-   On the [Bills and Adjustments](AP_30_10_00.md#) \(AP301000\) form, for a particular bill with joint payees, you can select the **Pay by Line** check box. In this case, you will be able to specify for which line each payee will receive payment on the **Joint Payees** tab. On release of the related payment, the balance of the line will be decreased.

    If the **Pay by Line** check box is cleared, you specify the amount to be received by each joint payee and by the main vendor. On release of the related payment, the balance of the bill will be decreased.

-   The following general ledger settings should be specified on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches to be immediately posted after they are released.
    -   Clear the **Generate Consolidated Batches** check box to cause every AP transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   The following accounts payable settings should be specified on the **General** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form:
    -   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the created AP bills the *On Hold* status.
    -   Clear the **Require Vendor Reference** check box in the **Data Entry Settings** section. This setting means that you do not have to enter a vendor reference number in the **Vendor Ref.** box when creating an AP bill on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting indicates that AP bills will be automatically posted to the general ledger once they are released.

With these settings specified and entities defined, users in your company can record and process joint payments in Acumatica ERP quickly and accurately, with a minimum of manual actions.

## Testing of Settings { .section}

To make sure that all settings are configured correctly, we recommend that you process joint payments, as described in [Joint Payments: Process Activity](Construction_Joint_Payees_Process_Activity.md).

**Parent topic:**[Processing Joint Payments](../UserGuide/Construction_Joint_Payees_Mapref.md)

