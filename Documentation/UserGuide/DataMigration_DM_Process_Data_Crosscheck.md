# Data Migration Process: Recommendations for Data Verification {#_f50ee8e7-0f51-4178-b704-efeb70559ccb .concept}

After migrating data to a new ERP system, you should verify its accuracy, consistency, and completeness. This process helps ensure a smooth transition from a legacy system.

To verify the data that has been imported into the system, use the following methods:

-   For customers and vendors, make sure that the total number of master records that have been imported into the system is equal to the number of customers and vendors in the source file.

    You can review a summary of all imported vendor accounts by using the [Vendor Summary](AP_65_50_00.md) \(AP655000\) report. For customer accounts, you can use the [Customer Summary](AR_65_05_00.md) \(AR650500\) report.

-   Randomly verify the information imported into particular customer accounts and particular vendor accounts. We recommend verifying the first account in the file for import, the last account, and a number of additional accounts.

    For example, if you have imported 90 customers, you should verify 9 customers: the first one, the last one, and 7 chosen at random. You can review the information of the imported vendor accounts by using the [Vendors](AP_30_30_00.md) \(AP303000\) form or the [Vendor Profiles](AP_65_55_00.md) \(AP655500\) report. For customer accounts, you can use the [Customers](AR_30_30_00.md) \(AR303000\) form or the [Customer Profiles](AR_65_10_00.md) \(AR651000\) report.

-   Verify open balances of the customers and vendors and make sure they match with the records in the legacy system.
-   For AP and AR documents, verify that the total number of the imported documents in the system is equal to the number of the documents in the corresponding source file.
-   Verify a randomly selected group of the imported AP and AR documents. To review the documents, use the following reports:
    -   The [AP Edit](AP_61_07_00.md) \(AP610700\) report for AP documents that are balanced and on hold
    -   The [AR Edit](AR_61_10_00.md) \(AR611000\) report for AR documents that are balanced and on hold
    -   The [AP Register](AP_62_15_00.md) \(AP621500\) report for released AP documents
    -   The [AR Register](AR_62_15_00.md) \(AR621500\) report for released AR documents
-   Verify the balances of a randomly selected group of the imported AP and AR documents on the following lists of records:

    -   Bills and Adjustments \(AP3010PL\)
    -   Checks and Payments \(AP3020PL\)
    -   Invoices and Memos \(AR3010PL\)
    -   Payments and Applications \(AR3020PL\)
    **Important:** To review the open balances in the document’s currency, review the **Balance** column. This column is hidden by default; you can add it by using the **Column Configuration** dialog box.


**Parent topic:**[Preparing System to Migrating Data](../UserGuide/DataMigration_DM_Process_Mapref.md)

