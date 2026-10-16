## Consultant Guide 

# System Implementation 

# 2025 R2 


<!-- PAGE_BREAK -->
 Contents | 2 

## Contents 

 Copyright...............................................................................................................................................7 

 Acumatica ERP Implementation Checklists...............................................................................................8 

 Accounts Payable....................................................................................................................................9 

 AP Bills: Implementation Checklist.................................................................................................................. 9 

 AP Bill Payments: Implementation Checklist.................................................................................................10 

 AP Documents from PDFs: Implementation Checklist.................................................................................. 11 

 Bill Prepayments: Implementation Checklist.................................................................................................12 

 Debit and Credit Adjustments: Implementation Checklist............................................................................13 

 Interbranch Bills Without Balancing: Implementation Checklist..................................................................14 

 Interbranch Bills with Balancing: Implementation Checklist........................................................................15 

 Check Reprinting: Implementation Checklist................................................................................................ 17 

 Multiple Bill Payments: Implementation Checklist........................................................................................18 

 Payments for a Shared Vendor: Implementation Checklist.......................................................................... 19 

 Partial Payments: Implementation Checklist.................................................................................................20 

 Voiding Payments: Implementation Checklist............................................................................................... 21 

 Payments with a Corporate Card: Implementation Checklist.......................................................................22 

 Accounts Receivable..............................................................................................................................23 

 AR Invoices: Implementation Checklist..........................................................................................................23 

 AR Invoice Correction: Implementation Checklist......................................................................................... 24 

 Auto-Applying Payments: Implementation Checklist....................................................................................25 

 Refunds: Implementation Checklist............................................................................................................... 26 

 Interbranch Invoices with Balancing: Implementation Checklist................................................................. 26 

 Interbranch Invoices Without Balancing: Implementation Checklist........................................................... 28 

 Intercompany Sales: Implementation Checklist............................................................................................29 

 Invoice Payments: Implementation Checklist................................................................................................31 

 Invoice Prepayments: Implementation Checklist.......................................................................................... 32 

 Invoice with Combined Subaccounts: Implementation Checklist................................................................ 32 

 Payments with Write-Offs: Implementation Checklist...................................................................................34 

 Basic Company Configuration................................................................................................................36 

 Preparing an Instance: Implementation Checklist........................................................................................ 36 

 Company Without Branches: Implementation Checklist.............................................................................. 36 

 Company with Branches that Do Not Require Balancing: Implementation Checklist................................. 39 

 Company with Branches that Require Balancing: Implementation Checklist............................................. 42 

 Budget Management............................................................................................................................. 46 


<!-- PAGE_BREAK -->
 Contents | 3 

 Access to Budget Nodes: Implementation Checklist..................................................................................... 46 

 Budget Based on an Existing Budget: Implementation Checklist.................................................................47 

 Budget vs Actual ARM Report: Implementation Checklist............................................................................ 48 

 Converting a Simple Budget to a Hierarchical Budget: Implementation Checklist..................................... 49 

 Hierarchical Budget: Implementation Checklist............................................................................................ 50 

 Modifying a Hierarchical Budget: Implementation Checklist........................................................................51 

 Revising a Budget: Implementation Checklist............................................................................................... 52 

 Simple Budget: Implementation Checklist.................................................................................................... 53 

**Cash Management................................................................................................................................ 55** 

 Bank Reconciliation: Implementation Checklist............................................................................................55 

 Cash Entries: Implementation Checklist........................................................................................................ 56 

 Funds Transfers: Implementation Checklist...................................................................................................57 

 Intercompany Funds Transfers: Implementation Checklist.......................................................................... 58 

**Customer Relationship Management...................................................................................................... 60** 

 Case Assignment to Owners and Workgroups: Implementation Checklist.................................................. 60 

 Lead Assignment to Owners and Workgroups: Implementation Checklist.................................................. 61 

 Opportunity Assignment to Owners and Workgroups: Implementation Checklist......................................62 

 Configuring CRM Functionality: Implementation Checklist.......................................................................... 63 

 Duplicate Validation: Implementation Checklist........................................................................................... 64 

 Emails and Activities: Implementation Checklist.......................................................................................... 66 

 Case Management: Implementation Checklist.............................................................................................. 67 

 Opportunity Management: Implementation Checklist................................................................................. 70 

 Marketing Lists: Implementation Checklist....................................................................................................73 

 Marketing Campaigns: Implementation Checklist.........................................................................................74 

 Mass Emails: Implementation Checklist.........................................................................................................75 

 Lead Qualification by Marketing Teams: Implementation Checklist............................................................ 76 

 Lead Qualification by Sales Teams: Implementation Checklist.................................................................... 76 

 Record Validation for Duplicates: Implementation Checklist....................................................................... 77 

**Customers and Vendors.........................................................................................................................79** 

 Customer Statements: Implementation Checklist.........................................................................................79 

 Customer Visibility: Implementation Checklist..............................................................................................80 

 On-Demand Statements: Implementation Checklist.....................................................................................81 

 Regenerating Statements: Implementation Checklist...................................................................................82 

 Vendor Visibility: Implementation Checklist.................................................................................................. 83 

**Equipment Management....................................................................................................................... 85** 

 Equipment Management: Implementation Checklist....................................................................................85 


<!-- PAGE_BREAK -->
 Contents | 4 

**General Ledger..................................................................................................................................... 86** 

 Adjusting Transactions: Implementation Checklist....................................................................................... 86 

 Allocation Rules: Implementation Checklist.................................................................................................. 86 

 GL Transactions: Implementation Checklist.................................................................................................. 87 

 Interbranch Account Mapping: Implementation Checklist........................................................................... 88 

 Recurring Transactions: Implementation Checklist.......................................................................................88 

 Reversing Transactions: Implementation Checklist...................................................................................... 89 

 Running of Allocations: Implementation Checklist....................................................................................... 90 

 Splitting Transactions: Implementation Checklist.........................................................................................91 

 Transactions with Subaccounts: Implementation Checklist......................................................................... 92 

**Financial Periods.................................................................................................................................. 93** 

 Financial Calendar Generation: Implementation Checklist.......................................................................... 93 

 Financial Periods: Implementation Checklist................................................................................................ 93 

 Opening Financial Periods: Implementation Checklist................................................................................. 94 

 Closing Financial Periods: Implementation Checklist................................................................................... 94 

**Multicurrency Management................................................................................................................... 96** 

 AP Bills in Foreign Currencies: Implementation Checklist............................................................................ 96 

 AR Invoices in Foreign Currencies: Implementation Checklist......................................................................97 

 Credit Memos in Foreign Currencies: Implementation Checklist..................................................................98 

 Debit Adjustments in Foreign Currencies: Implementation Checklist..........................................................99 

 Multicurrency Cash Account: Implementation Checklist............................................................................ 100 

 Multicurrency Funds Transfers: Implementation Checklist.........................................................................101 

 Multicurrency Payment of Invoices: Implementation Checklist................................................................. 103 

 Multicurrency Payment of Bills: Implementation Checklist........................................................................ 104 

 Documents in Different Base Currencies: Implementation Checklist.........................................................105 

 Revaluation of AP Documents: Implementation Checklist......................................................................... 106 

 Revaluation of AR Documents: Implementation Checklist......................................................................... 107 

 Revaluation of Bank Accounts: Implementation Checklist......................................................................... 109 

 Translation of Financial Statements: Implementation Checklist................................................................110 

 Consolidated Financial Statement: Implementation Checklist.................................................................. 111 

**Payroll Management........................................................................................................................... 113** 

 Payroll Basic Configuration: Implementation Checklist..............................................................................113 

**Prices and Discounts........................................................................................................................... 115** 

 Sales Prices: Implementation Checklist....................................................................................................... 115 

 Prices in Base Currencies: Implementation Checklist................................................................................. 116 

**Project Accounting.............................................................................................................................. 118** 


<!-- PAGE_BREAK -->
 Contents | 5 

 Committed Costs: Implementation Checklist.............................................................................................. 118 

 Change Requests: Implementation Checklist.............................................................................................. 120 

 Employee Time Billing: Implementation Checklist..................................................................................... 122 

 Expense Receipts with Corporate Cards: Implementation Checklist..........................................................123 

 Expense Returns to Corporate Cards: Implementation Checklist...............................................................124 

 Overhead in the Project Budget: Implementation Checklist...................................................................... 125 

 Pro Forma Invoices: Implementation Checklist...........................................................................................126 

 Project Quotes: Implementation Checklist.................................................................................................. 128 

 Project Budget: Implementation Checklist.................................................................................................. 129 

 Project Budget Forecasts: Implementation Checklist................................................................................. 131 

 Project Templates and Common Tasks: Implementation Checklist........................................................... 132 

 Project Transactions: Implementation Checklist.........................................................................................132 

 Project Inventory Tracking by Warehouse Location: Implementation Checklist....................................... 134 

 Purchasing Services for Projects: Implementation Checklist..................................................................... 136 

 Single-Tier Change Management: Implementation Checklist.................................................................... 138 

 Taxes in Projects: Implementation Checklist............................................................................................... 139 

 Time Tracking Configuration: Implementation Checklist........................................................................... 142 

 Vendor Payments for a Project: Implementation Checklist........................................................................ 144 

 WIP Labor Costs in Cost-Plus Projects: Implementation Checklist.............................................................145 

 WIP Labor Costs in Fixed-Price Projects: Implementation Checklist.......................................................... 146 

**Route Management............................................................................................................................. 149** 

 Route Management: Implementation Checklist.......................................................................................... 149 

**Service Management........................................................................................................................... 151** 

 Service Order Types: Implementation Checklist..........................................................................................151 

**Taxes..................................................................................................................................................153** 

 Cash Entries with Taxes: Implementation Checklist....................................................................................153 

 Credit Memos with Sales Taxes: Implementation Checklist........................................................................154 

 Funds Transfers with Taxable Fees: Implementation Checklist.................................................................. 155 

 Invoices with Inclusive Sales Taxes: Implementation Checklist................................................................. 156 

 Invoices with Sales Taxes: Implementation Checklist................................................................................. 158 

 Purchases with Inclusive Sales Taxes: Implementation Checklist.............................................................. 160 

 Purchases with Sales Taxes: Implementation Checklist..............................................................................161 

 Purchases with Use Taxes: Implementation Checklist................................................................................ 162 

 Sales Tax Adjustments: Implementation Checklist......................................................................................164 

 Tax Report Preparation: Implementation Checklist.................................................................................... 164 

 Release of Sales Tax Report: Implementation Checklist............................................................................. 165 


<!-- PAGE_BREAK -->
 Contents | 6 

Taxes Included in the Cost of Items: Implementation Checklist.................................................................165 

Voiding of a Sales Tax Report: Implementation Checklist...........................................................................166 


<!-- PAGE_BREAK -->
 Copyright | 7 

## Copyright 

**©** (^) **2025 Acumatica, Inc. ALL RIGHTS RESERVED.** No part of this document may be reproduced, copied, or transmitted without the express prior consent of Acumatica, Inc. 3075 112th Avenue NE, Suite 200, Bellevue, WA 98004, USA 

#### Restricted Rights 

 The product is provided with restricted rights. Use, duplication, or disclosure by the United States Government is subject to restrictions as set forth in the applicable License and Services Agreement and in subparagraph (c)(1)(ii) of the Rights in Technical Data and Computer Soware clause at DFARS 252.227-7013 or subparagraphs (c)(1) and (c)(2) of the Commercial Computer Soware-Restricted Rights at 48 CFR 52.227-19, as applicable. 

#### Disclaimer 

 Acumatica, Inc. makes no representations or warranties with respect to the contents or use of this document, and specifically disclaims any express or implied warranties of merchantability or fitness for any particular purpose. Further, Acumatica, Inc. reserves the right to revise this document and make changes in its content at any time, without obligation to notify any person or entity of such revisions or changes. 

#### Trademarks 

 Acumatica is a registered trademark of Acumatica, Inc. HubSpot is a registered trademark of HubSpot, Inc. Microso Exchange and Microso Exchange Server are registered trademarks of Microso Corporation. All other product names and services herein are trademarks or service marks of their respective companies. 

 Soware Version: 2025 R2 

 Last Updated: 12/15/2025 


<!-- PAGE_BREAK -->
 Acumatica ERP Implementation Checklists | 8 

## Acumatica ERP Implementation Checklists 

 You can follow this guide when configuring Acumatica ERP functional areas. Each chapter of this guide is focused on the implementation of a particular functional area, and includes the implementation checklists that you use to make sure that the system is configured properly for performing particular business processes. 

 The checklists within each part of the guide are grouped by functional areas and are sorted in an alphabetical order. 

#### Functional Areas 

- _Basic Company Configuration_ 

- _Accounts Payable_ 

- _Accounts Receivable_ 

- _Cash Management_ 

- _Customers and Vendors_ 

- _General Ledger_ 

- _Financial Periods_ 

- _Order Management_ 

- _Prices and Discounts_ 

- _BigCommerce Integration_ 

- _Shopify Integration_ 


<!-- PAGE_BREAK -->
 Accounts Payable | 9 

## Accounts Payable 

### AP Bills: Implementation Checklist 

 To ensure that the system is configured properly for processing AP bills, make sure that the criteria listed in the table have been met in the system as described. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) Make sure the minimum set of features has been enabled as described in Company Without Branches: General Information , Company with Branches that Do Not Require Balancing: General Information , and Company with Branches that Require Balancing: General Information 

 Vendors (AP303000) Verify the existence of the vendor accounts for the vendors for which you will create AP bills. For details, see Vendors: Implementation Activity. 

 Non-Stock Items (IN202000) Verify the existence of non-stock items that can be used when creating AP bills. For details, see Non-Stock Item: Implementation Activity. 

#### Settings That Affect the Workflow 

 You use accounts payable forms to record purchases you make on credit. The following settings and entities should be specified and defined, respectively: 

- The following general ledger settings should be specified on the **Posting Settings** tab of the _General Ledger_     _Preferences_ (GL102000) form: 

- Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches     to be immediately posted aer they are released. 

- Clear the **Generate Consolidated Batches** check box to cause every AP transaction you enter to     be posted as an individual batch to the general ledger. (When this check box is selected, the system     consolidates into a single batch all transactions in the same currency posted to the same period for all     documents being released.) 

- The following accounts payable settings should be specified on the **General** tab of the _Accounts Payable_     _Preferences_ (AP101000) form: 

- Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives     the created AP bills the _On Hold_ status. 

- Clear the **Require Vendor Reference** check box in the **Data Entry Settings** section. This setting means     that you do not have to enter a vendor reference number in the **Vendor Ref.** box when creating an AP bill     on the _Bills and Adjustments_ (AP301000) form. 

- Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.     This setting indicates that AP bills will be automatically posted to the general ledger once they are     released. With these settings specified and entities defined, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions. 


<!-- PAGE_BREAK -->
 Accounts Payable | 10 

### AP Bill Payments: Implementation Checklist 

 To ensure that the system is configured properly for paying AP bills, make sure that the criteria listed in the table have been met in the system as described. 

 Form Criteria to Check Notes 

 Enable/Disable Features (CS100000) Make sure the minimal features have been enabled as described in Company Without Branches: General Information , Company with Branches that Do Not Require Balancing: General Information , or Company with Branches that Require Balancing: General Information. 

 Vendors (AR303000) Verify the existence of the vendor accounts for the vendors whose bills you will pay. For details, see Vendors: Implementation Activity. 

 Payment Methods (CA204000) Make sure that the CHECK payment method has been specified when creating a payment. 

#### Settings That Affect the Workflow 

 The following settings and entities should be specified and defined, respectively: 

- The following general ledger settings should be specified on the **Posting Settings** tab of the _General Ledger_     _Preferences_ (GL102000) form: 

- Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches     to be immediately posted aer they are released. 

- Clear the **Generate Consolidated Batches** check box to cause every AP transaction you enter to     be posted as an individual batch to the general ledger. (When this check box is selected, the system     consolidates into a single batch all transactions in the same currency posted to the same period for all     documents being released.) 

- The following accounts payable settings should be specified on the **General** tab of the _Accounts Payable_     _Preferences_ (AP101000) form: 

- Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives     the created checks the _On Hold_ status. 

- Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.     This setting indicates that checks will be automatically posted to the general ledger once they are     released. 

- The following payment method settings should be specified for the payment method on the _Payment_     _Methods_ (CA204000) form: 

- Select the **Print Checks** option in the **Additional Processing** section on the **Settings for Use in AP** tab. With these settings specified and entities defined, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions. 


<!-- PAGE_BREAK -->
 Accounts Payable | 11 

### AP Documents from PDFs: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for recognizing AP documents from PDF files, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you start recognizing AP documents from PDF files, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form 

 Make sure that the AP Document Recognition Service feature has been enabled. 

 The feature is not available in trial mode and can be enabled only if it is included in the license that is applied to the Acumatica ERP instance. 

 Email Accounts (SM204002) form Make sure that a system email account is created with incoming mail processing activated and the Submit to Incoming Documents check box selected on the Incoming Mail Processing tab. 

 This configuration is needed only if you want automatically submit PDF attachments of incoming emails for recognition. 

 Rebuild Full-Text Entity Index (SM209500) form 

 Rebuild search indexes before you start using the AP Document Recognition Service feature. For details, see Building Search Indexes. 

#### Project-Related Recognition Checklist 

 If you are planning to recognize project-related AP documents from PDF files, you make sure that the following additional configuration steps have been performed, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form 

 Make sure that the following features are enabled: 

- _Recognition of Project-Related Documents_ 

 The feature is not available in trial mode and can be enabled only if it is included in the license that is applied to the Acumatica ERP instance. 

- _Projects_ 

- _Construction_ 


<!-- PAGE_BREAK -->
 Accounts Payable | 12 

 Form Criteria to Check 

 Projects Preferences (PM101000) form, General tab 

 Make sure that the integration of project accounting and accounts payable is enabled—that is, the AP check box is selected in the Visibility Settings section on the Projects Preferences (PM101000) form. 

 Projects (PM101000) form, Summary tab 

 Make sure that for each project for which you plan to recognize AP documents, the AP check box is selected in the Visibility Settings section on the Projects Preferences (PM101000) form. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in AP Documents from PDFs: Process Activity. 

### Bill Prepayments: Implementation Checklist 

 To ensure that the system is configured properly for processing prepayments, make sure that the criteria listed in the table have been met in the system as described. 

 Form Criteria to Check Notes 

 Enable/Disable Features (CS100000) Make sure the minimal features have been enabled as described in Company Without Branches: General Information , Company with Branches that Do Not Require Balancing: General Information , and Company with Branches that Require Balancing: General Information. 

 Vendors (AR303000) Verify the existence of the vendor accounts for the vendors for which you will create and process prepayments. For details, see Vendors: Implementation Activity. 

 Non-Stock Items (IN202000) Verify the existence of non-stock items that can be used when creating prepayment requests. For details, see Non-Stock Item: Implementation Activity. 

 Payment Methods (CA204000) Make sure the CHECK payment method has been selected when paying a prepayment request. 

#### Implementation Notes 

 When deciding how many and which prepayment accounts to use to make it easier to track them in the system, you can select one or any of the following options: 

- To use a single prepayment account for all prepayments (to all vendors) 

- To specify the prepayment accounts for particular vendor classes 

- To specify separate prepayment accounts for specific vendors 


<!-- PAGE_BREAK -->
 Accounts Payable | 13 

 If you do not specify a separate account for prepayments, the vendor prepayments will be debited to the vendor AP account. 

 To assign the prepayment accounts, do the following: 

1. On the _Vendor Classes_ (AP201000) form, specify the prepayment account and subaccount for the default     vendor class and for each of the other vendor classes. This will make it easy to create new vendor classes     and new vendors with the proper prepayment account specified. 

2. Use the _Vendors_ (AP303000) form to specify the prepayment account and subaccount for each vendor. 

#### Settings That Affect the Workflow 

 The following settings and entities should be specified and defined, respectively: 

- The following general ledger settings should be specified on the **Posting Settings** tab of the _General Ledger_     _Preferences_ (GL102000) form: 

- Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches     to be immediately posted aer they are released. 

- Clear the **Generate Consolidated Batches** check box to cause every AP transaction you enter to     be posted as an individual batch to the general ledger. (When this check box is selected, the system     consolidates into a single batch all transactions in the same currency posted to the same period for all     documents being released.) 

- The following accounts payable settings should be specified on the **General** tab of the _Accounts Payable_     _Preferences_ (AP101000) form: 

- Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives     the created checks the _On Hold_ status. 

- Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.     This setting indicates that checks will be automatically posted to the general ledger once they are     released. 

- The following payment method settings should be specified for the payment method on the _Payment_     _Methods_ (CA204000) form: 

- Select the **Print Checks** option in the **Additional Processing** section on the **Settings for Use in AP** tab. With these settings specified and entities defined, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions. 

### Debit and Credit Adjustments: Implementation Checklist 

 To ensure that the system is configured properly for processing debit and credit adjustments, make sure that the criteria listed in the table have been met in the system as described. 

 Form Criteria to Check Notes 

 Enable/Disable Features (CS100000) Make sure the minimal features have been enabled as described in Company Without Branches: General Information , Company with Branches that Do Not Require Balancing: General Information , and Company with Branches that Require Balancing: General Information. 


<!-- PAGE_BREAK -->
 Accounts Payable | 14 

 Form Criteria to Check Notes 

 Vendors (AP303000) Verify the existence of the vendor accounts for the vendors for which you will create debit and credit adjustments. For details, see Vendors: Implementation Activity. 

#### Settings That Affect the Workflow 

 The following settings and entities should be specified and defined, respectively: 

- The following general ledger settings should be specified on the **Posting Settings** tab of the _General Ledger_     _Preferences_ (GL102000) form: 

- Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches     to be immediately posted aer they are released. 

- Clear the **Generate Consolidated Batches** check box to cause every AP transaction you enter to     be posted as an individual batch to the general ledger. (When this check box is selected, the system     consolidates into a single batch all transactions in the same currency posted to the same period for all     documents being released.) 

- The following accounts payable settings should be specified on the **General** tab of the _Accounts Payable_     _Preferences_ (AP101000) form: 

- Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives     the created debit and credit adjustments the _On Hold_ status. 

- Clear the **Require Vendor Reference** check box in the **Data Entry Settings** section. This setting means     that you do not have to enter a vendor reference number in the **Vendor Ref.** box when creating a debit or     credit adjustment on the _Bills and Adjustments_ (AP301000) form. 

- Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.     This setting indicates that debit and credit adjustments will be automatically posted to the general     ledger once they are released. With these settings specified and entities defined, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions. 

### Interbranch Bills Without Balancing: Implementation Checklist 

 Before users begin processing AP bills between branches that do not require balancing, you must make sure that the system has been configured properly and that all required entities have been created, as described in the following table 

 Form Settings to Check Notes 

 Enable/Disable Features (CS100000) form 

 Make sure that the following features have been enabled: 

- _Standard Financials_ 

- _Multibranch Support_ 

- _Multicompany Support_ 

- _Advanced Financials_ 

- _Inter-Branch Transactions_ 


<!-- PAGE_BREAK -->
 Accounts Payable | 15 

 Form Settings to Check Notes 

 Multiple forms Make sure that the minimum configuration of the company has been performed. 

 Chart of Accounts (GL202500) form Check whether the necessary accounts have been created. 

 Company Financial Calendar (GL201100) form 

 Be sure that the financial periods for which bills will be defined have a status of Open. 

 You can generate the necessary periods on the Master Financial Calendar (GL201000) form. 

 Vendors (AP303000) form Ensure that all needed vendors— that is, all vendors for which AP bills between branches not requiring balancing may be created— have been defined in the system. 

#### Settings That Can Affect the Processing Workflow 

 The following settings on the Accounts Payable Preferences (AP101000) form can affect the processing workflow: 

- If the **Automatically Post on Release** check box is selected, the system posts the appropriate transactions     to the general ledger when AP documents are released. If this check box is cleared, you have to post the     batch aer you release the AP document. 

- If the **Post Summary on Updating GL** check box is selected, AP documents are posted to the general ledger     with summarized row amounts if particular criteria are met. That is, if multiple lines in an AP document     specify the same account and branch, then in the GL batch, these rows are combined into one row (that is,     one journal entry) with the summarized amount. If this check box is cleared, the lines of the AP document     are not combined into one journal entry in the GL batch. 

- If the **Hold Documents on Entry** check box is selected in the **Data Entry Settings** section, when new     documents are entered, they are assigned the _On Hold_ status. If the **Hold Documents on Entry** check box is     cleared, the documents are assigned the _Balanced_ status. 

- If the **Validate Document Totals on Entry** check box is selected, the system adds the **Amount** box to the     Summary area of the _Bills and Adjustments_ (AP301000) form. To save a document with the _Balanced_ status,     you must enter the document total in this box aer reviewing the document. If this check box is cleared, the     system automatically validates the batch when the status of the batch is _Balanced_. 

- If the **Require Vendor Reference** check box is selected, you must fill in the **Vendor Ref.** box on the _Bills and_     _Adjustments_ form. If this check box is cleared, you can leave the **Vendor Ref.** box blank. 

### Interbranch Bills with Balancing: Implementation Checklist 

 Before users begin processing AP bills between branches that require balancing, you must make sure that the system has been configured properly and that all required entities have been created, as described in the following table. 


<!-- PAGE_BREAK -->
 Accounts Payable | 16 

 Form Settings to Check Notes 

 Enable/Disable Features (CS100000) form 

 Make sure that the following features have been enabled: 

- _Standard Financials_ 

- _Multibranch Support_ 

- _Multicompany Support_ 

- _Advanced Financials_ 

- _Inter-Branch Transactions_ 

 Multiple forms Make sure that the minimum configuration of the company has been performed. 

 Chart of Accounts (GL202500) form Check whether the necessary accounts have been created. 

 Inter-Branch Account Mapping (GL101010) form 

 Be sure that the account mapping rules have been specified for the branches. 

 For details on defining these rules, see Interbranch Account Mapping: General Information. 

 Company Financial Calendar (GL201100) form 

 Be sure that all financial periods for which AP bills for branches requiring balancing may occur have a status of Open. 

 You can generate the necessary periods on the Master Financial Calendar (GL201000) form. 

 Vendors (AP303000) form Ensure that all vendors that may be specified in these AP bills are defined in the system. 

#### Settings That Can Affect the Processing Workflow 

 The following settings on the Accounts Payable Preferences (AP101000) form can affect the processing workflow: 

- If the **Automatically Post on Release** check box is selected, the system posts the appropriate transactions     to the general ledger when AP documents are released. If this check box is cleared, you have to post the     batch aer you release the AP document. 

- If the **Post Summary on Updating GL** check box is selected, AP documents are posted to the general ledger     with summarized row amounts if particular criteria are met. That is, if multiple lines in an AP document     specify the same account and branch, then in the GL batch, these rows are combined into one row (that is,     one journal entry) with the summarized amount. If this check box is cleared, the lines of the AP document     are not combined into one journal entry in the GL batch. 

- If the **Hold Documents on Entry** check box is selected in the **Data Entry Settings** section, when new     documents are entered, they are assigned the _On Hold_ status. If the **Hold Documents on Entry** check box is     cleared, the documents are assigned the _Balanced_ status. 

- If the **Validate Document Totals on Entry** check box is selected, the system adds the **Amount** box to the     Summary area of the _Bills and Adjustments_ (AP301000) form. To save a document with the _Balanced_ status,     you must enter the document total in this box aer reviewing the document. If this check box is cleared, the     system automatically validates the batch when the status of the batch is _Balanced_. 

- If the **Require Vendor Reference** check box is selected, you must fill in the **Vendor Ref.** box on the _Bills and_     _Adjustments_ form. If this check box is cleared, you can leave the **Vendor Ref.** box blank. 


<!-- PAGE_BREAK -->
 Accounts Payable | 17 

### Check Reprinting: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for performing check reprinting, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially print and reprint checks, you make sure the settings have been specified and entities created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) Make sure the minimal features have been enabled as described in Company Without Branches: General Information , Company with Branches that Do Not Require Balancing: General Information , and Company with Branches that Require Balancing: General Information. 

 Payment Methods (CA204000) Make sure that the CHECK payment method has been specified when creating a payment. 

#### Settings That Affect the Workflow 

 You can affect the workflow of reprinting checks by specifying additional settings as follows: 

- The following general ledger settings should be specified on the **Posting Settings** tab of the _General Ledger_     _Preferences_ (GL102000) form: 

- Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches     to be immediately posted aer they are released. 

- Clear the **Generate Consolidated Batches** check box to cause every AP transaction you enter to     be posted as an individual batch to the general ledger. (When this check box is selected, the system     consolidates into a single batch all transactions in the same currency posted to the same period for all     documents being released.) 

- The following accounts payable settings should be specified on the **General** tab of the _Accounts Payable_     _Preferences_ (AP101000) form: 

- Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives     the created checks the _On Hold_ status. 

- Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.     This setting indicates that checks will be automatically posted to the general ledger once they are     released. 

- The following payment method settings should be specified for the payment method on the _Payment_     _Methods_ (CA204000) form: 

- Select the **Print Checks** option in the **Additional Processing** section on the **Settings for Use in AP** tab. 

#### Testing of Settings 

 To make sure that all settings are configured correctly, we recommend that you reprint checks as described in Check Reprinting: Process Activity. 


<!-- PAGE_BREAK -->
 Accounts Payable | 18 

### Multiple Bill Payments: Implementation Checklist 

 To ensure that the system is configured properly for processing a payment of multiple bills, make sure that the criteria listed in the table have been met in the system as described. 

 Form Criteria to Check Notes 

 Enable/Disable Features (CS100000) Make sure the minimal features have been enabled as described in Company Without Branches: General Information , Company with Branches that Do Not Require Balancing: General Information , and Company with Branches that Require Balancing: General Information. 

 Vendors (AP303000) Verify the existence of the vendor accounts for the vendors whose bills you want to pay with one payment. For details, see Vendors: Implementation Activity. 

 Payment Methods (CA204000) Make sure the CHECK payment method has been selected when creating a payment. 

#### Settings That Affect the Workflow 

 The following settings and entities should be specified and defined, respectively: 

- The following general ledger settings should be specified on the **Posting Settings** tab of the _General Ledger_     _Preferences_ (GL102000) form: 

- Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches     to be immediately posted aer they are released. 

- Clear the **Generate Consolidated Batches** check box to cause every AP transaction you enter to     be posted as an individual batch to the general ledger. (When this check box is selected, the system     consolidates into a single batch all transactions in the same currency posted to the same period for all     documents being released.) 

- The following accounts payable settings should be specified on the **General** tab of the _Accounts Payable_     _Preferences_ (AP101000) form: 

- Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives     the created payments the _On Hold_ status. 

- Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.     This setting indicates that payments will be automatically posted to the general ledger once they are     released. 

- The following payment method settings should be specified for the payment method on the _Payment_     _Methods_ (CA204000) form: 

- Select the **Print Checks** option in the **Additional Processing** section on the **Settings for Use in AP** tab. 

- The following vendor settings should be specified on the _Vendors_ (AP303000) form: 

- For the vendor whose bills should be paid by separate payments, select the **Pay Separately** check box in     the **Default Payment Settings** section of the **Payment** tab. With these settings specified and entities defined, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions. 


<!-- PAGE_BREAK -->
 Accounts Payable | 19 

### Payments for a Shared Vendor: Implementation Checklist 

 Before users begin processing payments for a vendor shared between different companies, you must make sure that the system has been configured properly and that all required entities have been created, as described in the following table. 

 Form Settings to Check Notes 

 Enable/Disable Features (CS100000) form 

 Make sure that the following features have been enabled: 

- _Standard Financials_ 

- _Multibranch Support_ 

- _Multicompany Support_ 

 Multiple forms Make sure that the minimum configuration of the companies has been performed. 

 Chart of Accounts (GL202500) form Check whether the necessary accounts have been created. 

 Company Financial Calendar (GL201100) form 

 Make sure that all periods for which users may process payments for a shared vendor have a status of Open. 

 You can generate the necessary periods on the Master Financial Calendar (GL201000) form. 

 Vendors (AP303000) form Ensure that all vendors for which shared payments from different companies may be processed are defined in the system. For these vendors, also be sure that no account has been specified in the Cash Account box of the Payment tab. 

 Payment Methods (CA204000) form Be sure that the necessary cash accounts have been defined as the default accounts for the branches in the payment methods of the vendor. 

#### Settings That Can Affect the Processing Workflow 

 The following settings on the Accounts Payable Preferences (AP101000) form can affect the processing workflow: 

- If the **Automatically Post on Release** check box is selected, the system posts the appropriate transactions     to the general ledger when AP documents are released. If this check box is cleared, you have to post the     batch aer you release the AP document. 

- If the **Post Summary on Updating GL** check box is selected, AP documents are posted to the general ledger     with summarized row amounts if particular criteria are met. That is, if multiple lines in an AP document     specify the same account and branch, then in the GL batch, these rows are combined into one row (that is, 


<!-- PAGE_BREAK -->
 Accounts Payable | 20 

 one journal entry) with the summarized amount. If this check box is cleared, the lines of the AP document are not combined into one journal entry in the GL batch. 

- If the **Hold Documents on Entry** check box is selected in the **Data Entry Settings** section, when new     documents are entered, they are assigned the _On Hold_ status. If the **Hold Documents on Entry** check box is     cleared, the documents are assigned the _Balanced_ status. 

- If the **Validate Document Totals on Entry** check box is selected, the system adds the **Amount** box to the     Summary area of the _Bills and Adjustments_ (AP301000) form. To save a document with the _Balanced_ status,     you must enter the document total in this box aer reviewing the document. If this check box is cleared, the     system automatically validates the batch when the status of the batch is _Balanced_. 

- If the **Require Vendor Reference** check box is selected, you must fill in the **Vendor Ref.** box on the _Bills and_     _Adjustments_ form. If this check box is cleared, you can leave the **Vendor Ref.** box blank. 

### Partial Payments: Implementation Checklist 

 To ensure that the system is configured properly for paying AP bills, make sure that the criteria listed in the table have been met in the system as described. 

 Form Criteria to Check Notes 

 Enable/Disable Features (CS100000) Make sure the minimal features have been enabled as described in Company Without Branches: General Information , Company with Branches that Do Not Require Balancing: General Information , or Company with Branches that Require Balancing: General Information. 

 Vendors (AR303000) Verify the existence of the vendor accounts for the vendors whose bills you will pay. For details, see Vendors: Implementation Activity. 

 Payment Methods (CA204000) Make sure that the CHECK payment method has been specified when creating a payment. 

#### Settings That Affect the Workflow 

 The following settings and entities should be specified and defined, respectively: 

- The following general ledger settings should be specified on the **Posting Settings** tab of the _General Ledger_     _Preferences_ (GL102000) form: 

- Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches     to be immediately posted aer they are released. 

- Clear the **Generate Consolidated Batches** check box to cause every AP transaction you enter to     be posted as an individual batch to the general ledger. (When this check box is selected, the system     consolidates into a single batch all transactions in the same currency posted to the same period for all     documents being released.) 

- The following accounts payable settings should be specified on the **General** tab of the _Accounts Payable_     _Preferences_ (AP101000) form: 

- Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives     the created checks the _On Hold_ status. 


<!-- PAGE_BREAK -->
 Accounts Payable | 21 

- Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.     This setting indicates that checks will be automatically posted to the general ledger once they are     released. 

- The following payment method settings should be specified for the payment method on the _Payment_     _Methods_ (CA204000) form: 

- Select the **Print Checks** option in the **Additional Processing** section on the **Settings for Use in AP** tab. With these settings specified and entities defined, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions. 

### Voiding Payments: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for voiding payments, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you void payments, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) Make sure the minimal features have been enabled as described in Company Without Branches: General Information , Company with Branches that Do Not Require Balancing: General Information , and Company with Branches that Require Balancing: General Information. 

 Vendors (AR303000) Verify the existence of the vendor accounts for the vendors whose payments you want to void. For details, see Vendors: Implementation Activity. 

 Payment Methods (CA204000) Make sure that the CHECK payment method has been specified when creating a payment. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of payment voiding by specifying additional settings as follows: 

- To cause GL batches to be immediately posted aer they are released, select the **Automatically Post on**     **Release** check box on the _General Ledger Preferences_ (GL102000) form. 

- To cause every AP transaction you enter to be posted as an individual batch to the general ledger, clear the     **Generate Consolidated Batches** check box on the _General Ledger Preferences_ form. (When this check box     is selected, the system consolidates into a single batch all transactions in the same currency posted to the     same period for all documents being released.) 

- To give the created payments the _On Hold_ status, select the **Hold Documents on Entry** check box in the     **Data Entry Settings** section on the _Accounts Payable Preferences_ (AP101000) form. 

- Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section on     the _Accounts Payable Preferences_ form. This setting indicates that payments will be automatically posted to     the general ledger once they are released. 


<!-- PAGE_BREAK -->
 Accounts Payable | 22 

#### Testing of Settings 

 To make sure that all settings are configured correctly, we recommend that you void a payment as described in Voiding Payments: Process Activity. 

### Payments with a Corporate Card: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for processing expenses with corporate cards, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially process expenses with the corporate cards, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Corporate Cards (CA202500) Make sure that the corporate card has been configured. For more information, see Corporate Cards: General Information. 

 Vendors (AP303000) Make sure that a vendor that represents the bank that issued the corporate credit card have been created. For this vendor, specify the accrued liability account as the Expense Account. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing expenses with corporate credit cards by specifying additional settings as follows: 

- The following general ledger settings should be specified on the **Posting Settings** tab of the _General Ledger_     _Preferences_ (GL102000) form: 

- Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches     to be immediately posted aer they are released. 

- Clear the **Generate Consolidated Batches** check box to cause every AP transaction you enter to     be posted as an individual batch to the general ledger. (When this check box is selected, the system     consolidates into a single batch all transactions in the same currency posted to the same period for all     documents being released.) 

- The following accounts payable settings should be specified on the **General** tab of the _Accounts Payable_     _Preferences_ (AP101000) form: 

- Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives     the created payments the _On Hold_ status. 

- Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.     This setting indicates that payments will be automatically posted to the general ledger once they are     released. 


<!-- PAGE_BREAK -->
 Accounts Receivable | 23 

## Accounts Receivable 

### AR Invoices: Implementation Checklist 

 To ensure that the system has been configured properly for the processing of AR invoices, make sure that the criteria listed in the table have been met in the system as described. 

#### Implementation Checklist 

 We recommend that before you initially process AR invoices, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check Notes 

 Enable/Disable Features (CS100000) Make sure the minimal features have been enabled, as described in Company Without Branches: General Information , Company with Branches that Do Not Require Balancing: General Information , and Company with Branches that Require Balancing: General Information. 

 Customers (AR303000) Be sure that the customer accounts for the customers for which you will create AR invoices have been defined. 

 Non-Stock Items (IN202000), Stock Items (IN202500) 

 Verify the existence of non-stock items or stock items that can be used when you are creating AR invoices. For details, see NonStock Item: Implementation Activity. 

#### Settings That Affect the Workflow 

 In general, you use accounts receivable forms specifically for sales made on credit. The following settings and entities should be specified and defined, respectively: 

- The following general ledger settings should be specified on the **General** tab ( **Posting Settings** section) of     the _General Ledger Preferences_ (GL102000) form: 

- Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches     to be immediately posted aer they are released. 

- Clear the **Generate Consolidated Batches** check box to cause every AR transaction you enter to     be posted as an individual batch to the general ledger. (When this check box is selected, the system     consolidates into a single batch all transactions in the same currency posted to the same period for all     documents being released.) 

- The following accounts receivable settings should be specified on the **General** tab of the _Accounts_     _Receivable Preferences_ (AR101000) form: 

- Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives     the created AR invoices the _On Hold_ status. 


<!-- PAGE_BREAK -->
 Accounts Receivable | 24 

- Clear the **Require Payment Reference on Entry** check box in the **Data Entry Settings** section. This     setting means that you do not have to enter a payment reference number in the **Payment Ref.** box when     creating a payment on the _Payments and Applications_ (AR302000) form. 

- Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.     This setting causes AR invoices to be automatically posted to the general ledger once they are released. With these settings specified and entities defined, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions. 

### AR Invoice Correction: Implementation Checklist 

 To ensure that the system is configured properly for creating and releasing credit and debit memos, make sure that the criteria listed in the table have been met in the system as described. 

 Form Criteria to Check Notes 

 Enable/Disable Features (CS100000) Make sure the minimal features have been enabled as described in Company Without Branches: General Information , Company with Branches that Do Not Require Balancing: General Information , and Company with Branches that Require Balancing: General Information. 

 Customers (AR303000) Verify the existence of the customer accounts for the customers for which you will correct AR invoices by creating credit and debit memos. For details, see Customers: Implementation Activity. 

#### Settings That Affect the Workflow 

 The following settings and entities should be specified and defined, respectively: 

- The following general ledger settings should be specified on the **Posting Settings** tab of the _General Ledger_     _Preferences_ (GL102000) form: 

- Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches     to be immediately posted aer they are released. 

- Clear the **Generate Consolidated Batches** check box to cause every AR transaction you enter to     be posted as an individual batch to the general ledger. (When this check box is selected, the system     consolidates into a single batch all transactions in the same currency posted to the same period for all     documents being released.) 

- The following accounts receivable preferences settings should be specified on the **General** tab of the     _Accounts Receivable Preferences_ (AR101000) form: 

- Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives     the created AR invoices and credit memos the _On Hold_ status. 

- Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.     This setting indicates that AR invoices and credit memos will be automatically posted to the general     ledger once they are released. 

- Make sure that the **Use Credit Terms in Credit Memos** check box is cleared in the **Data Entry Settings**     section. This setting indicates that credit memos cannot have credit terms and cash discounts applied to     them. 


<!-- PAGE_BREAK -->
 Accounts Receivable | 25 

 With these settings specified and entities defined, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions. 

### Auto-Applying Payments: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for performing auto-application of payments, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially auto-apply payments or prepayments to customer documents, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) Make sure the minimal features have been enabled as described in Company Without Branches: General Information , Company with Branches that Do Not Require Balancing: General Information , and Company with Branches that Require Balancing: General Information. 

 Statement Cycles (AR202800) Make sure that the End of Month statement cycle has been configured. 

 Customers (AR303000) Verify the existence of the customer accounts for the customers whose payments or prepayments you will auto-apply to documents. For details, see Customers: Implementation Activity. 

 Make sure that the EOM statement cycle has been selected for the customer accounts in the Statement Cycle ID box in the Financial Settings section on the Financial tab of the current form. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of the auto-application process by specifying additional settings on the General Settings tab of the Accounts Receivable Preferences (AR101000) form as follows: 

- Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the     created AR invoices and credit memos the _On Hold_ status. 

- Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.     This setting indicates that AR invoices and credit memos will be automatically posted to the general ledger     once they are released. 

#### Testing of Settings 

 To make sure that all settings are configured correctly, we recommend that you perform the auto-application process as described in Auto-Applying Payments: Process Activity. 


<!-- PAGE_BREAK -->
 Accounts Receivable | 26 

### Refunds: Implementation Checklist 

 To ensure that the system is configured properly for creating a refund, make sure that the criteria listed in the table have been met in the system as described. 

 Form Criteria to Check Notes 

 Enable/Disable Features (CS100000) Make sure the minimal features have been enabled as described in Company Without Branches: General Information , Company with Branches that Do Not Require Balancing: General Information , and Company with Branches that Require Balancing: General Information. 

 Customers (AR303000) Verify the existence of the customer accounts for the customers whose refunds you will process. For details, see Customers: Implementation Activity. 

#### Settings That Affect the Workflow 

 The following settings and entities should be specified and defined, respectively: 

- The following general ledger settings should be specified on the **Posting Settings** tab of the _General Ledger_     _Preferences_ (GL102000) form: 

- Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches     to be immediately posted aer they are released. 

- Clear the **Generate Consolidated Batches** check box to cause every AR transaction you enter to     be posted as an individual batch to the general ledger. (When this check box is selected, the system     consolidates into a single batch all transactions in the same currency posted to the same period for all     documents being released.) 

- The following accounts receivable settings should be specified on the **General** tab of the _Accounts_     _Receivable Preferences_ (AR101000) form: 

- Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives     the created AR invoices and credit memos the _On Hold_ status. 

- Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.     This setting indicates that AR invoices and credit memos will be automatically posted to the general     ledger once they are released. 

- Clear the **Require Payment Reference on Entry** check box in the **Data Entry Settings** section. With this     check box cleared, you do not have to fill in payment reference information in the **Payment Ref.** box on     the _Payments and Applications_ (AR302000) form. With these settings specified and entities defined, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions. 

### Interbranch Invoices with Balancing: Implementation Checklist 

 Before users begin processing invoices between branches that require balancing, you must make sure that the system has been configured properly and that all required entities have been created, as described in the following table. 


<!-- PAGE_BREAK -->
 Accounts Receivable | 27 

 Form Settings to Check Notes 

 Enable/Disable Features (CS100000) form 

 Make sure that the following features have been enabled: 

- _Standard Financials_ 

- _Multi-Branch Support_ 

- _Advanced Financials_ 

- _Inter-Branch Transactions_ 

 Make sure that the minimum configuration of the company has been performed. 

 Chart of Accounts (GL202500) form Check whether the necessary accounts have been created. 

 Inter-Branch Account Mapping (GL101010) form 

 Be sure that the account mapping rules have been specified for the branches. 

 For details on defining these rules, see Interbranch Account Mapping: General Information. 

 Company Financial Calendar (GL201100) form 

 Be sure that the periods for which invoices will be defined have a status of Open. 

 You can generate the necessary periods on the Master Financial Calendar (GL201000) form. 

 Customers (AR303000) form Be sure that the periods for which invoices will be defined have a status of Open. 

#### Settings That Can Affect the Processing Workflow 

 The following settings on the Accounts Receivable Preferences (AR101000) form can affect the processing workflow: 

- If the **Automatically Post on Release** check box is selected, the system posts transactions to the general     ledger when AR documents are released. If this check box is cleared, you have to post the batch aer you     release the AR document. 

- If the **Post Summary on Updating GL** check box is selected, AR documents are posted to the general ledger     with summarized row amounts if particular criteria are met. That is, if multiple lines in an AR document     specify the same account and branch, then in the GL batch, these rows will be combined into one entry with     the summarized amount. If this check box is cleared, the lines of the AR document will not be combined into     one journal entry in the GL batch. 

- If the **Hold Documents on Entry** check box is selected in the **Data Entry Settings** section, when new     documents are entered, they are assigned the _On Hold_ status. If the **Hold Documents on Entry** check box is     cleared, the documents are assigned the _Balanced_ status. 

- If the **Validate Document Totals on Entry** check box is selected, the system adds the **Amount** box to the     Summary area of the _Invoices and Memos_ (AR301000) form. To save a document with the _Balanced_ status,     you must enter the document total in this box aer reviewing the document. If this check box is cleared, the     system automatically validates the batch when the status of the batch is _Balanced_. 

- If the **Require Payment Reference on Entry** check box is selected, you must fill in the **Payment Ref.** box on     the _Invoices and Memos_ form. If this check box is cleared, you can leave the **Payment Ref.** box blank. 

- If the **Require Invoice/Memo Printing Before Release** check box is selected, you must print an AR invoice     or memo before release for those customers who prefer to receive printed copies of the documents. That     is, if the **Print Invoices** check box is selected on the _Customers_ (AR303000) form for a customer account, 


<!-- PAGE_BREAK -->
 Accounts Receivable | 28 

 each invoice is created with the Pending Print status. If this check box is cleared, you can release the invoice without printing. 

- If the **Require Invoice/Memo Emailing Before Release** check box is selected, you must send an email with     an AR invoice or memo before release for those customers who prefer to receive copies of the documents     by email. That is, if the **Send Invoices by Email** check box is selected on the _Customers_ form for a customer     account, each invoice is created with the _Pending Email_ status. If this check box is cleared, you can release     the invoice without sending an email. 

### Interbranch Invoices Without Balancing: Implementation Checklist 

 Before users begin processing invoices between branches that do not require balancing,you must make sure that the system has been configured properly and that all required entities have been created, as described in the following table. 

 Form Settings to Check Notes 

 Enable/Disable Features (CS100000) form 

 Make sure that the following features have been enabled: 

- _Standard Financials_ 

- _Multibranch Support_ 

- _Multicompany Support_ 

- _Advanced Financials_ 

- _Inter-Branch Transactions_ 

 Make sure that the minimum configuration of the company has been performed. 

 Chart of Accounts (GL202500) form Check whether the necessary accounts have been created. 

 Company Financial Calendar (GL201100) form 

 Be sure that the periods for which invoices will be defined have a status of Open. 

 You can generate the necessary periods on the Master Financial Calendar (GL201000) form. 

 Customers (AR303000) form Ensure that all needed customers— that is, all customers for which invoices between branches not requiring balancing may be created— have been defined in the system. 

#### Settings That Can Affect the Processing Workflow 

 The following settings on the Accounts Receivable Preferences (AR101000) form can affect the processing workflow: 

- If the **Automatically Post on Release** check box is selected, the system posts transactions to the general     ledger when AR documents are released. If this check box is cleared, you have to post the batch aer you     release the AR document. 

- If the **Post Summary on Updating GL** check box is selected, AR documents are posted to the general ledger     with summarized row amounts if particular criteria are met. That is, if multiple lines in an AR document     specify the same account and branch, then in the GL batch, these rows will be combined into one entry with 


<!-- PAGE_BREAK -->
 Accounts Receivable | 29 

 the summarized amount. If this check box is cleared, the lines of the AR document will not be combined into one journal entry in the GL batch. 

- If the **Hold Documents on Entry** check box is selected in the **Data Entry Settings** section, when new     documents are entered, they are assigned the _On Hold_ status. If the **Hold Documents on Entry** check box is     cleared, the documents are assigned the _Balanced_ status. 

- If the **Validate Document Totals on Entry** check box is selected, the system adds the **Amount** box to the     Summary area of the _Invoices and Memos_ (AR301000) form. To save a document with the _Balanced_ status,     you must enter the document total in this box aer reviewing the document. If this check box is cleared, the     system automatically validates the batch when the status of the batch is _Balanced_. 

- If the **Require Payment Reference on Entry** check box is selected, you must fill in the **Payment Ref.** box on     the _Invoices and Memos_ form. If this check box is cleared, you can leave the **Payment Ref.** box blank. 

- If the **Require Invoice/Memo Printing Before Release** check box is selected, you must print an AR invoice     or memo before release for those customers who prefer to receive printed copies of the documents. That     is, if the **Print Invoices** check box is selected on the _Customers_ (AR303000) form for a customer account,     each invoice is created with the _Pending Print_ status. If this check box is cleared, you can release the invoice     without printing. 

- If the **Require Invoice/Memo Emailing Before Release** check box is selected, you must send an email with     an AR invoice or memo before release for those customers who prefer to receive copies of the documents     by email. That is, if the **Send Invoices by Email** check box is selected on the _Customers_ form for a customer     account, each invoice is created with the _Pending Email_ status. If this check box is cleared, you can release     the invoice without sending an email. 

### Intercompany Sales: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for performing intercompany sales, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially perform intercompany sales, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) Make sure that the following features have been enabled: 

- _Standard Financials_ 

- _Multibranch Support_ 

- _Multicompany Support_ 

- _Advanced Financials_ 

- _Inter-Branch Transactions_ 

 Companies (CS101500) If you are going to extend as a customer or vendor any company that has the Without Branches company type, make sure that the company has been configured. For details, see Company Without Branches: To Configure a Company Without Branches. 


<!-- PAGE_BREAK -->
 Accounts Receivable | 30 

 Form Criteria to Check 

 Branches (CS102000) If you are going to extend as a customer or vendor any branches of companies with the With Branches Not Requiring Balancing or With Branches Requiring Balancing company type, make sure that the companies have been configured. For details, see Company with Branches that Do Not Require Balancing: Implementation Activity and Company with Branches that Require Balancing: Implementation Activity. 

 Customer Classes (AR201000) Make sure that the customer class to be used for a customer extended from a company or branch has been defined. For details, see Accounts Receivable: To Create a Customer Class. 

 Vendor Classes (AP201000) Make sure that the vendor class to be used for a vendor extended from a company or branch has been defined. For details, see Accounts Payable: To Create a Vendor Class. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of intercompany sales by specifying additional settings as follows: 

- To cause AR documents to be posted automatically, select the **Automatically Post on Release** check box     on the **General Settings** tab ( **Posting Settings** section) of the _Accounts Receivable Preferences_ (AR101000)     form. 

- To cause the ID of the default customer class to be inserted automatically when a company or branch has     been extended to be a customer, select a customer class ID in the **Default Customer Class ID** box on the     **General Settings** tab ( **Data Entry Settings** section) of the _Accounts Receivable Preferences_ form. If this box     is empty, you will have to specify a customer class for the new customer on the _Customers_ (AR303000) form. 

- To cause the system to insert a sales account from the customer location to an AR invoice, in the **Use**     **Intercompany Sales Account From** box, select _Customer Location_. If _Inventory Item_ is selected in this box,     the system will insert the sales account specified in the **Sales Account** box on the **GL Accounts** tab of the     _Non-Stock Items_ (IN202000) form for non-stock items. 

- To cause new documents to be assigned the _On Hold_ status when they are created, select the **Hold**     **Documents on Entry** check box on the **General Settings** tab ( **Data Entry Settings** section) of the _Accounts_     _Receivable Preferences_ form. If the **Hold Documents on Entry** check box is cleared, the documents are     assigned the _Balanced_ status. 

- To cause AP documents to be posted automatically, select the **Automatically Post on Release** check box on     the **General Settings** tab ( **Posting Settings** section) of the _Accounts Payable Preferences_ (AP101000) form. 

- To cause the ID of the default vendor class to be inserted automatically when a company or branch has     been extended to be a vendor, select a vendor class ID in the **Default Vendor Class ID** box on the **General**     **Settings** tab ( **Data Entry Settings** section) of the _Accounts Payable Preferences_ form. If this box is empty,     you will have to specify a vendor class for the new vendor on the _Vendors_ (AP303000) form. 

- To cause the system to insert an expense account from the vendor location to an AP bill created from an AR     invoice, in the **Use Intercompany Expense Account From** box, select _Vendor Location_. If _Inventory Item_ is     selected in this box, the system will insert the expense account specified in the **Expense Account** box on the     **GL Accounts** tab of the _Non-Stock Items_ (IN202000) form for non-stock items. 

- To cause new documents to be assigned the _On Hold_ status when they are created, select the **Hold**     **Documents on Entry** check box on the **General Settings** tab ( **Data Entry Settings** section) of the _Accounts_     _Payable Preferences_ form. If the **Hold Documents on Entry** check box is cleared, the documents are     assigned the _Balanced_ status. 


<!-- PAGE_BREAK -->
 Accounts Receivable | 31 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you process intercompany sales by performing instructions similar to those described in Intercompany Sales: To Process an Intercompany Invoice , Intercompany Sales: To Pay an Intercompany Bill , and Intercompany Sales: To Pay an Intercompany Invoice. 

### Invoice Payments: Implementation Checklist 

 To ensure that the system is configured properly for creating a payment and applying it to an invoice, make sure that the criteria listed in the table have been met in the system as described. 

 Form Criteria to Check Notes 

 Enable/Disable Features (CS100000) Make sure the minimal features have been enabled as described in Company Without Branches: General Information , Company with Branches that Do Not Require Balancing: General Information , and Company with Branches that Require Balancing: General Information. 

 Customers (AR303000) Verify the existence of the customer accounts for the customers whose invoices you will pay. For details, see Customers: Implementation Activity. 

#### Settings That Affect the Workflow 

 The following settings and entities should be specified and defined, respectively: 

- The following general ledger settings should be specified on the **Posting Settings** tab of the _General Ledger_     _Preferences_ (GL102000) form: 

- Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches     to be immediately posted aer they are released. 

- Clear the **Generate Consolidated Batches** check box to cause every AR transaction you enter to     be posted as an individual batch to the general ledger. (When this check box is selected, the system     consolidates into a single batch all transactions in the same currency posted to the same period for all     documents being released.) 

- The following accounts receivable settings should be specified on the **General Settings** tab of the _Accounts_     _Receivable Preferences_ (AR101000) form: 

- Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives     the created AR invoices and credit memos the _On Hold_ status. 

- Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.     This setting indicates that AR invoices and credit memos will be automatically posted to the general     ledger once they are released. 

- Clear the **Require Payment Reference on Entry** check box in the **Data Entry Settings** section. With this     check box cleared, you do not have to fill in payment reference information in the **Payment Ref.** box on     the _Payments and Applications_ (AR302000) form. With these settings specified and entities defined, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions. 


<!-- PAGE_BREAK -->
 Accounts Receivable | 32 

### Invoice Prepayments: Implementation Checklist 

 To ensure that the system has been configured properly for the processing of prepayments, make sure that the criteria listed in the table have been met in the system as described. 

 Form Criteria to Check Notes 

 Enable/Disable Features (CS100000) Make sure the minimal features have been enabled, as described in Company Without Branches: General Information , Company with Branches that Do Not Require Balancing: General Information , and Company with Branches that Require Balancing: General Information. 

 Customers (AR303000) Be sure that the customer accounts for the customers for which you will create and process prepayments have been defined. 

#### Settings That Affect the Workflow 

 In general, you use accounts receivable forms specifically for sales made on credit. The following settings and entities should be specified and defined, respectively: 

- The following general ledger settings should be specified on the **Posting Settings** tab of the _General Ledger_     _Preferences_ (GL102000) form: 

- Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches     to be immediately posted aer they are released. 

- Clear the **Generate Consolidated Batches** check box to cause every AR transaction you enter to     be posted as an individual batch to the general ledger. (When this check box is selected, the system     consolidates into a single batch all transactions in the same currency posted to the same period for all     documents being released.) 

- The following accounts receivable settings should be specified on the **General Settings** tab of the _Accounts_     _Receivable Preferences_ (AR101000) form: 

- Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives     the created prepayments the _On Hold_ status. 

- Clear the **Require Payment Reference on Entry** check box in the **Data Entry Settings** section. This     setting means that you do not have to enter a payment reference number in the **Payment Ref.** box when     creating a prepayment on the _Payments and Applications_ (AR302000) form. 

- Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.     This setting causes prepayments to be automatically posted to the general ledger once they are released. With these settings specified and entities defined, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions. 

### Invoice with Combined Subaccounts: Implementation Checklist 

 To ensure that the system has been configured properly for the processing of AR invoices, make sure that the criteria listed in the table have been met in the system as described. 


<!-- PAGE_BREAK -->
 Accounts Receivable | 33 

 Form Criteria to Check Notes 

 Enable/Disable Features (CS100000) form 

 Make sure the Standard Financials and Subaccounts (under Advanced Financials ) features have been enabled. 

 Multiple forms Make sure that the minimum configuration of the company has been performed, as described in Company Without Branches: General Information , Company with Branches that Do Not Require Balancing: General Information , and Company with Branches that Require Balancing: General Information. 

 Segmented Keys (CS202000) form, Segment Values (CS203000) form 

 Be sure that the SUBACCOUNTS segmented key has been configured to meet the company’s business needs, as described in Subaccounts: General Information. 

 Accounts Receivable Preferences (AR101000) form 

 Make sure that a proper subaccount mask has been specified for AR documents, as described in Combined Subaccounts: To Define a Subaccount Mask for AR Documents. 

 Customers (AR303000) Be sure that the customer accounts have been defined for the customers for which you will create AR invoices. 

 Non-Stock Items (IN202000), Stock Items (IN202500) 

 Verify the existence of the non-stock items or stock items (or both) that will be used when you are creating AR invoices. For details, see Non-Stock Item: Implementation Activity. 

#### Settings That Affect the Workflow 

 For a streamlined workflow of processing AR invoices, we recommend that you specify various settings related to the general ledger and to accounts receivable. 

 Do the following on the Posting Settings tab of the General Ledger Preferences (GL102000) form: 

- Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches to     be immediately posted aer they are released. 

- Clear the **Generate Consolidated Batches** check box to cause every AR transaction you enter to be posted     as an individual batch to the general ledger. (When this check box is selected, the system consolidates into     a single batch all transactions in the same currency posted to the same period for all documents being     released.) Do the following on the **General Settings** tab of the _Accounts Receivable Preferences_ (AR101000) form: 

- Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting causes the     system to assign the _On Hold_ status to the created AR invoices. 

- Clear the **Require Payment Reference on Entry** check box in the **Data Entry Settings** section. With this     setting, users do not have to enter a payment reference number in the **Payment Ref.** box when creating an     AR invoice on the _Invoices and Memos_ (AR301000) form. 


<!-- PAGE_BREAK -->
 Accounts Receivable | 34 

- Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.     This setting causes AR invoices to be automatically posted to the general ledger once they are released. With these settings specified, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions. 

### Payments with Write-Offs: Implementation Checklist 

 To ensure that the system is configured properly for creating a credit write-off when you process a payment, make sure that the criteria listed in the table have been met in the system as described. 

 Form Criteria to Check Notes 

 Enable/Disable Features (CS100000) Make sure the basic features have been enabled, as described in Company Without Branches: General Information , Company with Branches that Do Not Require Balancing: General Information , and Company with Branches that Require Balancing: General Information. 

 Customers (AR303000) Verify the existence of the customer accounts for the customers whose payments you want to process. For details, see Customers: Implementation Activity. 

 The needed customer accounts must be specified for write-offs in the Financial Settings section on the Financial tab as follows: 

- The **Enable Write-Offs** check box must be     selected. 

- A **Write-Off Limit** value must be specified. 

 Chart of Accounts (GL202500) Verify the existence of the GL accounts to which the write-off amounts will be posted. 

 The account you use to post credit writeoff amounts should be an Income account; the account you use to post balance write-off amounts should be an Expense account. 

 Reason Codes (CS211000) Verify the existence of the reason codes to be used for write offs. 

#### Settings That Affect the Workflow 

 Be sure that the appropriate settings have been defined as follows: 

- Do the following on the **Posting Settings** tab of the _General Ledger Preferences_ (GL102000) form: 

- Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches     to be immediately posted aer they are released. 

- Clear the **Generate Consolidated Batches** check box to cause every AR document you enter to be     posted as an individual batch to the general ledger. (When this check box is selected, the system 


<!-- PAGE_BREAK -->
 Accounts Receivable | 35 

 consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.) 

- On the **General Settings** tab of the _Accounts Receivable Preferences_ (AR101000) form, do the following: 

- Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives     the created AR invoices and credit memos the _On Hold_ status. 

- Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.     This setting indicates that AR invoices and credit memos will be automatically posted to the general     ledger once they are released. 

- Clear the **Require Payment Reference on Entry** check box in the **Data Entry Settings** section. With this     check box cleared, you do not have to fill in payment reference information in the **Payment Ref.** box on     the _Payments and Applications_ (AR302000) form. 

With these settings specified, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions. 


<!-- PAGE_BREAK -->
 Basic Company Configuration | 36 

## Basic Company Configuration 

### Preparing an Instance: Implementation Checklist 

 You can use the tables in this topic to quickly check whether the preparation steps are being performed in Acumatica ERP. The following tables cover both mandatory and recommended preparation steps. 

 The person who performs the initial configuration uses the admin username and the initial password only until the accounts for the persons participating in implementation are created (in the last task of initial configuration). We recommend that aer initial configuration, the users use their personal usernames and passwords to access the system. 

 Table: Mandatory Configuration To ensure that the instance has been implemented properly, make sure that the necessary features have been enabled and the needed entities have been created, as listed in the following table. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) The default set of features has been enabled for the instance. 

 Activate License (SM201510) A license key has been entered and activated. The license details are correct. 

 Table: Recommended Configuration The settings listed in the following table can be specified to secure the process of implementation. 

 Form Criteria to Check 

 Security Preferences (SM201060) The system-wide security policy has been configured to ensure that access to the tenant in implementation is secure and to track activities performed with the tenant by people involved in the process. 

 Users (SM201010) User accounts for people involved in the implementation have been created, by using the Users (SM201010) form. 

 For each user, at least the following settings have been specified: 

- Username (login) 

- Initial password to be changed on the first sign-in 

- Email address 

- Set of predefined roles that allow access to all system resources 

### Company Without Branches: Implementation Checklist 

 You can use the tables in this topic to quickly check whether the basic company configuration steps are being performed in Acumatica ERP. The following tables cover both mandatory configuration steps and recommended configuration steps. 


<!-- PAGE_BREAK -->
 Basic Company Configuration | 37 

**_Table: Mandatory Configuration_** 

To ensure that the basic configuration of a company has been implemented properly, make sure that the necessary features have been enabled and the needed entities have been created, as listed in the following table. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form Make sure that the Standard Financials group of features has been enabled. 

 Companies (CS101500) form Make sure that the necessary company has been created and that the necessary ledger has been created and assigned to it. 

 Chart of Accounts (GL202500) form Make sure that the necessary accounts for performing financial operations have been added. 

 General Ledger Preferences (GL102000) form Make sure that all necessary settings to use the general ledger functionality have been specified, including the YTD Net Income and Retained Earnings accounts. 

 Financial Year (GL101000) form Make sure that the first financial year in which the company will operate has been added and the periods have been generated. 

 Company Financial Calendar (GL201100) form Make sure that the periods in which the company will operate are open. 

 Cash Management Preferences (CA102000) form Make sure that all necessary settings to use the cash management functionality have been specified, including the Cash-in-Transit account. 

 Cash Accounts (CA202000) form Make sure that the necessary cash accounts to record cash entries and funds transfers have been created, and that the necessary entry types have been assigned to them. 

 Payment Methods (CA204000) form Make sure that the payment methods to be used have been created and defined to use the proper accounts. 

 Entry Types (CA203000) form Make sure that the necessary entry types for processing cash payments have been created and assigned to the related cash accounts. 

 Credit Terms (CS206500) form Make sure that the needed credit terms—those that are commonly used by vendors in their relations with your company, and those that are used by your company in its relations with customers—have been created. 

 Vendor Classes (AP201000) form Make sure that the default vendor class, which provides the default values for vendor accounts and for other vendor classes, has been created. 

 Accounts Payable Preferences (AP101000) form Make sure that all necessary settings to use the accounts payable functionality have been specified. 


<!-- PAGE_BREAK -->
 Basic Company Configuration | 38 

 Form Criteria to Check 

 Statement Cycles (AR202800) form Make sure that the necessary statement cycles, which will later be used to track customers' outstanding balances and send electronic or printed statements to the customers, have been created. 

 Customer Classes (AR201000) form Make sure that the default customer class, which provides the default values for customer accounts and for other customer classes, has been created. 

 Accounts Receivable Preferences (AR101000) form Make sure that all necessary settings to use the accounts receivable functionality have been specified. 

**_Table: Recommended Configuration_** 

The settings listed in the following table can be specified to simplify the process of creating entities in the system. 

 Form Criteria to Check 

 General Ledger Preferences (GL102000) form Make sure that the following settings have been specified: 

- The **Automatically Post on Release** check box is     selected. 

- The **Hold Batches on Entry** check box is cleared. 

 Cash Management Preferences (CA102000) form Make sure that the following settings have been specified: 

- The **Automatically Post to GL on Release** check     box is selected. 

- The **Hold Transactions on Entry** check box is     cleared. 

- The **Require Document Ref. Nbr. on Entry** check     box is cleared. 

 Accounts Payable Preferences (AP101000) form Make sure that the following settings have been specified: 

- The **Automatically Post on Release** check box is     selected. 

- A vendor class, which will be used to provide de-     fault values for vendor accounts, is selected in the     **Default Vendor Class ID** box. 

- The **Hold Documents on Entry** check box is     cleared. 

- The **Require Approval of Bills Prior to Payment**     check box is cleared. 

- The **Validate Document Totals on Entry** check box     is cleared. 

- The **Require Vendor Reference** check box is     cleared. 


<!-- PAGE_BREAK -->
 Basic Company Configuration | 39 

 Form Criteria to Check 

 Accounts Receivable Preferences (AR101000) form Make sure that the following settings have been specified: 

- The **Automatically Post on Release** check box is     selected. 

- A customer class, which will be used to provide de-     fault values for customer accounts, has been se-     lected in the **Default Customer Class ID** box. 

- The **Hold Documents on Entry** check box is     cleared. 

- The **Validate Document Totals on Entry** check box     is cleared. 

- The **Require Payment Reference on Entry** check     box is cleared. 

### Company with Branches that Do Not Require Balancing: Implementation Checklist 

 You can use the tables in this topic to quickly check whether the configuration steps for a company with branches that do not require balancing are being performed in Acumatica ERP. The following tables cover both the mandatory configuration steps and the recommended configuration steps. 

 Table: Mandatory Configuration To ensure that the basic configuration of a company has been implemented properly, make sure that the necessary features have been enabled and the needed entities have been created, as listed in the following table. 

 Form Things to Check Notes 

 Enable/Disable Features (CS100000) form 

 Make sure that the Standard Financials group of features and the Multibranch Support and Multicompany Support features have been enabled. 

 Companies (CS101500) form Make sure that the necessary company has been created with the With Branches Not Requiring Balancing type and that the necessary ledger has been created and assigned to it. 

 Branches (CS102000) form Make sure that the branches of the company have been created. 

 Chart of Accounts (GL202500) form Make sure that the necessary accounts for performing financial operations have been added. 


<!-- PAGE_BREAK -->
 Basic Company Configuration | 40 

**Form Things to Check Notes** 

_General Ledger Preferences_ (GL102000) form 

 Make sure that all necessary settings to use the general ledger functionality have been specified, including the YTD Net Income and Retained Earnings accounts. 

_Financial Year_ (GL101000) form Make sure that the first financial year in which the company will operate has been added and the periods have been generated. 

_Company Financial Calendar_ (GL201100) form 

 Make sure that the periods in which the company will operate are open. 

_Cash Management Preferences_ (CA102000) form 

 Make sure that all necessary settings to use the cash management functionality have been specified, including the Cash-in-Transit account. 

_Cash Accounts_ (CA202000) form Make sure that the necessary cash accounts to record cash entries and funds transfers have been created, and that the necessary entry types have been assigned to them. 

_Payment Methods_ (CA204000) form Make sure that the payment methods to be used have been created and have been defined to use the proper accounts. 

_Entry Types_ (CA203000) form Make sure that the necessary entry types for processing cash payments have been created and assigned to the related cash accounts. 

_Credit Terms_ (CS206500) form Make sure that the needed credit terms—those that are commonly used by vendors in their relations with your company, and those that are used by your company in its relations with customers—have been created. 

_Vendor Classes_ (AP201000) form Make sure that the default vendor class, which provides the default values for vendor accounts and for other vendor classes, has been created. 

_Accounts Payable Preferences_ (AP101000) form 

 Make sure that all necessary settings to use the accounts payable functionality have been specified. 


<!-- PAGE_BREAK -->
 Basic Company Configuration | 41 

 Form Things to Check Notes 

 Statement Cycles (AR202800) form Make sure that the necessary statement cycles, which will later be used to track customers' outstanding balances and send electronic or printed statements to the customers, have been created. 

 Customer Classes (AR201000) form Make sure that the default customer class, which provides the default values for customer accounts and for other customer classes, has been created. 

 Accounts Receivable Preferences (AR101000) form 

 Make sure that all necessary settings to use the accounts receivable functionality have been specified. 

**_Table: Recommended Configuration_** 

The settings listed in the following table can be specified to simplify the process of creating entities in the system. 

 Form Things to Check Notes 

 General Ledger Preferences (GL102000) form 

 Make sure that the following settings have been specified: 

- The **Automatically Post on Re-**     **lease** check box is selected. 

- The **Hold Batches on Entry**     check box is cleared. 

 Cash Management Preferences (CA102000) form 

 Make sure that the following settings have been specified: 

- The **Automatically Post to GL**     **on Release** check box is select-     ed. 

- The **Hold Transactions on En-**     **try** check box is cleared. 

- The **Require Document Ref.**     **Nbr. on Entry** check box is     cleared. 


<!-- PAGE_BREAK -->
 Basic Company Configuration | 42 

 Form Things to Check Notes 

 Accounts Payable Preferences (AP101000) form 

 Make sure that the following settings have been specified: 

- The **Automatically Post on Re-**     **lease** check box is selected. 

- A vendor class, which will be     used to provide default values     for vendor accounts (and for     other vendor classes), is select-     ed in the **Default Vendor Class**     **ID** box. 

- The **Hold Documents on Entry**     check box is cleared. 

- The **Require Approval of Bills**     **Prior to Payment** check box is     cleared. 

- The **Validate Document Totals**     **on Entry** check box is cleared. 

- The **Require Vendor Reference**     check box is cleared. 

 Accounts Receivable Preferences (AR101000) form 

 Make sure that the following settings have been specified: 

- The **Automatically Post on Re-**     **lease** check box is selected. 

- A customer class, which will be     used to provide default values     for customer accounts (and for     other customer classes), has     been selected in the **Default**     **Customer Class ID** box. 

- The **Hold Documents on Entry**     check box is cleared. 

- The **Validate Document Totals**     **on Entry** check box is cleared. 

- The **Require Payment Ref-**     **erence on Entry** check box is     cleared. 

### Company with Branches that Require Balancing: Implementation Checklist 

 You can use the tables in this topic to quickly check whether the configuration steps for a company with branches that require balancing are being performed in Acumatica ERP. The following tables cover both the mandatory configuration steps and the recommended configuration steps. 

 Table: Mandatory Configuration To ensure that the basic configuration of a company has been implemented properly, make sure that the necessary features have been enabled and the needed entities have been created, as listed in the following table. 


<!-- PAGE_BREAK -->
 Basic Company Configuration | 43 

**Form Things to Check Notes** 

_Enable/Disable Features_ (CS100000) form 

 Make sure that the Standard Financials group of features and the Multibranch Support and Multicompany Support features have been enabled. 

_Companies_ (CS101500) form Make sure that the necessary company has been created with the _With Branches Requiring Balancing_ type and that the necessary ledger has been created and assigned to it. 

_Branches_ (CS102000) form Make sure that the branches of the company have been created. 

_Chart of Accounts_ (GL202500) form Make sure that the necessary accounts for performing financial operations have been added. 

_General Ledger Preferences_ (GL102000) form 

 Make sure that all necessary settings to use the general ledger functionality have been specified, including the YTD Net Income and Retained Earnings accounts. 

_Financial Year_ (GL101000) form Make sure that the first financial year in which the company will operate has been added and the periods have been generated. 

_Company Financial Calendar_ (GL201100) form 

 Make sure that the periods in which the company will operate are open. 

_Cash Management Preferences_ (CA102000) form 

 Make sure that all necessary settings to use the cash management functionality have been specified, including the Cash-in-Transit account. 

_Cash Accounts_ (CA202000) form Make sure that the necessary cash accounts to record cash entries and funds transfers have been created, and that the necessary entry types have been assigned to them. 

_Payment Methods_ (CA204000) form Make sure that the payment methods to be used have been created and have been defined to use the proper accounts. 


<!-- PAGE_BREAK -->
 Basic Company Configuration | 44 

 Form Things to Check Notes 

 Entry Types (CA203000) form Make sure that the necessary entry types for processing cash payments have been created and assigned to the related cash accounts. 

 Credit Terms (CS206500) form Make sure that the needed credit terms—those that are commonly used by vendors in their relations with your company, and those that are used by your company in its relations with customers—have been created. 

 Vendor Classes (AP201000) form Make sure that the default vendor class, which provides the default values for vendor accounts and for other vendor classes, has been created. 

 Accounts Payable Preferences (AP101000) form 

 Make sure that all necessary settings to use the accounts payable functionality have been specified. 

 Statement Cycles (AR202800) form Make sure that the necessary statement cycles, which will later be used to track customers' outstanding balances and send electronic or printed statements to the customers, have been created. 

 Customer Classes (AR201000) form Make sure that the default customer class, which provides the default values for customer accounts and for other customer classes, has been created. 

 Accounts Receivable Preferences (AR101000) form 

 Make sure that all necessary settings to use the accounts receivable functionality have been specified. 

**_Table: Recommended Configuration_** 

The settings listed in the following table can be specified to simplify the process of creating entities in the system. 

 Form Things to Check Notes 

 General Ledger Preferences (GL102000) form 

 Make sure that the following settings have been specified: 

- The **Automatically Post on Re-**     **lease** check box is selected. 

- The **Hold Batches on Entry**     check box is cleared. 


<!-- PAGE_BREAK -->
 Basic Company Configuration | 45 

**Form Things to Check Notes** 

_Cash Management Preferences_ (CA102000) form 

 Make sure that the following settings have been specified: 

- The **Automatically Post to GL**     **on Release** check box is select-     ed. 

- The **Hold Transactions on En-**     **try** check box is cleared. 

- The **Require Document Ref.**     **Nbr. on Entry** check box is     cleared. 

_Accounts Payable Preferences_ (AP101000) form 

 Make sure that the following settings have been specified: 

- The **Automatically Post on Re-**     **lease** check box is selected. 

- A vendor class, which will be     used to provide default values     for vendor accounts (and for     other vendor classes), is select-     ed in the **Default Vendor Class**     **ID** box. 

- The **Hold Documents on Entry**     check box is cleared. 

- The **Require Approval of Bills**     **Prior to Payment** check box is     cleared. 

- The **Validate Document Totals**     **on Entry** check box is cleared. 

- The **Require Vendor Reference**     check box is cleared. 

_Accounts Receivable Preferences_ (AR101000) form 

 Make sure that the following settings have been specified: 

- The **Automatically Post on Re-**     **lease** check box is selected. 

- A customer class, which will be     used to provide default values     for customer accounts (and for     other customer classes), has     been selected in the **Default**     **Customer Class ID** box. 

- The **Hold Documents on Entry**     check box is cleared. 

- The **Validate Document Totals**     **on Entry** check box is cleared. 

- The **Require Payment Ref-**     **erence on Entry** check box is     cleared. 


<!-- PAGE_BREAK -->
 Budget Management | 46 

## Budget Management 

### Access to Budget Nodes: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for assigning access to budget nodes, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially assign access to budget nodes, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) Make sure that the Standard Financials and Row-Level Security features have been enabled. 

 Multiple forms Make sure that the minimum configuration of the company has been performed, as described in Company Without Branches: General Information , Company with Branches that Do Not Require Balancing: General Information , and Company with Branches that Require Balancing: General Information. 

 GL functionality Make sure that the general ledger functionality has been implemented, as described in General Ledger: General Information. 

 Ledgers (GL201500) Make sure that the ledger to which the budget should be posted has been created, as described in Budget Ledger: General Information. 

 Chart of Accounts (GL202500) Check whether the necessary accounts have been created. 

 Master Financial Calendar (GL201000) Be sure that calendars for the financial years for which budgets will be created have been generated. 

 Budget Configuration (GL205000) Make sure that a budget tree has been created and released as described in Budget Tree: Implementation Activity. 

#### Additional Configuration 

 The following table provides details of additional configuration needed for the preparation of a simple budget. 


<!-- PAGE_BREAK -->
 Budget Management | 47 

 Form Settings to Check Notes 

 Multiple forms If your company uses subaccounts, the subaccounts have to be configured, as described in Subaccounts: Implementation Activity. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you assign access to budget nodes by performing instructions similar to those described in Access to Budget Nodes: Implementation Activity. 

### Budget Based on an Existing Budget: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for preparing a budget based on an uploaded budget, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially prepare a budget, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) Make sure that the Standard Financials feature has been enabled. 

 Multiple forms Make sure that the minimum configuration of the company has been performed, as described in Company Without Branches: General Information , Company with Branches that Do Not Require Balancing: General Information , and Company with Branches that Require Balancing: General Information. 

 GL functionality Make sure that the general ledger functionality has been implemented, as described in General Ledger: General Information. 

 Ledgers (GL201500) Make sure that the ledger to which the budget should be posted has been created, as described in Budget Ledger: General Information. 

 Chart of Accounts (GL202500) Check whether the necessary accounts have been created. 

 Master Financial Calendar (GL201000) Be sure that calendars for the financial years for which budgets will be created have been generated. 


<!-- PAGE_BREAK -->
 Budget Management | 48 

 Form Criteria to Check 

 Budgets (GL302010) Make sure that a simple budget has been created and released as described in Simple Budget: Process Activity. 

#### Additional Configuration 

 The following table provides details of additional configuration needed for the preparation of a simple budget. 

 Form Settings to Check Notes 

 Multiple forms If your company uses subaccounts, the subaccounts have to be configured, as described in Subaccounts: Implementation Activity. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you prepare a budget based on an uploaded budget by performing instructions similar to those described in Budget Based on an Existing Budget: Process Activity. 

### Budget vs Actual ARM Report: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for preparing and running an ARM report, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially prepare and run an ARM report, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Things to Check Notes 

 Enable/Disable Features (CS100000) Make sure that the Standard Financials feature has been enabled. 

 Multiple forms Make sure that the minimum configuration of the company has been performed, as described in Company Without Branches: General Information , Company with Branches that Do Not Require Balancing: General Information , and Company with Branches that Require Balancing: General Information. 


<!-- PAGE_BREAK -->
 Budget Management | 49 

 Form Things to Check Notes 

 Ledgers (GL201500) Make sure that the budget ledger that will be used for the report configuration has been created, as described in Budget Ledger: General Information. 

 Master Financial Calendar (GL201000) 

 Be sure that calendars for the financial years for which budgets will be created have been generated. 

 Budget Configuration (GL205000) Make sure that the relevant budget structure has been configured, as described in Budget Tree: Implementation Activity. 

 Budgets (GL302010) Make sure that a hierarchical budget has been created, as described in Conversion of a Simple Budget to a Hierarchical Budget: Process Activity or Hierarchical Budget: Process Activity. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you prepare and run an ARM report by performing instructions similar to those described in Budget vs. Actual ARM Report: Process Activity. 

### Converting a Simple Budget to a Hierarchical Budget: Implementation Checklist 

 The following table provides details you can use to ensure that the system is configured properly for the conversion of a simple budget to a hierarchical budget, and to understand (and change, if needed) the settings that affect the processing workflow. 

 Form Things to Check Notes 

 Enable/Disable Features (CS100000) Make sure that the Standard Financials feature has been enabled. 

 Multiple forms Make sure that the minimum configuration of the company has been performed, as described in Company Without Branches: General Information , Company with Branches that Do Not Require Balancing: General Information , and Company with Branches that Require Balancing: General Information. 


<!-- PAGE_BREAK -->
 Budget Management | 50 

 Form Things to Check Notes 

 Ledgers (GL201500) Make sure that the ledger to which the budget should be posted has been created, as described in Budget Ledger: General Information. 

 Budget Configuration (GL205000) Make sure that the budget structure has been configured, as described in Budget Tree: Implementation Activity. 

 Budgets (GL302010) Make sure that in the budget that you are going to convert,the masks that are used are the same as in the configured tree. 

 If any mask for a single-level budget is split into multiple masks on a tree or if multiple masks used somewhere in the single-level budget are merged into a single mask for the tree, the budget cannot be converted. 

#### Other Settings That Affect the Workflow 

 To cause some users to view only the budget nodes to which they are assigned access rights based on their roles, you perform the configuration described in Access to Budget Nodes: Implementation Activity. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you convert a simple budget to a hierarchical budget by performing instructions similar to those described in Conversion of a Simple Budget to a Hierarchical Budget: Process Activity. 

### Hierarchical Budget: Implementation Checklist 

 The following table provides details you can use to ensure that the system is configured properly for the preparation of a hierarchical budget, and to understand an additional configuration task that can affect the processing workflow. 

 Form Things to Check Notes 

 Enable/Disable Features (CS100000) form 

 Make sure that the Standard Financials feature has been enabled. 

 Multiple forms Make sure that the minimum configuration of the company has been performed, as described in Company Without Branches: General Information , Company with Branches that Do Not Require Balancing: General Information , and Company with Branches that Require Balancing: General Information. 


<!-- PAGE_BREAK -->
 Budget Management | 51 

 Form Things to Check Notes 

 Ledgers (GL201500) form Make sure that the ledger to which the budget should be posted has been created, as described in Budget Ledger: General Information. 

 Chart of Accounts (GL202500) form Check whether the necessary accounts have been created. 

 Master Financial Calendar (GL201000) form 

 Be sure that calendars for the financial years for which budgets will be created have been generated. 

 Budget Configuration (GL205000) form 

 Make sure that the relevant budget structure has been configured, as described in Budget Tree: Implementation Activity. 

#### Configuration Tasks That Can Affect the Processing Workflow 

 If your company uses subaccounts, the Subaccounts feature has to be enabled on the Enable/Disable Features (CS100000) form. In this case, make sure that the budget structure has all account-subaccount pairs that are used for budgeting on the Budget Configuration (GL205000) form. 

### Modifying a Hierarchical Budget: Implementation Checklist 

 The following table provides details you can use to ensure that the system is configured properly for the modification of a hierarchical budget, and to understand an additional configuration task that can affect the processing workflow. 

 Form Things to Check Notes 

 Enable/Disable Features (CS100000) Make sure that the Standard Financials feature has been enabled. 

 Multiple forms Make sure that the minimum configuration of the company has been performed, as described in Company Without Branches: General Information , Company with Branches that Do Not Require Balancing: General Information , and Company with Branches that Require Balancing: General Information. 

 Ledgers (GL201500) Make sure that the ledger to which the budget should be posted has been created, as described in Budget Ledger: General Information. 


<!-- PAGE_BREAK -->
 Budget Management | 52 

 Form Things to Check Notes 

 Chart of Accounts (GL202500) Check whether the necessary accounts have been created. 

 Master Financial Calendar (GL201000) 

 Be sure that calendars for the financial years for which budgets will be created have been generated. 

 Budget Configuration (GL205000) Make sure that the relevant budget structure has been configured, as described in Budget Tree: Implementation Activity. 

 Budgets (GL302010) Make sure that a hierarchical budget has been created, as described in Conversion of a Simple Budget to a Hierarchical Budget: Process Activity or Hierarchical Budget: Process Activity. 

#### Configuration Tasks That Can Affect the Processing Workflow 

 If your company uses subaccounts, the Subaccounts feature has to be enabled on the Enable/Disable Features (CS100000) form. In this case, make sure that the budget structure has all account-subaccount pairs that are used for budgeting on the Budget Configuration (GL205000) form. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you modify a hierarchical budget by performing instructions similar to those described in Modification of a Hierarchical Budget: Process Activity. 

### Revising a Budget: Implementation Checklist 

 The following table provides details you can use to ensure that the system is configured properly for the revising of a budget. 

 Form Things to Check Notes 

 Enable/Disable Features (CS100000) form 

 Make sure that the Standard Financials feature has been enabled. 

 Multiple forms Make sure that the minimum configuration of the company has been performed, as described in Company Without Branches: General Information. 


<!-- PAGE_BREAK -->
 Budget Management | 53 

 Form Things to Check Notes 

 Budgets (GL302010) form Make sure the budgets whose data is going to be modified have been uploaded to the system. For details, see Simple Budget: Process Activity or Hierarchical Budget: Process Activity. 

### Simple Budget: Implementation Checklist 

 The following tables provide details you can use to ensure that the system is configured properly for the preparation of a simple budget. 

 Form Things to Check Notes 

 Enable/Disable Features (CS100000) Make sure that the Standard Financials feature has been enabled. 

 Multiple forms Make sure that the minimum configuration of the company has been performed, as described in Company Without Branches: General Information , Company with Branches that Do Not Require Balancing: General Information , and Company with Branches that Require Balancing: General Information. 

 GL functionality Make sure that the general ledger functionality has been implemented, as described in General Ledger: General Information. 

 Ledgers (GL201500) Make sure that the ledger to which the budget should be posted has been created, as described in Budget Ledger: General Information. 

 Chart of Accounts (GL202500) Check whether the necessary accounts have been created. 

 Master Financial Calendar (GL201000) 

 Be sure that calendars for the financial years for which budgets will be created have been generated. 

#### Additional Configuration 

 The following table provides details of additional configuration needed for the preparation of a simple budget. 


<!-- PAGE_BREAK -->
 Budget Management | 54 

**Form Settings to Check Notes** 

Multiple forms If your company uses subaccounts, the subaccounts have to be configured, as described in _Subaccounts: Implementation Activity_. 


<!-- PAGE_BREAK -->
 Cash Management | 55 

## Cash Management 

### Bank Reconciliation: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for reconciling cash accounts with bank statements, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially perform bank reconciliation, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Tasks to Perform Note 

 Enable/Disable Features (CS100000) form 

 Make sure that the following feature has been enabled: Standard Financials. 

 Chart of Accounts (GL202500) form 

 Check whether the necessary accounts have been created. For details, see General Ledger: Chart of Accounts. 

 Cash Accounts (CA202000) form Check whether the necessary cash accounts have been configured. 

 You need to configure a cash account only when you perform the reconciliation for the first time. 

 Cash Management Preferences (CA101000) 

 On the Bank Statement Settings tab in the Import Settings section, make sure that PX.Objects.CA.OFXStatementReader is selected in the Statement Import Service box. 

 This setting is required for processing a bank statement in Open Financial Exchange (OFX) format, which you can do in Bank Reconciliation: To Process a Bank Statement in OFX Format (Part 1). 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of bank reconciliation by specifying additional settings on the Cash Management Preferences (CA101000) form as follows: 

- To cause cash transactions to be automatically posted to the general ledger once they are released, make     sure that the **Automatically Post to GL on Release** check box is selected in the **Posting and Release**     **Settings** section on the **General** tab. 

- To cause the system to assign the _On Hold_ status to the created cash transactions, make sure that the **Hold**     **Transactions on Entry** check box in the **Data Entry Settings** section on the **General** tab is selected. If you want data to be imported on the _Import Bank Transactions_ (CA306500) form only aer a user selects the applicable cash account, on the **Bank Statements** tab of the _Cash Management Preferences_ form, you should also select the **Import Bank Statement to Single Cash Account** check box. 

 If you want the system to automatically update the date of an unreleased AR or AP payment document to the bank transaction date when bank transactions are processed on the Process Bank Transactions (CA306000) form, you 


<!-- PAGE_BREAK -->
 Cash Management | 56 

 should select the Set Payment Date to Bank Transaction Date check box on the Payment Methods (CA204000) form for the payment method that is specified for the document. You should clear this check box if for this payment method, the Integrated Processing check box is selected on the Settings to Use in AR tab of the form. 

#### Testing of Settings 

 To make sure that all configuration has been performed correctly, we recommend that you test the performing of bank reconciliations by performing similar steps to those described in Bank Reconciliation: To Reconcile a Cash Account and Bank Reconciliation: To Process a Bank Statement in OFX Format (Part 1). 

### Cash Entries: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for creating cash entries, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially create cash entries, you make sure the needed features have been enabled, settings have been specified, and entities have been created as summarized in the following checklist. 

 Form Tasks to Perform Note 

 Enable/Disable Features (CS100000) Make sure the minimal features have been enabled as described in Company Without Branches: General Information , Company with Branches that Do Not Require Balancing: General Information , and Company with Branches that Require Balancing: General Information. 

 Cash Accounts (CA202000) Make sure the cash accounts used to record cash entries and funds transfers have been created as described in Cash Management: Cash Accounts. 

 Entry Types (CA203000) Make sure that the necessary entry types have been defined as described in Cash Management: Entry Types. 

#### Settings That Affect the Workflow 

 If the following settings are specified on the Cash Management Preferences (CA101000) form, they can affect the workflow of creating and processing a cash entry as follows: 

- You can select the **Hold Transactions on Entry** check box in the **Data Entry Settings** section to create cash     transactions with the _On Hold_ status by default. If this check box is selected, you can remove a cash entry     from hold by clicking **Remove Hold** for the cash entry on the relevant form. 

- You can select the **Automatically Post to GL on Release** check box in the **Posting and Release Settings**     section. If this check box is selected, when you release a cash entry, the system generates a batch and     automatically posts it to the general ledger. If the check box is cleared, on release of a cash entry, the     system generates a batch, but instead of immediately posting it to the general ledger, it saves the batch     with _Unposted_ status. You can post the batch with the _Unposted_ status manually on the _Post Transactions_     (GL502000) form. 


<!-- PAGE_BREAK -->
 Cash Management | 57 

#### Testing of Settings 

 To make sure that all settings are configured correctly, we recommend that you create a cash entry by performing similar steps to those described in Cash Entries: To Create a Disbursement Cash Entry and Cash Entries: To Create a Receipt Cash Entry. 

### Funds Transfers: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for performing funds transfers, and to understand (and change, if needed) the settings that affect the workflow of funds transfers processing. 

#### Implementation Checklist 

 We recommend that before you initially perform funds transfers, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Tasks to Perform Note 

 Enable/Disable Features (CS100000) Make sure that the Standard Financials feature has been enabled 

 Chart of Accounts (GL202500) Check whether the necessary accounts have been created. 

 Cash Accounts (CA202000) Check whether the necessary cash accounts have been configured. 

 Company Financial Calendar (GL201100) 

 Make sure that the periods during which funds transfers may occur have a status of Open. 

 You can generate the necessary periods on the Master Financial Calendar (GL201000) form. 

 For details on opening financial periods, see Opening Financial Periods: Process Activity. 

#### Other Settings That Affect the Workflow 

 The following settings on the Cash Management Preferences (CA101000) form can affect the processing workflow: 

- If the **Automatically Post to GL on Release** check box is selected, the system posts transactions to the     general ledger when cash management documents are released. If this check box is cleared, you have to     post the batch aer you release the document. 

- If the **Hold Transactions on Entry** check box is selected in the **Data Entry Settings** section, when new     transactions and funds transfers are entered, they are assigned the _On Hold_ status. If the **Hold Transactions**     **on Entry** check box is cleared, the transactions and funds transfers are assigned the _Balanced_ status. 

- If the **Require Document Ref. Nbr. on Entry** check box is selected, you must fill in the **Document Ref.** box     on the _Funds Transfers_ (CA301000) form for new funds transfers. If this check box is cleared, you can decide     whether to leave the **Document Ref.** box blank or fill it in. 


<!-- PAGE_BREAK -->
 Cash Management | 58 

#### Testing of Settings 

 To make sure that all settings are configured correctly, we recommend that you perform funds transfers by performing similar steps to those described in Funds Transfers: Process Activity. 

### Intercompany Funds Transfers: Implementation Checklist 

 Before users begin processing funds transfers between companies, you must make sure that the system has been configured properly and that all required entities have been created, as described in the following table. 

 Form Settings to Check Notes 

 Enable/Disable Features (CS100000) form 

 Make sure that the following features have been enabled: 

- _Standard Financials_ 

- _Multibranch Support_ 

- _Multicompany Support_ 

- _Advanced Financials_ 

- _Inter-Branch Transactions_ 

 Multiple forms Make sure that the minimum configuration of the companies has been performed. 

 Cash Accounts (CA202000) form Check whether the necessary cash accounts have been created, as described in Cash Management: To Create Cash Accounts. 

 Inter-Branch Account Mapping (GL101010) form 

 Be sure that the account mapping rules have been defined for the companies, as described in Interbranch Account Mapping: General Information. 

 Company Financial Calendar (GL201100) form 

 Make sure that the periods during which funds transfers may occur have a status of Open. 

 You can generate the necessary periods on the Master Financial Calendar (GL201000) form. 

#### Settings That Can Affect the Processing Workflow 

 The following settings on the Cash Management Preferences (CA101000) form can affect the processing workflow: 

- If the **Automatically Post to GL on Release** check box is selected, the system posts transactions to the     general ledger when cash management documents are released. If this check box is cleared, you have to     post the batch aer you release the document. 

- If the **Hold Transactions on Entry** check box is selected in the **Data Entry Settings** section, when new     transactions and funds transfers are entered, they are assigned the _On Hold_ status. If the **Hold Transactions**     **on Entry** check box is cleared, the transactions and funds transfers are assigned the _Balanced_ status. 


<!-- PAGE_BREAK -->
 Cash Management | 59 

- If the **Require Document Ref. Nbr. on Entry** check box is selected, you must fill in the **Document Ref.** box     on the _Funds Transfers_ (CA301000) form for new funds transfers. If this check box is cleared, you can leave     the **Document Ref.** box blank. 


<!-- PAGE_BREAK -->
 Customer Relationship Management | 60 

## Customer Relationship Management 

### Case Assignment to Owners and Workgroups: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for assigning cases to owners and workgroups, and to understand (and change, if needed) the settings that affect the case assignment workflow. 

#### Mandatory Configuration 

 We recommend that before you start assigning cases to owners, you make sure that the needed features have been enabled and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) The following features have been enabled: 

- _Customer Management_ : This feature provides the customer     relationship management (CRM) functionality. 

- _Case Management_ in the _Customer Management_ group of     features: This feature gives customer support personnel the     ability to create support cases, assign cases to owners, and     process cases. 

 Case Classes (CR206000) Case classes have been created with the necessary settings and attributes, as described in Defining Case Classes. 

 Table: Configuration of a Case Assignment Map If users will be assigning cases to owners and workgroups by using assignment maps, you should configure a case assignment map, which involves the required tasks listed below (which should be performed in the listed order). 

 Form Required Task 

 Employees (EP203000) Employee records have been created in the system. 

 Company Tree (EP204061) The needed departments, workgroups, and employees have been added to the company tree. 

 Assignment Maps (EP205010) A case assignment map has been created and it is properly configured. 

 Customer Management Preferences (CR101000) 

 A case assignment map has been specified in the Case Assignment Map box on the General tab ( Assignment Settings section). 

#### Other Settings That Affect the Workflow 

 You can include the sending of email notifications in the case assignment workflow. If you want email notifications to be sent to the responsible employees when a case is assigned to an employee or when the status of the case is changed, an administrator can set up email or push notifications on the Business Events (SM302050) form so that 


<!-- PAGE_BREAK -->
 Customer Relationship Management | 61 

 the employee receives a notification by email, by SMS, or in the Acumatica mobile app. For details, see Business Events. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you practice assigning cases to owners by performing instructions similar to those described in Case Assignment to Owners and Workgroups: Process Activity. 

### Lead Assignment to Owners and Workgroups: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for assigning leads to owners, and to understand (and change, if needed) the settings that affect the lead assignment workflow. 

#### Implementation Checklist 

 We recommend that before you start assigning leads to owners, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) The Customer Management feature has been enabled: This feature provides the customer relationship management (CRM) functionality, including lead and customer tracking, and also gives users the ability to manage sales opportunities, contacts, marketing lists, and marketing campaigns. 

 Assignment Maps (EP205010) If you will be assigning leads to owners by using assignment maps, a lead assignment map has been created and it is properly configured. 

 Customer Management Preferences (CR101000) An assignment map is specified in the Lead Assignment Map box on the General tab. 

 Company Tree (EP204061) The needed departments or workgroups have been added to the company tree. 

 Employees (EP203000) Employee records have been created in the system. 

 Users (SM201010) User profiles have been created for employees. 

 Lead Classes (CR207000) Lead classes have been created with the necessary settings and attributes, including Default Owner on the Details tab ( Data Entry Settings section). 

#### Other Settings That Affect the Lead Assignment Workflow 

 You can affect the lead assignment workflow by specifying additional settings in the system, as follows. If you want email notifications to be sent to the responsible employees when a lead is assigned to an employee or when the status of the lead is changed, an administrator can set up email or push notifications on the Business Events 


<!-- PAGE_BREAK -->
 Customer Relationship Management | 62 

 (SM302050) form so that the employee receives a notification by email, by SMS, or in Acumatica mobile app. For details, see Business Events. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you practice assigning leads to owners by performing instructions similar to those described in Lead Assignment to Owners and Workgroups: Process Activity. 

### Opportunity Assignment to Owners and Workgroups: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for assigning opportunities to owners, and to understand (and change, if needed) the settings that affect the opportunity assignment workflow. 

#### Implementation Checklist 

 We recommend that before you start assigning opportunities to owners, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) The Customer Management feature has been enabled: This feature provides the customer relationship management (CRM) functionality, including lead and customer tracking, and gives users the ability to manage sales opportunities, contacts, marketing lists, and marketing campaigns. 

 Assignment Maps (EP205010) If you will be assigning opportunities to owners by using assignment maps, an opportunity assignment map has been created and properly configured. 

 Customer Management Preferences (CR101000) If you will be assigning opportunities to owners by using assignment maps and you will be using the Assign Opportunities (CR503110) mass-processing form to assign owners to existing opportunities without owners according to this map, an assignment map has been specified in the Opportunity Assignment Map box on the General tab ( Assignment Settings section). 

 Company Tree (EP204061) The needed departments or workgroups have been added to the company tree. 

 Employees (EP203000) Employee records have been created in the system. 

 Opportunity Classes (CR209000) Opportunity classes have been created with the necessary settings and attributes, including Default Owner on the Details tab ( Data Entry Settings section). 


<!-- PAGE_BREAK -->
 Customer Relationship Management | 63 

#### Other Settings That Affect the Workflow 

 You can affect the opportunity assignment workflow by including the sending of email notifications. If you want email notifications to be sent to the responsible employees when an opportunity is assigned to an employee or when the status of the opportunity is changed, an administrator can set up email or push notifications on the Business Events (SM302050) form so that the employee receives a notification by email, by SMS, or in Acumatica mobile app. For details, see Business Events. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you practice assigning opportunities to owners by performing instructions similar to those described in Opportunity Assignment to Owners and Workgroups: Process Activity. 

### Configuring CRM Functionality: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for the customer relationship management (CRM) functionality in Acumatica ERP, and to specify settings that affect the CRM workflows. 

#### Mandatory Configuration 

 To ensure that the basic CRM configuration has been implemented properly, make sure that the necessary features have been enabled and settings have been specified, as described in the following checklist. 

 Form Criteria to Check 

 Multiple forms The following tasks have been performed: 

1. The initial configuration of the instance has been performed,     as described in _Preparing an Instance for Implementation_ 

2. The minimum company settings have been specified and     at least the minimum required functionality has been im-     plemented for all other functional areas to be integrated     with the CRM functionality as described in _Company Without_     _Branches: General Information_ 

3. The system email accounts to be used for CRM have been     configured, as described in _System Email Accounts_. 

 Enable/Disable Features (CS100000) The Customer Management feature has been enabled. This feature provides the customer relationship management functionality, including lead and customer tracking, as well as the handling of sales opportunities, contacts, marketing lists, and marketing campaigns. 

 Table: Recommended Configuration To give users the abilities to validate leads, contacts, and business accounts for duplicates, use the automatic processing of documents, use the integration with web map services, and group records that share common characteristics, you should specify and save the recommended settings listed in the following table. 


<!-- PAGE_BREAK -->
 Customer Relationship Management | 64 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) The following features have been enabled: 

- _Duplicate Validation_ in the _Customer Management_ group of     features: Provides the duplicate validation functionality,     which you can use to set up and perform automatic validation     of lead and contact records for duplicates. For an example of     configuration, see _Duplicate Validation_. 

- _Sales Quotes_ in the _Customer Management_ group of features:     Gives you the ability to create opportunity-based sales quotes,     send them to customers for review, and create sales orders     and invoices based on these quotes. 

- _Address Lookup Integration_ in the _Customer Management_     group of features: Gives you the ability to use the address en-     richment functionality. With this feature enabled, integration     with a web map service can be set up, and you can add new     addresses, update existing addresses, and fill in the missing     address information on the forms that have address informa-     tion. For details, see _Integrating Acumatica ERP with Web Map_     _Services_. 

- _Scheduled Processing_ in the _Monitoring & Automation_ group of     features: Gives you the ability to create schedules for the au-     tomatic processing of documents. For details, see _Scheduling_     _Automated Processing_. 

 Lead Classes (CR207000) Lead classes with the necessary details and attributes have been created. 

 Contact Classes (CR205000) Contact classes with the necessary details and attributes have been created. 

 Business Account Classes (CR208000) Business account classes with the necessary details and attributes have been created. 

 Campaign Classes (CR202500) Campaign classes with the necessary details and attributes have been created. 

 Opportunity Classes (CR209000) Opportunity classes with the necessary details and attributes have been created. 

 Customer Management Preferences (CR101000) 

 On the General tab ( Numbering Sequences ) section, numbering sequences have been saved and classes with the necessary settings have been specified. 

### Duplicate Validation: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for duplicate validation in Acumatica ERP, and to understand (and change, if needed) the settings that affect the processing workflow. 


<!-- PAGE_BREAK -->
 Customer Relationship Management | 65 

#### Mandatory Configuration 

 We recommend that before you start validating records for duplicates, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) The following features have been enabled: 

- _Customer Management_ : Provides the customer relationship     management (CRM) functionality, including lead and cus-     tomer tracking, as well as the handling of sales opportuni-     ties, contacts, marketing lists, and campaigns 

- _Duplicate Validation_ in the _Customer Management_ group of     features: Provides the duplicate validation functionality 

 Customer Management Preferences (CR101000) The numbering sequence settings have been specified and saved to the system, as described in Basic Customer Relationship Management. 

 Duplicate Validation (CR103000) Duplicate validation settings have been specified as follows: 

- For the pair of records selected in the **Comparison** pane, at     least one matching field with the score weight, transforma-     tion rule, and action created on entry is specified. 

- The **Validation Score Threshold** box has a value. 

#### Recommended Configuration 

 To speed duplicate validation and minimize errors, you should specify and save the recommended settings listed in the following table. 

 Form Criteria to Check 

 Duplicate Validation (CR103000) The Validate on Entry check box is selected for each combination of record types on the Comparison pane. With this check box selected, the system will validate each new lead, contact, or business account when a new record is being created and saved for the first time on the Leads (CR301000), Contacts (CR302000), or Business Accounts (CR303000) form. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of duplicate validation by specifying additional settings: 

- To cause the system to perform duplicate validation processing more quickly—validating records and     calculating grams is handled in parallel mode and may be a time-consuming process—add the following key     to the web.config file located in the website folder. 

 <add key="ParallelProcessingDisabled" value="False" /> 

- To cause the system to validate the field values of each new lead, contact, or business account—such as an     email address or phone number—for duplication as soon as a user specifies these settings on the data entry 


<!-- PAGE_BREAK -->
 Customer Relationship Management | 66 

 form and tries to save the record for the first time, select the Warn option for these fields in the Create on Entry column of the Duplicate Validation (CR103000) form. 

- To cause the system to prevent the creation of duplicate records on the corresponding data entry form,     select the _Block_ option for each needed field in the **Create on Entry** column of the corresponding table on     the _Duplicate Validation_ form. 

- To make the system calculate validation scores strictly according to the duplicate validation rules—without     adjusting score weights for missing (empty) fields—clear the **Normalize Validation Scores** check box on the     _Duplicate Validation_ form. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you configure duplicate validation by performing instructions similar to those described in Duplicate Validation: Implementation Activity. 

### Emails and Activities: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for tracking communication with your potential and existing customers, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you start tracking communication with your potential and existing customers, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) The Customer Management has been enabled. This feature provides the customer relationship management (CRM) functionality, including lead and customer tracking, and gives users the ability to manage sales opportunities, contacts, marketing lists, and marketing campaigns. 

 Customer Management Preferences (CR101000) All the necessary settings have been specified. 

 Lead Classes (CR207000) Lead classes with the necessary details and attributes have been created. 

 Leads (CR301000) Leads that belong to the necessary classes have been added to the system. 

 Employees (EP203000) Employee records have been created in the system. 

 Users (SM201010) Users have been created for employees. 

 Email Accounts (SM204002) A system email account has been configured. 


<!-- PAGE_BREAK -->
 Customer Relationship Management | 67 

 Form Criteria to Check 

 Event Setup (EP204070) The system-wide settings have been specified to prepare the system to send automatic notifications by using the built-in notification capabilities 

#### Assignment Notification Settings 

 You may want to activate the notification of activity and task assignment by sending email notifications to the responsible employees, which are defined depending on what specific event has happened. These notification capabilities include the following scenarios: 

- You can send a notification to the owner of a new activity or task when a creator of the new activity or task is     not the owner. 

- You can send a notification to the owner of a related entity when one of the following events for which the     owner is not the creator has happened: 

- An activity or task has been created for the related entity and assigned to another user. 

- An existing activity or task associated with the related entity has been reassigned to another user. 

- An existing activity or task has been recently associated with the related entity for which the employee is     the owner, and assigned to another user. An administrator can set up the email notifications on the _Business Events_ (SM302050) form. For details, see _Business Events_. 

#### Validation of Configuration 

 To make sure that all settings are configured correctly, we recommend that you practice communicating with the leads by performing instructions similar to those described in the following topics: 

- _Emails and Activities: To Create an Email_ 

- _Emails and Activities: To Create an Event_ 

- _Emails and Activities: To Track a Phone Call_ 

- _Emails and Activities: To Create a Task_ 

### Case Management: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for managing cases, and to understand (and change, if needed) the settings that affect the workflow of case management. 

#### Mandatory Configuration 

 To ensure that the basic CRM configuration for managing cases has been implemented properly, make sure that the necessary features have been enabled, entities have been created, and settings have been specified, as described in the following checklist. 


<!-- PAGE_BREAK -->
 Customer Relationship Management | 68 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) The following features have been enabled: 

- _Customer Management_ : This feature provides the     customer relationship management (CRM) func-     tionality. 

- _Case Management_ in the _Customer Management_     group of features: This feature gives customer sup-     port personnel the ability to create support cases,     assign cases to owners, and process cases. 

 Case Classes (CR206000) The needed case classes have been created with the necessary settings and attributes, as described in Defining Case Classes. 

 Customer Management Preferences (CR101000) On the General tab ( Data Entry Settings section), in the Default Case Class box, the default case class, that is, the case class that will be used for most cases. 

 Employee Classes (EP202000) The needed employee classes have been created with the necessary settings and attributes. 

 Employees (EP203000) Employee records have been created in the system. 

 Users (SM201010) User profiles have been created for employees. 

#### Recommended Configuration 

 You should specify and save the recommended settings, which are listed in the following table, to give users the ability to bill customers for cases and for the time that the support team has spent on processing the case, based on the released activities, and to send emails to customers and the support team. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) The following features have been enabled: 

- _Scheduled Processing_ (under the _Monitoring & Automation_     group of features): This feature gives you the ability to cre-     ate schedules for the automatic processing of documents, in-     cluding the sending of emails. 

- _Time Management_ : This feature gives you the ability to track     the time your organization's employees spend on activities     that can be included in time cards. 

 Email Accounts (SM204002) A system email account has been configured, as described in Configuring Email Accounts. 

 Business Events (SM302050) A business event that causes the system to send emails to customers has been created. 

 Email Templates (SM204003) A notification template that is a subscriber for the business event has been created. 


<!-- PAGE_BREAK -->
 Customer Relationship Management | 69 

 Form Criteria to Check 

 Automation Schedules (SM205020) A schedule for the sending of emails has been created, as described in Managing Emails. 

 Non-Stock Items (IN202000) The required non-stock items of the Labor type with needed settings have been created, as described in Creating Labor Items. 

 Labor Rates (PM209900) The cost rates that are specific to particular labor items have been created, as described in Creating Labor Items. 

 Attributes (CS205000) Attributes have been created with the necessary settings. 

 Cases (CR306000) The User-Defined Fields tab, which holds the values of attributes required by your company for cases, has been added. 

 Earning Types (EP102000) If you will be using the Per Activity billing mode, the needed earning types that are used in activities have been created. 

 A predefined set of earning types has been created in the system. You can modify this set as needed. 

 Activity Types (CR102000) The activity types that you plan to use are defined and have the Active check box selected. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of case management by specifying additional settings as follows: 

- To cause the system to associate a case with a contract, do the following: 

- On the _Enable/Disable Features_ (CS100000) form, enable the _Contract Management_ feature in the     _Advanced Financials_ group of features: This feature provides the support of contracts, including case     processing and contract billing. It makes available all forms related to contract processing and provides     integration with accounts receivable and tracking of time and expenses. 

- On the _Contract Templates_ (CT202000) form, activate case counting by specifying a case count item (in the     **Case Billing Settings** section of the **Summary** tab). 

- If your company’s customer support processes include the approval of cases, configure an approval map, as     described in _Approval Configuration: Approval Maps_. 

- If you want to associate activities with projects and project tasks, enable the _Projects_ feature on the _Enable/_     _Disable Features_ (CS100000) form and configure the project accounting functionality, as described in _Basic_     _Project Accounting_. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in the following topics: 

- _Case Management: To Process a Non-Billable Case_ 

- _Case Management: To Process a Billable Case_ 


<!-- PAGE_BREAK -->
 Customer Relationship Management | 70 

### Opportunity Management: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for managing opportunities, and to understand (and change, if needed) the settings that affect the workflow of opportunity management. 

#### Mandatory Configuration 

 We recommend that before you start managing opportunities, you make sure the needed CRM features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) The following features have been enabled: 

- _Customer Management_ : This feature provides the customer     relationship management (CRM) functionality, including     lead and customer tracking, and gives users the ability to     manage sales opportunities, contacts, marketing lists, and     marketing campaigns. 

- _Sales Quotes_ in the _Customer Management_ group of fea-     tures: This feature gives you the ability to create opportuni-     ty-based sales quotes, send them to customers for review,     and create sales orders and invoices based on these quotes. 

 Customer Management Preferences (CR101000) The predefined settings in the Numbering Sequences section of the General tab have been saved, as described in Basic Customer Relationship Management. 

 Opportunity Classes (CR209000) Opportunity classes with the necessary settings, attributes, and stages have been created, as described in Defining Opportunity Classes. 

 Business Account Classes (CR208000) Business account classes with the necessary settings and attributes have been created, as described in Defining Business Account Classes. 

 Business Accounts (CR303000) Business accounts with the necessary settings and attributes have been created, as described in Creating Business Accounts. 

 Customer Classes (AR201000) Customer classes with the necessary settings and attributes have been created, as described in Creating a Customer. 

 Contacts (CR302000) Contacts with the necessary settings and attributes have been created, as described in Creating Contacts. 

#### Recommended Configuration 

 You should specify and save the recommended settings, which are listed in the following table, to give users the ability to time that the sales team has spent on processing the opportunity, based on the released activities, and to send emails to customers and the sales team. 


<!-- PAGE_BREAK -->
 Customer Relationship Management | 71 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) The following features have been enabled: 

- _Scheduled Processing_ (under the _Monitoring & Automation_     group of features): This feature gives you the ability to cre-     ate schedules for the automatic processing of documents, in-     cluding the sending of emails. 

- _Time Management_ : This feature gives you the ability to track     the time your organization's employees spend on activities     that can be included in time cards. 

 Email Accounts (SM204002) A system email account has been configured, as described in Configuring Email Accounts. 

 Business Events (SM302050) A business event that causes the system to send emails to customers has been created. 

 Email Templates (SM204003) A notification template that is a subscriber for the business event has been created. 

 Automation Schedules (SM205020) A schedule for the sending of emails has been created, as described in Managing Emails. 

 Non-Stock Items (IN202000) The required non-stock items of the Labor type with needed settings have been created, as described in Creating Labor Items. 

 Labor Rates (PM209900) The cost rates that are specific to particular labor items have been created, as described in Creating Labor Items. 

 Attributes (CS205000) Attributes have been created with the necessary settings. 

 Earning Types (EP102000) If you will be using the Per Activity billing mode, the needed earning types that are used in activities have been created. 

 A predefined set of earning types has been created in the system. You can modify this set as needed. 

 Activity Types (CR102000) The activity types that you plan to use are defined and have the Active check box selected. 

#### Opportunity-Based Documents Checklist 

 We recommend that before you start creating opportunity-based sales orders or invoices, you make sure the needed settings have been specified and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Multiple forms Order and inventory management functionality has been configured as described in Order Management Basic Configuration: General Information and Configuration of Order Management: General Information. 


<!-- PAGE_BREAK -->
 Customer Relationship Management | 72 

 Form Criteria to Check 

 Stock Items (IN202500) Stock items with the necessary settings have been added, as described in Stock Items: General Information. 

 Non-Stock Items (IN202000) Non-stock items with the necessary settings have been added, as described in Non-Stock Items: General Information and Service Items: General Information. 

 Opportunities (CR304000) The following tasks have been performed: 

- An opportunity has been created and at least one inventory     item, stock or non-stock, has been specified on the **Details**     tab. 

- A business account of the _Customer_ type has been selected     for the opportunity. 

- If the _Sales Quotes_ feature is enabled on the _Enable/Disable_     _Features_ (CS100000) form, a primary quote has been created     for the opportunity. 

- If the _Service Management_ feature is enabled on the _En-_     _able/Disable Features_ form, the opportunity does not have     any service orders associated with this opportunity. 

 If an opportunity includes detail lines with inventory items and detail lines with the Inventory ID column le blank, a sales order created from that opportunity will include only the lines with inventory items. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of opportunity management by specifying additional settings as follows: 

- To cause the system use opportunity classes during lead conversion, create the needed classes on the _Lead_     _Classes_ (CR207000) form. 

- To give users the ability to specify discounts for an opportunity, enable the _Customer Discounts_ feature on     the _Enable/Disable Features_ (CS100000) form and configure discounts. For details, see _Customer Discounts:_     _General Information_. 

- To provide the ability to include taxes in an opportunity, configure taxes, as described in _Sales Taxes:_     _General Information_. 

- To set up required approvals for sales quotes, sales orders, or invoices, enable the _Approval Workflow_ feature     on the _Enable/Disable Features_ form (in the _Monitoring & Automation_ group of features) and configure an     approval map. 

- To give users the ability to create service orders, enable the _Service Management_ feature on the _Enable/_     _Disable Features_ form and configure the field services functionality, as described in _Field Services Guide_. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in the following topics: 

- _Opportunity Management: To Add Products to an Opportunity_ 

- _Opportunity Management: To Create a Sales Quote_ 


<!-- PAGE_BREAK -->
 Customer Relationship Management | 73 

- _Opportunity Management: To Create an Opportunity-Based Sales Order_ 

### Marketing Lists: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for managing marketing lists, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you start working with marketing lists, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) The following features have been enabled: 

- _Customer Management_ : This feature provides the     customer relationship management (CRM) func-     tionality, including lead and customer tracking, as     well as handling of sales opportunities, contacts,     marketing lists, and campaigns 

- _Scheduled Processing_ in the _Monitoring & Automa-_     _tion_ group of features: Gives you the ability to cre-     ate schedules for the automatic processing of doc-     uments 

 Customer Management Preferences (CR101000) All the necessary settings have been specified and saved to the system. 

 Leads (CR301000) All the leads you want to add to a marketing list have been created. 

 Contacts (CR302000) All the contacts you want to add to a marketing list have been created. 

 Email Accounts (SM204002) A system email account has been created. 

 Email Preferences (SM204001) The system email account has been specified as the default system account. 

 Automation Schedules (SM205020) A schedule for regular runs of the Send and Receive Email process has been created. 

#### Validation of Configuration 

 To make sure that all settings are configured correctly, we recommend that you practice working with marketing lists by performing instructions similar to those described in the following topics: 

- _Marketing Lists: To Create a Static Marketing List_ 

- _Marketing Lists: To Create a Dynamic Marketing List_ 


<!-- PAGE_BREAK -->
 Customer Relationship Management | 74 

### Marketing Campaigns: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for creating and managing a marketing campaign, and to understand (and change, if needed) the settings that affect the workflow of campaign management. 

#### Implementation Checklist 

 We recommend that before you start creating and managing a marketing campaign, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) Make sure that the following features have been enabled: 

- _Customer Management_ : This feature provides the     customer relationship management (CRM) func-     tionality, including lead and customer tracking, as     well as handling of sales opportunities, contacts,     marketing lists, and marketing campaigns. 

- _Scheduled Processing_ in the _Monitoring & Automa-_     _tion_ group of features: This feature gives you the     ability to create schedules for the automatic pro-     cessing of documents 

 Customer Management Preferences (CR101000) All the necessary settings have been specified and saved to the system. 

 Lead Classes (CR207000) All the needed lead classes with the necessary settings and attributes have been created. 

 Contact Classes (CR205000) All needed contact classes with the necessary settings and attributes have been created. 

 Business Account Classes (CR208000) All needed business account classes with the necessary settings and attributes have been created. 

 Campaign Classes (CR202500) The needed campaign classes with the necessary settings and attributes have been created. 

#### Other Settings That Affect the Workflow of Campaign Management 

 You can affect the workflow of campaign management by specifying additional settings as follows: If the Projects feature is enabled on the Enable/Disable Features (CS100000) form, you can use the project accounting functionality to track expenses and revenue related to a marketing campaign. The system can regard a marketing campaign as a project and use the project budget tracking mechanism for tracking the campaign budget. For more information about project budgets, see Managing the Project Budget. A project can be associated with a marketing campaign through the Project Accounting Integration section on the Campaign Details tab of the Marketing Campaigns (CR202000) form. If needed, multiple campaigns may be associated with a single project. (For details, see Marketing Campaigns: Project Accounting for Campaigns .) 


<!-- PAGE_BREAK -->
 Customer Relationship Management | 75 

#### Validation of Configuration 

 To make sure that all settings are configured correctly, we recommend that in your system, you create and work with marketing campaigns by performing instructions similar to those described in Marketing Campaigns: Process Activity. 

### Mass Emails: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for creating and sending mass emails, and to understand (and change, if needed) the settings that affect the workflow of managing mass emails. 

#### Implementation Checklist 

 We recommend that before you start creating and sending mass emails, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) Make sure that the following features have been enabled: 

- _Customer Management_ : This feature provides the     customer relationship management (CRM) func-     tionality, including lead and customer tracking, as     well as handling of sales opportunities, contacts,     marketing lists, and marketing campaigns. 

- _Scheduled Processing_ in the _Monitoring & Automa-_     _tion_ group of features: Gives you the ability to cre-     ate schedules for the automatic processing of doc-     uments 

 Customer Management Preferences (CR101000) All the necessary settings have been specified and saved to the system. 

 Email Accounts (SM204002) A system email account has been created. 

 Email Preferences (SM204001) The system email account has been specified as the default system account. 

 Automation Schedules (SM205020) A schedule for regular runs of the Send and Receive Email process has been created. 

#### Validation of Configuration 

 To make sure that all settings are configured correctly, we recommend that in your system, you practice creating and working with mass emails by performing instructions similar to those described in the following topics: 

- _Mass Emails: To Create and Send a Mass Email_ 

- _Mass Emails: To Email from a Marketing List_ 


<!-- PAGE_BREAK -->
 Customer Relationship Management | 76 

- _Mass Emails: To Email from a Marketing Campaign_ 

### Lead Qualification by Marketing Teams: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for qualifying leads by a marketing team, and to understand (and change, if needed) the settings that affect the workflow of qualifying leads. 

#### Implementation Checklist 

 We recommend that before you start qualifying leads, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) The Customer Management has been enabled. This feature provides the customer relationship management (CRM) functionality, including lead and customer tracking. This feature also gives users the ability to manage sales opportunities, contacts, marketing lists, and marketing campaigns. 

 Leads (CR301000) Leads with the necessary settings and attributes have been created. 

 Lead Classes (CR207000) Lead classes with the necessary settings and attributes have been created. 

 Opportunity Classes (CR209000) Opportunity classes with the necessary settings and attributes have been created. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in Lead Qualification by Marketing Teams: To Disqualify a Lead. 

### Lead Qualification by Sales Teams: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for qualifying leads by a sales team, and to understand (and change, if needed) the settings that affect the workflow of qualifying leads. 

#### Implementation Checklist 

 We recommend that before you start qualifying leads, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 


<!-- PAGE_BREAK -->
 Customer Relationship Management | 77 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) The Customer Management has been enabled. This feature provides the customer relationship management (CRM) functionality, including lead and customer tracking. This feature also gives users the ability to manage sales opportunities, contacts, marketing lists, and marketing campaigns. 

 Leads (CR301000) Leads with the necessary settings and attributes have been created. 

 Lead Classes (CR207000) Lead classes with the necessary settings and attributes have been created. 

 Opportunity Classes (CR209000) Opportunity classes with the necessary settings and attributes have been created. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in the following topics: 

- _Lead Qualification by Sales Teams: To Convert a Lead to an Opportunity_ 

- _Lead Qualification by Sales Teams: To Disqualify a Lead_ 

### Record Validation for Duplicates: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for validating lead, contact, and business account records for duplicates. This information will also help you understand (and change, if needed) the settings that affect the workflow of validating duplicate records. 

#### Implementation Checklist 

 We recommend that before you start validating records for duplicates, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) The following features have been enabled: 

- _Customer Management_ : This feature provides the customer     relationship management (CRM) functionality, including     lead and customer tracking, as well as the handling of sales     opportunities, contacts, marketing lists, and campaigns 

- _Duplicate Validation_ in the _Customer Management_ group of     features: This feature provides the duplicate validation func-     tionality, which you can use to set up and perform automat-     ic validation of lead and contact records for duplicates 


<!-- PAGE_BREAK -->
 Customer Relationship Management | 78 

 Form Criteria to Check 

 Duplicate Validation (CR103000) All necessary settings have been specified and saved to the system, as described in Duplicate Validation. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that you test the validation of one record and the validation of multiple records by following instructions similar to those described in the following topics: 

- _Record Validation for Duplicates: To Validate a Lead for Duplicates_ 

- _Record Validation for Duplicates: To Validate Multiple Leads for Duplicates_ 


<!-- PAGE_BREAK -->
 Customers and Vendors | 79 

## Customers and Vendors 

### Customer Statements: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for preparing customer statements. 

#### Implementation Checklist 

 We recommend that before you initially prepare customer statements, you make sure settings have been specified and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Customer Classes (AR201000) In the Statement Type box in the Default Print and Email Settings section on the General Settings tab, you specify what type of statement the customers assigned to this customer class prefer—balance-forward or open-item. 

 You select the Print Statements check box if you want to make this customer's statements available for mass-printing on the Print Statements (AR503500) form. 

 You select the Send Statements By Email check box if you want to make this customer's statements available for mass-emailing on the Print Statements form. 

 You select the Multi-Currency Statements check box if you want this customer's statements to be created in multicurrency format. Such statements are displayed for mass-processing (printing or emailing) if the Foreign Currency Statements check box is selected on the Print Statements form. 

 This check box becomes available if the Multicurrency Accounting feature has been enabled on the Enable/Disable Features (CS100000) form. 

 Statement Cycles (AR202800) Make sure that the End of Month statement cycle that you want to use for preparing customer statements has been configured. 

 Customers (AR303000) Make sure that the EOM statement cycle has been selected for the customer accounts in the Statement Cycle ID box in the Financial Settings section on the Financial tab of the current form. 

 Accounts Receivable Preferences (AR101000) 

 Make sure that on the General tab ( Consolidation Settings section), the For Each Branch option is selected in the Prepare Statements box. 

#### Testing of Settings 

 To make sure that all settings are configured correctly, we recommend that you prepare customer statements as described in Customer Statements: Process Activity. 


<!-- PAGE_BREAK -->
 Customers and Vendors | 80 

### Customer Visibility: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for restricting the visibility of customer records, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially restrict visibility of customer records, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Make sure the minimal features have been enabled, as described in Company Without Branches: General Information , Company with Branches that Do Not Require Balancing: General Information , and Company with Branches that Require Balancing: General Information. 

 Make sure that the Multibranch Support feature has been enabled, if you need to restrict the visibility of customer records for particular branches. 

 Enable the Customer and Vendor Visibility Restriction feature to perform Customer Visibility: To Restrict Visibility to a Company. 

 Enable/Disable Features (CS100000) 

 Enable the Multicurrency Accounting and Multiple Base Currencies features to perform Customer Visibility: To Restrict Visibility to a New Company. 

 Customer Classes (AR201000) Be sure that the customer classes whose visibility you want to restrict have been defined. 

 Customers (AR303000) Be sure that the customer accounts have been defined for the customers whose visibility you want to restrict. 

 Branches (CS102000) Make sure that for each branch to which the visibility of any customers should be limited, the appropriate role associated with the branch is specified in the Access Role box ( Configuration Settings section) on the Branch Details tab. 

 Companies (CS101500) Make sure that for each company to which the visibility of any customers should be limited, the appropriate role associated with the company is specified in the Access Role box ( Configuration Settings section) on the Company Details tab. 

 Users (SM201010) or User Roles (SM201005) Make sure that the needed users have been assigned to the roles specified for branches and companies. For details, see User Roles: General Information. 


<!-- PAGE_BREAK -->
 Customers and Vendors | 81 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in Customer Visibility: To Restrict Visibility to a Company and Customer Visibility: To Restrict Visibility to a New Company. 

### On-Demand Statements: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for preparing on-demand customer statements. 

#### Implementation Checklist 

 We recommend that before you initially prepare customer statements, you make sure settings have been specified and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Customer Classes (AR201000) In the Statement Type box in the Default Print and Email Settings section on the General Settings tab, you specify what type of statement the customers assigned to this customer class prefer— balance-forward or open-item. 

 You select the Print Statements check box if you want to make this customer's statements available for mass-printing on the Print Statements (AR503500) form. 

 You select the Send Statements By Email check box if you want to make this customer's statements available for mass-emailing on the Print Statements form. 

 You select the Multi-Currency Statements check box if you want this customer's statements to be created in multicurrency format. Such statements are displayed for mass-processing (printing or emailing) if the Foreign Currency Statements check box is selected on the Print Statements form. 

 This check box becomes available if the Multicurrency Accounting feature has been enabled on the Enable/Disable Features (CS100000) form. 

 Statement Cycles (AR202800) Make sure that the End of Month statement cycle that you want to use for preparing customer statements has been configured. 

 Customers (AR303000) Make sure that the EOM statement cycle has been selected for the customer accounts in the Statement Cycle ID box in the Financial Settings section on the Financial tab of the current form. The statement type should be Open Item. 

 Accounts Receivable Preferences (AR101000) 

 Make sure that on the General tab ( Consolidation Settings section), the For Each Branch option is selected in the Prepare Statements box. 


<!-- PAGE_BREAK -->
 Customers and Vendors | 82 

#### Testing of Settings 

 To make sure that all settings are configured correctly, we recommend that you prepare on-demand statements as described in On-Demand Statements: Process Activity. 

### Regenerating Statements: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for regenerating customer statements and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you regenerate customer statements, you make sure settings have been specified and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Customer Classes (AR201000) In the Statement Type box in the Default Print and Email Settings section on the General Settings tab, you specify what type of statement the customers assigned to this customer class prefer— balance-forward or open-item. 

 You select the Print Statements check box if you want to make this customer's statements available for mass-printing on the Print Statements (AR503500) form. 

 You select the Send Statements By Email check box if you want to make this customer's statements available for mass-emailing on the Print Statements form. 

 You select the Multi-Currency Statements check box if you want this customer's statements to be created in multicurrency format. Such statements are displayed for mass-processing (printing or emailing) if the Foreign Currency Statements check box is selected on the Print Statements form. 

 This check box becomes available if the Multicurrency Accounting feature has been enabled on the Enable/Disable Features (CS100000) form. 

 Statement Cycles (AR202800) Make sure that the End of Month statement cycle that you want to use for preparing customer statements has been configured. 

 Customers (AR303000) Make sure that the EOM statement cycle has been selected for the customer accounts in the Statement Cycle ID box in the Financial Settings section on the Financial tab of the current form. 

 Accounts Receivable Preferences (AR101000) 

 Make sure that on the General tab ( Consolidation Settings section), the For Each Branch option is selected in the Prepare Statements box. 


<!-- PAGE_BREAK -->
 Customers and Vendors | 83 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of creating AR documents by specifying additional settings on the General Settings tab of the Accounts Receivable Preferences (AR101000) form as follows: 

- Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the     created AR invoices and credit memos the _On Hold_ status. 

- Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.     This setting indicates that AR invoices and credit memos will be automatically posted to the general ledger     once they are released. 

#### Testing of Settings 

 To make sure that all settings are configured correctly, we recommend that you regenerate customer statements as described in Regeneration of Statements: Process Activity. 

### Vendor Visibility: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for restricting the visibility of vendor records, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially restrict visibility of vendors, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Make sure the minimal features have been enabled, as described in Company Without Branches: General Information , Company with Branches that Do Not Require Balancing: General Information , and Company with Branches that Require Balancing: General Information. 

 Make sure that the Multibranch Support , Multicompany Support , and Customer and Vendor Visibility Restriction features have been enabled, if you need to restrict the visibility of vendor records for particular companies or branches. For details, see Vendor Visibility: To Restrict Visibility to a Branch. 

 Enable/Disable Features (CS100000) 

 Enable the Multibranch Support , Multicompany Support , Customer and Vendor Visibility Restriction , Multicurrency Accounting , and Multiple Base Currencies features, if you need to restrict the visibility of vendor records for a particular company with the base currency different from the tenant's base currency. For details, see Vendor Visibility: To Restrict Visibility to a New Company. 

 Vendor Classes (AP201000) Be sure that the vendor classes whose visibility you want to restrict have been defined. 


<!-- PAGE_BREAK -->
 Customers and Vendors | 84 

 Form Criteria to Check 

 Vendors (AP303000) Be sure that the vendor accounts have been defined for the vendors whose visibility you want to restrict. 

 Branches (CS102000) Make sure that for each branch to which the visibility of any vendors should be limited, the appropriate role associated with the branch is specified in the Access Role box ( Configuration Settings section) on the Branch Details tab. 

 Companies (CS101500) Make sure that for each company to which the visibility of any vendor should be limited, the appropriate role associated with the company is specified in the Access Role box ( Configuration Settings section) on the Company Details tab. 

 Users (SM201010) or User Roles (SM201005) Make sure that the needed users have been assigned to the roles specified for branches and companies. For details, see User Roles: General Information. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in Vendor Visibility: To Restrict Visibility to a Branch and Vendor Visibility: To Restrict Visibility to a New Company. 


<!-- PAGE_BREAK -->
 Equipment Management | 85 

## Equipment Management 

### Equipment Management: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for the managing equipment entities and processing service contracts in the system, and to specify the needed settings that affect this processing workflow. 

#### Prerequisites 

 Before you start configuring equipment management, you should make sure that the needed configuration tasks have been performed, as summarized in the following checklist. 

 Form Criteria to Check 

 Multiple forms Make sure that the minimum company settings are specified, as described in Company Without Branches , Company with Branches that Do Not Require Balancing , or Company with Branches that Require Balancing (depending on your company structure). 

 Multiple forms To offer the provision of inventory items as part of providing field services, make sure that the sales order management configuration has been implemented, as described in Configuration of Order Management: Implementation Checklist. 

 Multiple forms Make sure that the service management configuration has been implemented, as described in Basic Service Management Configuration. 

 Numbering Sequences (CS201010) form Make sure that the numbering sequences have been created for equipment entities. 

 Enable/Disable Features (CS100000) form Make sure that the Service Management feature has been enabled. 

#### Required Settings 

 To make it possible for users to manage equipment entities and process service contracts, you should navigate to the form listed in the following table and specify the settings that are described. 

 Form Action 

 Equipment Management Preferences (FS100300) form Specify the equipment numbering sequence, as well as the equipment and billing settings. 


<!-- PAGE_BREAK -->
 General Ledger | 86 

## General Ledger 

### Adjusting Transactions: Implementation Checklist 

 Before users begin processing auto-reversing GL batches, you must make sure that the system has been configured properly and that all required entities have been created, as described in the following table. 

 Form Settings to Validate Notes 

 Enable/Disable Features (CS100000) form 

 Make sure the Standard Financials feature has been enabled. 

 Multiple forms Make sure that the system has been configured properly, as described in Company Without Branches: General Information. 

 Chart of Accounts (GL202500) form Check whether the necessary accounts have been created. 

 Company Financial Calendar (GL201100) form 

 Be sure that the financial periods for which auto-reversing transactions will be created and the next periods have a status of Open. 

 You can generate the necessary periods on the Master Financial Calendar (GL201000) form. 

#### Settings That Can Affect the Processing Workflow 

 The following settings on the General Ledger Preferences (GL102000) form can affect the processing workflow: 

- If the _On Post_ option is selected in the **Generate Reversing Entry** box, the system generates a reversing     batch when the original batch is posted. If the _On Period Closing_ option is selected, the system generates a     reversing batch when a user closes the posting period related to the original batch. 

- If the **Automatically Post on Release** check box is selected, the system posts batches on release. If this     check box is cleared, you have to post the batches aer release. 

- If the **Hold Batches on Entry** check box is selected, a batch is saved with the _On Hold_ status by default. If the     batch is on hold, you should click **Remove Hold** on the toolbar of the _Journal Transactions_ (GL301000) form     for the batch so you can process it further. If the check box is cleared, the batch is saved with the _Balanced_     status. 

- If the **Validate Batch Control Totals on Entry** check box is selected, enter the batch control total before     they save the batch on the _Journal Transactions_ form. If this check box is cleared, the system automatically     validates the batch when the status of the batch is _Balanced_. 

### Allocation Rules: Implementation Checklist 

 The following tables provide details that you can use to ensure that the system is configured properly for the creation of allocation rules. 


<!-- PAGE_BREAK -->
 General Ledger | 87 

 Form Things to Check Notes 

 Enable/Disable Features (CS100000) form 

 Make sure that the Standard Financials and General Ledger Allocation Templates (under Advanced Financials ) features have been enabled. 

 Multiple forms Make sure that the minimum configuration of the company has been performed and the general ledger functionality has been implemented, as described in Company Without Branches: General Information Company with Branches that Do Not Require Balancing: General Information , and General Ledger: General Information. 

 Ledgers (GL201500) form Make sure that the ledgers used for allocations have been created. 

 Chart of Accounts (GL202500) form Check whether the necessary accounts have been created, and create them if not. 

#### Additional Configuration to Confirm 

 If your company uses subaccounts, the subaccounts have to be configured, as described in Subaccounts: Implementation Activity. 

### GL Transactions: Implementation Checklist 

 Before users begin processing GL batches, you must make sure that the system has been configured properly and that all required entities have been created, as described in the following table 

 Form Settings to Check Notes 

 Enable/Disable Features (CS100000) form 

 Make sure the Standard Financials feature has been enabled. 

 Multiple forms Make sure that the minimum configuration of the company has been performed, as described in Company Without Branches: General Information. 

 Chart of Accounts (GL202500) form Check whether the necessary accounts have been created. 


<!-- PAGE_BREAK -->
 General Ledger | 88 

 Form Settings to Check Notes 

 Company Financial Calendar (GL201100) form 

 Be sure that the financial periods for which transactions will be created have a status of Open. 

 You can generate the necessary periods on the Master Financial Calendar (GL201000) form. 

#### Settings That Can Affect the Processing Workflow 

 The settings on the General Ledger Preferences (GL102000) form can affect the processing workflow as follows: 

- If the **Hold Batches on Entry** check box is selected, a batch is saved with the _On Hold_ status by default. If     the batch is on hold, you should click **Remove Hold** on the toolbar of the _Journal Transactions_ (GL301000)     form for the batch so that you can process it further. If the check box is cleared, the batch is saved with the     _Balanced_ status. 

- If the **Validate Batch Control Totals on Entry** check box is selected, you have to enter the batch control     total before you save the batch on the _Journal Transactions_ form. If this check box is cleared and the status of     the batch is _Balanced_ , the system automatically validates the batch. 

- If the **Automatically Post on Release** check box is selected, the system posts batches on release. If this     check box is cleared, you have to post the batches aer release. 

### Interbranch Account Mapping: Implementation Checklist 

 Before users begin to create intercompany and interbranch transactions, you must make sure that the system has been configured properly and that all required entities have been created, as described in the following table. 

 Form Settings to Check Notes 

 Enable/Disable Features (CS100000) form 

 Make sure that the following features have been enabled: 

- _Standard Financials_ 

- _Inter-Branch Transactions_ 

 Companies (CS101500) form Make sure that the necessary companies and branches have been configured and the necessary ledgers have been assigned. 

 Inter-Branch Account Mapping (GL101010) form 

 Make sure that all the necessary account mapping rules have been defined. 

### Recurring Transactions: Implementation Checklist 

 To ensure that the system is configured properly for creating recurring batches, make sure that the features and settings listed in the table are configured as described in the following table. 


<!-- PAGE_BREAK -->
 General Ledger | 89 

 Form Settings to Check Notes 

 Enable/Disable Features (CS100000) form 

 Make sure the Standard Financials feature has been enabled. 

 Multiple forms Make sure that the minimum configuration of the company has been performed, as described in Company Without Branches: General Information. 

 Chart of Accounts (GL202500) form Check whether the necessary accounts have been created. 

 Company Financial Calendar (GL201100) form 

 Be sure that the financial periods for which transactions will be created have a status of Open. 

 You can generate the necessary periods on the Master Financial Calendar (GL201000) form. 

#### Settings That Affect Workflow 

 The following settings on the General Ledger Preferences (GL102000) form can affect the processing workflow: 

- If the **Automatically Post on Release** check box is selected, the system posts batches on release. If this     check box is cleared, you have to post the batches aer release. 

- If the **Hold Batches on Entry** check box is selected, a batch is saved with the _On Hold_ status by default. If the     batch is on hold, you should click **Remove Hold** on the toolbar of the _Journal Transactions_ (GL301000) form     for the batch so you can process it further. If the check box is cleared, the batch is saved with the _Balanced_     status. 

- If the **Validate Batch Control Totals on Entry** check box is selected, enter the batch control total before     they save the batch on the _Journal Transactions_ form. If this check box is cleared, the system automatically     validates the batch when the status of the batch is _Balanced_. 

### Reversing Transactions: Implementation Checklist 

 Before users begin processing GL batches, you must make sure that the system has been configured properly and that all required entities have been created, as described in the following table. 

 Form Settings to Validate Notes 

 Enable/Disable Features (CS100000) form 

 Make sure the Standard Financials feature has been enabled. 

 Multiple forms Make sure that the minimum configuration of the company has been performed, as described in Company Without Branches: General Information. 


<!-- PAGE_BREAK -->
 General Ledger | 90 

#### Settings That Can Affect the Processing Workflow 

 The settings on the General Ledger Preferences (GL102000) form can affect the processing workflow as follows: 

- If the **Hold Batches on Entry** check box is selected, a batch is saved with the _On Hold_ status by default. If     the batch is on hold, you should click **Remove Hold** on the toolbar of the _Journal Transactions_ (GL301000)     form for the batch so that you can process it further. If the check box is cleared, the batch is saved with the     _Balanced_ status. 

- If the **Validate Batch Control Totals on Entry** check box is selected, you have to enter the batch control     total before you save the batch on the _Journal Transactions_ form. If this check box is cleared and the status of     the batch is _Balanced_ , the system automatically validates the batch. 

- If the **Automatically Post on Release** check box is selected, the system posts batches on release. If this     check box is cleared, you have to post the batches aer release. 

### Running of Allocations: Implementation Checklist 

 The following table provides details that you can use to ensure that the system is configured properly for the running of allocations. 

 Form Things to Check Notes 

 Enable/Disable Features (CS100000) form 

 Make sure that the Standard Financials and General Ledger Allocation Templates (under Advanced Financials ) features have been enabled. 

 Multiple forms Make sure that the minimum configuration of the company has been performed, as described in Company Without Branches: General Information , Company with Branches that Do Not Require Balancing: General Information , and Company with Branches that Require Balancing: General Information. 

 Company Financial Calendar (GL201100) form 

 Be sure that the financial periods for which allocations will be run have a status of Open. 

 You can generate the necessary periods on the Master Financial Calendar (GL201000) form. 


<!-- PAGE_BREAK -->
 General Ledger | 91 

 Form Things to Check Notes 

 Allocations (GL204500) form Make sure that the allocations that are going to be run have been created. For details, see Allocation Rules: To Create an Allocation Rule That Uses a Fixed Ratio (Weight) , Allocation Rules: To Create an Allocation Rule That Uses a Fixed Ratio (Percentage) , Allocation Rules: To Create an Allocation Rule That Uses a Dynamic Ratio of the Period-toDate Account Balances , and Allocation Rules: To Create an Allocation Rule Based on Budget Data. 

 The system behavior when generating transactions that update the destination accounts depends on whether the Allocate Source Accounts Separately check box is selected on the Allocation tab. For the listed allocation rules, the Allocate Source Accounts Separately check box is cleared. 

### Splitting Transactions: Implementation Checklist 

 Before users begin splitting GL transactions, you must make sure that the system has been configured properly and that all required entities have been created, as described in the following table. 

 Form Settings to Validate Notes 

 Enable/Disable Features (CS100000) form 

 Make sure the Standard Financials feature has been enabled. 

 Multiple forms Make sure that the minimum configuration of the company has been performed, as described in Company Without Branches: General Information. 

#### Settings That Can Affect the Processing Workflow 

 The settings on the General Ledger Preferences (GL102000) form can affect the processing workflow as follows: 

- If the **Hold Batches on Entry** check box is selected, a batch is saved with the _On Hold_ status by default. If     the batch is on hold, you should click **Remove Hold** on the toolbar of the _Journal Transactions_ (GL301000)     form for the batch so that you can process it further. If the check box is cleared, the batch is saved with the     _Balanced_ status. 

- If the **Validate Batch Control Totals on Entry** check box is selected, you have to enter the batch control     total before you save the batch on the _Journal Transactions_ form. If this check box is cleared and the status of     the batch is _Balanced_ , the system automatically validates the batch. 

- If the **Automatically Post on Release** check box is selected, the system posts batches on release. If this     check box is cleared, you have to post the batches aer release. 


<!-- PAGE_BREAK -->
 General Ledger | 92 

### Transactions with Subaccounts: Implementation Checklist 

 Before users begin processing GL transactions with subaccounts, you must make sure that the system has been configured properly and that all required entities have been created, as described in the following table. 

 Form Settings to Check Notes 

 Enable/Disable Features (CS100000) form 

 Make sure the Standard Financials and Subaccounts (under Advanced Financials ) features have been enabled. 

 Multiple forms Make sure that the minimum configuration of the company has been performed, as described in Company Without Branches: General Information. 

 Chart of Accounts (GL202500) form Check whether the necessary accounts have been created. 

 Company Financial Calendar (GL201100) form 

 Be sure that the financial periods for which transactions will be created have a status of Open. 

 You can generate the necessary periods on the Master Financial Calendar (GL201000) form. 

 Segmented Keys (CS202000) form Be sure that the SUBACCOUNTS segmented key has been configured to meet the company’s business needs, as described in Subaccounts: General Information. 

#### Settings That Can Affect the Processing Workflow 

 The settings on the General Ledger Preferences (GL102000) form can affect the processing workflow as follows: 

- If the **Hold Batches on Entry** check box is selected, a batch is saved with the _On Hold_ status by default. If     the batch is on hold, you should click **Remove Hold** on the toolbar of the _Journal Transactions_ (GL301000)     form for the batch so that you can process it further. If the check box is cleared, the batch is saved with the     _Balanced_ status. 

- If the **Validate Batch Control Totals on Entry** check box is selected, you have to enter the batch control     total before you save the batch on the _Journal Transactions_ form. If this check box is cleared and the status of     the batch is _Balanced_ , the system automatically validates the batch. 

- If the **Automatically Post on Release** check box is selected, the system posts batches on release. If this     check box is cleared, you have to post the batches aer release. 


<!-- PAGE_BREAK -->
 Financial Periods | 93 

## Financial Periods 

### Financial Calendar Generation: Implementation Checklist 

 Before users begin generating financial calendars, you must make sure that the system has been configured properly and that all required entities have been created, as described in the following table 

 Form Settings to Validate Notes 

 Enable/Disable Features (CS100000) form 

 Make sure the Standard Financials feature has been enabled. 

 Multiple forms Make sure that the minimum configuration of the company has been performed, as described in Company Without Branches: General Information. 

### Financial Periods: Implementation Checklist 

 To ensure that the system has been configured properly for managing financial periods, make sure that the criteria listed in the table have been met in the system as described. 

 Form Criteria to Check Notes 

 Enable/Disable Features (CS100000) Make sure the minimal features have been enabled, as described in Company Without Branches: General Information. 

#### Settings That Affect the Workflow 

 The following settings and entities should be specified and defined, respectively: 

- The following common settings should be specified on the _Enable/Disable Features_ (CS100000) form: 

- The _Multibranch Support_ and _Multicompany Support_ features should be enabled to maintain multiple     companies in one tenant and multiple branches and to make it possible to enable _Centralized Period_     _Management_ feature. 

- The _Centralized Period Management_ feature should be disabled to make it possible to open, close, and     lock a particular financial period separately for each company within the tenant. 

- The following general ledger settings should be specified on the **Posting Settings** tab of the _General Ledger_     _Preferences_ (GL102000) form: 

- Select the **Restrict Access to Closed Periods** check box to allow posting to closed periods to only users     belonging to the _Financial Supervisor_ role. 

- The following settings should be specified on the _User Roles_ (SM201005) form: 

- Make sure that the user you are going to use in the process activities later has been assigned to the     _Financial Supervisor_ role. Users assigned to this role can reopen _Closed_ periods and unlock _Locked_ 


<!-- PAGE_BREAK -->
 Financial Periods | 94 

 periods, and also post to closed periods even if the Restrict Access to Closed Periods check box is selected on the General Ledger Preferences form. With these settings specified, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions. 

### Opening Financial Periods: Implementation Checklist 

 To ensure that the system has been configured properly for the opening of financial periods, make sure that the criteria listed in the table have been met in the system as described. 

 Form Criteria to Check Notes 

 Enable/Disable Features (CS100000) Make sure the minimal features have been enabled, as described in Company Without Branches: General Information. 

 Master Financial Calendar (GL201000) 

 Make sure that the financial year for which you need to generate periods exists. For details, see To Add the Next Financial Year and Generate Its Periods. 

#### Settings That Affect the Workflow 

 The following settings and entities should be specified and defined, respectively: 

- The following common settings should be specified on the _Enable/Disable Features_ (CS100000) form: 

- The _Multibranch Support_ and _Multicompany Support_ features should be enabled to maintain multiple     companies in one tenant and multiple branches and to make it possible to enable _Centralized Period_     _Management_ feature. 

- The _Centralized Period Management_ feature should be disabled to make it possible to open, close, and     lock a particular financial period separately for each company within the tenant. 

- The following general ledger settings should be specified on the **Posting Settings** tab of the _General Ledger_     _Preferences_ (GL102000) form: 

- Select the **Restrict Access to Closed Periods** check box to allow posting to closed periods to only users     belonging to the _Financial Supervisor_ role. With these settings specified, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions. 

### Closing Financial Periods: Implementation Checklist 

 To ensure that the system has been configured properly for the closing of financial periods, make sure that the criteria listed in the table have been met in the system as described. 

 Form Criteria to Check Notes 

 Enable/Disable Features (CS100000) Make sure the minimal features have been enabled, as described in Company Without Branches: General Information. 


<!-- PAGE_BREAK -->
 Financial Periods | 95 

#### Settings That Affect the Workflow 

 The following settings and entities should be specified and defined, respectively: 

- The following common settings should be specified on the _Enable/Disable Features_ (CS100000) form: 

- The _Multibranch Support_ feature should be enabled to maintain multiple branches and to make it     possible to enable _Centralized Period Management_ feature. 

- The _Multicompany Support_ feature should be enabled to maintain multiple companies within one tenant 

- The _Centralized Period Management_ feature should be disabled to make it possible to open, close, and     lock a particular financial period separately for each company within the tenant. 

- The following general ledger settings should be specified on the **Posting Settings** tab of the _General Ledger_     _Preferences_ (GL102000) form: 

- Select the **Restrict Access to Closed Periods** check box to allow posting to closed periods to only users     belonging to the _Financial Supervisor_ role. 

- The following settings should be specified on the _User Roles_ (SM201005) form: 

- Make sure that the user you are going to use in the process activity later has been assigned to the     _Financial Supervisor_ role. Users assigned to this role can reopen _Closed_ periods and unlock _Locked_     periods, and also post to closed periods even if the **Restrict Access to Closed Periods** check box is     selected on the _General Ledger Preferences_ form. With these settings specified, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions. 


<!-- PAGE_BREAK -->
 Multicurrency Management | 96 

## Multicurrency Management 

### AP Bills in Foreign Currencies: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for processing AP bills in a foreign currency, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially process AP bills in a foreign currency, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Steps to Perform 

 Enable/Disable Features (CS100000) Make sure that the Standard Financials and Multicurrency Accounting features have been enabled. 

 For details on configuring the multicurrency functionality, see Multicurrency Functionality: Implementation Activity. 

 Vendors (AP303000) Make sure that the vendor accounts for the vendors for which you will create AP documents have been defined. 

 Currency Rates (CM301000) Make sure that the effective currency rate for the currency of the AP document has been defined. 

 For details, see Configuration of Rate Types and Rates: To Configure Rates and Configuration of Rate Types and Rates: To Set Up Refreshing of Rates. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing AP bills by specifying additional settings as follows: 

- On the **Posting Settings** tab of the _General Ledger Preferences_ (GL102000) form: 

- To cause GL batches to be immediately posted aer they are released, select the **Automatically Post on**     **Release** check box. 

- To cause every AP transaction you enter to be posted as an individual batch to the general ledger, clear     the **Generate Consolidated Batches** check box. If this check box is selected, the system consolidates     into a single batch all transactions in the same currency posted to the same period for all documents     being released. 

- On the **General Settings** tab of the _Accounts Payable Preferences_ (AP101000) form: 

- To cause all created AP bills to have the _Balanced_ status, clear the **Hold Documents on Entry** check box     in the **Data Entry Settings** section. If this check box is selected, the created AP bills are assigned the _On_     _Hold_ status. 

- To make entering a vendor reference number in the **Vendor Ref.** box mandatory when creating an AP     bill on the _Bills and Adjustments_ (AP301000) form, select the **Require Vendor Reference** check box in the 


<!-- PAGE_BREAK -->
 Multicurrency Management | 97 

 Data Entry Settings section. If this check box is cleared, you can leave the Vendor Ref. box empty when creating an AP bill. 

- To cause AP bills to be automatically posted to the general ledger once they are released, select the     **Automatically Post on Release** check box in the **Posting Settings** section. If this check box is cleared,     you have to post the batch aer you release the document. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you process AP bills in a foreign currency by performing instructions similar to those described in AP Bills in Foreign Currencies: Process Activity. 

### AR Invoices in Foreign Currencies: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for processing AR invoices in a foreign currency, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially process AR invoices in a foreign currency, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) Make sure that the Standard Financials and Multicurrency Accounting features have been enabled. 

 For details on configuring the multicurrency functionality, see Multicurrency Functionality: Implementation Activity. 

 Customers (AR303000) Make sure that the customer accounts for the customers for which you will create AR documents have been defined. 

 Currency Rates (CM301000) Make sure that the effective currency rate for the currency of the AR document has been defined. 

 For details, see Configuration of Rate Types and Rates: To Configure Rates and Configuration of Rate Types and Rates: To Set Up Refreshing of Rates. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing AR invoices in a foreign currency by specifying additional settings as follows: 

- On the **Posting Settings** tab of the _General Ledger Preferences_ (GL102000) form: 

- To cause GL batches to be immediately posted aer they are released, select the **Automatically Post on**     **Release** check box. 

- To cause every AR transaction you enter to be posted as an individual batch to the general ledger, clear     the **Generate Consolidated Batches** check box. If this check box is selected, the system consolidates 


<!-- PAGE_BREAK -->
 Multicurrency Management | 98 

 into a single batch all transactions in the same currency posted to the same period for all documents being released. 

- On the **General Settings** tab of the _Accounts Receivable Preferences_ (AR101000) form: 

- To cause all created AR invoices to have the _Balanced_ status, clear the **Hold Documents on Entry** check     box in the **Data Entry Settings** section. If this check box is selected, the created AR invoices are assigned     the _On Hold_ status. 

- To make entering a payment reference number in the **Payment Ref.** box mandatory when creating a     payment on the _Payments and Applications_ (AR302000) form, select the **Require Payment Reference**     **on Entry** check box in the **Data Entry Settings** section. If this check box is cleared, you can leave the     **Payment Ref.** box empty when creating a payment. 

- To cause AR invoices to be automatically posted to the general ledger once they are released, select the     **Automatically Post on Release** check box in the **Posting Settings** section. If this check box is cleared,     you have to post the batch aer you release the document. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you process AR invoices in a foreign currency by performing instructions similar to those described in AR Invoices in Foreign Currencies: Process Activity. 

### Credit Memos in Foreign Currencies: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for applying a credit memo in a foreign currency to an invoice, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially create a credit memo, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) Make sure that the Standard Financials and Multicurrency Accounting features have been enabled. 

 For details on configuring the multicurrency functionality, see Multicurrency Functionality: Implementation Activity. 

 Customers (AR303000) Make sure that the customer accounts for the customers for which you will create AR documents have been defined. 

 Currency Rates (CM301000) Make sure that the effective currency rate for the currency of the AR document has been defined. 

 For details, see Configuration of Rate Types and Rates: To Configure Rates and Configuration of Rate Types and Rates: To Set Up Refreshing of Rates. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing credit memos by specifying additional settings as follows: 


<!-- PAGE_BREAK -->
 Multicurrency Management | 99 

- On the **Posting Settings** tab of the _General Ledger Preferences_ (GL102000) form: 

- To cause GL batches to be immediately posted aer they are released, select the **Automatically Post on**     **Release** check box. 

- To cause every AR transaction you enter to be posted as an individual batch to the general ledger, clear     the **Generate Consolidated Batches** check box. If this check box is selected, the system consolidates     into a single batch all transactions in the same currency posted to the same period for all documents     being released. 

- On the **General Settings** tab of the _Accounts Receivable Preferences_ (AR101000) form: 

- To cause all created credit memos to have the _Balanced_ status, clear the **Hold Documents on Entry**     check box in the **Data Entry Settings** section. If this check box is selected, the created credit memos are     assigned the _On Hold_ status. 

- To make entering a payment reference number in the **Payment Ref.** box mandatory when creating a     payment on the _Payments and Applications_ (AR302000) form, select the **Require Payment Reference**     **on Entry** check box in the **Data Entry Settings** section. If this check box is cleared, you can leave the     **Payment Ref.** box empty when creating a payment. 

- To cause credit memos to be automatically posted to the general ledger once they are released, select     the **Automatically Post on Release** check box in the **Posting Settings** section. If this check box is     cleared, you have to post the batch aer you release the document. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you create and apply credit memos in a foreign currency by performing instructions similar to those described in Credit Memos in Foreign Currencies: Process Activity. 

### Debit Adjustments in Foreign Currencies: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for processing debit adjustments in a foreign currency, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially process a debit adjustment, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Steps to Perform 

 Enable/Disable Features (CS100000) Make sure that the Standard Financials and Multicurrency Accounting features have been enabled. 

 For details on configuring the multicurrency functionality, see Multicurrency Functionality: Implementation Activity. 

 Vendors (AP303000) Make sure that the vendor accounts for the vendors for which you will create AP documents have been defined. 


<!-- PAGE_BREAK -->
 Multicurrency Management | 100 

 Form Steps to Perform 

 Currency Rates (CM301000) Make sure that the effective currency rate for the currency of the AP document has been defined. 

 For details, see Configuration of Rate Types and Rates: To Configure Rates and Configuration of Rate Types and Rates: To Set Up Refreshing of Rates. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing debit adjustments by specifying additional settings as follows: 

- On the **Posting Settings** tab of the _General Ledger Preferences_ (GL102000) form: 

- To cause GL batches to be immediately posted aer they are released, select the **Automatically Post on**     **Release** check box. 

- To cause every AP transaction you enter to be posted as an individual batch to the general ledger, clear     the **Generate Consolidated Batches** check box. If this check box is selected, the system consolidates     into a single batch all transactions in the same currency posted to the same period for all documents     being released. 

- On the **General Settings** tab of the _Accounts Payable Preferences_ (AP101000) form: 

- To cause all created debit adjustments to have the _Balanced_ status, clear the **Hold Documents on Entry**     check box in the **Data Entry Settings** section. If this check box is selected, the created debit adjustments     are assigned the _On Hold_ status. 

- To make entering a vendor reference number in the **Vendor Ref.** box mandatory when creating an AP     bill on the _Bills and Adjustments_ (AP301000) form, select the **Require Vendor Reference** check box in the     **Data Entry Settings** section. If this check box is cleared, you can leave the **Vendor Ref.** box empty when     creating an AP bill. 

- To cause AP bills to be automatically posted to the general ledger once they are released, select the     **Automatically Post on Release** check box in the **Posting Settings** section. If this check box is cleared,     you have to post the batch aer you release the document. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you process debit adjustments in a foreign currency by performing instructions similar to those described in Debit Adjustments in Foreign Currencies: Process Activity. 

### Multicurrency Cash Account: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for configuring a cash account in a foreign currency, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially configure a cash account, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 


<!-- PAGE_BREAK -->
 Multicurrency Management | 101 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) Make sure that the Multicurrency Accounting feature has been enabled. 

 General Ledger Preferences (GL102000) Make sure that the rounding gain and loss accounts have been specified. 

 Currency Management Preferences (CM101000) 

 Make sure that the realized gain and loss accounts have been specified. 

 Currencies (CM202000) Make sure that the foreign currency in which you want to denominate the new cash account has been activated for use in accounting. 

 Currency Rates (CM301000) Make sure that a currency rate for the needed currency has been defined for the financial period in which you want to create documents. 

 For details on configuring the functionality, see Multicurrency Functionality: Implementation Activity. For details on configuring currency rates, see Configuration of Rate Types and Rates: To Configure Rates and Configuration of Rate Types and Rates: To Set Up Refreshing of Rates. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of configuring foreign currency cash accounts by specifying additional settings as follows: 

- To cause a separate GL batch to be generated for each released document, clear the **Generate**     **Consolidated Batches** check box on the _General Ledger Preferences_ (GL102000) form.     If you select this check box, on release of multiple documents, the system will group documents by branch,     posting period, and currency, and will generate the batches on a per-group basis rather than on a per-     document basis. Because multiple documents combined into one batch may have different currency rates,     in the batch, the system always shows the rate that was effective on the **Transaction Date** of the batch. In     a batch that combines transactions from multiple documents, the single displayed rate may differ from the     actual document rates. 

- To cause all saved batches to be saved with the _Balanced_ status, clear the **Hold Batches on Entry** check box     on the _General Ledger Preferences_ form. If the check box is selected, a batch is saved with the _On Hold_ status     by default. If the batch is on hold, you should click **Remove Hold** on the toolbar of the _Journal Transactions_     (GL301000) form for the batch so you can process it further. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you create a GL transaction with a cash account denominated in a foreign currency by performing instructions similar to those described in Multicurrency Cash Accounts: To Process a GL Transaction. 

### Multicurrency Funds Transfers: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for performing funds transfers in a foreign currency, and to understand (and change, if needed) the settings that affect the processing workflow. 


<!-- PAGE_BREAK -->
 Multicurrency Management | 102 

#### Implementation Checklist 

 We recommend that before you initially perform funds transfers, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Settings to Check Note 

 Enable/Disable Features (CS100000) Make sure that the Standard Financials and Multicurrency Accounting features have been enabled. 

 For details on configuring the multicurrency functionality, see Multicurrency Functionality: Implementation Activity. 

 Chart of Accounts (GL202500) Check whether the necessary accounts have been created. 

 Cash Accounts (CA202000) Check whether the necessary cash accounts have been configured. 

 For details on configuring a cash account in a foreign currency, see Multicurrency Cash Accounts: To Configure an Account 

 Company Financial Calendar (GL201100) 

 Make sure that the periods during which funds transfers may occur have a status of Open. 

 You can generate the necessary periods on the Master Financial Calendar (GL201000) form. 

 For details on opening financial periods, see Opening Financial Periods: Process Activity. 

 Currency Rates (CM301000) Make sure that the effective currency rate for the currency of the AR invoice has been defined. 

 For details, see Configuration of Rate Types and Rates: To Configure Rates and Configuration of Rate Types and Rates: To Set Up Refreshing of Rates. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of configuring foreign currency cash accounts by specifying additional settings on the Cash Management Preferences (CA101000) form as follows: 

- To cause transactions to be posted to the general ledger when cash documents are released, select the     **Automatically Post to GL on Release** check box. If this check box is cleared, you have to post the batch     aer you release the document. 

- To cause new transactions and funds transfers to be assigned the _Balanced_ status when they are     entered, clear the **Hold Transactions on Entry** check box in the **Data Entry Settings** section. If the **Hold**     **Transactions on Entry** check box is cleared, the transactions and funds transfers are assigned the _On Hold_     status. 

- To make filling in the **Document Ref.** box on the _Funds Transfers_ (CA301000) form mandatory for new funds     transfers, select the **Require Document Ref. Nbr. on Entry** check box. If this check box is cleared, you can     leave the **Document Ref.** box blank. 


<!-- PAGE_BREAK -->
 Multicurrency Management | 103 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you perform funds transfers in a foreign currency by performing instructions similar to those described in Multicurrency Funds Transfers: Process Activity. 

### Multicurrency Payment of Invoices: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for processing AR invoices in a foreign currency by using the base currency and another foreign currency, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially process AR invoices in a foreign currency, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) Make sure that the Standard Financials and Multicurrency Accounting features have been enabled. 

 For details on configuring the multicurrency functionality, see Multicurrency Functionality: Implementation Activity. 

 Customers (AR303000) Make sure that the customer accounts for the customers for which you will create AR documents have been defined. 

 Currency Rates (CM301000) Make sure that the effective currency rate for the currency of the AR document has been defined. 

 For details, see Configuration of Rate Types and Rates: To Configure Rates and Configuration of Rate Types and Rates: To Set Up Refreshing of Rates. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing AR invoices by specifying additional settings as follows: 

- On the **Posting Settings** tab of the _General Ledger Preferences_ (GL102000) form: 

- To cause GL batches to be immediately posted aer they are released, select the **Automatically Post on**     **Release** check box. 

- To cause every AR transaction you enter to be posted as an individual batch to the general ledger, clear     the **Generate Consolidated Batches** check box. If this check box is selected, the system consolidates     into a single batch all transactions in the same currency posted to the same period for all documents     being released. 

- On the **General Settings** tab of the _Accounts Receivable Preferences_ (AR101000) form: 

- To cause all created AR invoices to have the _Balanced_ status, clear the **Hold Documents on Entry** check     box in the **Data Entry Settings** section. If this check box is selected, the created AR invoices are assigned     the _On Hold_ status. 


<!-- PAGE_BREAK -->
 Multicurrency Management | 104 

- To make entering a payment reference number in the **Payment Ref.** box mandatory when creating a     payment on the _Payments and Applications_ (AR302000) form, select the **Require Payment Reference**     **on Entry** check box in the **Data Entry Settings** section. If this check box is cleared, you can leave the     **Payment Ref.** box empty when creating a payment. 

- To cause AR invoices to be automatically posted to the general ledger once they are released, select the     **Automatically Post on Release** check box in the **Posting Settings** section. If this check box is cleared,     you have to post the batch aer you release the document. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you process AR invoices in a foreign currency by performing instructions similar to those described in Multicurrency Payment of Invoices: To Pay a Foreign Currency Invoice by Using the Base Currency and Multicurrency Payment of Invoices: To Pay a Foreign Currency Invoice by Using Another Currency. 

### Multicurrency Payment of Bills: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for paying multicurrency bills, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially process AP bills in a foreign currency, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Steps to Perform 

 Enable/Disable Features (CS100000) Make sure that the Standard Financials and Multicurrency Accounting features have been enabled. 

 For details on configuring the multicurrency functionality, see Multicurrency Functionality: Implementation Activity. 

 Vendors (AP303000) Make sure that the vendor accounts for the vendors for which you will create AP documents have been defined. 

 Currency Rates (CM301000) Make sure that the effective currency rate for the currency of the AP document has been defined. 

 For details, see Configuration of Rate Types and Rates: To Configure Rates and Configuration of Rate Types and Rates: To Set Up Refreshing of Rates. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing AP bills by specifying additional settings as follows: 

- On the **Posting Settings** tab of the _General Ledger Preferences_ (GL102000) form: 

- To cause GL batches to be immediately posted aer they are released, select the **Automatically Post on**     **Release** check box. 

- To cause every AP transaction you enter to be posted as an individual batch to the general ledger, clear     the **Generate Consolidated Batches** check box. If this check box is selected, the system consolidates 


<!-- PAGE_BREAK -->
 Multicurrency Management | 105 

 into a single batch all transactions in the same currency posted to the same period for all documents being released. 

- On the **General Settings** tab of the _Accounts Payable Preferences_ (AP101000) form: 

- To cause all created AP bills to have the _Balanced_ status, clear the **Hold Documents on Entry** check box     in the **Data Entry Settings** section. If this check box is selected, the created AP bills are assigned the _On_     _Hold_ status. 

- To make entering a vendor reference number in the **Vendor Ref.** box mandatory when creating an AP     bill on the _Bills and Adjustments_ (AP301000) form, select the **Require Vendor Reference** check box in the     **Data Entry Settings** section. If this check box is cleared, you can leave the **Vendor Ref.** box empty when     creating an AP bill. 

- To cause AP bills to be automatically posted to the general ledger once they are released, select the     **Automatically Post on Release** check box in the **Posting Settings** section. If this check box is cleared,     you have to post the batch aer you release the document. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you process AP bills in a foreign currency by performing instructions similar to those described in Multicurrency Payment of Bills: To Pay a Foreign Currency Bill by Using the Base Currency and Multicurrency Payment of Bills: To Pay a Foreign Currency Bill by Using Another Currency. 

### Documents in Different Base Currencies: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for processing documents between companies that use different base currencies, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially process documents between companies with different base currencies, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) The Multibranch Support , Multicompany Support , Customer and Vendor Visibility Restriction , Multicurrency Accounting , and Multiple Base Currencies features have been enabled. 

 Multiple forms The necessary settings have been specified, as demonstrated in the examples of Multiple Base Currencies: Implementation Activity , Company Groups: Implementation Activity , Customer Visibility: To Restrict Visibility to a New Company , and Vendor Visibility: To Restrict Visibility to a New Company. 

 Non-Stock Items (IN202000) The CONSULT non-stock item has been defined. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing AR invoices by specifying additional settings as follows: 

- On the **Posting Settings** tab of the _General Ledger Preferences_ (GL102000) form: 


<!-- PAGE_BREAK -->
 Multicurrency Management | 106 

- To cause GL batches to be immediately posted aer they are released, select the **Automatically Post on**     **Release** check box. 

- To cause every AR and AP transaction you enter to be posted as an individual batch to the general     ledger, clear the **Generate Consolidated Batches** check box. If this check box is selected, the system     consolidates into a single batch all transactions in the same currency posted to the same period for all     documents being released. 

- On the **General Settings** tab of the _Accounts Receivable Preferences_ (AR101000) form: 

- To cause all created AR invoices to have the _Balanced_ status, clear the **Hold Documents on Entry** check     box in the **Data Entry Settings** section. If this check box is selected, the created AR invoices are assigned     the _On Hold_ status. 

- To cause AR invoices to be automatically posted to the general ledger once they are released, select the     **Automatically Post on Release** check box in the **Posting Settings** section. If this check box is cleared,     you have to post the batch aer you release the document. 

- On the **General Settings** tab of the _Accounts Payable Preferences_ (AP101000) form: 

- To cause all created AP bills to have the _Balanced_ status, clear the **Hold Documents on Entry** check box     in the **Data Entry Settings** section. If this check box is selected, the created AP bills are assigned the _On_     _Hold_ status. 

- To cause AP bills to be automatically posted to the general ledger once they are released, select the     **Automatically Post on Release** check box in the **Posting Settings** section. If this check box is cleared,     you have to post the batch aer you release the document. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you process documents between companies with different base currencies by performing instructions similar to those described in Documents in Different Base Currencies: To Process an AR Invoice and Documents in Different Base Currencies: To Process an AP Bill. 

### Revaluation of AP Documents: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for performing revaluation of open AP documents, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially perform revaluation of open AP documents, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) Make sure that the Standard Financials and Multicurrency Accounting features have been enabled. 

 For details on configuring the multicurrency functionality, see Multicurrency Functionality: Implementation Activity. 

 Chart of Accounts (GL202500) Check whether the necessary accounts have been created. 


<!-- PAGE_BREAK -->
 Multicurrency Management | 107 

 Form Criteria to Check 

 Master Financial Calendar (GL201000) Make sure that a financial period next to the one during which revaluation will occur has been opened in the master financial calendar. 

 Currency Rates (CM301000) Make sure that the effective currency rates have been defined. 

 For details, see Configuration of Rate Types and Rates: To Configure Rates and Configuration of Rate Types and Rates: To Set Up Refreshing of Rates. 

 Currency Management Preferences (CM101000) Make sure that the accounts to which unrealized gains and losses are posted have been specified in the Unrealized Gain Account and Unrealized Loss Account boxes. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of revaluing open AP documents by specifying additional settings as follows: 

- To cause batches generated from currency management to be automatically posted to the general ledger,     on the _Currency Management Preferences_ (CM101000) form, select the **Automatically Post to GL on Release**     check box. 

- To cause unrealized gains and losses to be posted to a separate account instead of the AP account of the     vendor, specify the AP provisioning account for the needed currency in the **AP Provisioning Account** box on     the _Currency Management Preferences_ form. 

- To cause unrealized gains and losses to be posted to the accounts specific for the vendor class, select the     needed accounts in the **Unrealized Gain Account** and **Unrealized Loss Account** boxes on the **GL Accounts**     tab of the _Vendor Classes_ (AP201000) form. 

 If these boxes on the Vendor Classes form are le empty, the system will post unrealized gains and losses to the account for the currency, which is specified in the Unrealized Gain Account and Unrealized Loss Account box on the GL Accounts tab of the Currencies (CM202000) form. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you revalue balances of open AP documents by performing instructions similar to those described in Revaluation of AP Documents: Process Activity. 

### Revaluation of AR Documents: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for performing revaluation of open AR documents, and to understand (and change, if needed) the settings that affect the processing workflow. 


<!-- PAGE_BREAK -->
 Multicurrency Management | 108 

#### Implementation Checklist 

 We recommend that before you initially perform revaluation of open AR documents, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) Make sure that the Standard Financials and Multicurrency Accounting features have been enabled. 

 For details on configuring the multicurrency functionality, see Multicurrency Functionality: Implementation Activity. 

 Chart of Accounts (GL202500) Check whether the necessary accounts have been created. 

 Master Financial Calendar (GL201000) Make sure that a financial period next to the one during which revaluation will occur has been opened in the master financial calendar. 

 Currency Rates (CM301000) Make sure that the effective currency rates have been defined. 

 For details, see Configuration of Rate Types and Rates: To Configure Rates and Configuration of Rate Types and Rates: To Set Up Refreshing of Rates. 

 Currency Management Preferences (CM101000) Make sure that the accounts to which unrealized gains and losses are posted have been specified in the Unrealized Gain Account and Unrealized Loss Account boxes. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of revaluing open AR documents by specifying additional settings as follows: 

- To cause batches generated from currency management to be automatically posted to the general ledger,     on the _Currency Management Preferences_ (CM101000) form, select the **Automatically Post to GL on Release**     check box. 

- To cause unrealized gains and losses to be posted to a separate account instead of the AR account of the     customer, specify the AR provisioning account for the needed currency in the **AR Provisioning Account** box     on the _Currency Management Preferences_ form. 

- To cause unrealized gains and losses to be posted to the accounts specific for the customer class, select the     needed accounts in the **Unrealized Gain Account** and **Unrealized Loss Account** boxes on the **GL Accounts**     tab of the _Customer Classes_ (AR201000) form. 

 If these boxes on the Customer Classes form are le empty, the system will post unrealized gains and losses to the account for the currency, which is specified in the Unrealized Gain Account and Unrealized Loss Account box on the GL Accounts tab of the Currencies (CM202000) form. 


<!-- PAGE_BREAK -->
 Multicurrency Management | 109 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you revalue balances of open AP documents by performing instructions similar to those described in Revaluation of AR Documents: Process Activity. 

### Revaluation of Bank Accounts: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for performing revaluation of a bank account, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially revalue a bank account, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) Make sure that the Standard Financials and Multicurrency Accounting features have been enabled. 

 For details on configuring the multicurrency functionality, see Multicurrency Functionality: Implementation Activity. 

 Chart of Accounts (GL202500) Check whether the necessary accounts have been created. 

 Master Financial Calendar (GL201000) Make sure that a financial period next to the one during which revaluation will occur has been opened in the master financial calendar. 

 Currency Rates (CM301000) Make sure that the effective currency rates have been defined. 

 For details, see Configuration of Rate Types and Rates: To Configure Rates and Configuration of Rate Types and Rates: To Set Up Refreshing of Rates. 

 Currency Management Preferences (CM101000) Make sure that the accounts to which unrealized gains and losses are posted have been specified in the Unrealized Gain Account and Unrealized Loss Account boxes. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of revaluing bank accounts by specifying additional settings as follows: 

- To cause batches generated from currency management to be automatically posted to the general ledger,     on the _Currency Management Preferences_ (CM101000) form, select the **Automatically Post to GL on Release**     check box. 


<!-- PAGE_BREAK -->
 Multicurrency Management | 110 

- To cause the system to use the default rate for revaluation of a particular account, you clear the     **Revaluation Rate Type** column for this account on the _Chart of Accounts_ (GL202500) form. The system     will use the default rate type specified in the **GL Revaluation Rate Type** box on the _Currency Management_     _Preferences_ form. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you revalue the balance of a bank account by performing instructions similar to those described in Revaluation of Bank Accounts: Process Activity. 

### Translation of Financial Statements: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for translating financial statements, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially translate financial statements, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Tasks to Perform 

 Enable/Disable Features (CS100000) Make sure that the Standard Financials , Multicurrency Accounting , and Translation of Financial Statements features have been enabled. 

 For details on configuring the multicurrency functionality, see Multicurrency Functionality: Implementation Activity. 

 Chart of Accounts (GL202500) Make sure that the accounts that will be used for recording translation gains and losses have been created. 

 Company Financial Calendar (GL201100) Make sure that the financial period for which you want to configure a translation definition has the Open status. 

 Currency Management Preferences (CM101000) Make sure that the accounts for recording translation gains and losses have been specified. 

 Currencies (CM202000) Make sure that the translation gain and loss accounts have been specified for each foreign currency. 

 Currency Rate Types (CM201000) Make sure that the rate types used for translations have been defined. 


<!-- PAGE_BREAK -->
 Multicurrency Management | 111 

 Form Tasks to Perform 

 Currency Rates (CM201000) Make sure that the effective exchange rates to be used for translations have been defined. For details, see Configuration of Rate Types and Rates: To Configure Rates and Configuration of Rate Types and Rates: To Set Up Refreshing of Rates. 

 Ledgers (GL201500) You create a ledger of the Reporting type to be used for keeping the results of translations. For details on reporting ledgers, see Reporting Ledgers. 

 Translation Definition (CM203000) You create a translation definition that will be used for translating financial statements. For details, see Translation Definitions: Implementation Activity. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of translating financial statements by specifying additional settings as follows: 

- To cause translation batches to be automatically posted to the general ledger, on the _Currency Management_     _Preferences_ (CM101000) form, select the **Automatically Post to GL on Release** check box. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you translate financial statements by performing instructions similar to those described in Translation of Financial Statements: Process Activity. 

### Consolidated Financial Statement: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for preparing a consolidated financial statement, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially perform translation of financial statements and then preparation of a consolidated financial statement, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) Make sure that the Standard Financials , Multibranch Support , Multicompany Support , Customer and Vendor Visibility Restriction , Multicurrency Accounting , Multiple Base Currencies , and Translation of Financial Statements features have been enabled. 

 For details on configuring multiple base currencies, see Multiple Base Currencies: Implementation Activity , Customer Visibility: To Restrict Visibility to a New Company , and Vendor Visibility: To Restrict Visibility to a New Company. 


<!-- PAGE_BREAK -->
 Multicurrency Management | 112 

 Form Criteria to Check 

 Chart of Accounts (GL202500) Make sure that the accounts that will be used for recording translation gains and losses have been created. 

 Company Financial Calendar (GL201100) Make sure that the financial period for which you want to configure a translation definition has the Open status. 

 Currency Management Preferences (CM101000) 

 Make sure that the accounts for recording translation gains and losses have been specified. 

 Currencies (CM202000) Make sure that the translation gain and loss accounts have been specified for each base currency. 

 Currency Rate Types (CM201000) Make sure that the rate types used for translations have been defined. 

 Currency Rates (CM201000) Make sure that the effective exchange rates to be used for translations have been defined. 

 Ledgers (GL201500) You create a ledger of the Reporting type to be used for keeping the results of translations. For details on reporting ledgers, see Reporting Ledgers. 

 Translation Definition (CM203000) You create a translation definition that will be used for translating financial statements. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of translating financial statements by specifying additional settings as follows: 

- To cause translation batches to be automatically posted to the general ledger, on the _Currency Management_     _Preferences_ (CM101000) form, select the **Automatically Post to GL on Release** check box. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you perform a translation of financial statements as described in Consolidated Financial Statement: Performing a Translation and prepare a consolidated financial statement as described in Consolidated Financial Statement: Creating a Customized Report. 


<!-- PAGE_BREAK -->
 Payroll Management | 113 

## Payroll Management 

### Payroll Basic Configuration: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for processing payroll documents, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Prerequisites 

 We recommend that before you start performing the minimum configuration of payroll, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Multiple forms Minimum company settings have been specified and the minimal required functionality has been implemented for all other functional areas to be integrated with the payroll functionality, as described in Company Without Branches: General Information. 

 Work Calendar (CS209000) The work calendar that reflects the work days, work times for each day, and unpaid break time of the employees that are involved in payroll has been defined. 

 Numbering Sequences (CS201010) The numbering sequences have been created for payroll batches and transactions. 

 Departments (EP201500) The departments that are used in your organization have been created. 

 Positions (EP201000) The positions taken by the employees in your organization have been defined. 

 Employees (EP203000) The employees involved in payroll processes have been defined in the system. 

 Payment Methods (CA204000) Payment methods and a cash account for each payment method to be used to generate paychecks for an employee have been defined. 

 Vendors (AP303000) Vendors to be used with payroll, such as tax agencies, benefit providers, and unions, have been created. 

 Enable/Disable Features (CS100000) The Payroll feature has been enabled, which adds the forms and UI elements related to the payroll functionality. 


<!-- PAGE_BREAK -->
 Payroll Management | 114 

#### Minimum Required Settings 

 To make it possible for users to process payroll documents, you should navigate to the forms listed below and perform the tasks described in the table. 

 Form Criteria to Check 

 Payroll Preferences (PR101000) The numbering sequences have been specified and the settings have been saved. 


<!-- PAGE_BREAK -->
 Prices and Discounts | 115 

## Prices and Discounts 

### Sales Prices: Implementation Checklist 

 To ensure that the system is configured properly for defining sales price common to all customers, specific to a particular customer price class, or specific to a particular customer, make sure that the following features and settings are configured as described in the following table. 

 Table: Table 1: Implementation Checklist 

 Form Settings to Validate Note 

 Enable/Disable Features (CS100000) The Standard Financials feature has been enabled. 

 The Inventory feature has been enabled. 

 The Volume Pricing feature has been enabled. 

 The Multiple Warehouses feature has been enabled. 

 The Multiple Units of Measure feature has been enabled. 

 Standard Financials provides the standard financial functionality. 

 Inventory provides the functionality of maintaining stock items and must be enabled if you plan to maintain prices for your stock items in Acumatica ERP. 

 Volume Pricing supports the maintenance of prices based on the quantity or amount of items being sold. 

 Multiple Warehouses supports the distributed structure of warehouses. This feature is required for defining warehouse-specific prices. 

 Multiple Units of Measure supports multiple units of measure for each stock item and the rules of conversion between these units. This feature is required for defining UOMspecific prices. 

 Customers (AR303000) Make sure that the customers for which you want to define sales prices have been created. 

 For prices based on the customer price class, make sure that the customer price class has been assigned to the customers. 

 For more information on configuring customers, see Customers: General Information. 

 Customer Price Classes (AR208000) Make sure that the customer price class for which you want to define sales prices have been created. 


<!-- PAGE_BREAK -->
 Prices and Discounts | 116 

 Form Settings to Validate Note 

 Non-Stock Items (IN202000) and Stock Items (IN202500) 

 Make sure the required stock and non-stock items have been configured and activated. 

 For more information on configuring non-stock items, see Non-Stock Items: General Information. 

 For more information on configuring stock items, see Stock Items: General Information. 

 Units of Measure (CS203500) For UOM-specific prices: Make sure that the necessary units of measure are configured. 

 For more information, see Stock Items: Units of Measure. 

 Warehouses (IN204000) For warehouse-specific prices: Make sure that the necessary warehouses are configured. 

 For more information on configuring warehouses, see Warehouses: General Information. 

#### Known Process Limitation 

 When the Lot/Serial Attributes feature is enabled on the Enable/Disable Features (CS100000) form, units of a stock item with a particular lot or serial class may have specific sales prices and descriptions. If the Specify Lot/Serial Price and Description check box is selected for the lot or serial class on the Lot/Serial Classes (IN207000) form, you cannot add an item with this class to a sales price list or worksheet on the following forms: 

- _Sales Prices_ (AR202000) 

- _Sales Price Worksheets_ (AR202010) 

### Prices in Base Currencies: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for maintaining prices and costs in different base currencies, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially set up prices and costs for companies in different base currencies, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) The Multibranch Support , Multicompany Support , Customer and Vendor Visibility Restriction , Multicurrency Accounting , and Multiple Base Currencies features have been enabled. 

 Multiple forms The necessary settings have been specified, as demonstrated in the examples of Multiple Base Currencies: Implementation Activity , Company Groups: Implementation Activity , and Customer Visibility: To Restrict Visibility to a New Company. 


<!-- PAGE_BREAK -->
 Prices and Discounts | 117 

 Form Criteria to Check 

 Non-Stock Items (IN202000) The CONSULT non-stock item has been defined. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing AR invoices by specifying additional settings as follows: 

- On the **Posting Settings** tab of the _General Ledger Preferences_ (GL102000) form: 

- To cause GL batches to be immediately posted aer they are released, select the **Automatically Post on**     **Release** check box. 

- To cause every AR transaction you enter to be posted as an individual batch to the general ledger, clear     the **Generate Consolidated Batches** check box. If this check box is selected, the system consolidates     into a single batch all transactions in the same currency posted to the same period for all documents     being released. 

- On the **General Settings** tab of the _Accounts Receivable Preferences_ (AR101000) form: 

- To cause all created AR invoices to have the _Balanced_ status, clear the **Hold Documents on Entry** check     box in the **Data Entry Settings** section. If this check box is selected, the created AR invoices are assigned     the _On Hold_ status. 

- To cause AR invoices to be automatically posted to the general ledger once they are released, select the     **Automatically Post on Release** check box in the **Posting Settings** section. If this check box is cleared,     you have to post the batch aer you release the document. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you maintain prices and costs in multiple base currencies by performing instructions similar to those described in Prices in Base Currencies: Process Activity. 


<!-- PAGE_BREAK -->
 Project Accounting | 118 

## Project Accounting 

### Committed Costs: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for processing cost commitments on projects, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially process cost commitments, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Tasks to Perform 

 Enable/Disable Features (CS100000) form Make sure the following features are enabled: 

- _Inventory and Order Management_ , if you want to     process purchase orders with non-stock items and     track them as cost commitments to projects 

- _Inventory_ , if you want to process purchase orders     with stock items and track them as cost commit-     ments to projects 

- _Construction_ , if you want to process subcontracts     and track them as cost commitments to projects 

 Projects Preferences (PM101000) form Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see Basic Project Configuration: General Information. 

 Also, make sure that the Internal Cost Commitment Tracking check box is selected on the General tab ( General Settings section). 

 Account Groups (PM201000) form Make sure that all needed account groups have been configured and that for all the needed account groups of the Expense type, the Create Commitment check box is selected on the Change Request Settings tab. 

 Projects (PM301000) form Make sure that the project has been created, as described in Project Creation and Processing: General Information. 

 Vendors (AP303000) form Make sure that all needed vendors have been defined in the system, as described in Vendors: General Information. 

 Also, make sure that the expense account of the vendor specified in the Expense Account box on the GL Accounts tab is mapped to an account group. 


<!-- PAGE_BREAK -->
 Project Accounting | 119 

 Form Tasks to Perform 

 Non-Stock Items (IN202000) form Make sure that all needed labor items, non-stock items, and services have been defined. For more information about labor items, non-stock items, and services, see Labor Items: General Information , Non-Stock Items: General Information , and Service Items: General Information , respectively. 

 Make sure that Purchases is selected in the Post Cost to Expenses box on the Price/Cost tab; otherwise, the expenses related to the non-stock item will not be recorded to the cost budget of the applicable project. 

 Also, make sure that the following accounts are mapped to account groups of the Expense type: 

- The expense account of the item specified in the     **Expense Account** box on the **GL Accounts** tab of     the _Non-Stock Items_ form 

- The expense account of the corresponding posting     class specified in the **COGS/Expense Account** box     on the **GL Accounts** tab of the _Posting Classes_ form     if the non-stock item requires receipt—that is, the     **Require Receipt** check box is selected on the **Gen-**     **eral** tab ( **Item Defaults** section) of the _Non-Stock_     _Items_ form 

 Stock Items (IN202500) form Make sure that all stock items have been defined. For more information about stock items, see Stock Items: General Information. 

 Also, make sure that the COGS account of the item specified in the COGS Account box on the GL Accounts tab of the Stock Items form is mapped to an account group of the Expense type. 

 We recommend that you not map the Inventory account (which is an account of the Asset type) to an account group of the Expense type. If you need to track stock items purchased for the project in the project cost budget, we recommend that you use the commitment tracking functionality. For more information, see Tracking Cost Commitments. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing commitments by specifying additional settings as follows: 

- To change the format of purchase order identifiers, adjust the _POORDER_ numbering sequence on the     _Numbering Sequences_ (CS201010) form or create a new numbering sequence and select this sequence 


<!-- PAGE_BREAK -->
 Project Accounting | 120 

 in the Regular Order Numbering Sequence box on the General tab of the Purchase Orders Preferences (PO101000) form. For more information on numbering sequences, see Use of Numbering Sequences. 

 A user can create purchase orders by using the Create Purchase Orders button on the Commitments tab of the Projects (PM301000) form only if the numbering sequence that is used for numbering purchase orders is auto-numbered. 

- To cause the system to automatically select a project task when a particular project is selected during the     creation of a purchase order, select the **Default** check box on the **Tasks** tab of the _Projects_ (PM301000) form     for one of the tasks of the project. 

- To avoid obligatory printing of created purchase orders, clear the **Print Orders** check box on the **Purchase**     **Settings** tab ( **Default Location Settings** section) of the _Vendors_ (AP303000) form for all applicable vendors.     (A user can still print any purchase order of the vendor, if needed.) 

- To avoid obligatory emailing of created purchase orders, clear the **Send Orders by Email** check box on the     **Purchase Settings** tab ( **Default Location Settings** section) of the _Vendors_ form for all applicable vendors.     (A user can still email any purchase order of the vendor, if needed.) 

- To cause the system to automatically release inventory receipts created on release of purchase receipts,     select the **Release IN Documents Automatically** check box on the **General** tab ( **Other** section) of the     _Purchase Orders Preferences_ PO101000 form. 

- To cause the system to create purchase receipts with the _Balanced_ status, clear the **Hold Receipts On Entry**     check box on the **General** tab ( **Other** section) of the _Purchase Orders Preferences_ form. 

- To cause the system to not copy non-stock lines of the _Service_ type in purchase orders of the _Normal_ type     to purchase receipts and bill such lines directly from purchase orders, clear the **Process Service Lines**     **from Normal Purchase Orders via Purchase Receipt** check box on the **General** tab ( **Other** section) of the     _Purchase Orders Preferences_ form. 

- To cause the system to not copy non-stock lines of the _Service_ type in purchase orders of the _Drop-Ship_ type     to purchase receipts and bill such lines directly from purchase orders, clear the **Process Service Lines from**     **Drop-Ship Purchase Orders via Purchase Receipt** check box on the **General** tab ( **Other** section) of the     _Purchase Orders Preferences_ form. With these settings specified, users in your company can process commitments quickly and accurately with a minimum of manual actions. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that you perform instructions similar to those described in Committed Costs: Process Activity. 

### Change Requests: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for the processing of change requests, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially create change requests, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 


<!-- PAGE_BREAK -->
 Project Accounting | 121 

 Form Tasks to Perform 

 Enable/Disable Features (CS100000) form Make sure that the Projects , Change Orders , and Change Requests features are enabled. 

 Projects Preferences (PM101000) form Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see Basic Project Configuration: General Information. 

 Also, make sure that the default markups are specified on the General tab ( Markups section). For more information about configuring markups, see Change Requests: Configuration of Markups. 

 Change Order Classes (PM203000) form Make sure that all needed change order classes have been configured and the Two-Tier Change Management check box has been selected for these classes in the Summary area. 

 Account Groups (PM201000) form Make sure that the default line markup is specified for all the needed account groups of the Expense type in the Default Line Markup (%) box on the Change Request Settings tab. 

 Non-Stock Items (IN202000) form Make sure that the default price markup is specified for all the needed inventory items in the Markup % box on the Price/Cost tab ( Price Management section). 

 Stock Items (IN202500) form Make sure that the default price markup is specified for all the needed inventory items in the Markup % box on the Price/Cost tab ( Price Management section). 

 Projects (PM301000) form Make sure that the project has been created, as described in Project Creation and Processing: General Information. 

 Also, make sure that the Change Order Workflow check box is selected on the Summary tab ( Project Properties section) and the document markups are configured properly on the Defaults tab ( Document Markups table). 

#### Project Commitment Checklist 

 If you want to use the functionality of change requests to manage changes in commitments, make sure that all the needed features have been enabled and settings have been specified, as described in Committed Costs: Implementation Checklist. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of managing changes in projects by specifying additional settings as follows: 


<!-- PAGE_BREAK -->
 Project Accounting | 122 

- By default, the _CHANGERST_ numbering sequence specifies that the change request identifier is an     automatically generated numeric string of six digits, such as _000001_. To change the format of change request     identifiers, adjust the _CHANGERST_ numbering sequence on the _Numbering Sequences_ (CS201010) form     or create a new auto-numbered numbering sequence and select this sequence in the **Change Request**     **Numbering Sequence** box on the **General** tab ( **Numbering Sequence** section) of the _Projects Preferences_     (PM101000) form. For more information on numbering sequences, see _Use of Numbering Sequences_. 

- To allow users to create change requests by using the **Create Change Request** command on the More menu     of the _Projects_ (PM301000) form, for the numbering sequence used for change requests, clear the **Manual**     **Numbering** check box in the Summary area of the _Numbering Sequences_ form. 

- To make it possible to create a change order for a change request selected on the _Change Requests_     (PM308500) form, select the change order class that supports the two-tier change management in the     **Default Change Order Class** box on the **General** tab ( **General Settings** section) of the _Projects Preferences_     form. That is, the selected change order class must have the **Two-Tier Change Management** check box     selected on the _Change Order Classes_ (PM203000) form. 

 Even if the default change order class selected in the project accounting preferences does not support the two-tier change management, you still can add a change request to a change order by creating a change order directly on the Change Orders (PM308000) form, selecting for this change order a change order class that supports the two-tier change management, and adding the change request to the change order. 

- To cause the system to automatically select a revenue account group for new estimation lines of a change     request if there are multiple account groups of the _Income_ type defined on the _Account Groups_ (PM201000)     form, specify the **Default Revenue Account Group** for account groups of the _Expense_ type in the Summary     area of the _Account Groups_ form. For more information on account groups, see _Account Groups: General_     _Information_. 

- To cause the system to automatically select the **Creates Commitment** check box for a new estimation     line with a particular account group selected on the _Change Requests_ form, which results in creation of a     commitment based on such an estimation line, select the **Creates Commitment** check box on the **Settings**     tab of the _Account Groups_ form for this account group. For example, it can be an account group to which you     map the expense accounts of the services that a subcontractor usually provides. With these settings specified, users in your company can process change requests quickly and accurately with a minimum of manual actions. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that you process a change request by performing instructions similar to those described in Change Requests: Process Activity. 

### Employee Time Billing: Implementation Checklist 

 To ensure that the system is configured properly for billing employee time spent for projects, make sure that the features and settings listed in the table are configured as described in the following table. 

 Form Validation of Settings 

 Multiple forms Make sure that all necessary settings of time tracking have been specified, as demonstrated in the examples of Time Tracking Configuration: To Configure Time Tracking in Projects and Time Tracking Configuration: To Track Time with Time Activities. 


<!-- PAGE_BREAK -->
 Project Accounting | 123 

 Form Validation of Settings 

 Non-Stock Items (IN202000), Employees (EP203000) Create the needed labor items to represent project work and assign them to employees, as illustrated in the Labor Items: To Configure a Labor Item. 

 Labor Rates (PM209900) Define labor cost rates for employees, as demonstrated in Labor Items: To Define Labor Cost Rates. 

 Projects (PM301000) Make sure that the project has been created, as described in Project Creation and Processing: General Information , and that labor items are assigned to the appropriate project tasks on the Tasks tab. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of time reporting by specifying additional settings as follows: 

- To cause the system to require a particular employee to enter time cards, select the **Time Card is Required**     check box on the _Employees_ (EP203000) form. If the reporting of time with time activities is configured, the     selection of this check box means that time activities can be released only within a time card. 

- To cause the system to post project transactions that have been generated on release of time activities to     the off-balance account group, select _Post PM to Off-Balance Account Group_ in the **Posting Option for Non-**     **Payroll Employee** box, and specify the account group of the _Off-Balance Type_ in the **Off-Balance Account**     **Group** on the _Time and Expenses Preferences_ (EP101000) form. 

- To cause project transactions to be automatically generated and released on release of time cards, select     the **Automatically Release PM Documents** on the _Time and Expenses Preferences_ (EP101000) form. 

- To associate an earning type with a particular project or project task, on the _Earning Types_ (EP102000) form,     for an earning type, specify the project or project task in the **Default Project Code** box and **Default Task**     box, respectively. 

- To copy notes and attached documents from time cards to generated project transactions, select the     **Copy Files to PM Documents** and **Copy Notes to PM Documents** check boxes on the _Time and Expenses_     _Preferences_ form. 

### Expense Receipts with Corporate Cards: Implementation Checklist 

 The following sections provide details that you can use to ensure that the system is configured properly for processing expense receipts with the corporate cards, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially process expense receipts with corporate cards, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Corporate Cards (CA202500) The corporate card has been configured. For more information, see Corporate Cards: General Information. 


<!-- PAGE_BREAK -->
 Project Accounting | 124 

 Form Criteria to Check 

 Employees (EP203000) form The employees who are going to use the corporate cards have been created. For more information, see Employee Settings. 

 Non-Stock Items (IN202000) form The inventory items to be used in expense receipts have been created and the Expense type has been specified for the items. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing expense receipts with the corporate cards by specifying additional settings on the Time and Expenses Preferences (EP101000) form, as follows: 

- To make a newly created expense claim have the _On Hold_ status by default, you select the **Hold Expense**     **Claims on Entry** check box. 

- To cause the system to automatically release corresponding accounts payable documents created on     release of an expense claim, select the **Automatically Release AP Documents** check box. 

- To cause the system to create a single cash purchase or cash return for each group of expense claim lines     that are paid with a corporate card and have the same date, corporate card, reference number, and tax     calculation mode, select the **Post Summarized Company Expenses by Corporate Card** check box. If the     check box is cleared, which is the default state, the system creates a separate cash purchase (if the total     amount of lines is positive or equals _0_ ) or cash return (if the total amount of lines is negative) for each     expense claim line that is paid with a corporate card. 

- To make the **Ref. Nbr.** box in the **Expense Details** section on the **Details** tab of the _Expense Receipts_     (EP301010) form required, you select the **Require Ref. Nbr. in Expense Receipts** check box. If this check box     is cleared, a value in the **Ref. Nbr.** box is not required. 

- If approval of expense receipts is necessary, you create an approval map, and assign this map in the     **Expense Receipt Approval Map** box. If approval notifications are necessary, you select a template in the     **Expense Receipt Notification** box. 

- If approval of expense claims is necessary, you create an approval map, and assign this map in the **Expense**     **Claim Approval Map** box. If approval notifications are necessary, you select a template in the **Expense**     **Claim Notification** box. With these settings specified, users in your company can process expense receipts with corporate cards quickly and accurately with a minimum of manual actions. 

#### Testing of Settings 

 To make sure that all settings are configured correctly, we recommend that you process expense receipts with corporate cards, as described in Expense Receipts with Corporate Cards: To Claim Expenses for a Project. 

### Expense Returns to Corporate Cards: Implementation Checklist 

 The following sections provide details that you can use to ensure that the system is configured properly for processing expense returns to corporate cards, and to understand (and change, if needed) the settings that affect the processing workflow. 


<!-- PAGE_BREAK -->
 Project Accounting | 125 

#### Implementation Checklist 

 We recommend that before you initially process expense returns to corporate cards, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Corporate Cards (CA202500) The corporate card has been configured. For more information, see Corporate Cards: General Information. 

 Employees (EP203000) form The employees who are going to use the corporate cards have been created. For more information, see Employee Settings. 

 Non-Stock Items (IN202000) form The inventory items to be used in expense receipts have been created, and the Expense type has been specified for the items. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing expense returns to corporate cards by specifying additional settings on the Time and Expenses Preferences (EP101000) form, as follows: 

- To cause the system to make a newly created expense claim have the _On Hold_ status by default, select the     **Hold Expense Claims on Entry** check box. 

- To cause the system to create a single cash purchase or cash return for each group of expense claim lines     that are paid with a corporate card and have the same date, corporate card, reference number, and tax     calculation mode, select the **Post Summarized Company Expenses by Corporate Card** check box. If the     check box is cleared, which is the default state, the system creates a separate cash purchase (if the total     amount of lines is positive or equals _0_ ) or cash return (if the total amount of lines is negative) for each     expense claim line that is paid with a corporate card. 

- To make it optional to specify a value in the **Ref. Nbr.** box on the **Details** tab ( **Expense Details** section) of the     _Expense Receipts_ (EP301010) form, clear the **Require Ref. Nbr. in Expense Receipts** check box. If this check     box is selected, users must specify a value in the **Ref. Nbr.** box. 

- To cause the system to automatically release corresponding accounts payable documents created on     release of an expense claim, select the **Automatically Release AP Documents** check box. With these settings specified, users in your company can process expense returns quickly and accurately with a minimum of manual actions. 

### Overhead in the Project Budget: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for considering the project overhead, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially consider the project overhead, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 


<!-- PAGE_BREAK -->
 Project Accounting | 126 

 Form Tasks to Perform 

 Enable/Disable Features (CS100000) form Make sure that the Projects feature is enabled. 

 Projects Preferences (PM101000) form Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see Basic Project Configuration: General Information. 

 Account Groups (PM201000) form Make sure that an account group of the Expense type for the overhead has been created. For details on configuring account groups, see Account Groups: General Information. 

 Allocation Rules (PM207500) form Make sure that an allocation rule is configured as described in Overhead in the Project Budget: Implementation Activity. 

 Projects (PM301000) Make sure that the project has been created, as described in Project Creation and Processing: General Information. 

#### Other Settings That Affect the Workflow 

 To cause the system to automatically release allocation transactions, including allocation reversal transactions, select the Automatically Release Allocations check box on the General tab ( General Settings section) of the Projects Preferences (PM101000) form. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you allocate projects by performing instructions similar to those described in Overhead in the Project Budget: Process Activity. 

### Pro Forma Invoices: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for processing pro forma invoices, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially process pro forma invoices, you make sure the needed settings have been specified and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Projects Preferences (PM101000) form Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see Basic Project Configuration: General Information. 


<!-- PAGE_BREAK -->
 Project Accounting | 127 

 Form Criteria to Check 

 Billing Rules (PM207000) form Make sure that all needed billing rules have been configured in the system. For more information about billing rules, see Billing Rules: General Information. 

 Projects (PM301000) form Make sure that the project has been created and prepared for billing. For more details, see Project Creation and Processing: General Information. 

 For each project for which you want to turn on the pro forma invoice workflow, make sure that the Create Pro Forma on Billing check box is selected on the Summary tab ( Billing and Allocation Settings section). 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing pro forma invoices by specifying additional settings as follows: 

- To change the format of pro forma invoice identifiers, adjust the _PROFORMA_ numbering sequence on the     _Numbering Sequences_ (CS201010) form, or create a new numbering sequence and select this sequence     in the **Pro Forma Numbering Sequence** box on the **General** tab ( **Numbering Sequence** section) of     the _Projects Preferences_ (PM101000) form. For more information on numbering sequences, see _Use of_     _Numbering Sequences_. 

 Pro forma invoice identifiers must be assigned only automatically. That is, the Manual Numbering check box must be cleared in the Summary area of the Numbering Sequences form for the numbering sequence used for pro forma invoices. 

 By default, the PROFORMA numbering sequence specifies that the pro forma invoice identifier is an automatically generated numeric string of six digits, such as 000001. 

- To give accounts receivable invoices, including those created based on pro forma invoices, the _On Hold_     status on creation, select the **Hold Documents on Entry** check box on the **General** tab ( **Data Entry Settings**     section) of the _Accounts Receivable Preferences_ (AR101000) form. 

- To make sending by email accounts receivable invoices optional, including those created based on pro     forma invoices that have been agreed upon with the customer, clear the **Send Invoices by Email** check     box on the **Billing Settings** tab ( **Print and Email Settings** section) of the _Customers_ (AR303000) form for     applicable customers. 

- To make printing accounts receivable invoices optional, including those created based on pro forma     invoices that have been agreed upon with the customer, clear the **Print Invoices** check box on the **Billing**     **Settings** tab ( **Print and Email Settings** section) of the _Customers_ form for applicable customers. 

- To cause the system to automatically post general ledger transactions generated on release of all accounts     receivable invoices, select the **Automatically Post on Release** check box on the **General** tab ( **Posting**     **Settings** section) of the _Accounts Receivable Preferences_ form. 

- To cause the system to post every accounts receivable document as an individual batch to the general     ledger, clear the **Generate Consolidated Batches** check box in the **Posting Settings** section of the _General_     _Ledger Preferences_ (GL102000) form. With these settings specified, users in your company can process pro forma invoices quickly and accurately with a minimum of manual actions. 


<!-- PAGE_BREAK -->
 Project Accounting | 128 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you process a pro forma invoice by performing instructions similar to those described in Pro Forma Invoices: To Process a Pro Forma Invoice for a Project. 

### Project Quotes: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for the creation of project quotes and projects based on project quotes, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially create project quotes, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Tasks to Perform 

 Enable/Disable Features (CS100000) form Make sure that the Projects and Project Quotes features are enabled. 

 Projects Preferences (PM101000) form Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see Basic Project Configuration: General Information. 

 Project Templates (PM208000) form Make sure that all needed project templates have been configured. For more information about project templates, see Project Templates and Common Tasks: General Information. 

 Business Account Classes (CR208000) Make sure that business account classes with the necessary settings and attributes have been created, as described in Defining Business Account Classes. 

 Business Accounts (CR303000) Make sure that business accounts with the necessary settings and attributes have been created, as described in Creating Business Accounts. 

#### CRM Settings Checklist 

 If you want to use the functionality of opportunities to create project quotes, make sure that the needed features have been enabled and settings have been specified, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form Make sure that the Customer Management feature is enabled. 


<!-- PAGE_BREAK -->
 Project Accounting | 129 

 Form Criteria to Check 

 Customer Management Preferences (CR101000) form Make sure that all necessary settings related to customer management have been specified. 

 Opportunity Classes (CR209000) Make sure that opportunity classes with the necessary settings, attributes, and stages have been created, as described in Defining Opportunity Classes. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing project quotes by specifying additional settings as follows: 

- To change the format of project quote identifiers, adjust the _PMQUOTE_ numbering sequence on the     _Numbering Sequences_ (CS201010) form or create a new numbering sequence and select this sequence in     the **Quote Numbering Sequence** box on the **General** tab ( **Numbering Sequence** section) of the _Projects_     _Preferences_ (PM101000) form. Project quote identifiers must be assigned only automatically. For more     information on numbering sequences, see _Use of Numbering Sequences_.     By default, the _PMQUOTE_ numbering sequence specifies that the project quote identifier is an automatically     generated alphanumeric string that starts with the _PQ_ prefix and followed by six digits, such as _PQ000001_. 

- To cause the system to automatically select a project template on creation of project quotes, select the     project template in the **Default Quote Template** box on the **General** tab ( **Default Settings** section) of the     _Projects Preferences_ form. 

- To cause the system to automatically select the revenue account group for new estimation lines of a project     quote if there are multiple income account groups defined on the _Account Groups_ (PM201000) form, specify     the **Default Revenue Account Group** for expense account groups in the Summary area of the _Account_     _Groups_ form. For more information on account groups, see _Account Groups: General Information_. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you process a project quote by performing instructions similar to those described in Project Quotes: To Process a Project Quote Based on an Opportunity. 

### Project Budget: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for managing project budgets, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially manage project budgets, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Tasks to Perform Notes 

 Enable/Disable Features (CS100000) form 

 Make sure that the Projects feature is enabled. 


<!-- PAGE_BREAK -->
 Project Accounting | 130 

**Form Tasks to Perform Notes** 

_Projects Preferences_ (PM101000) form 

 Make sure that all necessary settings related to project accounting have been specified. For more information about the configuration steps that you have to perform before you can start accounting for projects, see Basic Project Configuration: General Information. 

 If you are going to use inventory items in the revenue budget of your projects, on the General tab, select Detailed in the Revenue Budget Update box. With this option selected, if a transaction has an inventory item specified and the revenue budget has no line with this item, the system creates a new budget line with this item. 

 With the Summary option selected (the default option), if such a line exists in the revenue budget, the system updates it with the empty item code ( N/A ) instead of the inventory item of the transaction. If no such line exists, the system creates a new budget line with the empty item code. 

 The system updates the cost budget similarly based on the option selected in the Cost Budget Update box on the General tab. 

_Account Groups_ (PM201000) form Make sure that all needed account groups have been configured. For more information about account groups, see _Account Groups: General Information_. 

_Non-Stock Items_ (IN202000) form Make sure that all needed labor items, non-stock items, and services have been defined. For more information, see _Labor Items: General Information_ , _Non-Stock Items: General Information_ , and _Service Items: General Information_ , respectively. 

 Make sure that Purchases is selected in the Post Cost to Expenses box on the Price/Cost tab; otherwise, the expenses related to the nonstock item will not be recorded to the cost budget of the applicable project. 


<!-- PAGE_BREAK -->
 Project Accounting | 131 

 Form Tasks to Perform Notes 

 Projects (PM301000) form Make sure that the project has been created, as described in Project Creation and Processing: General Information. 

 If you need to make the revenue budget more detailed by adding the inventory item to the budget structure, select Task and Item in the Revenue Budget Level box. With this setting, a user can select an inventory item in a revenue budget line. 

 If you need to make the cost budget less detailed by excluding the inventory item from the budget structure, select Task in the Cost Budget Level box. With this setting, a user will not be able to select an inventory item in a cost budget line. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of managing the project budget by specifying additional settings as follows: 

- To allow a user to enter subcontract lines and purchase order lines related to a project if the project budget     key in these lines was not initially specified in the cost budget of the project, select the **Allow Adding New**     **Items on the Fly** check box on the _Projects_ (PM301000) form. 

- To cause the system to control whether an entered document is within the cost budget of a project, select     _Show a Warning_ in the **Budget Control** box on the **General** tab ( **General Settings** section) of the _Projects_     _Preferences_ (PM101000) form. 

- To change the default empty item code ( _<N/A>_ ), which is selected in a project budget line to indicate that     no specific item is associated with the line, specify the needed value in the **Empty Item Code** box on the     **General** tab ( **General Settings** section) of the _Projects Preferences_ (PM101000) form. With these settings specified, users in your company can manage the project budget quickly and accurately. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you manage the project budget by performing instructions similar to those described in Project Budget: To Configure and Update the Budget. 

### Project Budget Forecasts: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for creating project budget forecasts, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially create project budget forecasts, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 


<!-- PAGE_BREAK -->
 Project Accounting | 132 

 Form Tasks to Perform 

 Enable/Disable Features (CS100000) form Make sure that the Projects and Budget Forecast features are enabled. 

 Projects Preferences (PM101000) form Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see Basic Project Configuration: General Information. 

 Projects (PM301000) form Make sure that the project has been created, as described in Project Creation and Processing: General Information , the project budget is not locked, and the Change Order Workflow check box is cleared on the Summary tab ( Project Properties section). 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you create a project budget forecast by performing instructions similar to those described in Project Budget Forecasts: Process Activity. 

### Project Templates and Common Tasks: Implementation Checklist 

 To ensure that the system is configured properly for creating project templates and common tasks, make sure that the features and settings listed in the table are configured as described in the following table. 

 Form Task to Perform 

 Enable/Disable Features (CS100000) form Make sure that the Projects check box is selected. 

 Projects Preferences (PM101000) form Make sure that all necessary settings of project accounting have been specified. 

 Account Groups (PM201000) form Make sure that all the necessary account groups have been configured. 

### Project Transactions: Implementation Checklist 

 The following sections provide details that you can use to ensure that the system is configured properly for processing project transactions, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially process project transactions, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 


<!-- PAGE_BREAK -->
 Project Accounting | 133 

 Form Tasks to Perform 

 Projects Preferences (PM101000) form Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see Basic Project Configuration: General Information. 

 Account Groups (PM201000) form Make sure that all needed account groups have been configured and that all needed general ledger accounts are mapped to these groups. For more information about account groups, see Account Groups: General Information. 

 Projects (PM301000) form Make sure that the project has been created. For more details, see Project Creation and Processing: General Information. 

 Non-Stock Items (IN202000) form Make sure that all needed labor items, non-stock items, and services have been defined. For more information about labor items, non-stock items, and services, see Labor Items: General Information , Non-Stock Items: General Information , and Service Items: General Information , respectively. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing project transactions by specifying additional settings as follows: 

- To change the format of project transaction identifiers, adjust the _PMTRAN_ numbering sequence on the     _Numbering Sequences_ (CS201010) form, or create a new numbering sequence and select this sequence     in the **Transaction Numbering Sequence** box on the **General** tab ( **Numbering Sequence** section) of     the _Projects Preferences_ (PM101000) form. For more information on numbering sequences, see _Use of_     _Numbering Sequences_. 

 Project transaction identifiers must be assigned only automatically. That is, the Manual Numbering check box must be cleared in the Summary area of the Numbering Sequences form for the numbering sequence used for project transactions. 

 By default, the PMTRAN numbering sequence specifies that the project transaction identifier is an automatically generated alphanumeric string that starts with the PM prefix and is followed by eight digits, such as PM00000001. 

- To cause the system to post every document you enter as an individual batch to the general ledger, clear     the **Generate Consolidated Batches** check box in the **Posting Settings** section of the _General Ledger_     _Preferences_ (GL102000) form. 

- To make the system automatically associate additional project transactions that are generated (such as     discounts or freight charges) with specific project tasks, map specific general ledger accounts to these     project tasks within the project in the **Default Task for GL Account** section on the **Defaults** tab of the     _Projects_ form. For more information, see _Default Project Tasks in Record Lines_. 


<!-- PAGE_BREAK -->
 Project Accounting | 134 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you process a project transaction by performing instructions similar to those described in Project Transactions: Process Activity. 

### Project Inventory Tracking by Warehouse Location: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for tracking project inventory by location, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 Before you start working with a project and tracking project inventory by location, you should make sure that the project accounting functionality is configured and the project has the needed settings, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form Make sure that the Projects feature is enabled. 

 Account Groups (PM201000) form Make sure that all needed account groups have been configured. For more information about account groups, see Account Groups: General Information. 

 Projects Preferences (PM101000) form Make sure that all necessary settings related to project accounting have been specified, as described in the Basic Project Configuration: General Information. 

 Projects (PM301000) Make sure that the necessary project and project tasks have been created. In the project settings, Track by Location needs to be selected in the Inventory Tracking box on the Summary tab. For more information on creating a project, see Project Creation and Processing: General Information. 

 Warehouses (IN204000) form Make sure that a separate location is created and associated with each project task for which you need to receive inventory items in a warehouse. (For a location associated with a project task, the Cost Separately check box is selected automatically.) 

 We also recommend that you specify a higher Pick Priority value for project locations than for other locations, to avoid issuing project materials for other projects or to customers outside of projects. 


<!-- PAGE_BREAK -->
 Project Accounting | 135 

#### Inventory and Order Management Checklist 

 We recommend that before you start working with a project and tracking project inventory by location, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Tasks to Perform 

 Enable/Disable Features (CS100000) form Make sure that the following features are enabled: 

- _Inventory and Order Management_ 

- _Inventory_ 

- _Multiple Warehouses_ 

- _Multiple Warehouse Locations_ 

 Multiple forms Make sure that the basic inventory and order management preferences have been configured, as described in Configuration of Order Management: General Information. 

 Stock Items (IN202500) form Make sure that all stock items have been defined. For more information about stock items, see Stock Items: General Information. 

 We recommend that you not map the inventory accrual account (which is an account of the Asset type) to an account group. If you need to track stock items purchased for the project in the project cost budget, we recommend that you use the commitment tracking functionality. For more information, see Tracking Cost Commitments. 

 Non-Stock Items (IN202000) form Make sure that all non-stock items have been defined, as described in Non-Stock Items: General Information. Also, make sure that the expense account of the items is mapped to the appropriate account group. 

 Make sure that Purchases is selected in the Post Cost to Expenses box on the Price/Cost tab; otherwise, the expenses related to the non-stock item will not be recorded to the cost budget of the applicable project. 

 Vendors (AP303000) form Make sure that all needed vendors have been defined in the system, as described in Vendors: General Information. 


<!-- PAGE_BREAK -->
 Project Accounting | 136 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of sales and purchases of items for projects by specifying additional settings as follows: 

- To cause the system to automatically select a project task when a particular project is selected during the     creation of a purchase order, select the **Default** check box on the **Tasks** tab of the _Projects_ (PM301000) form     for one of the tasks of the project. 

- To cause the system to include non-stock lines of the _Service_ type in purchase receipts created from the     purchase orders of the _Normal_ type, select the **Process Service Lines from Normal Purchase Orders**     **via Purchase Receipt** check box on the **General** tab ( **Other** section) of the _Purchase Orders Preferences_     (PO101000) form. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that you perform instructions similar to those described in Project Inventory Tracking by Warehouse Location: To Purchase Materials and Services for a Project. 

### Purchasing Services for Projects: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for processing purchases for projects with accounts payable bills, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially process purchases for projects with AP bills, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Tasks to Perform 

 Enable/Disable Features (CS100000) form Make sure that the Projects feature is enabled. 

 Projects Preferences (PM101000) form Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see Basic Project Configuration: General Information. 

 Projects (PM301000) form Make sure that the project has been created, as described in Project Creation and Processing: General Information. 


<!-- PAGE_BREAK -->
 Project Accounting | 137 

 Form Tasks to Perform 

 Non-Stock Items (IN202000) form Make sure that all needed labor items, non-stock items, and services have been defined. Make sure that the Require Receipt check box is cleared in the Item Defaults section on the General tab. 

 Make sure that Purchases is selected in the Post Cost to Expenses box on the Price/Cost tab; otherwise, the expenses related to the non-stock item will not be recorded to the cost budget of the applicable project. 

 For more information about labor items, non-stock items, and services, see Labor Items: General Information , Non-Stock Items: General Information , and Service Items: General Information , respectively. 

 Account Groups (PM201000) form Make sure that all needed account groups have been configured. Also, make sure that the expense accounts of the inventory items specified in the Expense Account box on the GL Accounts tab of the Non-Stock Items form are mapped to the account groups. For more information about account groups, see Account Groups: General Information. 

 Vendors (AP303000) form Make sure that all needed vendors have been defined in the system, as described in Vendors: General Information. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing purchases for projects by specifying additional settings as follows: 

- To cause the system to automatically select a project task when a particular project is selected during the     creation of a bill, select the **Default** check box on the **Tasks** tab of the _Projects_ (PM301000) form for one of     the tasks of the project. 

- To cause the system to create accounts payable bills with the _Balanced_ status, clear the **Hold Documents**     **on Entry** check box on the **General** tab ( **Data Entry Settings** section) of the _Accounts Payable Preferences_     (AP101000) form. 

- To cause the system to automatically post general ledger batches generated during processing account     payable documents, select the **Automatically Post on Release** check box in the **Posting Settings** section     on the _General Ledger Preferences_ (GL102000) form. With these settings specified, users in your company can process purchases for projects with AP bills quickly and accurately with a minimum of manual actions. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that you perform instructions similar to those described in Purchasing Services for Projects: Process Activity. 


<!-- PAGE_BREAK -->
 Project Accounting | 138 

### Single-Tier Change Management: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for the processing of change orders, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially create change orders, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Tasks to Perform Notes 

 Enable/Disable Features (CS100000) form 

 Make sure that the Projects and Change Orders features are enabled. 

 Projects Preferences (PM101000) form 

 Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see Basic Project Configuration: General Information. 

 Change Order Classes (PM203000) form 

 Make sure that all needed change order classes have been configured, as described in Change Orders for Commitments: To Create a Change Order Class. 

 Projects (PM301000) form Make sure that the project has been created, as described in Project Creation and Processing: General Information. 

 Also, make sure that the Change Order Workflow check box is selected on the Summary tab ( Project Properties section). 

 If the Internal Cost Commitment Tracking check box is selected on the General tab ( General Settings section) of the Projects Preferences (PM101000) form, and a project has related purchase orders, you can select the Change Order Workflow check box for the project if the project has no open related purchase order lines. That is, the status of the related purchase order lines of the project is only Completed , Closed , or Canceled. 

#### Checklist for Project Commitments 

 If you want to use the functionality of change orders to manage changes in commitments, make sure that all the needed features have been enabled and settings have been specified, as described in Committed Costs: Implementation Checklist. 


<!-- PAGE_BREAK -->
 Project Accounting | 139 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of managing changes in projects by specifying additional settings as follows: 

- To change the format of change order identifiers, adjust the _CHANGEORD_ numbering sequence on the     _Numbering Sequences_ (CS201010) form or create a new auto-numbered sequence and select this sequence     in the **Change Order Numbering Sequence** box on the **General** tab ( **Numbering Sequence** section) of     the _Projects Preferences_ (PM101000) form. For more information on numbering sequences, see _Use of_     _Numbering Sequences_. 

- To allow users to create change orders by using the **Create Change Order** command on the More menu     of the _Projects_ (PM301000) form, clear the **Manual Numbering** check box in the Summary area of the     _Numbering Sequences_ form for the numbering sequence used for change orders. 

- To cause the system to automatically select a change order class on creation of change orders, select the     change order class in the **Default Change Order Class** box on the **General** tab ( **General Settings** section) of     the _Projects Preferences_ form. With these settings specified, users in your company can process change orders quickly and accurately with a minimum of manual actions. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that you process a change order by performing instructions similar to those described in Single-Tier Change Management: To Track Changes to the Project Budget and Change Orders for Commitments: Process Activity. 

### Taxes in Projects: Implementation Checklist 

 The following sections provide details that you can use to ensure that the system is configured properly for calculating tax in project-related documents, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### General Setting Checklist 

 To ensure that the system is configured properly for creating project-related documents with taxes applied automatically, make sure that the criteria listed in the table have been met in the system as described. 

 Form Criteria to Check 

 Tax Zones (TX206000) All needed tax zones have been defined to include the applicable taxes in the location that corresponds to each tax zone. 

 For details, see Tax Zones and Categories: To Review Tax Categories and Create a Tax Zone for Sales Taxes. 


<!-- PAGE_BREAK -->
 Project Accounting | 140 

 Form Criteria to Check 

 Tax Categories (TX205500) The needed tax categories have been created for all goods and services (which are represented as stock items and nonstock items in Acumatica ERP) that your company buys or sells. For each tax category, you should add all taxes that are applied to the corresponding category of goods and services in all geographical locations where your company conducts business. 

 For details, see Tax Zones and Categories: To Review Tax Categories and Create a Tax Zone for Sales Taxes. 

 Vendors (AP303000) The needed vendors should be created in the system. To define which taxes are applied in the location of each vendor, the appropriate tax zone should be assigned to the vendor. 

 Customers (AR303000) The needed customers should be created in the system. To define which taxes are applied in the location of each customer, the appropriate tax zone should be assigned to the customer. 

 Stock Items (IN202500), Non-Stock Items (IN202000) 

 For the calculation of tax amounts in the documents in which you specify inventory IDs, stock items (for goods) and nonstock items (for services) should be created and the appropriate tax category should be assigned to each item. 

#### Project-Specific Tax Checklist 

 We recommend that before you initially process project-related documents with project-specific tax zones, you make sure the needed settings have been specified, as summarized in the following checklist. 

 Form Criteria to Check 

 Projects Preferences (PM101000) The Calculate Project-Specific Taxes check box is selected on the General tab. 

 Projects (PM301000) In the Tax Settings section of the Addresses tab of the form, the following project-specific tax zones have been specified: 

- **Cost Tax Zone** : The tax zone to be used in the cost     documents (such as bills, purchase orders, and     subcontracts) related to the project instead of the     vendor tax zone 

- **Revenue Tax Zone** : The tax zone to be used in the     revenue documents (such as invoices and sales or-     ders) related to the project instead of the customer     tax zone 

#### Sales Tax Checklist 

 To ensure that the system is configured properly for creating project-related documents with a sales tax applied automatically, make sure that the criteria listed in the table have been met in the system as described. 


<!-- PAGE_BREAK -->
 Project Accounting | 141 

 This table lists only project-specific part of configuring the system for application of sales taxes. For a detailed description on configuring sales taxes, see Sales Taxes. 

 Form Criteria to Check 

 Chart of Accounts (GL202500) The following GL accounts, which you will use for tax reporting purposes have been added: 

- A liability account that will be used for accumulating the     tax amounts to be paid to the tax agency in a tax period 

- The Tax Expense account that will be used to record the     tax adjustments and expenses for the tax agency 

- The tax rounding gains and losses accounts 

 Account Groups (PM201000) form An account group of the Expense type has been configured and the Tax Expense account has been mapped to this account group. 

 For details, see Account Groups: To Create an Expense Account Group. 

 Taxes (TX205000) The sales tax should be created. The settings for the tax include the tax rate, the tax calculation method, the tax validity period (if any), and other required parameters. 

 Also, make sure on the GL Accounts tab, the Use Tax Expense Account check box is selected and the Tax Expense Account is specified. 

 For details, see Sales Taxes: To Configure a Sales Tax for Use in AP. 

#### Use Tax Checklist 

 To ensure that the system is configured properly for creating project-related documents with a use tax applied automatically, make sure that the criteria listed in the table have been met in the system as described. 

 This table lists only the project-specific part of configuring the system for application of use taxes. For a detailed description of the process of configuring use taxes, see Use Tax. 

 Form Criteria to Check 

 Chart of Accounts (GL202500) The following GL accounts, which you will use for tax reporting purposes, have been added: 

- A liability account that will be used for accumulating the     tax amounts to be paid to the tax agency in a tax period 

- The Tax Expense account that will be used to record tax     adjustments and expenses for the tax agency 

- The tax rounding gains and losses accounts 


<!-- PAGE_BREAK -->
 Project Accounting | 142 

 Form Criteria to Check 

 Account Groups (PM201000) form An account group of the Expense type has been configured and the Tax Expense account has been mapped to this account group. For details, see Account Groups: To Create an Expense Account Group. 

 Taxes (TX205000) The use tax to be applied to your documents should be created. The settings for the tax include the tax rate, the tax calculation method, the tax validity period (if any), and other required settings. 

 Also, on the GL Accounts tab, the Use Tax Expense Account check box should be selected and the Tax Expense Account should be specified. 

 For details, see Use Taxes: Implementation Activity. 

 For a detailed description of configuring sales taxes, see Sales Taxes. 

### Time Tracking Configuration: Implementation Checklist 

 The following sections provide details you can use to ensure that the time tracking functionality in the system is configured properly to be used in accounting for projects. 

#### Prerequisite Configuration 

 To ensure that the prerequisite configuration has been implemented properly, make sure that the necessary entities have been defined,and settings have been specified, as described in the following checklist. 

 Form Criteria to Check 

 Multiple forms The minimum company settings have been specified, as described in Company Without Branches: General Information. 

 Earning Types (EP102000) Additional earning types, if needed, have been defined in addition to the predefined earning types. Also, for the earning types that relate to the employee time to be billed within the project, the Billable check box will be selected. For information on earning types, see Employee Time Entry: Time Activities. 

 Employees (EP203000) All employees for whom time will be tracked have been defined. For details, see Employee Settings. 

 Activity Types (CR102000) form Activity types have been defined, if needed, in addition to those that are predefined in the system 


<!-- PAGE_BREAK -->
 Project Accounting | 143 

#### Configuration of Reporting Time with Time Cards 

 To ensure that the basic time reporting configuration has been implemented properly and the employees will be able to log time spent on projects in time cards, make sure that the necessary features have been enabled, entities have been defined, and settings have been specified, as described in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) The Advanced Financials and Projects features are enabled. 

 Time and Expenses Preferences (EP101000) In the Posting Option for Non-Payroll Employee box (in the Time Reporting Settings section of the General Settings tab), Post PM and GL Transactions is selected, which means that on release of time cards and time activities, the system generates project accounting and general ledger transactions. 

 Projects Preferences (PO101000) In the Visibility Settings section, the Time Entries and Expenses check boxes are selected. 

 In the Expense Account Source and Expense Accrual Account boxes of the Account Settings section, the sources for the expense account and expense accrual account have been selected; these settings define the debit and credit accounts to be used in the project transactions generated on release of time cards. 

 Non-Stock Items (IN202000) The labor items that are needed for all employees for all available earning types have been created, as illustrated in the Labor Items: To Configure a Labor Item. 

 Labor Rates (PM209900) Labor cost rates for employees have been defined, as illustrated in Labor Items: To Define Labor Cost Rates. 

#### Configuration of Reporting Time with Time Activities 

 To ensure that the employees will be able to log time with time activities, make sure that the necessary features have been enabled and settings have been specified, as described in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) The Time Management feature is enabled. 

 Activity Types (CR102000) The Track Time and Costs check box is selected for the activity types for which you want to track billable time in projects. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of time reporting by specifying additional settings as follows: 


<!-- PAGE_BREAK -->
 Project Accounting | 144 

- To cause the system to require a particular employee to enter time cards, select the **Time Card is Required**     check box on the _Employees_ (EP203000) form. If the reporting of time with time activities is configured, the     selection of this check box means that time activities can be released only within a time card. 

- To cause the system to post project transactions that have been generated on release of time activities to     the off-balance account group, select _Post PM to Off-Balance Account Group_ in the **Posting Option for Non-**     **Payroll Employee** box, and specify the account group of the _Off-Balance Type_ in the **Off-Balance Account**     **Group** on the _Time and Expenses Preferences_ (EP101000) form. 

- To cause project transactions to be automatically generated and released on release of time cards, select     the **Automatically Release PM Documents** on the _Time and Expenses Preferences_ (EP101000) form. 

- To associate an earning type with a particular project or project task, on the _Earning Types_ (EP102000) form,     for an earning type, specify the project or project task in the **Default Project Code** box and **Default Task**     box, respectively. 

- To copy notes and attached documents from time cards to generated project transactions, select the     **Copy Files to PM Documents** and **Copy Notes to PM Documents** check boxes on the _Time and Expenses_     _Preferences_ form. 

### Vendor Payments for a Project: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for paying AP bills for a project, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you start preparing payments for AP bills, you make sure the needed settings have been specified and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Accounts Payable Preferences (AP101000) Make sure that the accounts payable settings have been configured as described in Accounts Payable: To Specify Accounts Payable Preferences. 

 Vendors (AR303000) Verify the existence of the vendor accounts for the vendors whose bills you will pay. For details, see Vendors: Implementation Activity. 

 Cash Accounts (CA202000) Make sure that the cash account to be used in the payments has been configured as described in Cash Management: To Create Cash Accounts. 

 Payment Methods (CA204000) Make sure that the payment method you will use has been configured as described in Cash Management: To Create Cash Accounts. 

 Projects (PM301000) Make sure that the necessary project (that is, the project for which the vendor performed the billed work) has been created and necessary project tasks of this project are active. 


<!-- PAGE_BREAK -->
 Project Accounting | 145 

#### Payment by Line Checklist 

 If you intend to pay individual lines of the vendor's bill or bills, make sure the needed features have been enabled and settings have been specified, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form Make sure that the Payment Application by Line feature is enabled. 

 Payment tab of the Vendors (AR303000) form Be sure the Pay by Line check box is selected. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing payments for AP bills by specifying additional settings as follows: 

- To cause the system to generate separate payment documents for each bill of a particular vendor, select the     **Pay Separately** check box on the **Payment** tab of the _Vendors_ (AR303000) form. 

- To cause the system to automatically post AP payments once they are released, select the **Automatically**     **Post on Release** check box on the **General** tab of the _Accounts Payable Preferences_ (AP101000) form. 

- To cause AP payments to be created with the _On Hold_ status, select the **Hold Documents on Entry** check     box on the **General** tab of the _Accounts Payable Preferences_ (AP101000) form. 

- To cause the system to automatically post general ledger batches generated during the processing of     payments, select the **Automatically Post on Release** check box on the _General Ledger Preferences_     (GL102000) form. For information on processing general ledger batches, see _GL Transactions: General_     _Information_. 

- To make the system consolidate into one batch all generated transactions posted to the same period for all     documents being released, select the **Generate Consolidated Batches** check box on the _General Ledger_     _Preferences_ form. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in Vendor Payments for a Project: To Process a Payment for Multiple Bills and Vendor Payments for a Project: To Process a Payment of Bill Lines. 

### WIP Labor Costs in Cost-Plus Projects: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for billing a cost-plus projects with WIP costs, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially bill a cost-plus projects with WIP costs, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 


<!-- PAGE_BREAK -->
 Project Accounting | 146 

 Form Tasks to Perform 

 Enable/Disable Features (CS100000) form Make sure that the Projects feature is enabled. 

 Projects Preferences (PM101000) form Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see Basic Project Configuration: General Information. 

 Chart of Accounts (GL202500) form Make sure that an asset account for work in progress has been created. For details on configuring the chart of accounts, see Chart of Accounts. 

 Account Groups (PM201000) form Make sure that an account group of the Asset type for work in progress has been created and the WIP account has been added to the account group. For details on configuring account groups, see Account Groups: General Information. 

 Allocation Rules (PM207500) form Make sure that an allocation rule is configured as described in WIP Labor Costs in Cost-Plus Projects: General Information. 

 Billing Rules (PM207000) form Make sure that all the needed billing rules have been configured to process allocation transactions posted to the WIP account group. For details on configuring billing rules, see Billing Rules: General Information. 

 Projects (PM301000) Make sure that the project has been created, as described in Project Creation and Processing: General Information. 

#### Other Settings That Affect the Workflow 

 To cause the system to automatically release allocation transactions, including allocation reversal transactions, select the Automatically Release Allocations check box on the General tab ( General Settings section) of the Projects Preferences (PM101000) form. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you allocate projects by performing instructions similar to those described in WIP Labor Costs in Cost-Plus Projects: Process Activity. 

### WIP Labor Costs in Fixed-Price Projects: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for billing a cost-plus projects with WIP costs, and to understand (and change, if needed) the settings that affect the processing workflow. 


<!-- PAGE_BREAK -->
 Project Accounting | 147 

#### Implementation Checklist 

 We recommend that before you initially bill a cost-plus projects with WIP costs, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Tasks to Perform 

 Enable/Disable Features (CS100000) form Make sure that the Projects feature is enabled. 

 Projects Preferences (PM101000) form Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see Basic Project Configuration: General Information. 

 Chart of Accounts (GL202500) form Make sure that an asset account for work in progress has been created. For details on configuring the chart of accounts, see Chart of Accounts. 

 Account Groups (PM201000) form Make sure that an account group of the Asset type for work in progress has been created and the WIP account has been added to the account group. For details on configuring account groups, see Account Groups: General Information. 

 Allocation Rules (PM207500) form Make sure that an allocation rule is configured as described in WIP Labor Costs in Fixed-Price Projects: General Information. 

 Billing Rules (PM207000) form Make sure that all the needed billing rules have been configured to process allocation transactions posted to the WIP account group. For details on configuring billing rules, see Billing Rules: General Information. 

 Projects (PM301000) Make sure that the project has been created, as described in Project Creation and Processing: General Information. 

 Project Tasks (PM302000) Make sure the WIP account group is selected for the project tasks in the Non-Billable WIP Account Group box on the Summary tab ( Billing and Allocation Settings section). 

#### Other Settings That Affect the Workflow 

 To cause the system to automatically release allocation transactions, including allocation reversal transactions, select the Automatically Release Allocations check box on the General tab ( General Settings section) of the Projects Preferences (PM101000) form. 


<!-- PAGE_BREAK -->
 Project Accounting | 148 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you allocate projects by performing instructions similar to those described in WIP Labor Costs in Fixed-Price Projects: Process Activity. 


<!-- PAGE_BREAK -->
 Route Management | 149 

## Route Management 

### Route Management: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for the management of routes and the processing of route service contracts in the system. 

#### Prerequisites 

 Before you start configuring route management, you should make sure that the needed configuration tasks have been performed, as summarized in the following checklist. 

 Form Criteria to Check 

 Multiple forms Make sure that the minimum company settings are specified, as described in Company Without Branches , Company with Branches that Do Not Require Balancing , or Company with Branches that Require Balancing (depending on your company structure). 

 Multiple forms To offer the provision of inventory items as part of providing field services, make sure that the sales order management configuration has been implemented, as described in Configuration of Order Management: Implementation Checklist. 

 Multiple forms Make sure that the service management configuration has been implemented, as described in Basic Service Management Configuration. 

 Numbering Sequences (CS201010) form The numbering sequence for route executions has been created. 

 Employees (EP203000) form The employees that are drivers have been defined in the system. 

#### Required Steps 

 To make it possible for users to execute routes and process route service contracts, you should navigate to the forms listed in the following table and perform the configuration actions that are described. 

 Form Action 

 Service Management Preferences (FS100100) Specify the Map API Key. 

 Route Management Preferences (FS100400) form Specify the route numbering sequence and the billing settings for contracts with standardized billing. 


<!-- PAGE_BREAK -->
 Route Management | 150 

 Form Action 

 Service Order Types (FS202300) form Create the service order type for route appointments, as described in Service Order Types: To Create a Service Order Type for Route Appointments. 

 Skills (FS206000) form Create the driver skills. 

 Employees (EP203000) form Assign a driver skill to all the employees that are drivers. 

 Vehicle Types (FS204200) form Create all the types of vehicles of the company. 

 Vehicles (FS203600) form Create vehicle records. 

 Item Classes (IN201000) form Modify the item classes to contain the default settings of the company's route services. Create at least one route service. 

#### Additional Settings 

 For faster data entry, you can specify a route service order type that will be selected on the data entry forms in the Default Service Order Type box of the Route Management Preferences (FS100400) form. 

 You can also perform the following optional steps on the same form: 

- To set up the system to calculate route execution statistics using the Azure Maps service and display them     on the _Route Document Details_ (FS304000) form, select the **Calculate Route Statistics Automatically** check     box.     If this check box is cleared, to calculate route execution statistics, users will have to click the **Calculate**     **Route Statistics** button on the _Route Document Details_ form. 

- To enable the tracking of GPS locations at start and end point of the executed route, select the **Track Start**     **and Complete Location of Route** check box. The GPS locations will be displayed on the **Location** tab of the     _Route Document Details_ form. 

- To set an appointment manually added to a route on the _Routes_ (FS203700) form to appear first in the route,     select the **Set Appointments Created Manually as First in Route** check box.     If this check box is cleared, the added appointment will be placed last in the route. 

- To make it possible to specify months in route contract schedules when they are applicable, select the     **Enable Seasons in Schedule Contracts** check box. The system will make the **Season Settings** section     available on the **Recurrence** tab of the _Service Contract Schedules_ (FS305100) and _Route Service Contract_     _Schedules_ (FS305600) forms. 


<!-- PAGE_BREAK -->
 Service Management | 151 

## Service Management 

### Service Order Types: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for the creation of service order types. 

#### Prerequisites 

 Before you create a service order type to be used for service orders and appointments for which sales orders or SO invoices will not be generated, you should make sure the minimum configuration of service management functionality has been performed, as described in Basic Service Management Configuration: Implementation Activity. 

#### Implementation Checklist 

 We recommend that before you start to create service order types, you make sure the needed features have been enabled and entities have been configured, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form The Service Management feature has been enabled. 

 Numbering Sequences (CS201010) form At least one numbering sequence for service orders has been created. 

 Credit Terms (CS206500) form At least one set of credit terms has been created. 

#### Minimum Required Settings for a Service Order Type 

 For each service order type that you are going to use, you should specify the following minimum configuration settings. 

 Form Settings to Specify 

 The Summary area of the Service Order Types (FS202300) form 

- The identifier of the service order type 

- The description of the service order type 


<!-- PAGE_BREAK -->
 Service Management | 152 

 Form Settings to Specify 

 The General tab of the Service Order Types form • The Numbering Sequence to be used to assign service order reference numbers to service orders of the type 

- The needed **Behavior** of the service order type is     selected 

- The _AR Documents_ option in the **Generated Billing**     **Documents** box, which indicates that an AR docu-     ment will be generated to bill the customer for ser-     vices specified in service orders and appointments     of the service order type 

- The needed option in the **Default Terms for AR**     **and SO** box 

#### Other Settings That Affect the Workflow 

 For a particular service order type, you can specify additional settings on the General tab of the Service Order Types (FS202300) form that will affect the processing of service orders and appointments of this type: 

- If the **Complete Service Orders When Its Appointments Are Completed** check box ( **General Settings**     section) is selected, the system changes the status of a service order of the type to _Completed_ when all     appointments of this service order have the _Completed_ status. If this check box is cleared, a user has to     manually complete the service order. 

- If the **Close Service Orders When Its Appointments Are Closed** check box ( **General Settings** section) is     selected, the system changes the status of a service order of the type to _Closed_ when all appointments of     this service order have the _Closed_ status. If this check box is cleared, a user has to manually close the service     order. 

- If the **Require Contact** check box ( **General Settings** section) is selected, users have to select a contact     person in the **Contact** box on the **Settings** tab of the _Service Orders_ (FS300100) or _Appointments_ (FS300200)     form when they create service orders or appointments of this service order type. If this check box is cleared,     the service orders and appointments of the type can be created without the contact person being specified. 

- If the **Require Customer Signature on Mobile App** check box ( **General Settings** section) is selected, before     a user completes an appointment of the type by using a mobile device, the customer's signature has to be     obtained and saved in the mobile app. If this check box is cleared, the user can complete an appointment of     the type without the customer's signature. 

- If the **Bill Only Closed Appointments** check box ( **Billing Settings** section) is selected, billing documents     can be generated only for closed appointments of the service order type. If this check box is cleared, billing     documents an be generated for appointments of the type that are not closed. To simplify the process of creating service orders and appointments in the system, you can leave the default settings. 


<!-- PAGE_BREAK -->
 Taxes | 153 

## Taxes 

### Cash Entries with Taxes: Implementation Checklist 

 To ensure that the system is configured properly for creating a cash entry a sales tax applied automatically, make sure that the criteria listed in the table have been met in the system as described. 

 Form Criteria to Check Notes 

 Enable/Disable Features (CS100000) 

 If you are going to apply a VAT to a cash entry, make sure that the VAT Reporting feature has been enabled. 

 Taxes (TX205000) You should create the sales tax or VAT that your company uses. The settings for the tax include the tax rate, the tax calculation method, the tax validity period (if any), and other required parameters. 

 For details, see Sales Taxes: To Create a Sales Tax for Use in AR and Value-Added Taxes: To Create a General VAT and Exempt VAT. 

 Tax Zones (TX206000) You should create all needed tax zones and include the taxes applied in the corresponding location in each tax zone. You then associate an appropriate tax zone with each of your vendors according to their locations. 

 For details, see Tax Zones and Categories: To Review Tax Categories and Create a Tax Zone for Sales Taxes and Tax Zones and Categories: To Create a Tax Category and Tax Zone for VAT. 

 Tax Categories (TX205500) You should create the needed tax categories for all goods or services (which are represented as stock items and non-stock items in Acumatica ERP) that your company buys. For each tax category, you should add all taxes that are applied to the corresponding category of goods and services in all geographical locations where your company conducts business. 

 For details, see Tax Zones and Categories: To Review Tax Categories and Create a Tax Zone for Sales Taxes and Tax Zones and Categories: To Create a Tax Category and Tax Zone for VAT. 

 Vendors (AP303000) For each tax agency to which you will submit tax reports, you should create a vendor account with the Vendor is Tax Agency check box selected. 

 For details, see Tax Agency: To Set Up a Tax Agency for Sales Taxes and Tax Agency: To Set Up a Tax Agency for VAT. 

 Stock Items (IN202500), Non-Stock Items (IN202000) 

 To calculate tax amounts in the documents in which you specify inventory IDs, you should create stock items (for goods) and non-stock items (for services) and associate each item with the appropriate tax category. 

 Entry Types (CA203000) An entry type for taxable sales must be available in the system. 


<!-- PAGE_BREAK -->
 Taxes | 154 

 Form Criteria to Check Notes 

 Cash Accounts (CA202000) The entry type for taxable sales must be assigned to the needed tax account. This entry type must be assigned the needed tax zone. 

#### Settings That Affect the Workflow 

 The following settings and entities should be specified and defined, respectively: 

- The following general ledger settings should be specified on the **Posting Settings** tab of the _General Ledger_     _Preferences_ (GL102000) form: 

- Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches     to be immediately posted aer they are released. 

- Clear the **Generate Consolidated Batches** check box to cause every AP transaction you enter to     be posted as an individual batch to the general ledger. (When this check box is selected, the system     consolidates into a single batch all transactions in the same currency posted to the same period for all     documents being released.) With these settings specified and entities defined, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions. 

### Credit Memos with Sales Taxes: Implementation Checklist 

 To ensure that the system is configured properly for creating and releasing credit and debit memos, make sure that the criteria listed in the table have been met in the system as described. 

 Form Criteria to Check Notes 

 Enable/Disable Features (CS100000) Make sure the minimal features have been enabled as described in Company Without Branches: General Information. 

 Customers (AR303000) Verify the existence of the customer accounts for the customers for which you will correct create a credit memo. For details, see Customers: Implementation Activity. 

#### Settings That Affect the Workflow 

 The following settings and entities should be specified and defined, respectively: 

- The following general ledger settings should be specified on the **Posting Settings** tab of the _General Ledger_     _Preferences_ (GL102000) form: 

- Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches     to be immediately posted aer they are released. 

- Clear the **Generate Consolidated Batches** check box to cause every AR transaction you enter to     be posted as an individual batch to the general ledger. (When this check box is selected, the system     consolidates into a single batch all transactions in the same currency posted to the same period for all     documents being released.) 

- The following accounts receivable preferences settings should be specified on the **General Settings** tab of     the _Accounts Receivable Preferences_ (AR101000) form: 


<!-- PAGE_BREAK -->
 Taxes | 155 

- Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives     the created AR invoices and credit memos the _On Hold_ status. 

- Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.     This setting indicates that AR invoices and credit memos will be automatically posted to the general     ledger once they are released. With these settings specified and entities defined, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions. 

### Funds Transfers with Taxable Fees: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for performing funds transfers with taxable fees, and to understand (and change, if needed) the settings that affect the workflow of funds transfers processing. 

#### Implementation Checklist 

 We recommend that before you initially perform funds transfers, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) Make sure that the Standard Financials feature has been enabled. 

 Chart of Accounts (GL202500) Check whether the necessary accounts have been created. 

 Entry Types (CA203000) Make sure that a needed entry type has been created. 

 Cash Accounts (CA202000) Check whether the necessary cash accounts have been configured and the Disbursement entry type has been added to the cash accounts on the Entry Types tab. 

 Company Financial Calendar (GL201100) Make sure that the periods during which funds transfers may occur have a status of Open. 

 You can generate the necessary periods on the Master Financial Calendar (GL201000) form. 

 For details on opening financial periods, see Opening Financial Periods: Process Activity. 

 Taxes (TX205000) Make sure that the taxes that your company uses have been created. The settings for the tax include the tax rate, the tax calculation method, the tax validity period (if any), and other required parameters. 

 For an example of creating a sales tax, see Sales Taxes: To Create a Sales Tax for Use in AR. 

 Tax Zones (TX206000) Make sure that the needed tax zone has been created and include the needed tax, as described in Tax Zones and Categories: To Review Tax Categories and Create a Tax Zone for Sales Taxes. 


<!-- PAGE_BREAK -->
 Taxes | 156 

 Form Criteria to Check 

 Tax Categories (TX205500) Make sure that the needed tax category has been created and includes the needed tax, as described in Tax Zones and Categories: To Review Tax Categories and Create a Tax Zone for Sales Taxes. 

#### Other Settings That Affect the Workflow 

 The following settings on the Cash Management Preferences (CA101000) form can affect the processing workflow: 

- If the **Automatically Post to GL on Release** check box is selected, the system posts transactions to the     general ledger when cash management documents are released. If this check box is cleared, you have to     post the batch aer you release the document. 

- If the **Hold Transactions on Entry** check box is selected in the **Data Entry Settings** section, when new     transactions and funds transfers are entered, they are assigned the _On Hold_ status. If the **Hold Transactions**     **on Entry** check box is cleared, the transactions and funds transfers are assigned the _Balanced_ status. 

- If the **Require Document Ref. Nbr. on Entry** check box is selected, you must fill in the **Document Ref.** box     on the _Funds Transfers_ (CA301000) form for new funds transfers. If this check box is cleared, you can decide     whether to leave the **Document Ref.** box blank or fill it in. 

#### Testing of Settings 

 To make sure that all settings are configured correctly, we recommend that you perform funds transfers with taxable fees by performing similar steps to those described in Funds Transfers with Taxable Fees: Process Activity. 

### Invoices with Inclusive Sales Taxes: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for processing invoices with an inclusive sales tax, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially process invoices with an inclusive sales tax, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Tasks to Perform 

 Taxes (TX205000) You should create each inclusive sales tax that your company uses. The settings for each tax include the tax rate, the tax calculation method, and the tax validity period (if any). For details, see Invoices with Inclusive Sales Taxes: Implementation Activity. 


<!-- PAGE_BREAK -->
 Taxes | 157 

 Form Tasks to Perform 

 Tax Zones (TX206000) You should create all needed tax zones and include the taxes that should be applied in the corresponding location in each tax zone. You then associate an appropriate tax zone with each of your customers according to their locations. For details, see Tax Zones and Categories: To Review Tax Categories and Create a Tax Zone for Sales Taxes. 

 Tax Categories (TX205500) You should create the needed tax categories for all goods or services (which are represented as stock items and non-stock items in Acumatica ERP) that your company sells. For each tax category, you should add all taxes that should be applied to the corresponding category of goods and services in all geographical locations where your company conducts business. For details, see Tax Zones and Categories: To Review Tax Categories and Create a Tax Zone for Sales Taxes. 

 Vendors (AP303000) For each tax agency to which you will submit tax reports, you should create a vendor account with the Vendor is Tax Agency check box selected. 

 Stock Items (IN202500), Non-Stock Items (IN202000) To calculate tax amounts in the documents in which you specify inventory IDs, you should create stock items (for goods) and non-stock items (for services) and associate each item with the appropriate tax category. 

 Customers (AR303000) You should create needed customers if they don't already exist. Depending on the geographical location of the sale transaction, different taxes can be applied to the document. To define which taxes are applied in the location of your customer, you should assign the appropriate tax zone to each new or existing customer. 

 Chart of Accounts (GL202500) You should make sure that the following GL accounts that you will use for tax reporting purposes have been added: 

- A liability account that will be used for accumulat-     ing the tax amounts to be paid to the tax agency in     a tax period. 

- Expense accounts that will be used to record tax     adjustments and expenses for the tax agency, and     tax rounding gains and losses. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing invoices with an inclusive sales tax by specifying additional settings as follows: 

- On the **Posting Settings** tab of the _General Ledger Preferences_ (GL102000) form, specify the following     general ledger settings: 


<!-- PAGE_BREAK -->
 Taxes | 158 

- To cause GL batches to be immediately posted aer they are released, select the **Automatically Post on**     **Release** check box. 

- Clear the **Generate Consolidated Batches** check box to cause every AR transaction you enter to     be posted as an individual batch to the general ledger. (When this check box is selected, the system     consolidates into a single batch all transactions in the same currency posted to the same period for all     documents being released.) 

- In the **Rounding Settings** section, specify a rounding limit in the **Rounding Limit** box. This setting     causes the system to post any discrepancy between the document-level tax and the total of tax amount     of each document line, which is under the specified value to a special account. 

- On the **General Settings** tab of the _Accounts Receivable Preferences_ (AR101000) form, specify the accounts     receivable settings as follows: 

- To give AR invoices the _On Hold_ status when they are created, select the **Hold Documents on Entry**     check box in the **Data Entry Settings** section. 

- Select the **Require Payment Reference on Entry** check box in the **Data Entry Settings** section, if you     want users to enter a payment reference number in the **Payment Ref.** box when they create an AR     invoice on the _Invoices and Memos_ (AR301000) form. 

- Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.     This setting causes AR invoices to be automatically posted to the general ledger once they are released. 

- On the _Tax Preferences_ (TX103000) form, specify the following tax settings: 

- In the **Tax Rounding Gain Account** box, an account where the system will post amounts resulting from     tax rounding gains 

- In the **Tax Rounding Loss Account** box, an account where the system will post amounts resulting from     tax rounding losses 

#### Testing of Settings 

 To make sure that all settings are configured correctly, we recommend that you process invoices with an inclusive sales tax by performing instructions similar to those described in Invoices with Inclusive Sales Taxes: Process Activity. 

### Invoices with Sales Taxes: Implementation Checklist 

 To ensure that the system is configured properly for creating an AR invoice with a sales tax applied automatically, make sure that the criteria listed in the table have been met in the system as described. 

 Form Criteria to Check Notes 

 Taxes (TX205000) You should create the sales tax that your company uses. The settings for the tax include the tax rate, the tax calculation method, the tax validity period (if any), and other required parameters. 

 For details, see Sales Taxes: To Create a Sales Tax for Use in AR. 

 Tax Zones (TX206000) You should create all needed tax zones and include the taxes applied in the corresponding location in each tax zone. You then associate an appropriate tax zone with each of your customers according to their locations. 

 For details, see Tax Zones and Categories: To Review Tax Categories and Create a Tax Zone for Sales Taxes. 


<!-- PAGE_BREAK -->
 Taxes | 159 

 Form Criteria to Check Notes 

 Tax Categories (TX205500) You should create the needed tax categories for all goods or services (which are represented as stock items and non-stock items in Acumatica ERP) that your company sells. For each tax category, you should add all taxes that are applied to the corresponding category of goods and services in all geographical locations where your company conducts business. 

 For details, see Tax Zones and Categories: To Review Tax Categories and Create a Tax Zone for Sales Taxes. 

 Vendors (AP303000) For each tax agency to which you will submit tax reports, you should create a vendor account with the Vendor is Tax Agency check box selected. 

 For details, see Tax Agency: To Set Up a Tax Agency for Sales Taxes. 

 Stock Items (IN202500), Non-Stock Items (IN202000) 

 To calculate tax amounts in the documents in which you specify inventory IDs, you should create stock items (for goods) and non-stock items (for services) and associate each item with the appropriate tax category. 

 Customers (AR303000) You should create needed customers in the Accounts Receivable subledger if they don't already exist. Depending on the geographical location of the sale transaction, different taxes can be applied to the document. To define which taxes are applied in the location of your customer, you should assign the appropriate tax zone to each new or existing customer. 

#### Settings That Affect the Workflow 

 The following settings and entities should be specified and defined, respectively: 

- The following general ledger settings should be specified on the **Posting Settings** tab of the _General Ledger_     _Preferences_ (GL102000) form: 

- Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches     to be immediately posted aer they are released. 

- Clear the **Generate Consolidated Batches** check box to cause every AR transaction you enter to     be posted as an individual batch to the general ledger. (When this check box is selected, the system     consolidates into a single batch all transactions in the same currency posted to the same period for all     documents being released.) 

- The following accounts receivable settings should be specified on the **General Settings** tab of the _Accounts_     _Receivable Preferences_ (AR101000) form: 

- Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives     the created AR invoices the _On Hold_ status. 

- Clear the **Require Payment Reference on Entry** check box in the **Data Entry Settings** section. This     setting means that you do not have to enter a payment reference number in the **Payment Ref.** box when     creating an AR invoice on the _Invoices and Memos_ (AR301000) form. 

- Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.     This setting causes AR invoices to be automatically posted to the general ledger once they are released. 


<!-- PAGE_BREAK -->
 Taxes | 160 

- On the **Company Details** tab of the _Companies_ (CS101500) form, _Document Amount_ is selected in the **Cash**     **Discount Base** box. This setting indicates that the cash discount percent will be applied to the total amount     of a document plus the tax amount. With these settings specified and entities defined, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions. 

### Purchases with Inclusive Sales Taxes: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for processing a purchase with an inclusive sales tax applied, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially process a purchase of taxable items, you make sure the needed settings have been specified and entities have been created, as summarized in the following checklist. 

 Form Tasks to Perform 

 Taxes (TX205000) Make sure that each inclusive document-level sales tax your company intends to use have been created as described in Invoices with Inclusive Sales Taxes: Implementation Activity. 

 Tax Preferences (TX103000) Make sure that the tax rounding gain and loss accounts have been defined; the system will post tax rounding gains and losses that may occur when posting tax amounts to these accounts. 

 Stock Items (IN202500) Make sure that the needed stock items have been configured. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing purchases with an inclusive sales tax by specifying additional settings as follows: 

- On the **Posting Settings** tab of the _General Ledger Preferences_ (GL102000) form, specify the following     general ledger settings: 

- To cause GL batches to be immediately posted aer they are released, select the **Automatically Post on**     **Release** check box. 

- Clear the **Generate Consolidated Batches** check box to cause every AP transaction you enter to     be posted as an individual batch to the general ledger. (When this check box is selected, the system     consolidates into a single batch all transactions in the same currency posted to the same period for all     documents being released.) 

- In the **Rounding Settings** section, specify a rounding limit in the **Rounding Limit** box. This setting     causes the system to post any discrepancy between the document-level tax and the total of tax amount     of each document line, which is under the specified value to a special account. 

- On the **General Settings** tab of the _Accounts Payable Preferences_ (AP101000) form, specify the following     accounts payable preferences: 

- To give AP bills the _On Hold_ status when they are created, select the **Hold Documents on Entry** check     box in the **Data Entry Settings** section. 


<!-- PAGE_BREAK -->
 Taxes | 161 

- Select the **Require Vendor Reference** check box in the **Data Entry Settings** section, if you want users     to enter a payment reference number in the **Vendor Ref.** box when creating an AP bill on the _Bills and_     _Adjustments_ (AP301000) form. 

- Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.     This setting causes AP bills to be automatically posted to the general ledger once they are released. 

- On the _Tax Preferences_ (TX103000) form, specify the following tax settings: 

- In the **Tax Rounding Gain Account** box, an account where the system will post amounts resulting from     tax rounding gains 

- In the **Tax Rounding Loss Account** box, an account where the system will post amounts resulting from     tax rounding losses 

#### Testing of Settings 

 To make sure that all settings are configured correctly, we recommend that you process a purchase with an inclusive sales tax by performing instructions similar to those described in Purchases with Inclusive Sales Taxes: Process Activity. 

### Purchases with Sales Taxes: Implementation Checklist 

 To ensure that the system is configured properly for creating an AP bill with a sales tax applied automatically, make sure that the criteria listed in the table have been met in the system as described. 

 Form Tasks to Perform Notes 

 Taxes (TX205000) You should create the sales tax that your company uses. The settings for the tax include the tax rate, the tax calculation method, the tax validity period (if any), and other required parameters. 

 For details, see Sales Taxes: To Configure a Sales Tax for Use in AP. 

 Tax Zones (TX206000) You should create all needed tax zones and include the taxes applied in the corresponding location in each tax zone. You then associate an appropriate tax zone with each of your vendors according to their locations. 

 For details, see Tax Zones and Categories: To Review Tax Categories and Create a Tax Zone for Sales Taxes. 

 Tax Categories (TX205500) You should create the needed tax categories for all goods or services (which are represented as stock items and non-stock items in Acumatica ERP) that your company buys. For each tax category, you should add all taxes that are applied to the corresponding category of goods and services in all geographical locations where your company conducts business. 

 For details, see Tax Zones and Categories: To Review Tax Categories and Create a Tax Zone for Sales Taxes. 

 Vendors (AP303000) For each tax agency to which you will submit tax reports, you should create a vendor account with the Vendor is Tax Agency check box selected. 

 For details, see Tax Agency: To Set Up a Tax Agency for Sales Taxes. 


<!-- PAGE_BREAK -->
 Taxes | 162 

 Form Tasks to Perform Notes 

 Stock Items (IN202500), Non-Stock Items (IN202000) 

 To calculate tax amounts in the documents in which you specify inventory IDs, you should create stock items (for goods) and non-stock items (for services) and associate each item with the appropriate tax category. 

 Vendors (AP303000) You should create needed vendors in the Accounts Payable subledger if they don't already exist. Depending on the geographical location of the purchase transaction, different taxes can be applied to the document. To define which taxes are applied in the location of your vendor, you should assign the appropriate tax zone to each new or existing vendor. 

#### Other Settings That Affect the Workflow 

 The following settings and entities should be specified and defined, respectively: 

- The following general ledger settings should be specified on the **Posting Settings** tab of the _General Ledger_     _Preferences_ (GL102000) form: 

- Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches     to be immediately posted aer they are released. 

- Clear the **Generate Consolidated Batches** check box to cause every AP transaction you enter to     be posted as an individual batch to the general ledger. (When this check box is selected, the system     consolidates into a single batch all transactions in the same currency posted to the same period for all     documents being released.) 

- The following accounts payable settings should be specified on the **General Settings** tab of the _Accounts_     _Payable Preferences_ (AP101000) form: 

- Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives     the created AP bills the _On Hold_ status. 

- Clear the **Require Vendor Reference** check box in the **Data Entry Settings** section. This setting means     that you do not have to enter a payment reference number in the **Vendor Ref.** box when creating an AP     bill on the _Bills and Adjustments_ (AP301000) form. 

- Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.     This setting causes AP bills to be automatically posted to the general ledger once they are released. 

### Purchases with Use Taxes: Implementation Checklist 

 To ensure that the system is configured properly for creating an AP bill with a use tax applied automatically, make sure that the criteria listed in the table have been met in the system as described. 

 Form Criteria to Check Notes 

 Taxes (TX205000) You should create the use tax to be applied to your documents. The settings for the tax include the tax rate, the tax calculation method, the tax validity period (if any), and other required parameters. 

 For details, see Use Taxes: Implementation Activity. 


<!-- PAGE_BREAK -->
 Taxes | 163 

 Form Criteria to Check Notes 

 Tax Zones (TX206000) You should create all needed tax zones and include the taxes applied in the corresponding location in each tax zone. You then associate an appropriate tax zone with each of your vendors according to their locations. 

 For details, see Use Taxes: Implementation Activity. 

 Tax Categories (TX205500) You should create the needed tax categories for all goods or services (which are represented as stock items and non-stock items in Acumatica ERP) that your company buys. For each tax category, you should add all taxes that are applied to the corresponding category of goods and services in all geographical locations where your company conducts business. 

 For details, see Use Taxes: Implementation Activity. 

 Vendors (AP303000) For each tax agency to which you will submit tax reports, you should create a vendor account with the Vendor is Tax Agency check box selected. 

 For details, see Tax Agency: To Set Up a Tax Agency for Sales Taxes. 

 Stock Items (IN202500), Non-Stock Items (IN202000) 

 To calculate tax amounts in the documents in which you specify inventory IDs, you should create stock items (for goods) and non-stock items (for services) and associate each item with the appropriate tax category. 

 Vendors (AP303000) You should create needed vendors in the accounts payable subledger if they don't already exist. Depending on the geographical location of the purchase transaction, you must assign an appropriate tax zone to the vendor. 

#### Settings That Affect the Workflow 

 The following settings and entities should be specified and defined, respectively: 

- The following general ledger settings should be specified on the **Posting Settings** tab of the _General Ledger_     _Preferences_ (GL102000) form: 

- Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches     to be immediately posted aer they are released. 

- Clear the **Generate Consolidated Batches** check box to cause every AP transaction you enter to     be posted as an individual batch to the general ledger. (When this check box is selected, the system     consolidates into a single batch all transactions in the same currency posted to the same period for all     documents being released.) 

- The following accounts payable settings should be specified on the **General Settings** tab of the _Accounts_     _Payable Preferences_ (AP101000) form: 

- Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives     the created AP bills the _On Hold_ status. 


<!-- PAGE_BREAK -->
 Taxes | 164 

- Clear the **Require Vendor Reference** check box in the **Data Entry Settings** section. This setting means     that you do not have to enter a payment reference number in the **Vendor Ref.** box when creating an AP     bill on the _Bills and Adjustments_ (AP301000) form. 

- Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.     This setting causes AP bills to be automatically posted to the general ledger once they are released. With these settings specified and entities defined, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions. 

### Sales Tax Adjustments: Implementation Checklist 

 To ensure that the system is configured properly for making a tax adjustment to a tax report, make sure that the criteria listed in the table have been met in the system as described. 

 Form Criteria to Check Notes 

 Vendors (AP303000) For each tax agency to which you will submit tax reports, you should create a vendor account with the Vendor is Tax Agency check box selected. 

 For details, see Tax Agency: To Set Up a Tax Agency for Sales Taxes. 

 Tax Preferences (TX103000) Make sure that a numbering sequence has been specified for Adjust Input and Adjust Output documents. You can select the predefined numbering sequence ( TXADJUST ) or create a new one for tax adjustments on the Numbering Sequences (CS201010) form. 

 Reporting Settings (TX205100) Make sure that the tax report is properly and fully configured for the particular tax agency. 

 For details, see Tax Report Configuration: To Create a Tax Report for Sales Taxes. 

 Release Tax Report (TX502000) Make sure that a tax report for a specified tax period has been prepared. 

 For details, see Preparing a Tax Report for Sales Taxes. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you create a tax adjustment by performing instructions similar to those described in Sales Tax Adjustments: Process Activity. 

### Tax Report Preparation: Implementation Checklist 

 To ensure that the system is configured properly for preparing a tax report, make sure that the criteria listed in the table have been met in the system as described. 


<!-- PAGE_BREAK -->
 Taxes | 165 

 Form Criteria to Check Notes 

 Vendors (AP303000) For each tax agency to which you will submit tax reports, you should create a vendor account with the Vendor is Tax Agency check box selected. 

 For details, see Tax Agency: To Set Up a Tax Agency for Sales Taxes. 

 Reporting Settings (TX205100) Make sure that the tax report is properly and fully configured for the particular tax agency. 

 For details, see Tax Report Configuration: To Create a Tax Report for Sales Taxes. 

### Release of Sales Tax Report: Implementation Checklist 

 To ensure that the system is configured properly for releasing a tax report, make sure that the criteria listed in the table have been met in the system as described. 

 Form Criteria to Check Notes 

 Vendors (AP303000) For each tax agency to which you will submit tax reports, you should create a vendor account with the Vendor is Tax Agency check box selected. 

 For details, see Tax Agency: To Set Up a Tax Agency for Sales Taxes. 

 Reporting Settings (TX205100) 

 Make sure that the tax report is properly and fully configured for the particular tax agency. 

 For details, see Tax Report Configuration: To Create a Tax Report for Sales Taxes. 

 Release Tax Report (TX502000) 

 Make sure that a tax report for a specified tax period has been prepared and ready for release. 

 For details, see Preparing a Tax Report for Sales Taxes. 

### Taxes Included in the Cost of Items: Implementation Checklist 

 To ensure that the system is configured properly for including taxes in the cost of items, make sure that the criteria listed in the following table have been met in the system as described. 

 Form Criteria to Check Notes 

 Taxes (TX205000) In a tax that will be included in the cost of purchased items, the Use Tax Expense Account check box is cleared on the GL Accounts tab. 

 For details on configuring taxes of different types, see Sales Taxes: To Configure a Sales Tax for Use in AP , Use Taxes: Implementation Activity , and Value-Added Taxes: To Create a Statistical VAT and Inclusive VATs. 

 Reason Codes (CS211000) The reason code of the Adjustment type that will be used for tax-related inventory adjustments has been defined in the system. 

 For details, see Reason Codes: Implementation Activity. 


<!-- PAGE_BREAK -->
 Taxes | 166 

 Form Criteria to Check Notes 

 Purchase Orders Preferences (PO101000) 

 The reason code of the Adjustment type that will be used for tax-related inventory adjustments has been specified in the Tax Reason Code box. 

### Voiding of a Sales Tax Report: Implementation Checklist 

 To ensure that the system is configured properly for voiding a tax report, make sure that the criteria listed in the table have been met in the system as described. 

 Form Criteria to Check Notes 

 Vendors (AP303000) For each tax agency to which you will submit tax reports, you should create a vendor account with the Vendor is Tax Agency check box selected. 

 For details, see Tax Agency: To Set Up a Tax Agency for Sales Taxes. 

 Reporting Settings (TX205100) 

 Make sure that the tax report is properly and fully configured for the particular tax agency. 

 For details, see Tax Report Configuration: To Create a Tax Report for Sales Taxes. 

 Release Tax Report (TX502000) 

 Make sure that a tax report for a specified tax period has been prepared. 

 For details, see Preparing a Tax Report for Sales Taxes. 


