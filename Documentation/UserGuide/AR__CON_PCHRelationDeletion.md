# Parent-Child Relationships: Relationship Removal {#_57584042-3b30-497e-9e40-78c43a49bae6 .concept}

The structure of companies may change over time, and these changes need to be reflected in the customer accounts in the system.

In this topic, you will read about how to remove parent-child relationships and how this will affect the accounts and documents of the involved customers.

## Deletion of the Relationship {#section_szl_4jv_vxb .section}

You can delete the parent-child relationship between customer accounts at any time. For the child customer account for which you want to sever this relationship, you delete the account selected in the **Parent Account** box on the [Customers](AR_30_30_00.md) \(AR303000\) form \(**Billing** tab\) and save your changes; this removes the relationship.

**Tip:** Before you delete the relationship, make sure that all payment applications of any parent payment to a child document are released or reversed. You cannot save changes in the parent-child relationship if any applications of this type are not released. However, you can reverse the application of any parent payment to a child invoice or memo after the relationship has been changed or removed.

## Impact on Accounts Involved {#section_vzl_4jv_vxb .section}

The deletion of the relationship affects the following aspects of the customer accounts involved:

-   *Balance*: The balance of the former child account remains equal to the total of its open documents. The consolidated balance of the parent account is decreased by the amount of the balance of the former child account.
-   *Status*: The status of child accounts is not changed. For instance, if the parent account had been placed on credit hold, all its child accounts that shared a credit policy were placed on credit hold as well. After the deletion of the relationship, you should make any needed adjustments to the status of each customer account manually.
-   *Credit policy*: If the credit policy was shared, the settings in the **Credit Verification Rules** section on the **General** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form become available for the child accounts but retain their values, except for **Credit Limit**, which is set to *0*.
-   *Statements*: The statements for the future periods are prepared for each account individually according to the statement cycle set for the account.

    **Attention:** When it regenerates a statement, the system uses the settings that were current at the moment the statement was first generated. That is, if the parent-child relationships were active when the statement was generated, the system regenerates statements for all related accounts, even if the parent-child relationship was removed.

-   *Dunning letters*: The dunning level of the child documents is set to *0*, and when preparing dunning letters, the system treats the child accounts as accounts that have never been processed before. The dunning level of the parent documents is not changed. Documents for which the **Revoked** check box has been selected \(of both the parent account and the child accounts\) remain revoked.
-   *Sending of documents*: The settings under the **Print and Email Settings** section on the **Billing** tab of the [Customers](AR_30_30_00.md) form become available for the child accounts but retain their values.

**Parent topic:**[Managing Parent-Child Relationships](../UserGuide/Finance_Parent-Child_Relationship_Mapref.md)

