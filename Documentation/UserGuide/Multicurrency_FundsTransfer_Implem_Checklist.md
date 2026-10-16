# Multicurrency Funds Transfers: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for performing funds transfers in a foreign currency, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist

We recommend that before you initially perform funds transfers, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

<table id="_8456b68a-71a5-4335-b144-5a4329e72366"><thead><tr><th>

Form

</th><th>

Settings to Check

</th><th>

Note

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)

</td><td>

Make sure that the *Standard Financials* and *Multicurrency Accounting* features have been enabled.

</td><td>

For details on configuring the multicurrency functionality, see [Multicurrency Functionality: Implementation Activity](../ImplementationGuide/config_Multicurrency_Basic_Implem_Activity.md).

</td></tr><tr><td>

[Chart of Accounts](GL_20_25_00.md) \(GL202500\)

</td><td>

Check whether the necessary accounts have been created.

</td><td>

 

</td></tr><tr><td>

[Cash Accounts](CA_20_20_00.md) \(CA202000\)

</td><td>

Check whether the necessary cash accounts have been configured.

</td><td>

For details on configuring a cash account in a foreign currency, see [Multicurrency Cash Accounts: To Configure an Account](../ImplementationGuide/config_Multicurrency_CashAccount_Implem_Activity.md)

</td></tr><tr><td>

[Company Financial Calendar](GL_20_11_00.md) \(GL201100\)

</td><td>

Make sure that the periods during which funds transfers may occur have a status of *Open*.

</td><td>

You can generate the necessary periods on the [Master Financial Calendar](GL_20_10_00.md) \(GL201000\) form.

 For details on opening financial periods, see [Opening Financial Periods: Process Activity](Finance_OpeningFinPeriods_Process_Activity.md).

</td></tr><tr><td>

[Currency Rates](CM_30_10_00.md) \(CM301000\)

</td><td>

Make sure that the effective currency rate for the currency of the AR invoice has been defined.

</td><td>

For details, see [Configuration of Rate Types and Rates: To Configure Rates](../ImplementationGuide/config_Multicurrency_Configuring_Rates_Activity1.md) and [Configuration of Rate Types and Rates: To Set Up Refreshing of Rates](../ImplementationGuide/config_Multicurrency_Configuring_Rates_Activity2.md).

</td></tr></tbody>
</table>

## Other Settings That Affect the Workflow

You can affect the workflow of configuring foreign currency cash accounts by specifying additional settings on the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form as follows:

-   To cause transactions to be posted to the general ledger when cash documents are released, select the **Automatically Post to GL on Release** check box. If this check box is cleared, you have to post the batch after you release the document.
-   To cause new transactions and funds transfers to be assigned the *Balanced* status when they are entered, clear the **Hold Transactions on Entry** check box in the **Data Entry Settings** section. If the **Hold Transactions on Entry** check box is cleared, the transactions and funds transfers are assigned the *On Hold* status.
-   To make filling in the **Document Ref.** box on the [Funds Transfers](CA_30_10_00.md) \(CA301000\) form mandatory for new funds transfers, select the **Require Document Ref. Nbr. on Entry** check box. If this check box is cleared, you can leave the **Document Ref.** box blank.

## Validation of Configuration

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform funds transfers in a foreign currency by performing instructions similar to those described in [Multicurrency Funds Transfers: Process Activity](Multicurrency_FundsTransfer_Process_Activity.md).

**Parent topic:**[Processing Funds Transfers in Foreign Currencies](../UserGuide/Multicurrency_FundsTransfer_Mapref.md)

