## Implementation Checklists 

# Construction Edition 

# 2025 R1 


<!-- PAGE_BREAK -->
 Contents | 2 

## Contents 

 Copyright...............................................................................................................................................5 

 Acumatica ERP Construction Edition........................................................................................................6 

 Accounts Payable....................................................................................................................................7 

 AP Bills: Implementation Checklist.................................................................................................................. 7 

 AP Bill Payments: Implementation Checklist...................................................................................................8 

 AP Documents from PDFs: Implementation Checklist.................................................................................... 9 

 Bill Prepayments: Implementation Checklist.................................................................................................10 

 Debit and Credit Adjustments: Implementation Checklist............................................................................11 

 Interbranch Bills Without Balancing: Implementation Checklist..................................................................12 

 Interbranch Bills with Balancing: Implementation Checklist........................................................................13 

 Check Reprinting: Implementation Checklist................................................................................................ 15 

 Multiple Bill Payments: Implementation Checklist........................................................................................16 

 Payments for a Shared Vendor: Implementation Checklist.......................................................................... 17 

 Partial Payments: Implementation Checklist.................................................................................................18 

 Voiding Payments: Implementation Checklist............................................................................................... 19 

 Payments with a Corporate Card: Implementation Checklist.......................................................................20 

 Accounts Receivable..............................................................................................................................21 

 AR Invoices: Implementation Checklist..........................................................................................................21 

 AR Invoice Correction: Implementation Checklist......................................................................................... 22 

 Auto-Applying Payments: Implementation Checklist....................................................................................23 

 Refunds: Implementation Checklist............................................................................................................... 24 

 Interbranch Invoices with Balancing: Implementation Checklist................................................................. 24 

 Interbranch Invoices Without Balancing: Implementation Checklist........................................................... 26 

 Intercompany Sales: Implementation Checklist............................................................................................27 

 Invoice Payments: Implementation Checklist................................................................................................29 

 Invoice Prepayments: Implementation Checklist.......................................................................................... 30 

 Invoice with Combined Subaccounts: Implementation Checklist................................................................ 30 

 Payments with Write-Offs: Implementation Checklist...................................................................................32 

 Basic Company Configuration................................................................................................................34 

 Preparing an Instance: Implementation Checklist........................................................................................ 34 

 Company Without Branches: Implementation Checklist.............................................................................. 34 

 Company with Branches that Do Not Require Balancing: Implementation Checklist................................. 37 

 Company with Branches that Require Balancing: Implementation Checklist............................................. 40 

 Customers and Vendors.........................................................................................................................44 


<!-- PAGE_BREAK -->
 Contents | 3 

 Customer Statements: Implementation Checklist.........................................................................................44 

 Customer Visibility: Implementation Checklist..............................................................................................45 

 On-Demand Statements: Implementation Checklist.....................................................................................46 

 Regenerating Statements: Implementation Checklist...................................................................................47 

 Vendor Visibility: Implementation Checklist.................................................................................................. 48 

**General Ledger..................................................................................................................................... 50** 

 Adjusting Transactions: Implementation Checklist....................................................................................... 50 

 Allocation Rules: Implementation Checklist.................................................................................................. 50 

 GL Transactions: Implementation Checklist.................................................................................................. 51 

 Interbranch Account Mapping: Implementation Checklist........................................................................... 52 

 Recurring Transactions: Implementation Checklist.......................................................................................52 

 Reversing Transactions: Implementation Checklist...................................................................................... 53 

 Running of Allocations: Implementation Checklist....................................................................................... 54 

 Splitting Transactions: Implementation Checklist.........................................................................................55 

 Transactions with Subaccounts: Implementation Checklist......................................................................... 56 

**Financial Periods.................................................................................................................................. 57** 

 Financial Calendar Generation: Implementation Checklist.......................................................................... 57 

 Financial Periods: Implementation Checklist................................................................................................ 57 

 Opening Financial Periods: Implementation Checklist................................................................................. 58 

 Closing Financial Periods: Implementation Checklist................................................................................... 58 

**Project Accounting................................................................................................................................60** 

 Committed Costs: Implementation Checklist................................................................................................ 60 

 Change Requests: Implementation Checklist................................................................................................ 62 

 Employee Time Billing: Implementation Checklist....................................................................................... 64 

 Expense Receipts with Corporate Cards: Implementation Checklist............................................................65 

 Expense Returns to Corporate Cards: Implementation Checklist.................................................................66 

 Grouping Invoices: Implementation Checklist...............................................................................................67 

 Multicurrency Projects: Implementation Checklist....................................................................................... 68 

 Overhead in the Project Budget: Implementation Checklist........................................................................ 69 

 Pro Forma Invoices: Implementation Checklist.............................................................................................70 

 Project Budget: Implementation Checklist.................................................................................................... 71 

 Project Budget Forecasts: Implementation Checklist................................................................................... 73 

 Project Expense Reclassification: Implementation Checklist....................................................................... 74 

 Project Inventory Tracking: Implementation Checklist.................................................................................75 

 Project Inventory Tracking by Warehouse Location: Implementation Checklist......................................... 77 

 Project Quotes: Implementation Checklist.................................................................................................... 79 


<!-- PAGE_BREAK -->
 Contents | 4 

 Project Templates and Common Tasks: Implementation Checklist............................................................. 81 

 Project Transactions: Implementation Checklist...........................................................................................81 

 Purchases to the Project Site: Implementation Checklist.............................................................................82 

 Purchases to the Project Site with a Receipt: Implementation Checklist.................................................... 85 

 Purchasing Services for Projects: Implementation Checklist....................................................................... 87 

 Single-Tier Change Management: Implementation Checklist...................................................................... 88 

 Time Tracking Configuration: Implementation Checklist............................................................................. 90 

 Transaction Reclassification: Implementation Checklist.............................................................................. 92 

 Vendor Payments for a Project: Implementation Checklist.......................................................................... 92 

 WIP Labor Costs in Cost-Plus Projects: Implementation Checklist...............................................................94 

 WIP Labor Costs in Fixed-Price Projects: Implementation Checklist............................................................ 95 

**Construction........................................................................................................................................ 97** 

 AP Bills with Retainage: Implementation Checklist.......................................................................................97 

 AR Invoices with Retainage: Implementation Checklist................................................................................ 98 

 Budget Forecasts: Implementation Checklist.............................................................................................. 100 

 Compliance Documents: Implementation Checklist................................................................................... 100 

 Construction Project Budget: Implementation Checklist............................................................................101 

 Correction of a Bill for a Subcontract: Implementation Checklist.............................................................. 102 

 Daily Field Reports: Implementation Checklist............................................................................................103 

 Drawing Logs: Implementation Checklist.................................................................................................... 105 

 Joint Payments: Implementation Checklist................................................................................................. 106 

 Lien Waivers: Implementation Checklist...................................................................................................... 107 

 Photo Logs: Implementation Checklist........................................................................................................ 109 

 Pro Forma Invoice Correction: Implementation Checklist.......................................................................... 110 

 Project Cost Projections: Implementation Checklist...................................................................................111 

 Purchases with a Sales Tax: Implementation Checklist.............................................................................. 113 

 Retainage with a Cap: Implementation Checklist........................................................................................115 

 Requests for Information: Implementation Checklist................................................................................. 116 

 Subcontracts: Implementation Checklist..................................................................................................... 117 

 Submittals: Implementation Checklist......................................................................................................... 118 

 Unit Tracking in Projects: Implementation Checklist.................................................................................. 119 


<!-- PAGE_BREAK -->
 Copyright | 5 

## Copyright 

**©** (^) **2025 Acumatica, Inc. ALL RIGHTS RESERVED.** No part of this document may be reproduced, copied, or transmitted without the express prior consent of Acumatica, Inc. 3075 112th Avenue NE, Suite 200, Bellevue, WA 98004, USA 

#### Restricted Rights 

 The product is provided with restricted rights. Use, duplication, or disclosure by the United States Government is subject to restrictions as set forth in the applicable License and Services Agreement and in subparagraph (c)(1)(ii) of the Rights in Technical Data and Computer Soware clause at DFARS 252.227-7013 or subparagraphs (c)(1) and (c)(2) of the Commercial Computer Soware-Restricted Rights at 48 CFR 52.227-19, as applicable. 

#### Disclaimer 

 Acumatica, Inc. makes no representations or warranties with respect to the contents or use of this document, and specifically disclaims any express or implied warranties of merchantability or fitness for any particular purpose. Further, Acumatica, Inc. reserves the right to revise this document and make changes in its content at any time, without obligation to notify any person or entity of such revisions or changes. 

#### Trademarks 

 Acumatica is a registered trademark of Acumatica, Inc. HubSpot is a registered trademark of HubSpot, Inc. Microso Exchange and Microso Exchange Server are registered trademarks of Microso Corporation. All other product names and services herein are trademarks or service marks of their respective companies. 

 Soware Version: 2025 R1 

 Last Updated: 06/01/2025 


<!-- PAGE_BREAK -->
 Acumatica ERP Construction Edition | 6 

## Acumatica ERP Construction Edition 

 You can refer to this guide when configuring business processes in Acumatica ERP Construction Edition. Each chapter of this guide is focused on the implementation of a particular functional area, and includes the implementation checklists that you use to make sure that the system is configured properly for performing particular business processes. 

 The checklists within each part of the guide are grouped by functional areas and are sorted in an alphabetical order. 

#### Functional Areas 

- _Accounts Payable_ 

- _Accounts Receivable_ 

- _Basic Company Configuration_ 

- _Customers and Vendors_ 

- _General Ledger_ 

- _Financial Periods_ 

- _Project Accounting_ 

- _Construction_ 


<!-- PAGE_BREAK -->
 Accounts Payable | 7 

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
 Accounts Payable | 8 

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
 Accounts Payable | 9 

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
 Accounts Payable | 10 

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
 Accounts Payable | 11 

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
 Accounts Payable | 12 

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
 Accounts Payable | 13 

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
 Accounts Payable | 14 

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
 Accounts Payable | 15 

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
 Accounts Payable | 16 

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
 Accounts Payable | 17 

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
 Accounts Payable | 18 

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
 Accounts Payable | 19 

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
 Accounts Payable | 20 

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
 Accounts Receivable | 21 

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
 Accounts Receivable | 22 

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
 Accounts Receivable | 23 

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
 Accounts Receivable | 24 

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
 Accounts Receivable | 25 

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
 Accounts Receivable | 26 

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
 Accounts Receivable | 27 

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
 Accounts Receivable | 28 

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
 Accounts Receivable | 29 

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
 Accounts Receivable | 30 

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
 Accounts Receivable | 31 

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
 Accounts Receivable | 32 

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
 Accounts Receivable | 33 

 consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.) 

- On the **General Settings** tab of the _Accounts Receivable Preferences_ (AR101000) form, do the following: 

- Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives     the created AR invoices and credit memos the _On Hold_ status. 

- Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.     This setting indicates that AR invoices and credit memos will be automatically posted to the general     ledger once they are released. 

- Clear the **Require Payment Reference on Entry** check box in the **Data Entry Settings** section. With this     check box cleared, you do not have to fill in payment reference information in the **Payment Ref.** box on     the _Payments and Applications_ (AR302000) form. 

With these settings specified, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions. 


<!-- PAGE_BREAK -->
 Basic Company Configuration | 34 

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
 Basic Company Configuration | 35 

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
 Basic Company Configuration | 36 

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
 Basic Company Configuration | 37 

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
 Basic Company Configuration | 38 

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
 Basic Company Configuration | 39 

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
 Basic Company Configuration | 40 

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
 Basic Company Configuration | 41 

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
 Basic Company Configuration | 42 

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
 Basic Company Configuration | 43 

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
 Customers and Vendors | 44 

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
 Customers and Vendors | 45 

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
 Customers and Vendors | 46 

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
 Customers and Vendors | 47 

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
 Customers and Vendors | 48 

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
 Customers and Vendors | 49 

 Form Criteria to Check 

 Vendors (AP303000) Be sure that the vendor accounts have been defined for the vendors whose visibility you want to restrict. 

 Branches (CS102000) Make sure that for each branch to which the visibility of any vendors should be limited, the appropriate role associated with the branch is specified in the Access Role box ( Configuration Settings section) on the Branch Details tab. 

 Companies (CS101500) Make sure that for each company to which the visibility of any vendor should be limited, the appropriate role associated with the company is specified in the Access Role box ( Configuration Settings section) on the Company Details tab. 

 Users (SM201010) or User Roles (SM201005) Make sure that the needed users have been assigned to the roles specified for branches and companies. For details, see User Roles: General Information. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in Vendor Visibility: To Restrict Visibility to a Branch and Vendor Visibility: To Restrict Visibility to a New Company. 


<!-- PAGE_BREAK -->
 General Ledger | 50 

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
 General Ledger | 51 

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
 General Ledger | 52 

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
 General Ledger | 53 

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
 General Ledger | 54 

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
 General Ledger | 55 

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
 General Ledger | 56 

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
 Financial Periods | 57 

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
 Financial Periods | 58 

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
 Financial Periods | 59 

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
 Project Accounting | 60 

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
 Project Accounting | 61 

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
 Project Accounting | 62 

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
 Project Accounting | 63 

 Form Tasks to Perform 

 Enable/Disable Features (CS100000) form Make sure that the Project Accounting , Change Orders , and Change Requests features are enabled. 

 Projects Preferences (PM101000) form Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see Basic Project Configuration: General Information. 

 Also, make sure that the default markups are specified on the General tab ( Markups section). For more information about configuring markups, see Change RequestsTwo-Tier Change Management: Configuration of Markups. 

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
 Project Accounting | 64 

- By default, the _CHANGERST_ numbering sequence specifies that the change request identifier is an     automatically generated numeric string of six digits, such as _000001_. To change the format of change request     identifiers, adjust the _CHANGERST_ numbering sequence on the _Numbering Sequences_ (CS201010) form     or create a new auto-numbered numbering sequence and select this sequence in the **Change Request**     **Numbering Sequence** box on the **General** tab ( **Numbering Sequence** section) of the _Projects Preferences_     (PM101000) form. For more information on numbering sequences, see _Use of Numbering Sequences_. 

- To allow users to create change requests by using the **Create Change Request** command on the More menu     of the _Projects_ (PM301000) form, for the numbering sequence used for change requests, clear the **Manual**     **Numbering** check box in the Summary area of the _Numbering Sequences_ form. 

- To make it possible to create a change order for a change request selected on the _Change Requests_     (PM308500) form, select the change order class that supports the two-tier change management in the     **Default Change Order Class** box on the **General** tab ( **General Settings** section) of the _Projects Preferences_     form. That is, the selected change order class must have the **Two-Tier Change Management** check box     selected on the _Change Order Classes_ (PM203000) form. 

 Even if the default change order class selected in the project accounting preferences does not support the two-tier change management, you still can add a change request to a change order by creating a change order directly on the Change Orders (PM308000) form, selecting for this change order a change order class that supports the two-tier change management, and adding the change request to the change order. 

- To cause the system to automatically select a revenue account group for new estimation lines of a change     request if there are multiple account groups of the _Income_ type defined on the _Account Groups_ (PM201000)     form, specify the **Default Revenue Account Group** for account groups of the _Expense_ type in the Summary     area of the _Account Groups_ form. For more information on account groups, see _Account Groups: General_     _Information_. 

- To cause the system to automatically select the **Creates Commitment** check box for a new estimation     line with a particular account group selected on the _Change Requests_ form, which results in creation of a     commitment based on such an estimation line, select the **Creates Commitment** check box on the **Settings**     tab of the _Account Groups_ form for this account group. For example, it can be an account group to which you     map the expense accounts of the services that a subcontractor usually provides. With these settings specified, users in your company can process change requests quickly and accurately with a minimum of manual actions. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that you process a change request by performing instructions similar to those described in Change RequestsTwo-Tier Change Management: Process Activity. 

### Employee Time Billing: Implementation Checklist 

 To ensure that the system is configured properly for billing employee time spent for projects, make sure that the features and settings listed in the table are configured as described in the following table. 

 Form Validation of Settings 

 Multiple forms Make sure that all necessary settings of time tracking have been specified, as demonstrated in the examples of Time Tracking Configuration: To Configure Time Tracking in Projects and Time Tracking Configuration: To Track Time with Time Activities. 


<!-- PAGE_BREAK -->
 Project Accounting | 65 

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
 Project Accounting | 66 

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
 Project Accounting | 67 

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

### Grouping Invoices: Implementation Checklist 

 To ensure that the system is configured properly for project billing, make sure that the features and settings listed in the table are configured as described in the following table. 

 Form Validation of Settings 

 Enable/Disable Features (CS100000) form Make sure that the Project Accounting check box is selected. 


<!-- PAGE_BREAK -->
 Project Accounting | 68 

 Form Validation of Settings 

 Projects Preferences (PM101000) form Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see Basic Project Configuration: General Information. 

 Account Groups (PM201000) form Make sure that all necessary account groups are configured. 

 Billing Rules (PM207000) form Make sure that all necessary billing rules are configured. In each billing rule, make sure that the same Invoice Group is specified for the needed billing steps. 

 Projects (PM207000) form Make sure that the following conditions are met: 

- The status of the project is _Active_ , _Completed_ , or     _Suspended_. 

- The status of the project tasks of this project is _Ac-_     _tive_ or _Completed_. 

- A billing rule is assigned to each project task. 

#### Other Settings That Affect Workflow 

 You can configure a project task so that it is billed separately. To do this, select the Bill Separately check box on the Summary tab ( Billing and Allocation Settings section) of the Project Tasks (PM302000) form. 

### Multicurrency Projects: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for managing projects in different currencies, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you configure multicurrency projects, you make sure the needed features have been enabled and settings have been specified, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) Make sure that the Multicurrency Accounting and Multicurrency Projects features have been enabled. Optionally, you may also want to enable the Multiple Base Currencies feature. 

 Currency Management Preferences (CM101000) 

 Make sure that the minimum required settings have been specified, as described in Multicurrency Functionality: General Information. 

 Currencies (CM202000) Make sure that the foreign currencies in which you want to manage projects have been configured and activated for use in accounting. 


<!-- PAGE_BREAK -->
 Project Accounting | 69 

 Form Criteria to Check 

 Currency Rates (CM301000) Make sure that a currency rate for each currency to be used for projects has been defined, as described in Configuration of Rate Types and Rates: General Information. 

 Projects (PM301000) Specify the following project settings: 

- In the **Project Currency** box on the **Summary** tab, the project cur-     rency to be used for project budget and accounting operations 

- In the **Currency Rate Type** on the **Summary** tab, the rate type to     be used in the project 

- In the **Budget Currency Rate** box, the exchange rate from the     project currency to base currency 

- In the **Billing Currency** box on the **Summary** tab, the currency in     which the invoices will be prepared 

- If the project is related to a particular company branch, the branch     in the **Branch** box on the **Summary** tab 

### Overhead in the Project Budget: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for considering the project overhead, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially consider the project overhead, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Tasks to Perform 

 Enable/Disable Features (CS100000) form Make sure that the Project Accounting feature is enabled. 

 Projects Preferences (PM101000) form Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see Basic Project Configuration: General Information. 

 Account Groups (PM201000) form Make sure that an account group of the Expense type for the overhead has been created. For details on configuring account groups, see Account Groups: General Information. 

 Allocation Rules (PM207500) form Make sure that an allocation rule is configured as described in Overhead in the Project Budget: Implementation Activity. 


<!-- PAGE_BREAK -->
 Project Accounting | 70 

 Form Tasks to Perform 

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

 Billing Rules (PM207000) form Make sure that all needed billing rules have been configured in the system. For more information about billing rules, see Billing Rules: General Information. 

 Projects (PM301000) form Make sure that the project has been created and prepared for billing. For more details, see Project Creation and Processing: General Information. 

 For each project for which you want to turn on the pro forma invoice workflow, make sure that the Create Pro Forma on Billing check box is selected on the Summary tab ( Billing and Allocation Settings section). 


<!-- PAGE_BREAK -->
 Project Accounting | 71 

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

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you process a pro forma invoice by performing instructions similar to those described in Pro Forma Invoices: To Process a Pro Forma Invoice for a Project. 

### Project Budget: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for managing project budgets, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially manage project budgets, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 


<!-- PAGE_BREAK -->
 Project Accounting | 72 

**Form Tasks to Perform Notes** 

_Enable/Disable Features_ (CS100000) form 

 Make sure that the Project Accounting feature is enabled. 

_Projects Preferences_ (PM101000) form 

 Make sure that all necessary settings related to project accounting have been specified. For more information about the configuration steps that you have to perform before you can start accounting for projects, see Basic Project Configuration: General Information. 

 If you are going to use inventory items in the revenue budget of your projects, on the General tab, select Detailed in the Revenue Budget Update box. With this option selected, if a transaction has an inventory item specified and the revenue budget has no line with this item, the system creates a new budget line with this item. 

 With the Summary option selected (the default option), if such a line exists in the revenue budget, the system updates it with the empty item code ( N/A ) instead of the inventory item of the transaction. If no such line exists, the system creates a new budget line with the empty item code. 

 The system updates the cost budget similarly based on the option selected in the Cost Budget Update box on the General tab. 

_Account Groups_ (PM201000) form Make sure that all needed account groups have been configured. For more information about account groups, see _Account Groups: General Information_. 

_Non-Stock Items_ (IN202000) form Make sure that all needed labor items, non-stock items, and services have been defined. For more information, see _Labor Items: General Information_ , _Non-Stock Items: General Information_ , and _Service Items: General Information_ , respectively. 

 Make sure that Purchases is selected in the Post Cost to Expenses box on the Price/Cost tab; otherwise, the expenses related to the nonstock item will not be recorded to the cost budget of the applicable project. 


<!-- PAGE_BREAK -->
 Project Accounting | 73 

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
 Project Accounting | 74 

 Form Tasks to Perform 

 Enable/Disable Features (CS100000) form Make sure that the Project Accounting and Budget Forecast features are enabled. 

 Projects Preferences (PM101000) form Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see Basic Project Configuration: General Information. 

 Projects (PM301000) form Make sure that the project has been created, as described in Project Creation and Processing: General Information , the project budget is not locked, and the Change Order Workflow check box is cleared on the Summary tab ( Project Properties section). 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you create a project budget forecast by performing instructions similar to those described in Project Budget Forecasts: Process Activity. 

### Project Expense Reclassification: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for reclassifying project expenses. 

#### Implementation Checklist 

 We recommend that before you reclassify project expenses, you make sure the needed features have been enabled, and settings have been specified, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form Make sure that the Project Accounting feature is enabled. 

 Projects Preferences (PM101000) form Make sure that all necessary settings related to project accounting have been specified. For more information about the configuration steps that you have to perform before you can start accounting for projects, see Basic Project Configuration: General Information. 

 Accounts Payable Preferences (AP101000) Make sure that the Allow Bill Reclassification check box is selected. With this setting, the reclassification of bills can be performed in the system. 


<!-- PAGE_BREAK -->
 Project Accounting | 75 

 Form Criteria to Check 

 User Roles (SM201005) Make sure that each user that will perform bill reclassification is assigned at least one of the following predefined roles: Financial Supervisor or Project Accountant. 

#### Other Settings That Affect the Workflow 

 To cause the system to automatically post reversing batches generated by the system during the reclassification process, select the Automatically Post on Release check box on the General tab of the Accounts Payable Preferences (AP101000) form. This setting affects the workflow of expense reclassification in projects. 

### Project Inventory Tracking: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for tracking inventory for projects, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially start working with project inventory, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) Make sure that the following features are enabled: 

- _Inventory and Order Management_ 

- _Inventory_ 

- _Project Accounting_ 

- _Project-Specific Inventory_ 

 Projects Preferences (PM101000) Make sure that all necessary settings related to project accounting have been specified, as described in the Basic Project Configuration: General Information. 

 Account Groups (PM201000) form Make sure that all needed account groups have been configured. For more information about account groups, see Account Groups: General Information. 

 We do not recommend mapping the Inventory account (which is an account of the Asset type) to an account group of the Expense type. If you need to track stock items purchased for the project in the project cost budget, use the commitment tracking functionality. For more information, see Tracking Cost Commitments. 


<!-- PAGE_BREAK -->
 Project Accounting | 76 

 Form Criteria to Check 

 Stock Items (IN202500) form Make sure that all stock items have been defined. 

 For each stock item, you can specify the default source from which the item will be issued by selecting either Project Stock or Free Stock in the Default Inventory Source for Projects box on the Inventory Planning tab of the form. 

 For more information about stock items, see Stock Items: General Information. 

 The Summary tab of the Projects (PM301000) form Make sure that the necessary project and project tasks have been created. In the project settings, select the inventory tracking mode in the Inventory Tracking box on the Summary tab as follows: 

- Select _Track by Project Quantity and Cost_ if you need     to separate project inventory from free stock, re-     serve the items directly for the project, and track     project-specific item cost. 

- Select _Track by Project Quantity_ if you need to sep-     arate project inventory from free stock, reserve the     items directly for the project, and track item cost by     general cost calculation rules. Select the **Allow Issue from Free Stock** check box if you plan to use items that are not reserved for the project along with the project stock. 

 For more information on creating a project, see Project Creation and Processing: General Information. 

#### Disabling the Project-Specific Inventory Feature 

 If you need to disable the Project-Specific Inventory feature in a production system, you can do this on the Enable/ Disable Features (CS100000) form aer the following preparatory actions: 

1. Completing (or canceling) all the documents that include stock items stored in the project inventory: sales     orders and shipments, purchase orders and purchase receipts, and inventory transactions. 

2. Cleaning up the project inventory. To do this, you need to move the items reserved for projects to free stock     (that is, to the non-project code) or to projects linked to warehouse locations (that is, projects that have the     _Track by Location_ inventory tracking mode). 

 You can mass-transfer project stock to free stock on the Transfer Project Inventory to Free Stock (PM508000) form. For more information, see Project Inventory Tracking: Mass Processing. 

3. Assigning all existing projects the _Track by Location_ inventory tracking mode and linking them to particular     warehouse locations. 

 Once the feature is disabled, the system will continue tracking inventory for projects using the only Track by Location mode. For more information, see Project Inventory Tracking by Warehouse Location: General InformationPurchase of Materials and Services: Inventory Tracking by Warehouse Location. 


<!-- PAGE_BREAK -->
 Project Accounting | 77 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of sales and purchases of items for projects by specifying additional settings as follows: 

- To cause the system to automatically select a project task when a particular project is selected during the     creation of a purchase order, select the **Default** check box on the **Tasks** tab of the _Projects_ (PM301000) form     for one of the tasks of the project. 

- To cause the system to include non-stock lines of the _Service_ type in purchase receipts created from the     purchase orders of the _Normal_ type, select the **Process Service Lines from Normal Purchase Orders**     **via Purchase Receipt** check box on the **General** tab ( **Other** section) of the _Purchase Orders Preferences_     (PO101000) form. 

- To cause the system to track costs for the projects with the _Track by Project Quantity_ inventory tracking     mode by individual warehouse locations, select the **Cost Separately** check box for the needed warehouse     locations on the **Locations** tab of the _Warehouses_ (IN204000) form. 

### Project Inventory Tracking by Warehouse Location: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for tracking project inventory by location, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 Before you start working with a project and tracking project inventory by location, you should make sure that the project accounting functionality is configured and the project has the needed settings, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form Make sure that the Project Accounting feature is enabled. 

 Account Groups (PM201000) form Make sure that all needed account groups have been configured. For more information about account groups, see Account Groups: General Information. 

 Projects Preferences (PM101000) form Make sure that all necessary settings related to project accounting have been specified, as described in the Basic Project Configuration: General Information. 

 Projects (PM301000) Make sure that the necessary project and project tasks have been created. In the project settings, Track by Location needs to be selected in the Inventory Tracking box on the Summary tab. For more information on creating a project, see Project Creation and Processing: General Information. 


<!-- PAGE_BREAK -->
 Project Accounting | 78 

 Form Criteria to Check 

 Warehouses (IN204000) form Make sure that a separate location is created and associated with each project task for which you need to receive inventory items in a warehouse. (For a location associated with a project task, the Cost Separately check box is selected automatically.) 

 We also recommend that you specify a higher Pick Priority value for project locations than for other locations, to avoid issuing project materials for other projects or to customers outside of projects. 

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


<!-- PAGE_BREAK -->
 Project Accounting | 79 

 Form Tasks to Perform 

 Non-Stock Items (IN202000) form Make sure that all non-stock items have been defined, as described in Non-Stock Items: General Information. Also, make sure that the expense account of the items is mapped to the appropriate account group. 

 Make sure that Purchases is selected in the Post Cost to Expenses box on the Price/Cost tab; otherwise, the expenses related to the non-stock item will not be recorded to the cost budget of the applicable project. 

 Vendors (AP303000) form Make sure that all needed vendors have been defined in the system, as described in Vendors: General Information. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of sales and purchases of items for projects by specifying additional settings as follows: 

- To cause the system to automatically select a project task when a particular project is selected during the     creation of a purchase order, select the **Default** check box on the **Tasks** tab of the _Projects_ (PM301000) form     for one of the tasks of the project. 

- To cause the system to include non-stock lines of the _Service_ type in purchase receipts created from the     purchase orders of the _Normal_ type, select the **Process Service Lines from Normal Purchase Orders**     **via Purchase Receipt** check box on the **General** tab ( **Other** section) of the _Purchase Orders Preferences_     (PO101000) form. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that you perform instructions similar to those described in Project Inventory Tracking by Warehouse Location: To Purchase Materials and Services for a Project. 

### Project Quotes: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for the creation of project quotes and projects based on project quotes, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially create project quotes, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Tasks to Perform 

 Enable/Disable Features (CS100000) form Make sure that the Project Accounting and Project Quotes features are enabled. 


<!-- PAGE_BREAK -->
 Project Accounting | 80 

 Form Tasks to Perform 

 Projects Preferences (PM101000) form Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see Basic Project Configuration: General Information. 

 Project Templates (PM208000) form Make sure that all needed project templates have been configured. For more information about project templates, see Project Templates and Common Tasks: General Information. 

 Business Account Classes (CR208000) Make sure that business account classes with the necessary settings and attributes have been created, as described in Defining Business Account Classes. 

 Business Accounts (CR303000) Make sure that business accounts with the necessary settings and attributes have been created, as described in Creating Business Accounts. 

#### CRM Settings Checklist 

 If you want to use the functionality of opportunities to create project quotes, make sure that the needed features have been enabled and settings have been specified, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form Make sure that the Customer Management feature is enabled. 

 Customer Management Preferences (CR101000) form Make sure that all necessary settings related to customer management have been specified. 

 Opportunity Classes (CR209000) Make sure that opportunity classes with the necessary settings, attributes, and stages have been created, as described in Defining Opportunity Classes. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing project quotes by specifying additional settings as follows: 

- To change the format of project quote identifiers, adjust the _PMQUOTE_ numbering sequence on the     _Numbering Sequences_ (CS201010) form or create a new numbering sequence and select this sequence in     the **Quote Numbering Sequence** box on the **General** tab ( **Numbering Sequence** section) of the _Projects_     _Preferences_ (PM101000) form. Project quote identifiers must be assigned only automatically. For more     information on numbering sequences, see _Use of Numbering Sequences_.     By default, the _PMQUOTE_ numbering sequence specifies that the project quote identifier is an automatically     generated alphanumeric string that starts with the _PQ_ prefix and followed by six digits, such as _PQ000001_. 

- To cause the system to automatically select a project template on creation of project quotes, select the     project template in the **Default Quote Template** box on the **General** tab ( **Default Settings** section) of the     _Projects Preferences_ form. 

- To cause the system to automatically select the revenue account group for new estimation lines of a project     quote if there are multiple income account groups defined on the _Account Groups_ (PM201000) form, specify 


<!-- PAGE_BREAK -->
 Project Accounting | 81 

 the Default Revenue Account Group for expense account groups in the Summary area of the Account Groups form. For more information on account groups, see Account Groups: General Information. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you process a project quote by performing instructions similar to those described in Project Quotes: To Process a Project Quote Based on an OpportunityProject Quotes: To Create a Project Quote Based on an Opportunity. 

### Project Templates and Common Tasks: Implementation Checklist 

 To ensure that the system is configured properly for creating project templates and common tasks, make sure that the features and settings listed in the table are configured as described in the following table. 

 Form Task to Perform 

 Enable/Disable Features (CS100000) form Make sure that the Project Accounting check box is selected. 

 Projects Preferences (PM101000) form Make sure that all necessary settings of project accounting have been specified. 

 Account Groups (PM201000) form Make sure that all the necessary account groups have been configured. 

### Project Transactions: Implementation Checklist 

 The following sections provide details that you can use to ensure that the system is configured properly for processing project transactions, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially process project transactions, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Tasks to Perform 

 Projects Preferences (PM101000) form Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see Basic Project Configuration: General Information. 

 Account Groups (PM201000) form Make sure that all needed account groups have been configured and that all needed general ledger accounts are mapped to these groups. For more information about account groups, see Account Groups: General Information. 


<!-- PAGE_BREAK -->
 Project Accounting | 82 

 Form Tasks to Perform 

 Projects (PM301000) form Make sure that the project has been created. For more details, see Project Creation and Processing: General Information. 

 Non-Stock Items (IN202000) form Make sure that all needed labor items, non-stock items, and services have been defined. For more information about labor items, non-stock items, and services, see Labor Items: General Information , Non-Stock Items: General Information , and Service Items: General Information , respectively. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing project transactions by specifying additional settings as follows: 

- To change the format of project transaction identifiers, adjust the _PMTRAN_ numbering sequence on the     _Numbering Sequences_ (CS201010) form, or create a new numbering sequence and select this sequence     in the **Transaction Numbering Sequence** box on the **General** tab ( **Numbering Sequence** section) of     the _Projects Preferences_ (PM101000) form. For more information on numbering sequences, see _Use of_     _Numbering Sequences_. 

 Project transaction identifiers must be assigned only automatically. That is, the Manual Numbering check box must be cleared in the Summary area of the Numbering Sequences form for the numbering sequence used for project transactions. 

 By default, the PMTRAN numbering sequence specifies that the project transaction identifier is an automatically generated alphanumeric string that starts with the PM prefix and is followed by eight digits, such as PM00000001. 

- To cause the system to post every document you enter as an individual batch to the general ledger, clear     the **Generate Consolidated Batches** check box in the **Posting Settings** section of the _General Ledger_     _Preferences_ (GL102000) form. 

- To make the system automatically associate additional project transactions that are generated (such as     discounts or freight charges) with specific project tasks, map specific general ledger accounts to these     project tasks within the project in the **Default Task for GL Account** section on the **Defaults** tab of the     _Projects_ form. For more information, see _Default Project Tasks in Record Lines_. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you process a project transaction by performing instructions similar to those described in Project Transactions: Process Activity. 

### Purchases to the Project Site: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for the processing of purchases for projects with drop shipping to the project site and without a purchase receipt, and to understand (and change, if needed) the settings that affect the processing workflow. 


<!-- PAGE_BREAK -->
 Project Accounting | 83 

#### Implementation Checklist 

 Before you initially process a project-related purchase with drop shipping to a project site (and without receipt processing), you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form Make sure that the Inventory and Order Management , Inventory and Project Accounting features are enabled. 

 Multiple forms Make sure that all necessary settings related to order management have been specified, as described in Configuration of Order Management: Implementation Activity. 

 Vendors (AP303000) form Make sure that all needed vendors have been configured, as described in Vendors: Implementation Activity. 

 Stock Items (IN202500) form Make sure that the needed stock items have been configured, as described in Stock Items: Implementation Activity. 

 Non-Stock Items (IN202000) form Make sure that the needed non-stock items have been configured, as described in Non-Stock Items: Implementation Activity. 

#### Project Settings 

 Before you initially process a purchase for a project with drop shipping (and without receipt processing), you should make sure that the project accounting functionality is configured and the project has specific settings, as summarized in the following checklist. 

 Form Criteria to Check 

 Projects Preferences (PM101000) form Make sure that all necessary settings related to project accounting have been specified, as described in Basic Project Configuration: General Information. 

 Also, select the Internal Cost Commitment Tracking check box to track purchase orders as project cost commitments and to see committed values in the project cost budget. 


<!-- PAGE_BREAK -->
 Project Accounting | 84 

 Form Criteria to Check 

 Projects (PM301000) Make sure that the necessary projects and project tasks have been created, and that the following settings have been specified for the projects on the Defaults tab: 

- **Drop-Ship Receipt Processing** : _Skip Receipt Gener-_     _ation_     With this setting, items of any type added to a     purchase order of the _Project Drop-Ship_ type are     processed without a purchase receipt. 

- **Record Drop-Ship Expense** : _On Bill Release_ (insert-     ed automatically when you select _Skip Receipt Gen-_     _eration_ )     With this setting, purchase expenses will be record-     ed to the project on release of the AP bill. 

#### Other Settings That Affect the Workflow 

 You can affect the processing workflow by specifying additional settings as follows: 

- To change the format of project drop-ship order identifiers, adjust the predefined _POORDER_ numbering     sequence on the _Numbering Sequences_ (CS201010) form, or create a new numbering sequence and select     this sequence in the **Regular Order Numbering Sequence** box on the **General** tab of the _Purchase Orders_     _Preferences_ (SC101000) form. For more information on numbering sequences, see _Use of Numbering_     _Sequences_. 

 A user can create project drop-ship orders by clicking the Create Drop-Ship button on the Commitments tab of the Projects (PM301000) form only if the numbering sequence that is used for numbering project drop-ship orders is automatically numbered. 

- To create new projects so that the drop-ship purchases will be processed without receipts by default, select     _Generate Receipt_ in the **Drop-Ship Receipt Processing** box and _On Receipt Release_ in the **Record Drop-Ship**     **Expense** box on the _Projects Preferences_ (PM101000) form and in the settings of the project templates on     the _Project Templates_ (PM208000) form. 

- To reduce input errors when users enter orders, set up the validation of order totals by selecting the     **For Project Drop-Ship Orders** check box in the **Validate Total on Entry** section of the _Purchase Orders_     _Preferences_ (PO101000) form. 

- To cause the system to create accounts payable bills with the _Balanced_ status, clear the **Hold Documents**     **on Entry** check box on the **General** tab ( **Data Entry Settings** section) of the _Accounts Payable Preferences_     (AP101000) form. 

- To cause the system to automatically post general ledger batches generated during the processing of     purchase and accounts payable documents, select the **Automatically Post on Release** check box in the     **Posting Settings** section on the _General Ledger Preferences_ (GL102000) form. With these settings specified, users in your company can process purchases for projects quickly and accurately with a minimum of manual actions. 

#### Known Project Drop-Ship Limitations 

 The following limitations apply to the project drop-ship functionality: 

- A project drop-ship order cannot be created from a change order or from a sales order. 


<!-- PAGE_BREAK -->
 Project Accounting | 85 

- Landed costs cannot be applied to a project drop-ship order. 

### Purchases to the Project Site with a Receipt: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for the processing of purchases for projects with drop-shipping to the project site and with receipt processing, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 Before you initially process a project-related purchase to a project site with receipt processing, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form Make sure that the Inventory and Order Management , Inventory , and Project Accounting features are enabled. 

 Multiple forms Make sure that all necessary settings related to order management have been specified, as described in Configuration of Order Management: Implementation Activity. 

 Vendors (AP303000) form Make sure that all needed vendors have been configured, as described in Vendors: Implementation Activity. 

 Stock Items (IN202500) form Make sure that the needed stock items have been configured, as described in Stock Items: Implementation Activity. 

 Non-Stock Items (IN202000) form Make sure that the needed non-stock items have been configured, as described in Non-Stock Items: Implementation Activity. 

#### Project Settings 

 Before you initially process a purchase for a project with drop shipping and receipt processing, you should make sure that the project accounting functionality is configured and the project has specific settings, as summarized in the following checklist. 

 Form Criteria to Check 

 Projects Preferences (PM101000) form Make sure that all necessary settings related to project accounting have been specified, as described in Basic Project Configuration: General Information. 

 Also, select the Internal Cost Commitment Tracking check box to track purchase orders as project cost commitments and to see committed values in the project cost budget. 


<!-- PAGE_BREAK -->
 Project Accounting | 86 

 Form Criteria to Check 

 Projects (PM301000) Make sure that the necessary projects and project tasks have been created, and that the following settings have been specified for the projects on the Defaults tab: 

- **Drop-Ship Receipt Processing** : _Generate Receipt_     With this setting, the processing of a purchase or-     der of the _Project Drop-Ship_ type involves the pro-     cessing of a purchase receipt. 

- **Record Drop-Ship Expense** : _On Receipt Release_     With this setting, purchase expenses will be record-     ed to the project on release of the purchase receipt. 

#### Other Settings That Affect the Workflow 

 You can affect the processing workflow by specifying additional settings as follows: 

- To change the format of project drop-ship order identifiers, adjust the predefined _POORDER_ numbering     sequence on the _Numbering Sequences_ (CS201010) form, or create a new numbering sequence and select     this sequence in the **Regular Order Numbering Sequence** box on the **General** tab of the _Purchase Orders_     _Preferences_ (SC101000) form. For more information on numbering sequences, see _Use of Numbering_     _Sequences_. 

 A user can create project drop-ship orders by clicking the Create Drop-Ship button on the Commitments tab of the Projects (PM301000) form only if the numbering sequence that is used for numbering project drop-ship orders is automatically numbered. 

- To record expenses to the project budget on release of the accounts payable bill, select _On Bill Release_ in the     **Record Drop-Ship Expense** box of the _Projects_ (PM301000) form for the project. 

- To create new projects so that the drop-ship purchases will be processed with receipts by default, select     _Generate Receipt_ in the **Drop-Ship Receipt Processing** box and _On Receipt Release_ in the **Record Drop-Ship**     **Expense** box on the _Projects Preferences_ (PM101000) form and in the settings of the project templates on     the _Project Templates_ (PM208000) form. 

- To reduce input errors when users enter orders, set up the validation of order totals by selecting the     **For Project Drop-Ship Orders** check box in the **Validate Total on Entry** section of the _Purchase Orders_     _Preferences_ (PO101000) form. 

- To cause the system to create accounts payable bills with the _Balanced_ status, clear the **Hold Documents**     **on Entry** check box on the **General** tab ( **Data Entry Settings** section) of the _Accounts Payable Preferences_     (AP101000) form. 

- To cause the system to automatically post general ledger batches generated during the processing of     purchase and accounts payable documents, select the **Automatically Post on Release** check box in the     **Posting Settings** section on the _General Ledger Preferences_ (GL102000) form. With these settings specified, users in your company can process purchases on projects quickly and accurately with a minimum of manual actions. 

#### Known Project Drop-Ship Limitations 

 The following limitations apply to the project drop-ship functionality: 

- A project drop-ship order cannot be created from a change order or from a sales order. 

- Landed costs cannot be applied to a project drop-ship order. 


<!-- PAGE_BREAK -->
 Project Accounting | 87 

- The purchase price variance is always recorded in the bill transaction, regardless of the option that is     specified in the **Allocation Mode** box on the _Purchase Orders Preferences_ (PO101000) form. 

### Purchasing Services for Projects: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for processing purchases for projects with accounts payable bills, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially process purchases for projects with AP bills, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Tasks to Perform 

 Enable/Disable Features (CS100000) form Make sure that the Project Accounting feature is enabled. 

 Projects Preferences (PM101000) form Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see Basic Project Configuration: General Information. 

 Projects (PM301000) form Make sure that the project has been created, as described in Project Creation and Processing: General Information. 

 Non-Stock Items (IN202000) form Make sure that all needed labor items, non-stock items, and services have been defined. Make sure that the Require Receipt check box is cleared in the Item Defaults section on the General tab. 

 Make sure that Purchases is selected in the Post Cost to Expenses box on the Price/Cost tab; otherwise, the expenses related to the non-stock item will not be recorded to the cost budget of the applicable project. 

 For more information about labor items, non-stock items, and services, see Labor Items: General Information , Non-Stock Items: General Information , and Service Items: General Information , respectively. 


<!-- PAGE_BREAK -->
 Project Accounting | 88 

 Form Tasks to Perform 

 Account Groups (PM201000) form Make sure that all needed account groups have been configured. Also, make sure that the expense accounts of the inventory items specified in the Expense Account box on the GL Accounts tab of the Non-Stock Items form are mapped to the account groups. For more information about account groups, see Account Groups: General Information. 

 Vendors (AP303000) form Make sure that all needed vendors have been defined in the system, as described in Vendors: General Information. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing purchases for projects by specifying additional settings as follows: 

- To cause the system to automatically select a project task when a particular project is selected during the     creation of a bill, select the **Default** check box on the **Tasks** tab of the _Projects_ (PM301000) form for one of     the tasks of the project. 

- To cause the system to create accounts payable bills with the _Balanced_ status, clear the **Hold Documents**     **on Entry** check box on the **General** tab ( **Data Entry Settings** section) of the _Accounts Payable Preferences_     (AP101000) form. 

- To cause the system to automatically post general ledger batches generated during processing account     payable documents, select the **Automatically Post on Release** check box in the **Posting Settings** section     on the _General Ledger Preferences_ (GL102000) form. With these settings specified, users in your company can process purchases for projects with AP bills quickly and accurately with a minimum of manual actions. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that you perform instructions similar to those described in Purchasing Services for Projects: Process Activity. 

### Single-Tier Change Management: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for the processing of change orders, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially create change orders, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Tasks to Perform Notes 

 Enable/Disable Features (CS100000) form 

 Make sure that the Project Accounting and Change Orders features are enabled. 


<!-- PAGE_BREAK -->
 Project Accounting | 89 

 Form Tasks to Perform Notes 

 Projects Preferences (PM101000) form 

 Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see Basic Project Configuration: General Information. 

 Change Order Classes (PM203000) form 

 Make sure that all needed change order classes have been configured, as described in Change Orders for Commitments: To Create a Change Order Class. 

 Projects (PM301000) form Make sure that the project has been created, as described in Project Creation and Processing: General Information. 

 Also, make sure that the Change Order Workflow check box is selected on the Summary tab ( Project Properties section). 

 If the Internal Cost Commitment Tracking check box is selected on the General tab ( General Settings section) of the Projects Preferences (PM101000) form, and a project has related purchase orders, you can select the Change Order Workflow check box for the project if the project has no open related purchase order lines. That is, the status of the related purchase order lines of the project is only Completed , Closed , or Canceled. 

#### Checklist for Project Commitments 

 If you want to use the functionality of change orders to manage changes in commitments, make sure that all the needed features have been enabled and settings have been specified, as described in Committed Costs: Implementation Checklist. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of managing changes in projects by specifying additional settings as follows: 

- To change the format of change order identifiers, adjust the _CHANGEORD_ numbering sequence on the     _Numbering Sequences_ (CS201010) form or create a new auto-numbered sequence and select this sequence     in the **Change Order Numbering Sequence** box on the **General** tab ( **Numbering Sequence** section) of     the _Projects Preferences_ (PM101000) form. For more information on numbering sequences, see _Use of_     _Numbering Sequences_. 

- To allow users to create change orders by using the **Create Change Order** command on the More menu     of the _Projects_ (PM301000) form, clear the **Manual Numbering** check box in the Summary area of the     _Numbering Sequences_ form for the numbering sequence used for change orders. 

- To cause the system to automatically select a change order class on creation of change orders, select the     change order class in the **Default Change Order Class** box on the **General** tab ( **General Settings** section) of     the _Projects Preferences_ form. With these settings specified, users in your company can process change orders quickly and accurately with a minimum of manual actions. 


<!-- PAGE_BREAK -->
 Project Accounting | 90 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that you process a change order by performing instructions similar to those described in Single-Tier Change Management: To Track Changes to the Project Budget and Change Orders for Commitments: Process Activity. 

### Time Tracking Configuration: Implementation Checklist 

 The following sections provide details you can use to ensure that the time tracking functionality in the system is configured properly to be used in accounting for projects. 

#### Prerequisite Configuration 

 To ensure that the prerequisite configuration has been implemented properly, make sure that the necessary entities have been defined,and settings have been specified, as described in the following checklist. 

 Form Criteria to Check 

 Multiple forms The minimum company settings have been specified, as described in Company Without Branches: General Information. 

 Earning Types (EP102000) Additional earning types, if needed, have been defined in addition to the predefined earning types. Also, for the earning types that relate to the employee time to be billed within the project, the Billable check box will be selected. For information on earning types, see Employee Time Entry: Time Activities. 

 Employees (EP203000) All employees for whom time will be tracked have been defined. For details, see Employee Settings. 

 Activity Types (CR102000) form Activity types have been defined, if needed, in addition to those that are predefined in the system 

#### Configuration of Reporting Time with Time Cards 

 To ensure that the basic time reporting configuration has been implemented properly and the employees will be able to log time spent on projects in time cards, make sure that the necessary features have been enabled, entities have been defined, and settings have been specified, as described in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) The Advanced Financials and Projects features are enabled. 


<!-- PAGE_BREAK -->
 Project Accounting | 91 

 Form Criteria to Check 

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

- To cause the system to require a particular employee to enter time cards, select the **Time Card is Required**     check box on the _Employees_ (EP203000) form. If the reporting of time with time activities is configured, the     selection of this check box means that time activities can be released only within a time card. 

- To cause the system to post project transactions that have been generated on release of time activities to     the off-balance account group, select _Post PM to Off-Balance Account Group_ in the **Posting Option for Non-**     **Payroll Employee** box, and specify the account group of the _Off-Balance Type_ in the **Off-Balance Account**     **Group** on the _Time and Expenses Preferences_ (EP101000) form. 

- To cause project transactions to be automatically generated and released on release of time cards, select     the **Automatically Release PM Documents** on the _Time and Expenses Preferences_ (EP101000) form. 


<!-- PAGE_BREAK -->
 Project Accounting | 92 

- To associate an earning type with a particular project or project task, on the _Earning Types_ (EP102000) form,     for an earning type, specify the project or project task in the **Default Project Code** box and **Default Task**     box, respectively. 

- To copy notes and attached documents from time cards to generated project transactions, select the     **Copy Files to PM Documents** and **Copy Notes to PM Documents** check boxes on the _Time and Expenses_     _Preferences_ form. 

### Transaction Reclassification: Implementation Checklist 

 Before users begin reclassifying GL batches related to projects, you must make sure that the system has been configured properly, as described in the following table. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form Make sure the Standard Financials and Project Accounting features have been enabled. 

 Projects Preferences (PM101000) form Make sure that all necessary settings related to project accounting have been specified. For more information about the configuration steps that you have to perform before you can start accounting for projects, see Basic Project Configuration: General Information. 

 User Roles (SM201005) Make sure that each user that will perform reclassification of general ledger transactions related to projects is assigned the Project Accountant role. 

#### Settings That Can Affect the Processing Workflow 

 The settings on the General Ledger Preferences (GL102000) form can affect the processing workflow as follows: 

- If the **Hold Batches on Entry** check box is selected, a batch is saved with the _On Hold_ status by default. If     the batch is on hold, you should click **Remove Hold** on the toolbar of the _Journal Transactions_ (GL301000)     form for the batch so that you can process it further. If the check box is cleared, the batch is saved with the     _Balanced_ status. 

- If the **Validate Batch Control Totals on Entry** check box is selected, you have to enter the batch control     total before you save the batch on the _Journal Transactions_ form. If this check box is cleared and the status of     the batch is _Balanced_ , the system automatically validates the batch. 

- If the **Automatically Post on Release** check box is selected, the system posts batches on release. If this     check box is cleared, you have to post the batches aer release. 

### Vendor Payments for a Project: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for paying AP bills for a project, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you start preparing payments for AP bills, you make sure the needed settings have been specified and entities have been created, as summarized in the following checklist. 


<!-- PAGE_BREAK -->
 Project Accounting | 93 

 Form Criteria to Check 

 Accounts Payable Preferences (AP101000) Make sure that the accounts payable settings have been configured as described in Accounts Payable: To Specify Accounts Payable Preferences. 

 Vendors (AR303000) Verify the existence of the vendor accounts for the vendors whose bills you will pay. For details, see Vendors: Implementation Activity. 

 Cash Accounts (CA202000) Make sure that the cash account to be used in the payments has been configured as described in Cash Management: To Create Cash Accounts. 

 Payment Methods (CA204000) Make sure that the payment method you will use has been configured as described in Cash Management: To Create Cash Accounts. 

 Projects (PM301000) Make sure that the necessary project (that is, the project for which the vendor performed the billed work) has been created and necessary project tasks of this project are active. 

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


<!-- PAGE_BREAK -->
 Project Accounting | 94 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in Vendor Payments for a Project: To Process a Payment for Multiple Bills and Vendor Payments for a Project: To Process a Payment of Bill Lines. 

### WIP Labor Costs in Cost-Plus Projects: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for billing a cost-plus projects with WIP costs, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially bill a cost-plus projects with WIP costs, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Tasks to Perform 

 Enable/Disable Features (CS100000) form Make sure that the Project Accounting feature is enabled. 

 Projects Preferences (PM101000) form Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see Basic Project Configuration: General Information. 

 Chart of Accounts (GL202500) form Make sure that an asset account for work in progress has been created. For details on configuring the chart of accounts, see Chart of Accounts. 

 Account Groups (PM201000) form Make sure that an account group of the Asset type for work in progress has been created and the WIP account has been added to the account group. For details on configuring account groups, see Account Groups: General Information. 

 Allocation Rules (PM207500) form Make sure that an allocation rule is configured as described in WIP Labor Costs in Cost-Plus Projects: General Information. 

 Billing Rules (PM207000) form Make sure that all the needed billing rules have been configured to process allocation transactions posted to the WIP account group. For details on configuring billing rules, see Billing Rules: General Information. 

 Projects (PM301000) Make sure that the project has been created, as described in Project Creation and Processing: General Information. 


<!-- PAGE_BREAK -->
 Project Accounting | 95 

#### Other Settings That Affect the Workflow 

 To cause the system to automatically release allocation transactions, including allocation reversal transactions, select the Automatically Release Allocations check box on the General tab ( General Settings section) of the Projects Preferences (PM101000) form. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you allocate projects by performing instructions similar to those described in WIP Labor Costs in Cost-Plus Projects: Process Activity. 

### WIP Labor Costs in Fixed-Price Projects: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for billing a cost-plus projects with WIP costs, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially bill a cost-plus projects with WIP costs, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Tasks to Perform 

 Enable/Disable Features (CS100000) form Make sure that the Project Accounting feature is enabled. 

 Projects Preferences (PM101000) form Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see Basic Project Configuration: General Information. 

 Chart of Accounts (GL202500) form Make sure that an asset account for work in progress has been created. For details on configuring the chart of accounts, see Chart of Accounts. 

 Account Groups (PM201000) form Make sure that an account group of the Asset type for work in progress has been created and the WIP account has been added to the account group. For details on configuring account groups, see Account Groups: General Information. 

 Allocation Rules (PM207500) form Make sure that an allocation rule is configured as described in WIP Labor Costs in Fixed-Price Projects: General Information. 


<!-- PAGE_BREAK -->
 Project Accounting | 96 

 Form Tasks to Perform 

 Billing Rules (PM207000) form Make sure that all the needed billing rules have been configured to process allocation transactions posted to the WIP account group. For details on configuring billing rules, see Billing Rules: General Information. 

 Projects (PM301000) Make sure that the project has been created, as described in Project Creation and Processing: General Information. 

 Project Tasks (PM302000) Make sure the WIP account group is selected for the project tasks in the Non-Billable WIP Account Group box on the Summary tab ( Billing and Allocation Settings section). 

#### Other Settings That Affect the Workflow 

 To cause the system to automatically release allocation transactions, including allocation reversal transactions, select the Automatically Release Allocations check box on the General tab ( General Settings section) of the Projects Preferences (PM101000) form. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you allocate projects by performing instructions similar to those described in WIP Labor Costs in Fixed-Price Projects: Process Activity. 


<!-- PAGE_BREAK -->
 Construction | 97 

## Construction 

### AP Bills with Retainage: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for processing AP bills with retainage, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you begin processing AP bills with retainage, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form The following features have been enabled: 

- _Retainage Support_ 

- _Payment Application by Line_ 

- _Projects_ 

- _Construction_ 

 Vendors (AP303000) form The vendor accounts for the vendors for which you will create AP bills have been defined. Also, make sure that the following retainage settings have been specified for each vendor: 

- On the **General** tab, the **Apply Retainage** check     box is selected. Optionally, the default retainage     percentage is specified in the **Retainage Percent**     box. 

- On the **GL Accounts** tab, the **Retainage Payable**     **Account** is specified. For details, see _AP Bills with Retainage: Configuration of the Default Retainage Settings_. 

 Projects (PM301000) form, Summary tab ( Retainage section) 

 The necessary projects and their project tasks have been created. Also, make sure that the following retainage settings have been specified for the project: 

- The retainage mode is selected in the **Retainage**     **Mode** box. 

- The **Retainage (%)** box contains the percent to be     retained from the amount of the vendor’s bill lines     issued for the project. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing AP bills with retainage by specifying additional settings as follows: 


<!-- PAGE_BREAK -->
 Construction | 98 

- The following general ledger settings should be specified on the **Posting Settings** tab of the _General Ledger_     _Preferences_ (GL102000) form: 

- To cause GL batches to be immediately posted aer they are released, make sure that the **Automatically**     **Post on Release** check box is selected. 

- To cause every AP transaction you enter to be posted as an individual batch to the general ledger,     clear the **Generate Consolidated Batches** check box. (When this check box is selected, the system     consolidates into a single batch all transactions in the same currency posted to the same period for all     documents being released.) 

- The following accounts payable settings should be specified on the **General** tab of the _Accounts Payable_     _Preferences_ (AP101000) form: 

- To give the created AP bills the _On Hold_ status, select the **Hold Documents on Entry** check box in the     **Data Entry Settings** section. 

- To direct the system to automatically remove retainage bills from hold as soon as they are created,     clear the **Hold Documents on Entry** check box. With this check box cleared, retainage bills will get the     _Pending Approval_ status if approvals are set up in your system for the _Bill_ document type, or the _Balanced_     status if approvals are not used. 

- Clear the **Require Vendor Reference** check box in the **Data Entry Settings** section to prevent users from     having to enter a vendor reference number in the **Vendor Ref.** box when creating an AP bill on the _Bills_     _and Adjustments_ (AP301000) form. 

- To cause AP bills to be automatically posted to the general ledger once they are released, make sure that     the **Automatically Post on Release** check box is selected in the **Posting Settings** section. 

- If you want to retain the taxes calculated on the retained amount, select the **Retain Taxes** check box in     the **Retainage Settings** section. If you want to pay full tax amount on the bill with retainage, leave this     box cleared. For details on tax settings for bills with retainage, see _AP Bills with Retainage: Configuration of_     _the Default Retainage Settings_. 

- If you want the system to automatically release retainage bills that you create on the _Release AP_     _Retainage_ (AP510000) form, you select the **Automatically Release Retainage Documents** check box. 

### AR Invoices with Retainage: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for processing AR invoices with retainage, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you begin processing AR invoices with retainage, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklists. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form The following features have been enabled: 

- _Retainage Support_ 

- _Payment Application by Line_ 

- _Projects_ 

- _Construction_ 


<!-- PAGE_BREAK -->
 Construction | 99 

 Form Criteria to Check 

 Customers (AR303000) form The customer accounts for the customers for which you will create AR invoices have been defined. Also, make sure that the following retainage settings have been specified for each customer: 

- On the **Financial** tab, the **Apply Retainage** check     box is selected. Optionally, the default retainage     percentage is specified in the **Retainage Percent**     box. 

- On the **GL Accounts** tab, the **Retainage Receivable**     **Account** is specified. For details, see _AR Invoices with Retainage: Configura- tion of the Default Retainage Settings_. 

 Projects (PM301000) form, Summary tab ( Retainage section) 

 The necessary projects and their project tasks have been created. Also, make sure that the following retainage settings have been specified for the project: 

- The retainage mode is selected in the **Retainage**     **Mode** box. 

- The **Retainage (%)** box contains the percent of the     amount of an invoice issued for the project that is     retained by the customer. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing AR invoices with retainage as follows: 

- The following general ledger settings should be specified on the **Posting Settings** section of the _General_     _Ledger Preferences_ (GL102000) form: 

- To cause GL batches to be immediately posted aer they are released, make sure that the **Automatically**     **Post on Release** check box is selected. This setting causes GL batches to be immediately posted aer     they are released. 

- To cause every AR transaction you enter to be posted as an individual batch to the general ledger,     clear the **Generate Consolidated Batches** check box. (When this check box is selected, the system     consolidates into a single batch all transactions in the same currency posted to the same period for all     documents being released.) 

- The following accounts receivable settings should be specified on the **General** tab of the _Accounts_     _Receivable Preferences_ (AR101000) form: 

- To give the created AR invoices the _On Hold_ status, select the **Hold Documents on Entry** check box in the     **Data Entry Settings** section. 

- To direct the system to automatically remove retainage documents from hold as soon as they are     created, clear the **Hold Documents on Entry** check box. With this check box cleared, retainage     documents will get the _Pending Approval_ status if approvals are set up in your system for the needed     document type, or the _Balanced_ status if approvals are not used. 

- Clear the **Require Payment Reference on Entry** check box in the **Data Entry Settings** section to prevent     users from having to enter a payment reference number in the **Payment Ref.** box when creating an AR     invoice on the _Invoices and Memos_ (AR301000) form. 

- To cause AR invoices to be automatically posted to the general ledger once they are released, make sure     that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. 

- If you want to retain the taxes calculated on the retained amount, you select the **Retain Taxes** check     box in the **Retainage Settings** section. If you want the full tax amount to be paid on the invoice with 


<!-- PAGE_BREAK -->
 Construction | 100 

 retainage, you leave this box cleared. For details on configuration of taxes with retainage, see AR Invoices with Retainage: Configuration of the Default Retainage Settings. 

- If you want the system to automatically release retainage documents that you create on the _Release_     _AR Retainage_ (AR510000) form, select the **Automatically Release Retainage Documents** check box. To     release them manually, you leave this check box cleared. With these settings specified, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions. 

### Budget Forecasts: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for working with budget forecasts, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 Before you begin creating project budget forecast, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklists. 

 Table: Mandatory Settings 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form Make sure that the Projects and Budget Forecast features are enabled. 

 Projects (PM301000) form Make sure that the necessary project has been created with the necessary budget lines. 

### Compliance Documents: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for tracking compliance, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially enter compliance documents, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form Make sure that the Construction feature is enabled. 

 Compliance Preferences (CL301000) form Make sure that the necessary attributes have been specified on the Custom Attributes tab, as described in Compliance Documents: To Configure Attributes for Compliance Documents. 

 Projects (PM301000) form Make sure that the projects for which compliance should be tracked have been created. 


<!-- PAGE_BREAK -->
 Construction | 101 

 Form Criteria to Check 

 Vendors (AP303000) Verify the existence of the vendor accounts for the vendors and subcontractors for which you will create compliance documents. For details, see Vendors: Implementation Activity. 

 Customers (AR303000) form Be sure that the customer accounts for the customers for which you will create compliance documents have been defined. For details, see Customers: Implementation Activity. 

### Construction Project Budget: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for managing budget in construction projects, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially manage project budgets, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Tasks to Perform 

 Enable/Disable Features (CS100000) Make sure that the Construction and Project Accounting features are enabled. 

 Projects Preferences (PM101000) Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see Basic Project Configuration: General Information. 

 Also make sure that Summary is selected in the Revenue Budget Update box and Detailed is selected in the Cost Budget Update box on the General tab. 

 Account Groups (PM201000) Make sure that all needed account groups have been configured. For more information about account groups, see Account Groups: General Information 

 Projects (PM301000) Make sure that the project has been created, as described in Project Creation and Processing: General Information. 

 Also, make sure that Task is selected in the Revenue Budget Level box and Task and Item is selected in the Cost Budget Level box on the Summary tab ( Project Properties section). 


<!-- PAGE_BREAK -->
 Construction | 102 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of managing the project budget by specifying additional settings as follows: 

- If you are going to use inventory items in the revenue budget of your projects, select _Detailed_ in the     **Revenue Budget Update** box on the **General** tab of the _Projects Preferences_ (PM101000) form. With this     option selected, if a transaction has an inventory item specified and the revenue budget has no line with the     same inventory item, the system creates a new budget line with this item.     With the _Summary_ option selected (the default option), the system updates the revenue budget line with the     empty item code ( _N/A_ ) instead of the inventory item of the transaction if such a line exists; otherwise, a new     budget line with the empty item code is created.     Similarly, the system updates the cost budget based on the option selected in the **Cost Budget Update** box     on the **General** tab ( **General Settings** section). 

- If you need to make the revenue budget more detailed by adding the inventory item to the budget structure,     select _Task and Item_ in the **Revenue Budget Level** box on the **Summary** tab ( **Project Properties** section)     of the _Projects_ (PM301000) form. As a result, you will be able to select an inventory item in a revenue budget     line. 

- If you need to make the cost budget less detailed by excluding the inventory item from the budget structure,     select _Task_ in the **Cost Budget Level** box on the **Summary** tab ( **Project Properties** section) of the _Projects_     form. As a result, you will not be able to select an inventory item in a cost budget line. 

- If you want to rename the default empty item code ( _<N/A>_ ), change the value in the **Empty Item Code** box     on the **General** tab of the _Projects Preferences_ form. The default empty item code is selected in a project     budget line to indicate that no specific item is associated with the line. 

- To allow a user to enter subcontract lines and purchase order lines related to a project if these lines have     not been initially specified in the cost budget of the project, select the **Allow Adding New Items on the Fly**     check box on the _Projects_ form. 

- To cause the system to control whether an entered document is within the cost budget of a project, select     _Show a Warning_ in the **Budget Control** box on the **General** ( **General Settings** section) tab of the _Projects_     _Preferences_. With these settings and entities specified, users in your company can manage the project budget quickly and accurately with a minimum of manual actions. 

### Correction of a Bill for a Subcontract: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for correcting billed values in subcontracts, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 Before you begin correcting subcontracts, you should make sure the needed settings have been specified and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form The Construction feature is enabled (under Projects group of feature). 


<!-- PAGE_BREAK -->
 Construction | 103 

 Form Criteria to Check 

 Multiple forms Make sure that all necessary settings related to project accounting have been specified as described in Basic Project Configuration: Implementation Checklist. 

 Accounts Payable Preferences (AP101000) Make sure the accounts payable preferences have been specified as described in Accounts Payable: To Specify Accounts Payable Preferences. 

 Multiple forms Make sure that all necessary settings related to subcontract processing have been specified as described in Subcontracts: Implementation Checklist. 

#### Settings That Affect the Workflow 

 You can affect the workflow of working with subcontracts by specifying additional settings as follows: 

- To change the format of debit adjustment identifiers, adjust the _APBILL_ numbering sequence on the     _Numbering Sequences_ (CS201010) form, or create a new numbering sequence and select this sequence in     the **Debit Adjustment Numbering Sequence** box on the **General** tab ( **Numbering Settings** section) of the     _Accounts Payable Preferences_ (AP101000) form. For more information on numbering sequences, see _Use of_     _Numbering Sequences_. 

- To cause general ledger batches generated during the processing of debit adjustments to be posted     automatically, select the **Automatically Post on Release** check box on the _General Ledger Preferences_     (GL102000) form. For information on processing general ledger batches, see _GL Transactions: General_     _Information_. 

- To cause debit adjustments to be created with the _On Hold_ status, select the **Hold Documents on Entry**     check box on the **General** tab of the _Accounts Payable Preferences_ (AP101000) form. 

- To cause the system require entering unique vendor reference numbers in the **Vendor Ref.** box when     creating a debit adjustment on the _Bills and Adjustments_ (AP301000) form, select the **Require Vendor**     **Reference** check box in the **Data Entry Settings** section on the **General** tab of the _Accounts Payable_     _Preferences_ (AP101000) form. 

- To cause every processed accounts payable transaction to be posted as an individual batch to the general     ledger, clear the **Generate Consolidated Batches** check box on the _General Ledger Preferences_ form. (When     this check box is selected, the system consolidates into a single batch all transactions in the same currency     posted to the same period for all documents being released.) 

### Daily Field Reports: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for working with daily field reports, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 Before you begin working with the daily field reports, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklists. 


<!-- PAGE_BREAK -->
 Construction | 104 

 Table: Mandatory Settings 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form Make sure that the Projects , Construction , and Construction Project Management features are enabled. 

 Daily Field Reports tab of the Project Management Preferences (PJ101000) form 

 Make sure that all necessary settings related to daily field reports have been specified. 

 Projects (PM301000) form Make sure that the necessary project has been created. 

 Employees (EP203000) form Make sure that the employee account for the project manager has been created. 

 Table: Additional Settings 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form Make sure that the necessary features from the following list are enabled: 

- _Time Management_ : To be able to track employee     activities on the project site 

- _Change Orders_ : To be able to add change orders to     the daily field report 

- _Change Requests_ : To be able to add change re-     quests to the daily field report 

- _Expense Management_ : To be able to add the ex-     pense receipts related to the report 

- _Weather Services_ : To be able to load weather con-     ditions in daily field reports from weather API ser-     vices 

 Vendors (AP303000) form If it is necessary to keep records about the subcontractor activities on the project site, make sure that accounts for all vendors that represent the necessary subcontractors have been created. 

 Contacts (CR302000) form If it is necessary to send emails to the customer contacts, make sure that accounts for all necessary customer contacts have been created. 

#### Approval Workflow Configuration 

 To make sure that an approval workflow is configured correctly for daily field reports, make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Tasks to Perform 

 Enable/Disable Features (CS100000) form Make sure that the Approval Workflow feature is enabled. 


<!-- PAGE_BREAK -->
 Construction | 105 

 Form Tasks to Perform 

 Assignment and Approval Maps (EP205500) form Make sure that an approval map for daily field reports has been created, as described in Daily Field Reports: To Configure Approval for Daily Field Reports. 

 Email Templates (SM204003) form If an employee needs to receive notifications about a pending approval when daily field reports require approval from that employee, make sure that the notification template has been configured. 

 The Daily Field Reports tab of the Project Management Preferences (PJ101000) form 

 Make sure that the approval map for daily field reports is specified in the DFR Approval Map box. 

 If an employee needs to receive notifications about daily field reports pending approval, make sure that the needed notification email is specified in the DFR Approval Notification box. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of daily field reports by specifying additional settings as follows: 

- To change the format of daily field report identifiers, adjust the _DFREPORT_ numbering sequence on the     _Numbering Sequences_ (CS201010) form, or create a new numbering sequence and select this sequence in     the **DFR Numbering Sequence** box on the **Daily Field Reports** tab of the _Project Management Preferences_     (PJ101000) form. For more information on numbering sequences, see _Use of Numbering Sequences_. 

- To modify the copy-paste settings of the daily field reports, on the **Copy Settings** tab of the _Project_     _Management Preferences_ form, select the **Override Copy-Paste Settings in Daily Field Reports** check box.     Then you select or clear the check boxes on the tab to define whether the specified information will be     copied from an original daily field report when you create a copy of a daily field report by using the standard     **Copy** and **Paste** commands on the form toolbar of the _Daily Field Report_ (PJ304000) form. 

- To save revisions of a daily field report as PDF files, select the **Enable History Log** check box on the **Daily**     **Field Reports** tab of the _Project Management Preferences_ form. All new revisions of the daily field report will     be saved as PDF files and listed on the **History** tab on the _Daily Field Report_ form. 

### Drawing Logs: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for working with drawing logs, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 Before you begin working with drawing logs, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form Make sure that the Projects , Construction , and Construction Project Management features are enabled. 


<!-- PAGE_BREAK -->
 Construction | 106 

 Form Criteria to Check 

 Drawing Logs tab of the Project Management Preferences (PJ101000) form 

 Make sure that the necessary settings related to drawing logs have been specified. 

 Projects (PM301000) form Make sure that the necessary project has been created. 

### Joint Payments: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for processing joint payments, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially processing joint payments, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form Make sure that the Construction feature is enabled. 

 Vendors (AP303000) Verify the existence of the vendor records for the main vendor and, optionally, for joint payees. For details, see Vendors: Implementation Activity. 

 Projects (PM301000) form Make sure that the necessary project and project tasks have been created. 

 Non-Stock Items (IN202000) Verify the existence of non-stock items that can be used when creating AP bills. For details, see Labor Items: General Information. 

#### Settings That Affect the Workflow 

 You can affect the joint payment processing workflow by specifying additional system settings as follows: 

- On the _Bills and Adjustments_ (AP301000) form, for a particular bill with joint payees, you can select the **Pay**     **by Line** check box. In this case, you will be able to specify for which line each payee will receive payment on     the **Joint Payees** tab. On release of the related payment, the balance of the line will be decreased.     If the **Pay by Line** check box is cleared, you specify the amount to be received by each joint payee and by     the main vendor. On release of the related payment, the balance of the bill will be decreased. 

- The following general ledger settings should be specified on the **Posting Settings** tab of the _General Ledger_     _Preferences_ (GL102000) form: 

- Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches     to be immediately posted aer they are released. 

- Clear the **Generate Consolidated Batches** check box to cause every AP transaction you enter to     be posted as an individual batch to the general ledger. (When this check box is selected, the system     consolidates into a single batch all transactions in the same currency posted to the same period for all     documents being released.) 

- The following accounts payable settings should be specified on the **General** tab of the _Accounts Payable_     _Preferences_ (AP101000) form: 


<!-- PAGE_BREAK -->
 Construction | 107 

- Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives     the created AP bills the _On Hold_ status. 

- Clear the **Require Vendor Reference** check box in the **Data Entry Settings** section. This setting means     that you do not have to enter a vendor reference number in the **Vendor Ref.** box when creating an AP bill     on the _Bills and Adjustments_ (AP301000) form. 

- Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.     This setting indicates that AP bills will be automatically posted to the general ledger once they are     released. With these settings specified and entities defined, users in your company can record and process joint payments in Acumatica ERP quickly and accurately, with a minimum of manual actions. 

#### Testing of Settings 

 To make sure that all settings are configured correctly, we recommend that you process joint payments, as described in Joint Payments: Process Activity. 

### Lien Waivers: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for sending lien waivers, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you start working with lien waivers, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form Make sure that the Construction feature is enabled. 

 Compliance Preferences (CL301000) form Make sure that you have selected the Automatically Generate Lien Waivers check box in the Conditional Lien Waivers section or Unconditional Lien Waivers section, depending on which type of lien waivers that you are going to issue. 

 Also, review the following settings and update them, if needed: 

- In the **Through Date** box, leave _Posting Period End_     _Date_ , or select another option to specify the end     date of the period for which the vendor signs a lien     waiver. 

- In the **Calculate Amount By** box, leave _Commit-_     _ment, Project_ , or select another option to spec-     ify how the system will aggregate the payment     amounts. 


<!-- PAGE_BREAK -->
 Construction | 108 

 Form Criteria to Check 

 Projects (PM301000) form In the projects for which lien waivers should be tracked, make sure of the following on the Lien Waiver Settings tab: 

- In the **Through Date** box, you have specified the     end date of the period for which the vendor signs a     lien waiver for the project. 

- In the table, the vendor classes and minimum com-     mitment amounts have been specified. 

 Vendors (AP303000) For each vendor that requires the generation of lien waivers, make sure of the following: 

- On the **Financial** tab, the **Generate Lien Waivers**     **Based on Project Settings** check box is selected. 

- On the **Mailing & Printing** tab, mailing settings     have been configured, as illustrated in _Lien Waivers:_     _To Configure Automatic Generation of Lien Waivers_. 

#### Outstanding Lien Waiver Checklist 

 An outstanding lien waiver is a lien waiver that has not been marked as received and whose Through Date on the Compliance Management (CL401000) form is earlier than the current business date in the system. The following settings affect the processing of AP documents for which outstanding lien waivers exist. 

 Form Criteria to Check 

 Compliance Preferences (CL301000) form Make sure that the Warn Users During AP Bill Entry check box is selected if you want the system to show a warning indicating that outstanding lien waiver exists for a vendor when a user enters an accounts payable bill 

 Compliance Preferences (CL301000) form Make sure that the Warn Users During Bill Selection for Payment check box is selected if you want the system to show a warning indicating that outstanding lien waiver exists for a bill when a user attempts to pay this bill. 

 Compliance Preferences (CL301000) form Make sure that the Prevent AP Bill Payment check box is selected if you want to completely prevent the payment of bills for which linked outstanding lien waivers exist. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of lien waiver generation by specifying additional settings as follows: 

- To make the system automatically generate lien waivers on paying AP bills that are not related to project     commitments (that is, to project-related purchase orders or subcontracts), select the **Generate for AP**     **Documents Not Linked to Commitments** check box in the **Conditional Lien Waivers** section or the     **Unconditional Lien Waivers** section of the _Compliance Preferences_ (CL301000) form. 


<!-- PAGE_BREAK -->
 Construction | 109 

- To make the system generate lien waivers for the vendors of a particular vendor class automatically, select     the **Generate Lien Waivers Based on Project Settings** check box for this vendor class on the **General** tab of     the _Vendor Classes_ (AP201000) form. 

- To disable the generation of lien waivers for a particular vendor, clear the **Generate Lien Waivers Based on**     **Project Settings** check box on the **Financial** tab of the _Vendors_ (AP303000) form. 

### Photo Logs: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for working with photo logs, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 Before you begin working with photo logs, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form Make sure that the Construction , and Construction Project Management features are enabled. 

 Photo Logs tab of the Project Management Preferences (PJ101000) form 

 Make sure that statuses have been configured for photo logs. 

 The N/A status, which is the only predefined status in the system, is specified by default for a new photo log. This status cannot be deleted, but you can change its name and description, if needed. 

 For instructions, see Photo Logs: Implementation Activity. 

 File Upload Preferences (SM202550) form Review the list of the supported image extensions on the form and add additional ones, if needed. 

 After you have saved any changes to the file upload preferences, to apply the changes in the list of file extensions supported for upload, you must clear the system cache by clicking Reset Caches on the More menu of the Apply Updates (SM203510) form. 

 Projects (PM301000) form Make sure that the necessary projects have been created. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of daily field reports by specifying additional settings as follows: 

- To change the format of photo log identifiers, adjust the _PHOTOLOG_ numbering sequence on the _Numbering_     _Sequences_ (CS201010) form, or create a new numbering sequence and select this sequence in the **Photo**     **Log Numbering Sequence** box on the **Photo Logs** tab of the _Project Management Preferences_ (PJ101000)     form. For more information on numbering sequences, see _Use of Numbering Sequences_. 

- To change the format of photo identifiers, adjust the _PHOTO_ numbering sequence on the _Numbering_     _Sequences_ (CS201010) form, or create a new numbering sequence and select this sequence in the **Photo** 


<!-- PAGE_BREAK -->
 Construction | 110 

 Numbering Sequence box on the Photo Logs tab of the Project Management Preferences (PJ101000) form. For more information on numbering sequences, see Use of Numbering Sequences. 

- To add the additional attributes that will be available for individual photos in a photo log, specify the list of     attributes on the **Photo Logs** tab of the _Project Management Preferences_ (PJ101000) form. When a user adds     a photo in the photo log, the user specifies the appropriate attribute values for the photo. 

### Pro Forma Invoice Correction: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for correcting pro forma invoices, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially correct pro forma invoices, you make sure the needed settings have been specified and entities have been created, as summarized in the following checklist. 

 Form Tasks to Perform 

 Enable/Disable Features (CS100000) form Make sure that the Project Accounting feature is enabled. 

 Projects Preferences (PM101000) form Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see Basic Project Configuration: General Information. 

 Projects (PM301000) form Make sure that the pro forma invoice to be corrected has no corresponding retainage invoices on the Invoices tab or these retainage invoices are reversed. For more information on retainage invoices, see AR Invoices with Retainage: General Information. 

 Also, make sure that the invoice currency is the same as the project currency. For more information on multicurrency projects, see Multicurrency Projects: General Information. 

 Invoices and Memos (AR301000) form Make sure that the accounts receivable document created on the release of the pro forma invoice has been released. 

 If the status of the AR document is On Hold or Balanced , you can just delete the AR document and adjust the pro forma invoice in an ordinary way. 

 Also, make sure that the AR document has no applied payments on the Applications tab, or all the applied payments are voided. For more information on payments, see Invoice Payments: General Information. 


<!-- PAGE_BREAK -->
 Construction | 111 

 Form Tasks to Perform 

 Customers (AR303000) form Make sure that the default payment method and cash account are specified for the customer. For more information, see Creating a Customer. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of correcting pro forma invoices by specifying additional settings as follows: 

- To make sending by email accounts receivable invoices optional, including those created based on pro     forma invoices that have been agreed upon with the customer, clear the **Send Invoices by Email** check     box on the **Billing Settings** tab ( **Print and Email Settings** section) of the _Customers_ (AR303000) form for     applicable customers. 

- To make printing accounts receivable invoices optional, including those created based on pro forma     invoices that have been agreed upon with the customer, clear the **Print Invoices** check box on the **Billing**     **Settings** tab ( **Print and Email Settings** section) of the _Customers_ form for applicable customers. 

- To cause the system to automatically post general ledger transactions generated on release of all accounts     receivable invoices, select the **Automatically Post on Release** check box on the **General** tab ( **Posting**     **Settings** section) of the _Accounts Receivable Preferences_ form. 

- To cause the system to post every accounts receivable document as an individual batch to the general     ledger, clear the **Generate Consolidated Batches** check box in the **Posting Settings** section of the _General_     _Ledger Preferences_ (GL102000) form. With these settings specified, users in your company can correct pro forma invoices quickly and accurately with a minimum of manual actions. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you correct a pro forma invoice by performing instructions similar to those described in Project Invoice Correction: To Correct a Closed Pro Forma Invoice. 

### Project Cost Projections: Implementation Checklist 

 The following sections provide details that you can use to ensure that the system is configured properly for creating cost projections, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially create cost projection revisions, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form The Construction feature is enabled. 


<!-- PAGE_BREAK -->
 Construction | 112 

 Form Criteria to Check 

 Projects Preferences (PM101000) form All necessary settings related to project accounting have been specified. For more information about the configuration steps that you have to perform before you can start accounting for projects, see Basic Project Configuration: General Information. 

 Projects (PM301000) form The needed projects have been created, as described in Project Creation and Processing: General Information. 

 Cost Projection Classes (PM203500) form All needed cost projection classes have been configured, as described in Project Cost Projections: To Create a Cost Projection Class. 

 The structure of the cost projection class must correspond to the structure of the project cost budget for which you are preparing a cost projection revision. 

 If you plan to work with date-sensitive cost projections only, you do not need to create cost projection classes. 

#### Approval Workflow Configuration 

 To make sure that an approval workflow is configured correctly for cost projections, make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. For more information, see Approval Configuration: General Information. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form The Approval Workflow feature is enabled. 

 Approval Maps (EP205015) form An approval map for cost projections has been created. 

 Email Templates (SM204003) form The notification template is configured (if you need employees to receive notifications about pending approvals when cost projections require their approval). 


<!-- PAGE_BREAK -->
 Construction | 113 

 Form Criteria to Check 

 The Approval tab of the Projects Preferences (PM101000) form 

 The approval map for cost projections with revisions has been specified in the Cost Projection Approval Map box. 

 The notification template for cost projections with revisions has been specified in the Cost Projection Approval Notification box (if an employee needs to receive notifications about cost projections pending approval). 

 Also, the approval map for date-sensitive cost projections has been specified in the Cost Projection by Date Approval Map box. 

 Finally, the notification template for date-sensitive cost projections has been specified in the Cost Projection Approval Notification box (if an employee needs to receive notifications about date-sensitive cost projections pending approval). 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you create a cost projection for a project by performing instructions similar to those described in Project Cost Projections: To Prepare a Cost Projection Revision. 

### Purchases with a Sales Tax: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for creating an AP bill with a sales tax applied automatically, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially create an AP bill with a sales tax applied automatically, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Chart of Accounts (GL202500) form The tax-related accounts have been created. 

 Tax Zones (TX206000) All needed tax zones have been created. 

 Tax Categories (TX205500) The needed tax categories for all goods or services (which are represented as stock items and non-stock items in Acumatica ERP) that your company buys have been created. 


<!-- PAGE_BREAK -->
 Construction | 114 

 Form Criteria to Check 

 Taxes (TX205000) The sales taxes that your company uses have been created. The settings for the tax include the tax rate, the tax calculation method, the tax validity period (if any), and other required parameters. 

 The Tax Expense account specified on the GL Accounts tab must be mapped to an expense account group. 

 Vendors (AP303000) For each tax agency to which you will submit tax reports, a vendor account with the Vendor is Tax Agency check box selected have been created. 

 The needed vendors and subcontractors in the Accounts Payable subledger have been created. Depending on the geographical location of the purchase transaction, different taxes can be applied to the document. To define which taxes are applied in the location of your vendor, the appropriate tax zone to each new or existing vendor has to be assigned. 

 Stock Items (IN202500), Non-Stock Items (IN202000) To calculate tax amounts in the documents in which you specify inventory IDs, the necessary stock items (for goods) and non-stock items (for services) have been created and associated with the appropriate tax category. 

#### Other Settings That Affect the Workflow 

 The following settings and entities should be specified and defined, respectively: 

- The following general ledger settings should be specified on the **Posting Settings** tab of the _General Ledger_     _Preferences_ (GL102000) form: 

- Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches     to be immediately posted aer they are released. 

- Clear the **Generate Consolidated Batches** check box to cause every AP transaction you enter to     be posted as an individual batch to the general ledger. (When this check box is selected, the system     consolidates into a single batch all transactions in the same currency posted to the same period for all     documents being released.) 

- The following accounts payable settings should be specified on the **General** tab of the _Accounts Payable_     _Preferences_ (AP101000) form: 

- Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives     the created AP bills the _On Hold_ status. 

- Clear the **Require Vendor Reference** check box in the **Data Entry Settings** section. This setting means     that you do not have to enter a payment reference number in the **Vendor Ref.** box when creating an AP     bill on the _Bills and Adjustments_ (AP301000) form. 

- Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.     This setting causes AP bills to be automatically posted to the general ledger once they are released. With these settings specified and entities defined, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions. 


<!-- PAGE_BREAK -->
 Construction | 115 

### Retainage with a Cap: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for billing projects with contract cap retainage, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially perform billing for projects with contract cap retainage, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form Make sure that the following features are enabled: 

- _Projects_ 

- _Construction_ 

- _Retainage Support_ 

- _Payment Application by Line_ 

 Customers (AR303000) form Make sure that the following retainage settings have been specified for the customer: 

- On the **General** tab, the **Apply Retainage** check     box is selected, and the default retainage percent-     age is specified in the **Retainage Percent** box. 

- On the **GL Accounts** tab, the **Retainage Receivable**     **Account** is specified. 

 Projects (PM301000) form, Summary tab In a project, make sure that the Create Pro Forma Invoice on Billing check box is selected and the retainage settings are specified as follows: 

- _Contract Cap_ is selected in the **Retainage Mode**     box. 

- The percent of the amount of an invoice issued for     the project that is retained by the customer is spec-     ified in the **Retainage (%)** box. 

- The contract cap (maximum retainage amount held     for the project) is specified in the **Cap (%)** box. 

#### Other Settings That Affect the Workflow 

 You can affect the processing workflow by specifying additional system settings as follows: 

- If the **Change Order Workflow** check box is selected for a project on the **Summary** tab ( **Project Properties**     section) of the _Projects_ (PM301000) form, you can select the **Include CO** check box to make the system     calculate the **Contract Total** and **Completed (%)** of the contract based on the revised revenue budget     values (with change orders included in the calculation). Otherwise, only original budget values will be used     for calculation. 


<!-- PAGE_BREAK -->
 Construction | 116 

- The following general ledger settings should be specified on the **Posting Settings** tab of the _General Ledger_     _Preferences_ (GL102000) form: 

- Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches     to be immediately posted aer they are released. 

- Clear the **Generate Consolidated Batches** check box to cause every AR transaction you enter to     be posted as an individual batch to the general ledger. (When this check box is selected, the system     consolidates into a single batch all transactions in the same currency posted to the same period for all     documents being released.) 

- The following accounts receivable settings can be specified on the **General** tab of the _Accounts Receivable_     _Preferences_ (AR101000) form: 

- Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives     the created AR invoices the _On Hold_ status. 

- Clear the **Require Payment Reference on Entry** check box in the **Data Entry Settings** section. This     setting means that you do not have to enter a payment reference number in the **Payment Ref.** box when     creating an AR invoice on the _Invoices and Memos_ (AR301000) form. 

- Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.     This setting causes AR invoices to be automatically posted to the general ledger once they are released. 

- If you want to retain the taxes calculated on the retained amount, you select the **Retain Taxes** check     box in the **Retainage Settings** section. If you want to pay full tax amount on the invoice with retainage,     you leave this box cleared. For details on the configuration of taxes with retainage, see _AR Invoices with_     _Retainage: Configuration of the Default Retainage Settings_. 

- If you want the system to automatically release retainage documents that you create on the _Release AR_     _Retainage_ (AR510000) form, you select the **Automatically Release Retainage Documents** check box. To     release them manually, you leave this check box cleared. With these settings specified and entities defined, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions. 

### Requests for Information: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for processing a request for information, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 Before you begin processing request for information, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form Make sure that the Projects , Construction , and Construction Project Management features are enabled. 

 Project Management Preferences (PJ101000) form Make sure that all necessary settings related to request for information have been specified. 

 Projects (PM301000) form Make sure that the necessary project has been created. 


<!-- PAGE_BREAK -->
 Construction | 117 

 Form Criteria to Check 

 Project Management Classes (PJ201000) form If additional settings for a request for information (such as quantity days for an answer and attributes) are necessary to be predefined, make sure that the class with the necessary settings has been created. 

 Contacts (CR302000) form Make sure that the needed contacts have been defined in the system. 

### Subcontracts: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for working with subcontracts, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you work with subcontracts, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Tasks to Perform 

 Enable/Disable Features (CS100000) form Make sure the Construction feature is enabled. 

 Subcontracts Preferences (SC101000) form Make sure the default settings are saved. 

 Projects (PM301000) form Make sure that the project has been created and has the Active status. For more details, see Project Creation and Processing: General Information. 

 Non-Stock Items (IN202000) form Make sure that the non-stock items that are going to be used in subcontracts have been defined in the system. In the item settings, the following settings should be specified: 

- On the **General** tab, the **Require Receipt** check box     is cleared.     For more information, see _Service Items: General In-_     _formation_ , _Labor Items: General Information_. 

- On the **Price/Cost** tab, _Purchases_ is selected in the     **Post Cost to Expenses On** box.     For more information, see _Project Material Manage-_     _ment: Accrual of the Non-Stock Item’s Cost_. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of working with subcontracts by specifying additional settings as follows: 

- To change the format of subcontract identifiers, adjust the predefined _SUBCONTR_ numbering sequence     on the _Numbering Sequences_ (CS201010) form, or create a new numbering sequence and select this     sequence in the **Subcontract Numbering Sequence** box on the **General** tab of the _Subcontracts Preferences_     (SC101000) form. For more information on numbering sequences, see _Use of Numbering Sequences_. 


<!-- PAGE_BREAK -->
 Construction | 118 

 A user can create subcontracts by using the Create Subcontracts button on the Commitments tab of the Projects (PM301000) form only if the numbering sequence that is used for numbering subcontracts is automatically numbered. 

- To allow a user to enter project-related subcontract lines that have not been initially specified in a cost     budget of a project, select the **Allow Adding New Items on the Fly** check box on the _Projects_ form. 

- To reduce input errors when users enter subcontracts, set up the validation of subcontract totals by     selecting the **Validate Total on Entry** check box on the **General** tab of the _Subcontracts Preferences_ form.     If this check box is selected, when a user creates a new subcontract on the _Subcontracts_ (SC301000) form,     to take the subcontract off hold, the user must enter the subcontract total in the **Control Total** box aer     verifying the details of the subcontract. 

- To turn on the approvals for subcontract, select the **Require Approval** check box on the **General** tab     of the _Subcontracts Preferences_ form and specify the approval map in the **Approval Map** box. For more     information about configuring approvals, see _Approval Configuration: General Information_. 

### Submittals: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for processing submittals, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially process submittals, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form The Construction and Construction Project Management features have been enabled. 

 Project Management Preferences (PJ101000) form Make sure that all necessary settings related to submittals have been specified. 

 Projects (PM301000) form The project for which the submittal is created has been defined, the project tasks have been created, and the project and its tasks have been activated. 

 Employees (EP203000) form The necessary employee accounts for employees involved in the submittal process have been defined. 

 Contacts (CR302000) form The necessary contacts involved in the submittal process have been created. 

#### Other Settings That Affect the Workflow 

 You can affect submittals and their processing by specifying additional settings as follows: 

- If you need to categorize the submittals, you can create submittal types on the **Submittals** tab of the _Project_     _Management Preferences_ (PJ101000) form, as described in _Submittals: Implementation Activity_. 

- To change the format of the identifiers the system assigns to submittals, adjust the _SUBMITTAL_ numbering     sequence on the _Numbering Sequences_ (CS201010) form, or create a new numbering sequence and select     this sequence in the **Submittal Numbering Sequence** box on the **Submittals** tab of the _Project Management_ 


<!-- PAGE_BREAK -->
 Construction | 119 

 Preferences (PJ101000) form. For more information on numbering sequences, see Use of Numbering Sequences. By default, the SUBMITTAL numbering sequence specifies that the submittal identifier is an automatically generated alphanumeric string that starts with the SU prefix and is followed by six digits, such as SU-000001. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you process a submittal by performing instructions similar to those described in Submittals: Process Activity. 

### Unit Tracking in Projects: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for tracking units used for projects by processing progress worksheets, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially start to create progress worksheets for projects, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) Make sure that the Project Accounting and Construction features are enabled. 

 Multiple forms Make sure that all necessary settings related to project accounting have been specified, as described in Basic Project Configuration: General Information. 

 Projects (PM301000) form Make sure that the necessary project has been created. In each cost budget line on the Cost Budget tab, specify the appropriate option in the Productivity Tracking column: 

- _Template_ : Select this option to include the line in     a progress worksheet template that can be pre-     loaded to a progress worksheet. 

- _Not Allowed_ (default): Leave this option if the line     should not be added to progress worksheets creat-     ed for the project. 

- _On Demand_ : Select this option to be able to manu-     ally add this line to a progress worksheet. 

#### Daily Field Report Checklist 

 If you plan to create progress worksheets linked to daily field reports, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as described in Daily Field Reports: Implementation Checklist. 


<!-- PAGE_BREAK -->
 Construction | 120 

#### Approval Workflow Configuration 

 To make sure that an approval workflow is configured correctly for daily field reports, make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Tasks to Perform 

 Enable/Disable Features (CS100000) form Make sure that the Approval Workflow feature is enabled. 

 Assignment and Approval Maps (EP205500) form Make sure that an approval map for progress worksheets has been created. 

 Email Templates (SM204003) form If an employee needs to receive notifications about a pending approval when progress worksheets require approval from that employee, make sure that the notification template is configured. 

 The Approval tab of the Projects Preferences (PM101000) form 

 Make sure that the approval map for progress worksheets is specified in the Progress Worksheet Approval Map box. 

 If an employee needs to receive notifications about a progress worksheet that is pending approval, make sure that the needed notification email is specified in the Progress Worksheet Approval Notification box. 

#### Other Settings That Affect the Workflow 

 To change the format of progress worksheet identifiers, adjust the PROGRESSWS numbering sequence on the Numbering Sequences (CS201010) form or create a new numbering sequence and select this sequence in the Progress Worksheet Numbering Sequence box on the General tab ( Numbering Sequence section) of the Projects Preferences (PM101000) form. 

 For more information on numbering sequences, see Use of Numbering Sequences. 


