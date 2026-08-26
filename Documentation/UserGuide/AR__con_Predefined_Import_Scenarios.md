# Predefined Import Scenarios for Migrating Financial Data {#_eb0b41ab-c0fc-46d8-b8b6-b2c99fbc007f .concept}

To save time on entering documents from your legacy system into Acumatica ERP, you can use the import scenarios that are supplied with the system.

## Overview of the Predefined Import Scenarios { .section}

Predefined import scenarios are designed to help you prepare for the migration of financial data from a legacy system. You can use them as they are supplied or customize them to suit your implementation needs.

The table below lists the predefined import scenarios that are available on the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form for creating an import scenario and on the [Import by Scenario](SM_20_60_36.md) \(SM206036\) form for importing the data based on the selected scenario. Each of these scenarios can be used to import data to a specific Acumatica ERP form, which is listed in the second column.

|Name of Import Scenario|Form to Which Data Is Imported|
|-----------------------|------------------------------|
|*ACU Import AP Bills*|[Bills and Adjustments](AP_30_10_00.md) \(AP301000\)|
|*ACU Import AP Cash Purchases*|[Cash Purchases](AP_30_40_00.md) \(AP304000\)|
|*ACU Import AP Payments with Applications*|[Checks and Payments](AP_30_20_00.md) \(AP302000\)|
|*ACU Import AP Prepayments*|[Checks and Payments](AP_30_20_00.md)|
|*ACU Import AR Cash Sales*|[Cash Sales](AR_30_40_00.md) \(AR304000\)|
|*ACU Import AR Invoices*|[Invoices and Memos](AR_30_10_00.md) \(AR301000\)|
|*ACU Import AR Payments*|[Payments and Applications](AR_30_20_00.md) \(AR302000\)|
|*ACU Import AR Payments with Applications*|[Payments and Applications](AR_30_20_00.md)|
|*ACU Import Customer Locations*|[Customer Locations](AR_30_30_20.md) \(AR303020\)|
|*ACU Import Customers*|[Customers](AR_30_30_00.md) \(AR303000\)|
|*ACU Import Deferral Schedules*|[Deferral Schedule](DR_20_15_00.md) \(DR201500\)|
|*ACU Import Fixed Assets*|[Fixed Assets](FA_30_30_00.md) \(FA303000\)|
|*ACU Import GL Transactions*|[Journal Transactions](GL_30_10_00.md) \(GL301000\)|
|*ACU Import Proforma*|[Pro Forma Invoices](PM_30_70_00.md) \(PM307000\)|
|*ACU Import Project Income*|[Project Transactions](PM_30_40_00.md) \(PM304000\)|
|*ACU Import Vendor Locations*|[Vendor Locations](AP_30_30_10.md) \(AP303010\)|
|*ACU Import Vendors*|[Vendors](AP_30_30_00.md) \(AP303000\)|

The predefined import scenarios listed in the table are inactive by default. That is, by default, for each of them, the **Active** check box is cleared on the [Import Scenarios](SM_20_60_25.md) form. Before you can use any of these scenarios for data import on the [Import by Scenario](SM_20_60_36.md) form, the **Active** check box must be selected on the [Import Scenarios](SM_20_60_25.md) form.

## Import Templates { .section}

Because the structure of the uploaded data file must match the structure that is defined in the data provider and used in the import scenario, a data template is provided for each of the predefined import scenarios.

You can download the data template, populate it with the data to be migrated, and then use the prepared file on the [Import by Scenario](SM_20_60_36.md) \(SM206036\) form with the corresponding import scenario. The file names of the data templates correspond to the names of the predefined import scenarios with which they are intended to be used.

To download the data template, you first select the required import scenario on the [Import Scenarios](SM_20_60_25.md) \(SM206025\) or [Import by Scenario](SM_20_60_36.md) form and then click **Files** on the title bar. In the **Files** dialog box, which opens, you click the template file to be downloaded and then save it to the needed location.

## ACU Import AP Bills { .section}

You use the *ACU Import AP Bills* import scenario to import AP bills to the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. You can use this import scenario when migration mode is turned on or off—that is, when the **Activate Migration Mode** check box is selected or cleared, respectively, in the **Posting Settings** section of the **General** tab on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form.

When migration mode is turned off, AP bills are imported as unpaid; that is, in the Summary area of the [Bills and Adjustments](AP_30_10_00.md) form, the **Balance** amount of each of the imported bills is equal to its **Detail Total**. Any outstanding document amount specified in the import source file is ignored. If you want to migrate documents with open balances, migration mode should be activated.

When migration mode is turned on, documents are migrated with their outstanding balances. Be sure that you specify the outstanding balance in the relevant column of the import source file; otherwise, the documents will be migrated with zero open balances and will have the *Closed* status on release.

## ACU Import AP Payments with Applications { .section}

The *ACU Import AP Payments with Applications* import scenario is used to import information about historical AP payments, along with their applications, to the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form. You use this import scenario when migration mode is turned off—that is, when the **Activate Migration Mode** check box is cleared on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form.

If the **Activate Migration Mode** check box is selected on the [Accounts Payable Preferences](AP_10_10_00.md) form, you cannot import payments with an open balance. Instead, you can import them as prepayments by using the *ACU Import AP Prepayments* import scenario.

## ACU Import AP Prepayments { .section}

You use the *ACU Import AP Prepayments* import scenario to migrate prepayments, including balances that have not yet been applied to AP documents, to the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form. You import payments with unapplied balances when migration mode is turned on—that is, when the **Activate Migration Mode** check box is selected on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form. Be sure to specify the unapplied balances in the relevant column of the import source file; otherwise, the AP prepayments will be migrated with zero unapplied amounts and will have the *Closed* status on release.

## ACU Import AP Cash Purchases { .section}

You use the *ACU Import AP Cash Purchases* import scenario to migrate information about historical cash purchases to the [Cash Purchases](AP_30_40_00.md) \(AP304000\) form.

## ACU Import Vendor Locations {#_e7785f78-762a-4ecf-8fb7-376f98238e2c .section}

The *ACU Import Vendor Locations* import scenario is used to import vendor locations to the [Vendor Locations](AP_30_30_10.md) \(AP303010\) form.

**Note:** We strongly recommend that vendor locations be imported separately from the main vendor data.

## ACU Import Vendors { .section}

You use the *ACU Import Vendors* import scenario to import vendor records to the [Vendors](AP_30_30_00.md) \(AP303000\) form.

**Note:** Vendor locations are excluded from the data template provided for this import scenario. We strongly recommend that you import vendor locations separately from the main vendor data by using the *ACU Import Vendor Locations* import scenario.

## ACU Import AR Cash Sales { .section}

The *ACU Import AR Cash Sales* import scenario is used to import historical information about cash sales to the [Cash Sales](AR_30_40_00.md) \(AR304000\) form.

## ACU Import Customer Locations {#_ee510061-6181-48f3-95d9-df62ba3aa780 .section}

You use the *ACU Import Customer Locations* import scenario to import customer locations to the [Customer Locations](AR_30_30_20.md) \(AR303020\) form.

**Note:** We strongly recommend that customer locations be imported separately from the main customer data.

## ACU Import Customers { .section}

You use the *ACU Import Customers* import scenario to import customer records to the [Customers](AR_30_30_00.md) \(AR303000\) form.

**Note:** Customer locations are excluded from the data template provided for this import scenario. We strongly recommend that you import customer locations separately from the main customer data by using the *ACU Import Customer Locations* import scenario.

## ACU Import AR Invoices { .section}

You use the *ACU Import AR Invoices* import scenario to import AR invoices to the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. You can use this import scenario when migration mode is turned on or off—that is, when the **Activate Migration Mode** check box is selected or cleared, respectively, in the **Posting Settings** section on the **General** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form.

When migration mode is turned off, documents are imported as unpaid; that is, in the Summary area of the [Invoices and Memos](AR_30_10_00.md) form, the **Balance** amount of each of the imported invoices is equal to its **Detail Total**. Any outstanding document amount specified in the import source file is ignored. If you want to migrate documents with open balances, migration mode should be activated.

When migration mode is turned on, documents are migrated with their outstanding balances. Be sure that you specify the outstanding balance in the relevant column of the import source file; otherwise, the documents will be migrated with zero open balances and will have the *Closed* status on release.

## ACU Import AR Payments { .section}

You use *ACU Import AR Payments* import scenario to migrate AR payments, including balances that have not yet been applied to AR documents, to the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form. Payments with available balances are imported when migration mode is turned on—that is, when the **Activate Migration Mode** check box is selected on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form. Be sure to specify the available balances in the relevant column of the import source file; otherwise, the AR payments will be migrated with zero available balances and will have the *Closed* status on release.

## ACU Import AR Payments with Applications { .section}

The *ACU Import AR Payments with Applications* import scenario is used to import information about historical AR payments, along with their applications, to the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form. This import scenario is used when migration mode is turned off—that is, when the **Activate Migration Mode** check box is cleared on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form.

## ACU Import Deferral Schedules { .section}

You use the *ACU Import Deferral Schedules* import scenario to import previously configured deferral schedules to the [Deferral Schedule](DR_20_15_00.md) \(DR201500\) form so that revenues and expenses that were deferred in the legacy system could continue to be recognized in Acumatica ERP.

## ACU Import Fixed Assets { .section}

The *ACU Import Fixed Assets* import scenario is used to import information about fixed assets to the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form. If you want to allow the import of accumulated depreciation along with other fixed asset data, the **Update GL** check box must first be cleared in the **Posting Settings** section on the [Fixed Assets Preferences](FA_10_10_00.md) \(FA101000\) form.

The template provided for this predefined import scenario is designed for importing information about fixed assets to three books. However, the template can be adjusted to reflect the settings of the fixed asset classes to which the imported assets belong.

## ACU Import GL Transactions { .section}

You use the *ACU Import GL Transactions* import scenario to import to the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form general ledger transactions that have been exported from a legacy system.

## ACU Import Proforma { .section}

You use the *ACU Import Proforma* import scenario to import to the [Pro Forma Invoices](PM_30_70_00.md) \(PM307000\) form pro forma invoices that have been exported from a legacy system. Pro forma invoices are imported when migration mode is turned on—that is, when the **Activate Migration Mode** check box is selected on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form.

## ACU Import Project Income { .section}

You use the *ACU Import Project Income* import scenario to import to the [Project Transactions](PM_30_40_00.md) \(PM304000\) form project transactions that have been exported from a legacy system. Project transactions are imported when migration mode is turned on—that is, when the **Activate Migration Mode** check box is selected on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form.

**Parent topic:**[Migrating Documents to Acumatica ERP](../UserGuide/AR__con_Migration_Process_Overview.md)

