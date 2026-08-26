# Expense Returns to Corporate Cards: Implementation Checklist {#_1e5bf70f-45fd-4fb4-8c2a-dec25a2d04a2 .concept}

The following sections provide details that you can use to ensure that the system is configured properly for processing expense returns to corporate cards, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially process expense returns to corporate cards, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Corporate Cards](CA_20_25_00.md) \(CA202500\)|The corporate card has been configured. For more information, see [Corporate Cards: General Information](../ImplementationGuide/Corporate_Card_GeneralInfo.md).|
|[Employees](EP_20_30_00.md#) \(EP203000\) form|The employees who are going to use the corporate cards have been created. For more information, see [Employee Settings](OS__con_Employee_Settings.md).|
|[Non-Stock Items](IN_20_20_00.md#) \(IN202000\) form|The inventory items to be used in expense receipts have been created, and the *Expense* type has been specified for the items.|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of processing expense returns to corporate cards by specifying additional settings on the [Time and Expenses Preferences](EP_10_10_00.md#) \(EP101000\) form, as follows:

-   To cause the system to make a newly created expense claim have the *On Hold* status by default, select the **Hold Expense Claims on Entry** check box.
-   To cause the system to create a single cash purchase or cash return for each group of expense claim lines that are paid with a corporate card and have the same date, corporate card, reference number, and tax calculation mode, select the **Post Summarized Company Expenses by Corporate Card** check box. If the check box is cleared, which is the default state, the system creates a separate cash purchase \(if the total amount of lines is positive or equals *0*\) or cash return \(if the total amount of lines is negative\) for each expense claim line that is paid with a corporate card.
-   To make it optional to specify a value in the **Ref. Nbr.** box on the **Details** tab \(**Expense Details** section\) of the [Expense Receipts](EP_30_10_10.md#) \(EP301010\) form, clear the **Require Ref. Nbr. in Expense Receipts** check box. If this check box is selected, users must specify a value in the **Ref. Nbr.** box.
-   To cause the system to automatically release corresponding accounts payable documents created on release of an expense claim, select the **Automatically Release AP Documents** check box.

With these settings specified, users in your company can process expense returns quickly and accurately with a minimum of manual actions.

**Parent topic:**[Processing Expense Returns to Corporate Cards](../UserGuide/TimeExpenses_Expense_Returns_Mapref.md)

