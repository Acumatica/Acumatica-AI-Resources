# Payments with Write-Offs: Implementation Checklist

To ensure that the system is configured properly for creating a credit write-off when you process a payment, make sure that the criteria listed in the table have been met in the system as described.

<table id="_4fa83ee8-736b-466a-8e64-659f447c4dd5"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th><th>

Notes

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)

</td><td>

Make sure the basic features have been enabled, as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md).

</td><td>

 

</td></tr><tr><td>

[Customers](AR_30_30_00.md) \(AR303000\)

</td><td>

Verify the existence of the customer accounts for the customers whose payments you want to process. For details, see [Customers: Implementation Activity](Customer_Implem_Activity.md).

 The needed customer accounts must be specified for write-offs in the **Financial Settings** section on the **Financial** tab as follows:

 -   The **Enable Write-Offs** check box must be selected.
-   A **Write-Off Limit** value must be specified.

</td><td>

 

</td></tr><tr><td>

[Chart of Accounts](GL_20_25_00.md) \(GL202500\)

</td><td>

Verify the existence of the GL accounts to which the write-off amounts will be posted.

</td><td>

The account you use to post credit write-off amounts should be an *Income* account; the account you use to post balance write-off amounts should be an *Expense* account.

</td></tr><tr><td>

[Reason Codes](CS_21_10_00.md) \(CS211000\)

</td><td>

Verify the existence of the reason codes to be used for write offs.

</td><td>

 

</td></tr></tbody>
</table>

## Settings That Affect the Workflow

Be sure that the appropriate settings have been defined as follows:

-   Do the following on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches to be immediately posted after they are released.
    -   Clear the **Generate Consolidated Batches** check box to cause every AR document you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   On the **General Settings** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, do the following:
    -   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the created AR invoices and credit memos the *On Hold* status.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting indicates that AR invoices and credit memos will be automatically posted to the general ledger once they are released.
    -   Clear the **Require Payment Reference on Entry** check box in the **Data Entry Settings** section. With this check box cleared, you do not have to fill in payment reference information in the **Payment Ref.** box on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.

With these settings specified, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions.

**Parent topic:**[Processing Payments with Write-Offs](../UserGuide/Finance_ProcessingCustomerPayment_Mapref.md)

