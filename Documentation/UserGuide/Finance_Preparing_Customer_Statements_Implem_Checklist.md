# Customer Statements: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for preparing customer statements.

## Implementation Checklist

We recommend that before you initially prepare customer statements, you make sure settings have been specified and entities have been created, as summarized in the following checklist.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Customer Classes](AR_20_10_00.md) \(AR201000\)

</td><td>

In the **Statement Type** box in the **Default Print and Email Settings** section on the **General Settings** tab, you specify what type of statement the customers assigned to this customer class prefer—balance-forward or open-item.

</td></tr><tr><td>

 

</td><td>

You select the **Print Statements** check box if you want to make this customer's statements available for mass-printing on the [Print Statements](AR_50_35_00.md) \(AR503500\) form.

</td></tr><tr><td>

 

</td><td>

You select the **Send Statements By Email** check box if you want to make this customer's statements available for mass-emailing on the [Print Statements](AR_50_35_00.md) form.

</td></tr><tr><td>

 

</td><td>

You select the **Multi-Currency Statements** check box if you want this customer's statements to be created in multicurrency format. Such statements are displayed for mass-processing \(printing or emailing\) if the **Foreign Currency Statements** check box is selected on the [Print Statements](AR_50_35_00.md) form.

 This check box becomes available if the *Multicurrency Accounting* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

</td></tr><tr><td>

[Statement Cycles](AR_20_28_00.md) \(AR202800\)

</td><td>

Make sure that the *End of Month* statement cycle that you want to use for preparing customer statements has been configured.

</td></tr><tr><td>

[Customers](AR_30_30_00.md) \(AR303000\)

</td><td>

Make sure that the *EOM* statement cycle has been selected for the customer accounts in the **Statement Cycle ID** box in the **Financial Settings** section on the **Financial** tab of the current form.

</td></tr><tr><td>

[Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\)

</td><td>

Make sure that on the **General** tab \(**Consolidation Settings** section\), the *For Each Branch* option is selected in the **Prepare Statements** box.

</td></tr></tbody>
</table>

## Testing of Settings

To make sure that all settings are configured correctly, we recommend that you prepare customer statements as described in [Customer Statements: Process Activity](Finance_Preparing_Customer_Statements_Activity.md).

**Parent topic:**[Preparing Customer Statements](../UserGuide/Finance_Preparing_Customer_Statements_Mapref.md)

