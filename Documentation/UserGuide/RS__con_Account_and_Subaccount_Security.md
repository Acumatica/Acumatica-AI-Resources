# Account and Subaccount Security {#_7f4d2128-5ca0-4f40-84e1-11b0d51603de .concept}

In Acumatica ERP, you can control which users will use particular general ledger accounts and subaccounts.

To configure the security of GL accounts and subaccounts, you can use a combination of user roles and restriction groups. By using user roles, you can configure the access of users to branches and to all branch-specific accounts and subaccounts. With restriction groups, you can set up the visibility of particular accounts and subaccounts within branches and for certain users, and you can limit the use of subaccounts with particular accounts. For details on restriction groups, see [Restriction Groups in Acumatica ERP](../Shared/../UserGuide/SM__con_Overview_of_Restriction_Groups.md).

**Tip:** In Acumatica ERP, you can configure groups with direct and inverse restriction. In this topic, for simplicity, groups with direct restriction are used in examples. You can use inverse restriction groups in the same way as you use direct restriction groups. For details on the types of restriction groups, see [Types of Restriction Groups](../Shared/../UserGuide/SM__con_Types_of_Restriction_Groups.md).

In this topic, you will read about using restriction groups and branch-specific roles to configure and manage the security of accounts and subaccounts.

## Usage Scenarios { .section}

The most common scenarios of managing the security of accounts and subaccounts are the following:

-   Managing the visibility by branch: When your organization consists of multiple branches \(and you have created multiple branches in Acumatica ERP\), you can configure the system so that it narrows the lists of accounts and subaccounts by branch on data entry forms. For details, see [Visibility by Branch](#_85023523-9902-4ee8-b72e-f41ff4ecdc7f).

    **Note:** You can configure and use the restriction groups that include branches only if the *Multibranch Support* feature is enabled on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form.

-   Managing the visibility by user: If your organization has sensitive GL accounts and subaccounts, you can provide the visibility of these objects to only a limited set of users. For more information, see [Visibility by User](#_d92ce37f-7040-4111-8dce-ba89b0934bd0).
-   Managing the visibility of subaccounts by account: If you have subaccounts that users must use with only particular GL accounts, you can set up lists of available subaccounts for each GL account. For details, see [Visibility of Subaccounts by Account](#_9d38c5c9-eb78-48b1-bc51-dee32a710a19).
-   Adding the needed objects to one restriction group to control visibility by multiple factors: For example, if you need to limit the users who use sensitive accounts, and only particular subaccounts must be used with these sensitive accounts, you can configure restriction groups to address this task. For details, see [Visibility of Accounts, Subaccounts, and Users](#_995e04c3-b159-4e59-b650-4fb3e9568892).

**Tip:** If the *By Segment: All Avail. Segment Values* lookup mode is selected on the [Segmented Keys](../Shared/../UserGuide/CS_20_20_00.md) \(CS202000\) form for the *SUBACCOUNT* segmented key \(that is, if the users of your Acumatica ERP instance enter subaccounts by segments on forms\), you manage the security of subaccount segments instead of entire subaccounts. In this case, you need to add to a restriction group all subaccount segments that form a subaccount whose visibility should be restricted.

Cash accounts are one type of sensitive accounts that you may need to secure in the system. The ways of managing the security of cash accounts differ from the ways of managing the security of GL accounts. For more information, see [Security of Cash Accounts](../Shared/../UserGuide/CA__CON_Access_to_CashAccounts.md).

## Visibility by Branch {#_85023523-9902-4ee8-b72e-f41ff4ecdc7f .section}

If your organization has users who have access to multiple branches, you can use restriction groups to narrow the lists of accounts and subaccounts on data entry forms by branch. With restriction groups set up in this way, users will make fewer mistakes when selecting accounts and subaccounts on data entry forms.

For example, suppose that your organization has two branches—the Headquarters office \(*HQ* in the system\) and the Regional Sales office \(*RS*\). The accounting department processes documents for both branches. To configure the visibility restrictions of accounts and subaccounts by branch, you need to do the following:

1.  You configure user roles for each branch \(for example, *Branch HQ* and *Branch RS*\) and assign both roles to the user accounts of the accountants. With the roles assigned, the accountants will see information for both branches in Acumatica ERP. For details, see [Security of Organization Branches](../Shared/../UserGuide/CS__con_Branch_Security_Administration.md).
2.  To configure the visibility of accounts within branches, you do the following on the [GL Accounts by Branch Access](../Shared/../UserGuide/GL_10_30_40.md) \(GL103040\) form:
    1.  You create two restriction groups of type *A* \(with direct restriction\): the *HQ Accounts* group for the Headquarters office and the *RS Accounts* group for the Regional Sales office.
    2.  In the *HQ Accounts* group, you include the Headquarters branch \(*HQ*\) and the accounts that should be visible within the *HQ* branch.
    3.  In the *RS Accounts* group, you include the Regional Sales branch \(*RS*\) and the accounts specific to the *RS* branch.
3.  To configure the visibility of subaccounts within branches, you do the following on the [Subaccounts by Branch Access](../Shared/../UserGuide/GL_10_30_60.md) \(GL103060\) form:
    1.  You create two restriction groups of type *A* \(with direct restriction\): the *HQ Subaccounts* group for the Headquarters office and the *RS Subaccounts* group for the Regional Sales office.
    2.  In the *HQ Subaccounts* group, you include the *HQ* branch and the subaccounts that should be visible within this branch.
    3.  In the *RS Subaccounts* group, you include the *RS* branch and the subaccounts specific to this branch.

After you have configured restriction groups for accounts and branches, or subaccounts and branches, the system will narrow the lists of accounts or the list of subaccounts on data entry forms after a user selects a branch. For example, suppose that an accountant is adding a bill on the [Bills and Adjustments](../Shared/../UserGuide/AP_30_10_00.md) \(AP301000\) form and selects the *HQ* branch in the **Branch** column of the **Details** tab. In the **Account** column of the same tab, the accountant will see only accounts added to the *HQ Accounts* restriction group.

## Visibility by User {#_d92ce37f-7040-4111-8dce-ba89b0934bd0 .section}

Within branches, your organization may have sensitive or confidential accounts and subaccounts which must be invisible for majority of users. You can control the visibility of these accounts and subaccounts for users \(that is, which users can view the accounts and subaccounts\) by using restriction groups.

For example, suppose that only a chief accountant of your organization can work with the tax payable account. To make this account visible to the chief accountant only, you need to do the following on the [GL Account Access](../Shared/../UserGuide/GL_10_40_00.md) \(GL104000\) form:

1.  You create a restriction group \(for example, *Access to Tax Payable Account*\) with direct restriction.
2.  You add to the group the user account of the chief accountant.
3.  You add to the group the tax account.

As another example, suppose that the subaccount for the financial department can be used only by accountants \(and not by other users\). To make this subaccount visible to only accountants, you need to do the following on the [GL Account Access](../Shared/../UserGuide/GL_10_40_00.md) form:

1.  You create a restriction group \(for example, *Access to Financial Subaccount*\) with direct restriction.
2.  You add to the group the user accounts of the accountants.
3.  You add to the group the subaccount for the financial department.

## Visibility of Subaccounts by Account {#_9d38c5c9-eb78-48b1-bc51-dee32a710a19 .section}

You can specify which subaccounts can be used with only a particular account on forms in Acumatica ERP; thus, the specified subaccounts will appear for selection only if that account is selected. This limitation will help users to avoid errors when they select accounts and subaccounts on forms.

**Tip:** If you are using restriction groups to control the accounts and subaccounts that can be used together, you must create at least two groups and include all subaccounts in either of the groups. For example, suppose that you need to restrict visibility of subaccounts for only one account. To solve this task, you create two restriction groups. In the first group with direct restriction \(type *A* group\), you include a GL account and the list of subaccounts that should be related to this account. In the second group with inverse restriction \(type *B Inverse* group\), you include the same account and subaccounts that should not be displayed after users select this account. As a result, when users select the account on a form, they will see only one of the subaccounts included in the first group.

For example, suppose that the *ELE-000* subaccount, which is used for electronics and computers, should be visible only after a user has selected the *12100* warehouse account, and the *NSS-000* subaccount should be related to the *12200* warehouse account. To restrict the visibility of the subaccounts by account, you should create the following restriction groups on the [GL Account Access](../Shared/../UserGuide/GL_10_40_00.md) \(GL104000\) form:

1.  *Stock Item Subaccounts*: In this group, you need to include the *12100* warehouse account and the *ELE-000* subaccount.
2.  *Non-Stock Item Subaccounts*: To this group, you should add the *12200* warehouse account and the *NSS-000* subaccount.

## Visibility of Accounts, Subaccounts, and Users {#_995e04c3-b159-4e59-b650-4fb3e9568892 .section}

By using restriction groups, you can combine the functionality of the following scenarios:

-   Managing the visibility of accounts to users
-   Managing the visibility of subaccounts by account

To implement this functionality, you need to add users, accounts, and subaccounts \(or subaccount segments\) to the same group. In this case, the visibility will be restricted as follows:

-   Only users included in the restriction group will see the accounts and subaccounts added to the group.
-   If a user included in the group selects an account in the group when processing a document, the user will be able to select a subaccount from the list of only subaccounts added to the group.

For example, suppose that the *ELE-000* \(electronics and computers\) and *FUR-000* \(furniture\) subaccounts should be visible only if a user has selected the *12100* warehouse account, and that only the warehouse workers User Y and User Z should work with these accounts and subaccounts. To restrict the visibility of the *ELE-000* and *FUR-000* subaccount by the *12100* account and to make the account and the subaccounts visible to only User Y and User Z, you should do the following on the [GL Account Access](../Shared/../UserGuide/GL_10_40_00.md) \(GL104000\) form:

1.  You create a restriction group \(for example, *Restriction of Warehouse Accounts*\).
2.  You add to the group the *12100* warehouse account.
3.  You add to the group the *ELE-000* and *FUR-000* subaccounts.
4.  You add to the group User Y and User Z.

## Forms for Account and Subaccount Security { .section}

In the following table, you can find the list of forms that you can use to manage restriction groups with accounts, subaccounts, and subaccount segments, and tasks that you can resolve by using each form.

|Task|Form|
|----|----|
|To initially configure the visibility of accounts and subaccounts \(or subaccount segments\) to users|[GL Account Access](../Shared/../UserGuide/GL_10_40_00.md) \(GL104000\)|
|To initially configure the visibility of accounts by branches|[GL Accounts by Branch Access](../Shared/../UserGuide/GL_10_30_40.md) \(GL103040\)|
|To initially configure the visibility of subaccounts \(or subaccount segments\) by branches|[Subaccounts by Branch Access](../Shared/../UserGuide/GL_10_30_60.md) \(GL103060\)|
|To change the visibility of an account in multiple restriction groups|[Restriction Groups by GL Account](../Shared/../UserGuide/GL_10_40_20.md) \(GL104020\)|
|To change the visibility of a subaccount in multiple restriction groups|[Restriction Groups by Subaccount](../Shared/../UserGuide/GL_10_40_30.md) \(GL104030\)|
|To change the visibility of a subaccount segment in multiple restriction groups|[Restriction Groups by Sub Segment](../Shared/../UserGuide/GL_10_40_40.md) \(GL104040\)|
|To change the visibility of system objects by a user in multiple restriction groups|[Restriction Groups by User](../Shared/../UserGuide/SM_20_10_35.md) \(SM201035\)|
|To change the visibility of system objects by a branch in multiple restriction groups|[Restriction Groups by Branch](../Shared/../UserGuide/GL_10_30_20.md) \(GL103020\)|

For information about how to add or remove objects from a restriction group, see [Operations with Restriction Groups](../Shared/../UserGuide/RS__con_Operations_Restriction_Groups.md).

## Limitations { .section}

When configuring the security of accounts and subaccounts, keep in mind that the following limitations are applicable in the system:

-   For performance reasons, visibility restrictions by user for subaccounts do not affect analytical \(ARM\) and form-based reports or generic inquiries. This means that users who can view the reports and generic inquiries that include subaccounts will see the full list of subaccounts.

    **Tip:** When you create custom generic inquiries, you should add a link to the `Account` table, the `Subaccount` table, or both database tables to hide the restricted data.

-   On multiple data entry forms, users cannot select a restricted account or subaccount; however, if they have access to the form and to the document, they can see the lines related to restricted accounts and subaccounts, which were created by other users.

**Parent topic:**[Managing Visibility with Restriction Groups](../UserGuide/RS__mng_Managing_Restriction_groups.md)

