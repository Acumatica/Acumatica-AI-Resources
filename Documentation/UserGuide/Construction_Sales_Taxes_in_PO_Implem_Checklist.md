# Purchases with a Sales Tax: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for creating an AP bill with a sales tax applied automatically, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist

We recommend that before you initially create an AP bill with a sales tax applied automatically, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

<table id="_3cb8d828-c6d5-4c44-8fe3-95eb5339c697"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Chart of Accounts](GL_20_25_00.md#) \(GL202500\) form

</td><td>

The tax-related accounts have been created.

</td></tr><tr><td>

[Tax Zones](TX_20_60_00.md)\(TX206000\)

</td><td>

All needed tax zones have been created.

</td></tr><tr><td>

[Tax Categories](TX_20_55_00.md) \(TX205500\)

</td><td>

The needed tax categories for all goods or services \(which are represented as stock items and non-stock items in Acumatica ERP\) that your company buys have been created.

</td></tr><tr><td>

[Taxes](TX_20_50_00.md) \(TX205000\)

</td><td>

The sales taxes that your company uses have been created. The settings for the tax include the tax rate, the tax calculation method, the tax validity period \(if any\), and other required parameters. **Note:** The **Tax Expense** account specified on the **GL Accounts** tab must be mapped to an expense account group.

</td></tr><tr><td>

[Vendors](AP_30_30_00.md) \(AP303000\)

</td><td>

For each tax agency to which you will submit tax reports, a vendor account with the **Vendor is Tax Agency** check box selected have been created.

 The needed vendors and subcontractors in the Accounts Payable subledger have been created. Depending on the geographical location of the purchase transaction, different taxes can be applied to the document. To define which taxes are applied in the location of your vendor, the appropriate tax zone to each new or existing vendor has to be assigned.

</td></tr><tr><td>

[Stock Items](IN_20_25_00.md)\(IN202500\), [Non-Stock Items](IN_20_20_00.md) \(IN202000\)

</td><td>

To calculate tax amounts in the documents in which you specify inventory IDs, the necessary stock items \(for goods\) and non-stock items \(for services\) have been created and associated with the appropriate tax category.

</td></tr></tbody>
</table>

## Other Settings That Affect the Workflow

The following settings and entities should be specified and defined, respectively:

-   The following general ledger settings should be specified on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches to be immediately posted after they are released.
    -   Clear the **Generate Consolidated Batches** check box to cause every AP transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   The following accounts payable settings should be specified on the **General** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form:
    -   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the created AP bills the *On Hold* status.
    -   Clear the **Require Vendor Reference** check box in the **Data Entry Settings** section. This setting means that you do not have to enter a payment reference number in the **Vendor Ref.** box when creating an AP bill on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting causes AP bills to be automatically posted to the general ledger once they are released.

With these settings specified and entities defined, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions.

**Parent topic:**[Working with Sales Taxes in Purchase Orders](../UserGuide/Construction_Sales_Taxes_in_PO_Mapref.md)

