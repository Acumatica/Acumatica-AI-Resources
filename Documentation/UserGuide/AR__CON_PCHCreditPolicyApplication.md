# Parent-Child Relationships: Credit Policy Application {#_376521c7-55a7-44eb-85cf-d380d363c967 .concept}

You can decide whether to apply the parent account’s credit policy to the new sales orders and invoices of the child accounts. The credit policy is a combination of the credit management settings specified for a customer account in Acumatica ERP; for details, see [Managing Credit Policy](AR__MNG_CreditPolicy.md).

In this topic, you will read about managing credit policy for the parent and child customer accounts.

## Credit Policy Application {#section_cyl_4jv_vxb .section}

For a child customer account, if you have selected the **Consolidate Balance** check box on the [Customers](AR_30_30_00.md) \(AR303000\) form \(on the **Billing Settings** tab\), the **Share Credit Policy** check box becomes available for selection on this form. If you select the **Share Credit Policy** check box for the child account, the credit policy configured for its parent account will be applied to the new sales orders and invoices of the child accounts.

With the **Share Credit Policy** check box selected for a child account, the settings under the **Credit Verification Rules** section on the **General Info** tab of the [Customers](AR_30_30_00.md) form are unavailable and are populated with the corresponding settings specified for the parent account. If you change the credit policy configuration for the parent account, the system will reflect these changed settings in its child accounts that share the credit policy.

**Tip:** If you clear the **Share Credit Policy** check box for a child account, the settings under the **Credit Verification Rules** section of this form become available and remain unchanged, except for **Credit Limit**, which is set to *0*.

## Credit Hold Application {#section_gyl_4jv_vxb .section}

With the **Share Credit Policy** check box selected for a child account on the [Customers](AR_30_30_00.md) \(AR303000\) form, you cannot put the child account on credit hold individually. If you change the status of the parent account to *Credit Hold*, the system will put on credit hold all child accounts that share a credit policy with the parent account.

**Attention:** If a child account previously had the *Hold* or *Inactive* status, its status remains unchanged when you put its parent account on credit hold.

Releasing related accounts from credit hold works similarly to putting these accounts on credit hold. If you release a parent account from credit hold, its child accounts that have the **Share Credit Policy** check box selected are released from credit hold as well.

**Attention:** If you use the [Manage Credit Holds](AR_52_30_00.md) \(AR523000\) form to put an account on credit hold, the list of accounts on this form will not include child accounts with the **Share Credit Policy** check box selected.

## Generation of Consolidated Statements {#section_lyl_4jv_vxb .section}

Customers that have a multibranch hierarchy may want to receive consolidated statements. To arrange this, for child accounts, you select the **Consolidate Statements** check box on the [Customers](AR_30_30_00.md) form \(in the **Parent Info** section of the **Billing Settings** tab\).

For the child accounts, the customer settings related to sending the statements \(in the **Print and Email Settings** section of the **Billing Settings** tab of the form\) are unavailable and are populated with the corresponding settings specified for the parent account.

**Tip:** If you clear the **Consolidate Statements** check box for a child account, the settings related to sending the statements become available but retain their values.

With this configuration, only the parent account is available for statement generation on the [Prepare Statements](AR_50_30_00.md) \(AR503000\) form. The system uses the statement cycle assigned to the parent account.

When you are preparing statements for the parent account, the system includes all documents of child accounts in the statement, grouped by customer account. If the type of the statement is *Open Items*, the system will also print the corresponding subtotal balances for each account involved.

When you generate a consolidated statement for the parent customer account and any number of child customer accounts, if the child customer accounts are assigned to a different statement cycle than the parent account is, the system prepares the statement as follows:

-   The child accounts that have statements generated on the statement date or later are excluded from the processing, and the consolidated statement generated for the parent account does not contain the documents of these child accounts.
-   If a customer account is excluded from the processing, appropriate information is recorded to the trace log. \(You can view the trace log by clicking **Tools** &gt; **Trace** on the form title bar.\) A warning message is displayed on the [Prepare Statements](AR_50_30_00.md) form informing you that some customers were not processed.

## Generation of Consolidated Dunning Letters {#section_syl_4jv_vxb .section}

If the *Dunning Letter Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the system consolidates the overdue documents of a parent account and its child accounts that have the **Share Credit Policy** check box selected on the [Customers](AR_30_30_00.md) \(AR303000\) form. The system sends the dunning letters to the contact specified for the parent account.

For the child accounts, the customer settings related to sending the dunning letters \(in the **Print and Email Settings** section of the **Billing Settings** tab of the [Customers](AR_30_30_00.md) form\) are unavailable and are populated with the corresponding settings specified for the parent account.

**Tip:** If you clear the **Share Credit Policy** check box for a child account, the settings related to sending the dunning letters become available but retain their values.

With this configuration, only the parent account is available for dunning letter generation on the [Prepare Dunning Letters](AR_52_10_00.md) \(AR521000\) form. The system uses the parent-child group data to generate dunning letters. The documents in the dunning letter are grouped by customer account.

**Attention:** The calculation of overdue charges \(if configured\) is performed for each customer account individually, regardless of the configuration of parent and child accounts. Separate overdue charge documents are issued to customer accounts.

**Parent topic:**[Managing Parent-Child Relationships](../UserGuide/Finance_Parent-Child_Relationship_Mapref.md)

