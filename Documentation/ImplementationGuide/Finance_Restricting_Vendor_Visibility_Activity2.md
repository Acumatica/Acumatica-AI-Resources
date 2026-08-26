# Vendor Visibility: To Restrict Visibility to a New Company {#_b07256f2-772c-466a-8629-77725cfcdefb .task}

The following activity will walk you through the process of restricting the visibility of a vendor to a particular company with a base currency that is different from the base currency of the other companies in the tenant.

## Story { .section}

Suppose that the management of SweetLife Fruits &amp; Jams has decided to implement multiple base currencies in Acumatica ERP. The implementation consultant has already set up a company with the CAD base currency and added all the companies that use the USD base currency to one company group. The company using the CAD base currency—SweetLife Canada—should work only with the Canadian vendors.

Acting as the implementation consultant, you need to limit the visibility of *MAPLELEAF* \(a Canadian vendor\) to the SweetLife Canada company. You then need to verify that this vendor can be selected in the documents for this company. To do this, you need to process a document and review the transaction posted to the general ledger. You will then update the settings of the rest of the vendors by using an import scenario.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *Multibranch Support*, *Multicompany Support*, *Customer and Vendor Visibility Restriction*, *Multicurrency Accounting*, and *Multiple Base Currencies* features have been enabled.
-   On the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, the *SWEETLIFE* company has been defined.
-   On the [Branches](../UserGuide/CS_10_20_00.md) \(CS102000\) form, the *HEADOFFICE* and *SWEETEQUIP* branches of the *SWEETLIFE* company have been created.
-   On the [Users](../UserGuide/SM_20_10_10.md) \(SM201010\) form, for the *gibbs* login, the *Branch SLCanada* role is selected on the **Roles** tab. For the *johnson* login, the *Branch SLCanada* role is not selected on the **Roles** tab.
-   On the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form, the *MAPLELEAF* vendor has been configured.
-   On the [Import Scenarios](../UserGuide/SM_20_60_25.md) \(SM206025\) form, the *Import Vendors with Restricted Visibility* import scenario has been configured.

## Process Overview { .section}

In this activity, you will restrict the visibility of a vendor to the SweetLife Canada company on the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form. You will then sign in as a user who does not have access to the SweetLife Canada company and make sure that the vendor is not visible for this user. You will sign in as a user with access to SweetLife Canada company, and on the [Bills and Adjustments](../UserGuide/AP_30_10_00.md) \(AP301000\) form, you will process a document for the *MAPLELEAF* vendor, selecting SweetLife Canada as the originating branch.

Finally, on the [Import by Scenario](../UserGuide/SM_20_60_36.md) \(SM206036\) form, you will run a preconfigured import scenario to update the **Restrict Visibility To** setting for regular vendors.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as a system administrator Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  In the company to which you are signed in, be sure you have configured the SweetLife Canada company, as described in [Multiple Base Currencies: Implementation Activity](config_Multicurrency_MultipleBaseCurrencies_Implem_Activity.md), which is a prerequisite activity.
3.  On the [Company Groups](../UserGuide/CS_10_25_00.md) \(CS102500\) form, be sure that the *USCOMP* company group has been added. For details, see [Company Groups: Implementation Activity](config_Finance_Company_Group_Implem_Activity.md).
4.  On the [Branches](../UserGuide/CS_10_20_00.md) \(CS102000\) form, be sure that for the *SLCANADA* branch, the *Branch SLCanada* role, which is associated with the branch, is specified in the **Access Role** box \(**Configuration Settings** section\) on the **Branch Details** tab.
5.  On the [Branches](../UserGuide/CS_10_20_00.md) form, be sure that the *SWEETEQUIP* branch has been extended as a vendor. For details, see [Intercompany Sales Setup: Implementation Activity](Finance_Intercompany_SalesSetup_Implem_Activity.md).

## Step 1: Restricting the Visibility of the Vendor { .section}

To restrict the visibility of the *MAPLELEAF* vendor to SweetLife Canada, do the following:

1.  Open the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form.
2.  In the **Vendor ID** box, select *MAPLELEAF*.

    Notice that the vendor class of this vendor is *INTLCA \(Canadian Vendors\)*.

3.  On the **Financial** tab, in the **Restrict Visibility To** box, select *SLCANADA*.
4.  In the **Currency ID** box, select *CAD*.

    Notice that the boxes in the Summary area now have the currency symbol of the Canadian dollar \(C$\) displayed next to them. This means that the system will store the balance of this vendor in *CAD*.

5.  On the form toolbar, click **Save**.

## Step 2: Reviewing the Visibility of the Vendor { .section}

To review how the visibility of the vendor has been restricted, do the following:

1.  Sign in to the tenant as a user who is not assigned the access role of the *Branch SLCanada* branch by using the following credentials:
    -   **Username**: *johnson*
    -   **Password**: *123*
2.  Open the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form.
3.  In the **Vendor ID** box of the Summary area, open the lookup table, and attempt to find the *MAPLELEAF* vendor.

    Notice that the *MAPLELEAF* vendor is not listed and that you cannot find it by using the Search box. This vendor is not visible for the current user, because this user is assigned to the role that has access to the SweetLife Fruits &amp; Jams company only and is not assigned to the *Branch SLCanada* role, which is the access role of the company specified for the vendor.


## Step 3: Processing a Bill for the Vendor with Restricted Visibility { .section}

To process a bill for the *MAPLELEAF* vendor, which has restricted visibility to the branch, do the following:

1.  Sign in to the tenant as a user who is assigned the access role of the *Branch SLCanada* branch by using the following credentials:
    -   **Username**: *gibbs*
    -   **Password**: *123*
2.  On the Company and Branch Selection menu, on the top pane of the Acumatica ERP screen, select the *SweetLife Canada* company.
3.  Open the [Bills and Adjustments](../UserGuide/AP_30_10_00.md) \(AP301000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

4.  Click **Add New Record** on the form toolbar, and specify the following settings in the Summary area:
    -   **Type**: *Bill*
    -   **Date**: *1/30/2026*
    -   **Vendor**: *MAPLELEAF*

        You can select this vendor \(whose visibility has been restricted to the *SweetLife Canada* company\) because you are signed in to this company and the system has filled in the original branch of the document with *SweetLife Canada*.

5.  On the **Financial** tab, notice that in the **Branch** box *SLCANADA* is selected. This is the originating branch of the document.
6.  On the same tab, specify the following settings:
    -   **Payment Method**: *WIRE*
    -   **Cash Account**: *10215SL*
7.  On the **Details** tab, click **Add Row** on the table toolbar, and specify the following settings for the added row:
    -   **Branch**: *SLCANADA* \(inserted automatically\)
    -   **Transaction Descr.**: `Advertising services`
    -   **Ext. Cost**: `299`
8.  On the form toolbar, click **Remove Hold** and then click **Release** to release the bill.
9.  On the **Financial** tab, click the link in the **Batch Nbr.** box to review the generated GL transaction on the [Journal Transactions](../UserGuide/GL_30_10_00.md) \(GL301000\) form.

    The transaction has been posted for the *SLCANADA* branch, and the transaction currency specified in the **Currency** box is *CAD* because you selected this currency on the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form.


## Step 4: Updating Vendor Settings by Using an Import Scenario { .section}

Because the *Multiple Base Currencies* feature has been enabled after some vendors were created in the system and the **Restrict Visibility To** box became required, this box has to be filled in for all the vendors. You can use an import scenario to fill in the box for multiple vendors quickly and easily. To update the **Restrict Visibility To** setting for regular vendors, do the following:

1.  Open the [Import by Scenario](../UserGuide/SM_20_60_36.md) \(SM206036\) form.
2.  In the **Name** box, select *Import Vendors with Restricted Visibility*.
3.  On the form toolbar, click **Prepare**.

    The system has uploaded the records from the source Excel file on the **Prepared Data** tab.

    **Tip:** This file is also attached to the Excel data provider on the [Data Providers](../UserGuide/SM_20_60_15.md) \(SM206015\) form and the *Import Vendors with Restricted Visibility* import scenario on the [Import Scenarios](../UserGuide/SM_20_60_25.md) \(SM206025\) form.

4.  On the form toolbar, click **Import** to update the vendor records.

    Notice that for all records on the **Prepared Data** tab, the system has selected the **Processed** check box.

5.  Open the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form.
6.  In the **Vendor ID** box, select *ACMEDO*.
7.  On the **Financial** tab, notice that the *USCOMP - US Companies* option is now selected in the **Restrict Visibility To** box in the **Financial Settings** section. This setting means that this vendor can be used in documents originating from companies in the *USCOMP* company group.
8.  In the **Vendor ID** box, select *SWEETEQUIP*, which was not updated by the import.
9.  On the **Financial** tab, notice that the **Restrict Visibility To** box, which is optional, is empty. This is because this vendor has been extended from a branch, as described in [Intercompany Sales Setup: Implementation Activity](Finance_Intercompany_SalesSetup_Implem_Activity.md), and can be used by all companies with different base currencies in the tenant.

**Parent topic:**[Visibility of Vendor Records](../ImplementationGuide/Finance_Restricting_Vendor_Visibility_Mapref.md)

