# Data Migration Process: To Prepare the System for Migrating Financial Data {#_dff25c4a-68d1-4a7b-838f-e6fbafa3a10f .task}

The following activity will walk you through the preparation of the system for the migration of financial data.

**Attention:** This activity is based on the *U100 Basic Company* dataset. If you are using another dataset, or if any system settings have been changed in *U100 Basic Company*, these changes can affect the workflow of the activity and the results of the processing. To avoid any issues, restore the *U100 Basic Company* dataset to its initial state.

## Story {#section_bsg_lwg_kxb .section}

Suppose that you are an implementation consultant of the SweetLife Fruits &amp; Jams company, and you will be performing data migration from the legacy system to Acumatica ERP. In the system, you have configured the tenant, activated the license, and performed the basic financial configuration. Now you need to make sure the system is ready for data migration.

Before you start importing data into the system, you need to perform the following operations:

-   Making sure the financial periods are ready to data migration
-   Verifying that the cash account is configured for reconciliation
-   Activating predefined import scenarios
-   Uploading and activating an additional import scenario that will be used for migrating non-stock items

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100 Basic Company* dataset, the following tasks have been performed for the purposes of this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the minimum set of financial features has been enabled.
-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, the SweetLife company without branches has been configured by performing the steps described in [Company Without Branches: To Configure a Company Without Branches](../ImplementationGuide/config_Basic_Company_Implem_Activity_Enabling_Features.md).
-   On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, the company's chart of accounts has been created.
-   On multiple forms, the required financial configuration has been performed, as described in the [Implementing Basic Financials](../ImplementationGuide/config_GL_Mapref.md) chapter of the Implementation Guide, including the creation of cash accounts, credit terms, and payment methods.

## Process Overview { .section}

On the [Manage Financial Periods](GL_50_30_00.md) \(GL503000\) form, you will ensure that the financial periods to which the historical data will be uploaded have been generated and are open. On the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form, you will verify that the *10200WH* cash account is configured for reconciliation. On the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form, you will activate the predefined import scenarios that will be used for data migration. You will also upload and activate an additional import scenario for importing non-stock items.

## System Preparation { .section}

To prepare to perform the instructions of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100 Basic Company* dataset preloaded.
2.  Sign in to the system by using the *gibbs* username and the *123* password.
3.  Download the `DMImportNonStockItems.xml` file, which was provided with the course.

## Step 1: Verifying the Financial Periods { .section}

To ensure that all needed financial periods are ready to import the data, do the following:

1.  Open the [Master Financial Calendar](GL_20_10_00.md) \(GL201000\) form.
2.  In the **Financial Year** box in the Summary area, select *2025*. Review the periods in the table and make sure that the following periods have been generated and now have the *Open* status:
    -   The periods from 01-2025 to 11-2025, which are the periods to which the data will be migrated
    -   The 12-2025 financial period, which is the first period in which the company will start operating in Acumatica ERP

## Step 2: Reviewing the Cash Account Settings { .section}

To be able to reconcile the balance of the *10200WH* cash account after data migration, open the *10200WH* cash account on the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form. Make sure the following settings are specified:

-   **Requires Reconciliation**: Selected
-   **Reconciliation Numbering Sequence**: *CARECON*

## Step 3: Activating Import Scenarios { .section}

Before you start importing data, you need to activate the predefined import scenarios and create an additional scenario as follows:

1.  Open the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form.
2.  In the Summary area of the form, for each of the following predefined scenarios, select the **Active** check box and save your changes:
    -   *ACU Import Vendors*
    -   *ACU Import Customers*
    -   *ACU Import AP Bills*
    -   *ACU Import AP Prepayments*
    -   *ACU Import AR Invoices*
    -   *ACU Import AR Payments*
3.  On the form toolbar of the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form, click **Clipboard** &gt; **Import from XML**.
4.  In the **Upload XML File** dialog box, click **Choose File** and select the `DMImportNonStockItems.xml` file, which you downloaded earlier.
5.  In the dialog box, click **Upload**. The system uploads the *DM Import Non-Stock Items* import scenario. This scenario maps the internal fields of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form to the external fields that are defined in the `SweetLifeNonStockItemsList.xlsx` file, which has been supplied with the course.
6.  Make sure that the **Active** check box is selected in the Summary area of the form for the created scenario.

**Parent topic:**[Preparing System to Migrating Data](../UserGuide/DataMigration_DM_Process_Mapref.md)

