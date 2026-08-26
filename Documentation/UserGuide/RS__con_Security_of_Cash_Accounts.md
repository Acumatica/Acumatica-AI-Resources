# Security of Cash Accounts {#_17773f6b-6529-4256-bc2f-e3ee002d6bf5 .concept}

Cash is a company's most liquid asset, which is why an organization must have adequate controls to secure it. In Acumatica ERP, you can control which users can view which particular cash accounts, as described in this topic.

**Tip:** In Acumatica ERP, you can configure groups with direct and inverse restriction. In this topic, for simplicity, groups with direct restriction are used in examples. You can use inverse restriction groups in the same way as you use direct restriction groups. For details on the types of restriction groups, see [Types of Restriction Groups](../Shared/../UserGuide/SM__con_Types_of_Restriction_Groups.md).

## Usage Scenarios { .section}

The most common scenarios of managing the security of cash accounts are the following:

-   Managing the visibility by branch: If your organization consists of multiple branches, you can allow users in each branch to work with only branch-specific cash accounts. For details, see [Visibility of Cash Accounts by Branch](#_088efbe7-8b38-467b-a652-779666dc1a09).

    **Note:** You can configure multiple branches only if the *Multibranch Support* feature is enabled on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form. If the *Multibranch Support* feature is disabled, all cash accounts belong to a single branch and are visible to all users who are allowed to view the accounts, based on their membership in restriction groups.

-   Managing the visibility by user: If only a limited number of users can work with cash accounts, you can configure the visibility of the cash accounts to only these users. For more information, see [Visibility of Cash Accounts by User](#_08082c32-767d-4706-9ccf-07761b8dd4c2).

## Visibility of Cash Accounts by Branch {#_088efbe7-8b38-467b-a652-779666dc1a09 .section}

The visibility of a cash account can be restricted based on the branch to which the account belongs. Consider a user who is allowed to view multiple branches due to this user's assigned branch roles. On the data entry forms, this user can view the cash accounts of all the branches this user is allowed to view, based on the branch selected in the **Branch** box of the data entry form \(which is filled by default with the branch to which the user is currently signed in\).

To restrict the visibility of a cash account by branch, you should do the following:

1.  On the [Cash Accounts](../Shared/../UserGuide/CA_20_20_00.md) \(CA202000\) form, you select a cash account, select the **Restrict Visibility with Branch** check box, and save your changes.

    With this check box selected, the cash account is visible to only users who can select the branch \(specified for the cash account\) in the **Branch** box on the data entry forms. \(If the **Restrict Visibility with Branch** check box is cleared for a cash account, this cash account will be visible regardless of the selected branch.\)

    **Note:** If the **Branch** box is absent on a data entry form, then the visibility of the cash account is defined by the branch to which the user is currently signed in.

2.  You repeat this step for each cash account whose visibility you want to control.

    You can control the visibility of cash accounts across branches regardless of the state of the *Multibranch Support* and *Inter-Branch Transactions* features. In all these cases, you control the visibility of a cash account by selecting or clearing the **Restrict Visibility with Branch** check box.


Alternatively, you can restrict access to cash accounts by using branch roles in the same way as for GL accounts. For details, see [Account and Subaccount Security](../Shared/../UserGuide/RS__con_Account_and_Subaccount_Security.md).

## Visibility of Cash Accounts by User {#_08082c32-767d-4706-9ccf-07761b8dd4c2 .section}

You can control the visibility of a specific cash account to users \(that is, which users can view the account\) with the help of restriction groups.

For example, suppose that there is only one accountant in your organization and only this person should work with a cash account in the system. To restrict the visibility of the cash account, you should do the following on the [GL Account Access](../Shared/../UserGuide/GL_10_40_00.md) \(GL104000\) form:

1.  You create a restriction group \(for example, *Access to Cash Account*\) with direct restriction.
2.  You add to the group the user account of the accountant.
3.  You add to the group the GL account the cash account is linked to.

CAUTION:

We recommend that you carefully design and configure restriction groups containing accounts, so that a user can view the accounts he or she needs for work. Otherwise, a user may encounter problems with processing transactions of the linked cash accounts.

## Forms for Security of Cash Accounts { .section}

In the following table, you can find the list of the forms that you can use to manage restriction groups with cash accounts and the tasks that you can solve by using each form.

|Task|Form|
|----|----|
|To initially configure the visibility of a GL account to which a cash account is linked to users|[GL Account Access](../Shared/../UserGuide/GL_10_40_00.md) \(GL104000\)|
|To change the visibility of a GL account a cash account is linked to|[Restriction Groups by GL Account](../Shared/../UserGuide/GL_10_40_20.md) \(GL104020\)|
|To change the visibility of a GL account to which a cash account is linked by a user in multiple restriction groups|[Restriction Groups by User](../Shared/../UserGuide/SM_20_10_35.md) \(SM201035\)|
|To change the visibility of a GL account to which a cash account is linked by a branch in multiple restriction groups|[Restriction Groups by Branch](../Shared/../UserGuide/GL_10_30_20.md) \(GL103020\)|

For information about how to add or remove objects from a restriction group, see [Operations with Restriction Groups](../Shared/../UserGuide/RS__con_Operations_Restriction_Groups.md).

**Parent topic:**[Managing Visibility with Restriction Groups](../UserGuide/RS__mng_Managing_Restriction_groups.md)

