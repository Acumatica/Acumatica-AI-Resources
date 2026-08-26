# Direct Write-Offs: Implementation Checklist {#_288fcb1c-340c-4a73-8e8b-00aac0b7ae85 .concept}

The following sections provide details you can use to ensure that the system is configured properly for performing direct write-offs, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially perform write-offs, you make sure the needed settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Chart of Accounts](GL_20_25_00.md) \(GL202500\)|You have created a GL account of the *Expense* type and a corresponding subaccount \(if applicable in your system\) to record each written-off amount. You can use one expense, income, or contra asset GL account for both types of write-off processes or use separate GL accounts for balance and credit write-offs. For details, see [To Add an Account to the Chart of Accounts](GL__HOW_To_Add_an_Account_to_the_Chart_of_Accounts.md).|
|[Customers](AR_30_30_00.md) \(AR303000\)|You have verified the existence of the customer accounts for the customers for which you will record credit and balance write-offs. For details, see [Customers: Implementation Activity](Customer_Implem_Activity.md).|
|[Reason Codes](CS_21_10_00.md) \(CS21100\)|You have verified the existence of the *BALWOFF* and *CRWOFF* reason codes that will be used for direct write-offs.|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of processing write-offs by specifying additional settings as follows:

-   To cause the system to assign separate reference numbers to write-offs, you apply the following settings:
    1.  You create a numbering sequence for write-offs on the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form.
    2.  You select the created numbering sequence in the **Write-Off Numbering Sequence** box on the **General** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form.
-   On the [Accounts Receivable Preferences](AR_10_10_00.md) form, make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting indicates that AR documents will be automatically posted to the general ledger once they are released.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you write off balances by performing instructions similar to those described in [Direct Write-Offs: To Process a Credit Write-Off](Finance_Direct_Write-Offs_Credit_WO_Activity.md) and [Direct Write-Offs: To Process a Balance Write-Off](Finance_Direct_Write-Offs_Balance_WO_Activity.md).

**Parent topic:**[Processing Direct Write-Offs](../UserGuide/Finance_Direct_Write-Offs_Mapref.md)

