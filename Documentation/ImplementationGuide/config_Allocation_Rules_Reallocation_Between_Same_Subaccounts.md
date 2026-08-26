# Allocation Rules: Allocation Between the Same Accounts and Subaccounts {#_3c58aed1-ae32-450a-9c19-6b5f839b5006 .concept}

If you need to apply the same allocation rule to different accounts and subaccounts, you do not need to create an allocation rule for each account–subaccount pair. When creating an allocation rule on the [Allocations](../UserGuide/GL_20_45_00.md) \(GL204500\) form, you can select the **Allocate Source Accounts Separately** check box on the **Allocation** tab for the new rule. With this check box selected, empty values can be left in the **Account** and **Subaccount** columns on the **Destination Accounts** tab.

For allocation rules that have this check box selected, the system behavior on the [Allocations](../UserGuide/GL_20_45_00.md) form will be the following:

-   For each line on the **Source Accounts** tab, the system will define a list of related account–subaccount pairs with their amounts. The amount of each account–subaccount pair will be distributed based on the account–subaccount pairs listed on the **Destination Accounts** tab. The **Account** column for a transaction will be filled in as follows:
    -   If the **Account** column on the **Destination Accounts** tab is filled in with a value, this account will be copied to the transaction.
    -   If the **Account** column on the **Destination Accounts** tab is empty, the account from the account–subaccount pair on the **Source Accounts** tab will be copied to the transaction.
-   The **Subaccount** column for a transaction will be filled in as follows:
    -   If a line on the **Destination Accounts** tab has a segment in the **Subaccount** column filled in with a value, this segment value will be copied to the transaction.
    -   If a line on the **Destination Accounts** tab has an empty segment in the **Subaccount** column, the segment value from the account–subaccount pair on the **Source Accounts** tab will be copied to the transaction.

**Note:** Because the structure of the *SUBACCOUNT* segmented key can be changed on the [Segmented Keys](../UserGuide/CS_20_20_00.md) \(CS202000\) form when no segment values have been entered yet, it is possible to change this structure after allocations have been created. In this case, you need to manually update allocation rules on the [Allocations](../UserGuide/GL_20_45_00.md) form.

## Example { .section}

Suppose that the **Allocate Source Accounts Separately** check box is selected and *By Percent* is specified in the **Distribution Method** box on the [Allocations](../UserGuide/GL_20_45_00.md) \(GL204500\) form. The following accounts and subaccounts are specified on the **Source Accounts** tab:

|Account|Subaccount|
|-------|----------|
|*60001*|*110*-*000*|
|*60001*|*120*-*000*|
|*60002*|*110*-*000*|
|*60002*|*120*-*000*|

The following accounts, subaccounts, and weight are specified on the **Destination Accounts** tab:

|Account|Subaccount|Weight/Percent|
|-------|----------|--------------|
|Empty|Empty-*500*|20%|
|Empty|Empty-*510*|80%|

With this allocation rule, for the first account–subaccount pair and a transaction with the amount of $100.00, the system will perform allocations on the [Run Allocations](../UserGuide/GL_50_45_00.md) \(GL504500\) form and will generate the following transaction:

|Account|Subaccount|Debit|Credit|
|-------|----------|-----|------|
|*60001*|*110*-*000*|00.00|100.00|
|*60001*|*110*-*500*|20.00|00.00|
|*60001*|*110*-*510*|80.00|00.00|

For the second account–subaccount pair and a transaction with the amount of $100.00, the system will generate the following transaction:

|Account|Subaccount|Debit|Credit|
|-------|----------|-----|------|
|*60002*|*110*-*000*|00.00|100.00|
|*60002*|*110*-*500*|20.00|00.00|
|*60002*|*110*-*510*|80.00|00.00|

**Parent topic:**[Allocation Rules](../ImplementationGuide/config_Allocation_Rules_Mapref.md)

