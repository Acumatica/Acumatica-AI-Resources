# Vendor Visibility: To Restrict Visibility to a Branch {#_1194223f-5265-4e15-8eb9-05364876789e .task}

In this implementation activity, you will learn how to restrict the visibility of a vendor record to a particular branch.

## Story { .section}

Suppose that the management of SweetLife Fruits &amp; Jams has decided to implement the restriction of vendor visibility. One of vendors, Squeezo Inc., supplies juicers for the Service and Equipment Sales Center branch of SweetLife Fruits &amp; Jams company, and users who are employees of other branches and companies should not have access to this vendor record. In other words, after the implementation of this restriction, Pam Brawner, who is the Service Manager of the *SWEETEQUIP* branch, should be able to access the Squeezo Inc. vendor and Eric Killian, the Purchase Requisitions Manager in the Wholesale and Retail branches, should not be able to access this vendor.

Acting as a system administrator, you need to restrict the visibility of the *SQUEEZO* vendor to the *SWEETEQUIP \(Service and Equipment Sales Center\)* branch only and make sure the appropriate access role has been specified for this branch. You then need to verify that a user without this access role cannot access the vendor, and that a user with this access role can access the vendor. Acting as an accountant, you need to create an AP document selecting the *SWEETEQUIP* branch as the originating branch and specifying this vendor.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *Multicompany Support* and *Customer and Vendor Visibility Restriction* features have been enabled.
-   On the [Branches](../UserGuide/CS_10_20_00.md) \(CS102000\) form, for the *SWEETEQUIP* branch, the *Branch SweetEquip* role associated with the branch is specified in the **Access Role** box \(**Configuration Settings** section\) on the **Branch Details** tab.
-   On the [Users](../UserGuide/SM_20_10_10.md) \(SM201010\) form, for the *brawner* login, the *Branch SweetEquip* role is selected on the **Roles** tab. For the *killian* login, the *Branch SweetEquip* role is not selected on the **Roles** tab.
-   On the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form, the *SQUEEZO* vendor account has been configured.

## Process Overview { .section}

In this activity, on the [Branches](../UserGuide/CS_10_20_00.md) \(CS102000\) form, you will make sure that the access role for the *SWEETEQUIP* branch has been set up, and on the [Users](../UserGuide/SM_20_10_10.md) \(SM201010\) form, you will make sure that it has been assigned to one of the users. On the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form, you will set up a visibility restriction for the needed vendor. You will then sign in to the tenant by using a username that is not assigned to the needed branch access role and then a username that is assigned to the branch access role; in both cases, you will check for the ability to view the *SQUEEZO* vendor. Finally, on the [Bills and Adjustments](../UserGuide/AP_30_10_00.md) \(AP301000\) form, you will create a bill for the *SQUEEZO* vendor and make sure that you can select this vendor for a document if the originating branch is *SWEETQEUIP*.

## System Preparation { .section}

Before you start restricting the visibility of a vendor record, sign in to a company with the *U100* dataset preloaded as a system administrator by using the following credentials:

-   Username: *gibbs*
-   Password: *123*

## Step 1: Reviewing Branch Access Roles of the Users { .section}

To review the access roles assigned to the *brawner* and *killian* users, do the following:

1.  Open the [Branches](../UserGuide/CS_10_20_00.md) \(CS102000\) form.
2.  In the **Branch ID** box, select *SWEETEQUIP*.

    Notice that the access role for this branch specified in the **Access Role** box \(**Configuration Settings** section\) on the **Branch Detail** tab is *Branch SweetEquip*.

3.  Open the [Users](../UserGuide/SM_20_10_10.md) \(SM201010\) form.
4.  In the **Login** box in the Summary area, select *brawner*.
5.  In the table on the **Roles** tab, review the access roles assigned to this user. The *Branch SweetEquip* access role has been assigned to this user \(the **Selected** check box to the left of its row is selected\).
6.  In the **Login** box, select *killian*.
7.  In the table on the **Roles** tab, review the access roles assigned to this user. Notice that the *Branch SweetEquip* access role has the **Selected** check box cleared for its row; this access role has not been assigned for this user.

## Step 2: Restricting the Visibility of a Vendor { .section}

To restrict the visibility of the *SQUEEZO* vendor, do the following:

1.  Open the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form.
2.  In the **Vendor ID** box, select *SQUEEZO*.
3.  On the **Financial** tab \(**Financial Settings** section\), select *SWEETEQUIP* in the **Restrict Visibility To** box. This is the Service and Equipment Sales Center branch of the SweetLife Fruits &amp; Jams company.
4.  On the form toolbar, click **Save** to save your changes.

## Step 3: Reviewing the Visibility of the Vendor Record { .section}

To review the visibility of the vendor record, do the following:

1.  Sign in to the tenant as a user who is not assigned the access role of the branch by using the following credentials:
    -   Username: *killian*
    -   Password: *123*
2.  Open the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form.
3.  In the **Vendor ID** box of the Summary area, open the lookup table and attempt to find the *SQUEEZO* vendor.

    Notice that the *SQUEEZO* vendor is not listed and you cannot find it by using the Search box; this vendor is not visible for the current user, because this user is assigned to the role that has access to the SweetLife Head Office and Wholesale Center branch of SweetLife Fruits &amp; Jams only and is not assigned to the *Branch SweetEquip* role, which is the access role of the branch specified for the vendor.

4.  Sign in to the tenant as a user who is assigned the access role of the branch by using the following credentials:
    -   Username: *brawner*
    -   Password: *123*
5.  Open the [Vendors](../UserGuide/AP_30_30_00.md) form.
6.  In the **Vendor ID** box of the Summary area, open the lookup table and attempt to find the *SQUEEZO* vendor. Notice that the *SQUEEZO* vendor is listed and thus is visible for the current user, because the user is assigned to the *Branch SweetEquip* role, which is the access role of the branch specified for the vendor.
7.  On the **Purchase Settings** tab, review the value in the **Default Branch** box. The default branch for this vendor is *SWEETEQUIP*, and you cannot override this value because the vendor's visibility has been restricted to this branch and this is the only branch that can be used with the vendor.

    On the [Bills and Adjustments](../UserGuide/AP_30_10_00.md) \(AP301000\) form, when you are creating an AP document and select a vendor, the system automatically populates the **Branch** box on the **Financial** tab with the default branch of the selected location. \(This branch is considered the originating branch of the document.\) If the default branch is not specified, the originating branch is the current branch to which you are signed in.


## Step 4: Creating a Bill for the Squeezo Vendor { .section}

To create a bill for the *SQUEEZO* vendor whose visibility has been restricted, do the following:

1.  Sign in to the tenant as Anna Johnson by using the *johnson* username and the *123* password.

    This user is an accountant who has access to all branches of the SweetLife company.

2.  On the Company and Branch Selection menu, select the *SweetLife Head Office and Wholesale Center* branch.
3.  Open the [Bills and Adjustments](../UserGuide/AP_30_10_00.md) \(AP301000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

4.  On the form toolbar, click **Add New Record**.
5.  In the **Vendor** box, click the magnifier button and review the list of vendors. Notice that the *SQUEEZO* vendor is not listed, because its visibility has been restricted to the *SWEETQEUIP* branch and you are signed in to the *HEADOFFICE* branch. *HEADOFFICE* is specified as the document's originating branch on the **Financial** tab.
6.  On the **Financial** tab, in the **Branch** box, select *SWEETEQUIP*.

    You have changed the originating branch of the document to the branch in which the *SQUEEZO* vendor should be accessible.

7.  In the **Vendor** box, select *SQUEEZO*.
8.  In the Summary area, specify the following settings:
    -   **Type**: *Bill*
    -   **Date**: *3/1/2026*
    -   **Description**: `Juicer`
9.  On the **Details** tab, click **Add Row** and enter the following settings for the added row:
    -   **Inventory ID**: *INSTALL*
    -   **Quantity**: `1`
    -   **Ext. Cost**: *80* \(inserted automatically\)
    -   **Project**: *X*
10. On the form toolbar, click **Save** to save your changes.

    **Note:** For the purposes of this activity, you do not need to further process this bill.


**Parent topic:**[Visibility of Vendor Records](../ImplementationGuide/Finance_Restricting_Vendor_Visibility_Mapref.md)

