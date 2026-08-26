# Customer Visibility: To Restrict Visibility to a Company {#_90609745-18fd-4154-83f6-1d9b23c2f7a3 .task}

In this implementation activity, you will learn how to restrict the visibility of a customer to a particular company.

## Story { .section}

Suppose that the management of Muffins &amp; Cakes has decided to implement the restriction of customer visibility. One of the customers, Candyy Cafe, works with the Muffins &amp; Cakes company, and users who are employees of other companies should not have access to this customer record. In other words, after the implementation of this restriction, Nenad Pasic, an accountant in SweetLife and Muffins &amp; Cakes, should be able to access the *CANDYY* customer and Anna Johnson, an accountant at all branches of SweetLife, should not be able to access this customer.

Acting as a system administrator, you need to restrict the visibility of the *CANDYY* customer to the *MUFFINS* company only and make sure the appropriate access role has been specified for the branches of this company. You then need to verify that a user without this access role cannot access the customer, and that a user with this access role can access the customer.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *Multibranch Support*, *Multicompany Support*, and *Customer and Vendor Visibility Restriction* features have been enabled.
-   On the [Branches](../UserGuide/CS_10_20_00.md) \(CS102000\) form, for the *MRETAIL* branch, the *Branch MRetail* role associated with the branch is specified in the **Access Role** box \(**Configuration Settings** section\) on the **Branch Details** tab.
-   On the [Users](../UserGuide/SM_20_10_10.md) \(SM201010\) form, for the *pasic* login, the *Branch MHead* and *Branch MRetail* roles are selected on the **Roles** tab. For the *johnson* login, the *Branch MHead* and *Branch MRetail* roles are not selected on the **Roles** tab.
-   On the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form, the *CANDYY* customer account has been configured.

## Process Overview { .section}

In this activity, on the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, you will make sure that the access roles for the *MHEAD* and *MRETAIL* branches have been set up, and on the [Users](../UserGuide/SM_20_10_10.md) \(SM201010\) form, you will make sure that they have been assigned to one of the users. On the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form, you will set up a visibility restriction for the needed customer record. You will sign in to the tenant by using a username that is not assigned to any of the needed branch access role and then a username that is assigned to the branch access roles; in both cases, you will check for the ability to view the *CANDYY* customer. Finally, you will sign in to the *MRETAIL* branch and on create a document on the [Invoices and Memos](../UserGuide/AR_30_10_00.md) \(AR301000\) form, where you will select a branch of the *MUFFINS* company as an originating branch of the document.

## System Preparation { .section}

Before you start restricting the visibility of a customer record, sign in to a company with the *U100* dataset preloaded as a system administrator by using the following credentials:

-   Username: *gibbs*
-   Password: *123*

## Step 1: Reviewing Branch Access Roles of the Users { .section}

To review the access roles assigned to the *pasic* and *johnson* users, do the following:

1.  Open the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form.
2.  In the **Company ID** box, select *MUFFINS*.
3.  Open the **Branches** tab.

    Notice that the access roles for the branches of this company–*Branch MHead* and *Branch MRetail*–are specified in the **Access Role** column.

4.  Open the [Users](../UserGuide/SM_20_10_10.md) \(SM201010\) form.
5.  In the **Login** box in the Summary area, select *pasic*.
6.  In the table on the **Roles** tab, review the access roles assigned to this user. The *Branch MHead* and *Branch MRetail* access roles have been assigned to this user \(the **Selected** check boxes to the left of their rows are selected\).
7.  In the **Login** box, select *johnson*.
8.  In the table on the **Roles** tab, review the access roles assigned to this user. Notice that the *Branch MHead* and *Branch MRetail* access roles have the **Selected** check box cleared for their rows; these access roles have not been assigned for this user.

## Step 2: Restricting the Visibility of a Customer Record { .section}

To restrict the visibility of the *CANDYY* customer record, do the following:

1.  Open the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form.
2.  In the **Customer ID** box, select *CANDYY*.
3.  On the **Financial** tab \(**Financial Settings** section\), select *MUFFINS - Muffins &amp; Cakes* in the **Restrict Visibility To** box.
4.  On the form toolbar, click **Save** to save your changes.

## Step 3: Reviewing the Visibility of the Customer Record { .section}

To review the visibility of the customer record, do the following:

1.  Sign in to the tenant as a user who is not assigned the access role of the branch by using the following credentials:
    -   Username: *johnson*
    -   Password: *123*
2.  Open the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form.
3.  In the **Customer ID** box of the Summary area, open the lookup table and attempt to find the *CANDYY* customer.

    Notice that the *CANDYY* customer is not listed and you cannot find it by using the Search box; this customer is not visible for the current user, because this user is assigned to the role that has access to the SweetLife Fruits &amp; Jams company only and is not assigned to the *Branch MHead* and *Branch MRetail* roles, which are the access roles of the company specified for the customer.

4.  Sign in to the tenant as a user who is assigned the access roles of the company's branches by using the following credentials:
    -   Username: *pasic*
    -   Password: *123*
5.  Open the [Customers](../UserGuide/AR_30_30_00.md) form.
6.  In the **Customer ID** box of the Summary area, open the lookup table and attempt to find the *CANDYY* customer. Notice that the *CANDYY* customer is listed and thus is visible for the current user, because the user is assigned to the *Branch MHead* and *Branch MRetail* roles, which are the access roles for the branches of the company specified for the customer.
7.  On the **Shipping** tab, review the value in the **Default Branch** box. The default branch for this customer is not specified. You can select either *MHEAD* or *MRETAIL* because the customer's visibility has been restricted to the company with these branches.

    On the [Invoices and Memos](../UserGuide/AR_30_10_00.md) \(AR301000\) form, when you are creating an AR document and select a customer, the system automatically populates the **Branch** box on the **Financial Details** tab with the default branch of the selected location. \(This branch is considered the originating branch of the document.\) If the default branch is not specified, the originating branch is the current branch to which you are signed in.


## Step 4: Selecting the Originating Branch in a Document for the Customer with Restricted Visibility { .section}

To create a document for the customer whose visibility has been restricted to the Muffins &amp; Cakes company, do the following:

1.  On the Company and Branch Selection menu, on the top pane of the Acumatica ERP screen, select the *Muffins Retail Shop* branch.
2.  Open the [Invoices and Memos](../UserGuide/AR_30_10_00.md) \(AR301000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

3.  Click **Add New Record** on the form toolbar and specify the following settings in the Summary area:
    -   **Type**: *Invoice*
    -   **Customer**: *CANDYY*

        You can select this customer whose visibility has been restricted to the *MUFFINS* company because you are signed in to a branch of this company.

4.  On the **Financial** tab, notice that in the **Branch** box *MRETAIL* is selected. This is the originating branch of the document.
5.  In the **Branch** box, select *MHEAD*. Because you restricted the customer's visibility to the *MUFFINS* company, you can select this value for the originating branch.
6.  In the **Branch** box, select *HEADOFFICE*. The system displays an error message that the use of this customer is restricted in the selected branch.

    **Note:** For the purposes of this activity, you do not need to further process this document.


**Parent topic:**[Visibility of Customer Records](../ImplementationGuide/Finance_Restricting_Customer_Visibility_Mapref.md)

