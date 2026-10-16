# Credit Memos in Foreign Currencies: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for applying a credit memo in a foreign currency to an invoice, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist

We recommend that before you initially create a credit memo, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

<table id="_5b33edc5-21bb-437e-87ed-195dc992d67f"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\)

</td><td>

Make sure that the *Standard Financials* and *Multicurrency Accounting* features have been enabled.

For details on configuring the multicurrency functionality, see [Multicurrency Functionality: Implementation Activity](../Shared/../ImplementationGuide/config_Multicurrency_Basic_Implem_Activity.md).

</td></tr><tr><td>

[Customers](../Shared/../UserGuide/AR_30_30_00.md) \(AR303000\)

</td><td>

Make sure that the customer accounts for the customers for which you will create AR documents have been defined.

</td></tr><tr><td>

[Currency Rates](../Shared/../UserGuide/CM_30_10_00.md) \(CM301000\)

</td><td>

Make sure that the effective currency rate for the currency of the AR document has been defined.

For details, see [Configuration of Rate Types and Rates: To Configure Rates](../Shared/../ImplementationGuide/config_Multicurrency_Configuring_Rates_Activity1.md) and [Configuration of Rate Types and Rates: To Set Up Refreshing of Rates](../Shared/../ImplementationGuide/config_Multicurrency_Configuring_Rates_Activity2.md).

</td></tr></tbody>
</table>

## Other Settings That Affect the Workflow

You can affect the workflow of processing credit memos by specifying additional settings as follows:

-   On the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   To cause GL batches to be immediately posted after they are released, select the **Automatically Post on Release** check box.
    -   To cause every AR transaction you enter to be posted as an individual batch to the general ledger, clear the **Generate Consolidated Batches** check box. If this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.
-   On the **General Settings** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form:
    -   To cause all created credit memos to have the *Balanced* status, clear the **Hold Documents on Entry** check box in the **Data Entry Settings** section. If this check box is selected, the created credit memos are assigned the *On Hold* status.
    -   To make entering a payment reference number in the **Payment Ref.** box mandatory when creating a payment on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, select the **Require Payment Reference on Entry** check box in the **Data Entry Settings** section. If this check box is cleared, you can leave the **Payment Ref.** box empty when creating a payment.
    -   To cause credit memos to be automatically posted to the general ledger once they are released, select the **Automatically Post on Release** check box in the **Posting Settings** section. If this check box is cleared, you have to post the batch after you release the document.

## Validation of Configuration

To make sure that all configuration has been performed correctly, we recommend that in your system, you create and apply credit memos in a foreign currency by performing instructions similar to those described in [Credit Memos in Foreign Currencies: Process Activity](Multicurrency_CreditMemo_Process_Activity.md).

**Parent topic:**[Applying Credit Memos in Foreign Currencies to Invoices](../UserGuide/Multicurrency_CreditMemo_Mapref.md)

