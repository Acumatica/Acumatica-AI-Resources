# Parent-Child Relationships: General Information {#_749661ca-e2ea-40ac-abfe-34bd9352f779 .concept}

In this topic, you will read about how to set up a parent-child relationship between customer accounts in the settings of these accounts.

You can use this functionality if the *Parent-Child Customer Relationship* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Set up a parent-child relationship between customer accounts
-   Process documents from the child accounts and from the parent account
-   Generate a consolidated report to review the balance of the parent account

## Applicable Scenarios { .section}

You set up parent-child relationships for customer accounts in the following cases:

-   The parent company has granted franchises to multiple companies and some of these companies are Acumatica ERP customers
-   The parent company is an Acumatica ERP customer and has multiple branches \(or similar organizational units\)

## Setup of a Parent-Child Relationship {#section_ivl_4jv_vxb .section}

You can set up parent-child relationships when you are creating customers in the system or at any time thereafter. On the [Customers](AR_30_30_00.md) \(AR303000\) form, you perform the following steps to configure parent-child relations between customer accounts:

1.  You set up or modify the customer account that represents the parent company \(which the organization might refer to as the head office or main branch\). In the **Parent Info** section on the **Billing** tab, you specify whether you need the companies to have a consolidated balance, consolidated statements, and a shared credit policy. To do this, you select or clear the **Consolidate Balance**, **Consolidate Statements**, and **Share Credit Policy** check boxes. The states of these check boxes will provide the default states for the corresponding check boxes of the child customer accounts.
2.  You set up or modify the customer accounts that represent child companies, which are generally subsidiaries that are controlled by the parent company. For each child company, you specify the parent account in the **Parent Account** box.

    In the **Parent Info** section of the **Billing** tab, you change the states of the **Consolidate Balance**, **Consolidate Statements**, and **Share Credit Policy** check boxes, if needed.


**Attention:** Only a two-level hierarchy is supported.

With the exception of the details described above, the setup of parent and child customer accounts does not differ from the setup of independent customer accounts.

For each parent account, you can view the list of its child accounts on the **Child Accounts** tab of the [Customers](AR_30_30_00.md) form.

## Balance Consolidation { .section}

The balances of child customer accounts can be included in the balance of the parent customer account. As mentioned in the previous section, for the child accounts whose open documents can be paid with the payments of their parent, you select the **Consolidate Balance** check box on the [Customers](AR_30_30_00.md) \(AR303000\) form. With this check box selected, the system includes the balances of child accounts in the parent balance. For the corresponding parent account, you can view this consolidated balance in the **Consolidated Balance** box in the Summary area of the [Customers](AR_30_30_00.md) form.

The **Balance**, **Prepayment Balance**, **Retained Balance**, and **Consolidated Balance** boxes will not be shown in the Summary area of the [Customers](AR_30_30_00.md) form if all of the following conditions are met:

-   The *Multiple Base Currencies* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   The selected customer has been extended from a branch of your company.
-   A role is assigned to the current user that gives them the ability to access companies with different base currencies.

Instead, the **Balances** tab will appear, which shows customer balances grouped by base currency.

## Payment Application {#section_hwl_4jv_vxb .section}

With the parent-child relationship between customer accounts set up, payments can be applied to documents of child and parent accounts. That is, when you create a payment or a prepayment for the parent account on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, you can apply this payment to the open documents of both the child accounts and the parent account. On the **Documents to Apply** tab, you can add rows with the open documents of a child account or click the **Load Documents** button on the table toolbar. When you click the button, the **Load Options** dialog box opens; in the **Include Child Documents** box, you can select the types of documents to be loaded.

If the **Auto-Apply Payments** check box is selected for the parent account on the [Customers](AR_30_30_00.md) form and no documents for application are specified for the payment on the **Documents to Apply** tab of the [Payments and Applications](AR_30_20_00.md) form, the system will automatically apply the payment to the oldest open documents \(if any\) of the parent account only.

If you want the system to include open documents of child accounts in the process of automatic payment application, you can use the [Auto-Apply Payments](AR_50_60_00.md) \(AR506000\) mass-processing form. On this form, in the **Include Child Documents** box, you can select the types of open documents of child accounts that should be included in automatic payment application. The system will process first the open documents of the child accounts and then the open documents of the parent account.

Also, you can apply open payments, prepayments, and credit memos of the parent account while you are creating an invoice or debit memo for the child account on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

If you plan to clear the **Consolidate Balance** check box for a child account for which it has been selected on the [Customers](AR_30_30_00.md) \(AR303000\) form, first make sure that all applications of a parent payment to a child document are released or reversed \(if needed\). You cannot save changes in the parent-child relationship if any applications of this type have not been released. However, you can reverse the application of a parent payment to child invoice or memo after the relationship has been changed or removed. For details, see [Parent-Child Relationships: Relationship Removal](AR__CON_PCHRelationDeletion.md).

**Parent topic:**[Managing Parent-Child Relationships](../UserGuide/Finance_Parent-Child_Relationship_Mapref.md)

