## Implementation Checklists 

# Commerce Edition 

# 2025 R1 


<!-- PAGE_BREAK -->
 Contents | 2 

## Contents 

 Copyright...............................................................................................................................................5 

 Acumatica ERP Retail Edition.................................................................................................................. 6 

 Basic Company Configuration..................................................................................................................7 

 Preparing an Instance: Implementation Checklist.......................................................................................... 7 

 Company Without Branches: Implementation Checklist................................................................................ 7 

 Company with Branches that Do Not Require Balancing: Implementation Checklist................................. 10 

 Company with Branches that Require Balancing: Implementation Checklist............................................. 13 

 Accounts Payable..................................................................................................................................17 

 AP Bills: Implementation Checklist................................................................................................................ 17 

 AP Bill Payments: Implementation Checklist.................................................................................................18 

 AP Documents from PDFs: Implementation Checklist.................................................................................. 19 

 Bill Prepayments: Implementation Checklist.................................................................................................20 

 Debit and Credit Adjustments: Implementation Checklist............................................................................21 

 Interbranch Bills Without Balancing: Implementation Checklist..................................................................22 

 Interbranch Bills with Balancing: Implementation Checklist........................................................................23 

 Check Reprinting: Implementation Checklist................................................................................................ 25 

 Multiple Bill Payments: Implementation Checklist........................................................................................26 

 Payments for a Shared Vendor: Implementation Checklist.......................................................................... 27 

 Partial Payments: Implementation Checklist.................................................................................................28 

 Voiding Payments: Implementation Checklist............................................................................................... 29 

 Accounts Receivable..............................................................................................................................31 

 AR Invoices: Implementation Checklist..........................................................................................................31 

 AR Invoice Correction: Implementation Checklist......................................................................................... 32 

 Auto-Applying Payments: Implementation Checklist....................................................................................33 

 Refunds: Implementation Checklist............................................................................................................... 34 

 Interbranch Invoices with Balancing: Implementation Checklist................................................................. 34 

 Interbranch Invoices Without Balancing: Implementation Checklist........................................................... 36 

 Intercompany Sales: Implementation Checklist............................................................................................37 

 Invoice Payments: Implementation Checklist................................................................................................39 

 Invoice Prepayments: Implementation Checklist.......................................................................................... 40 

 Invoice with Combined Subaccounts: Implementation Checklist................................................................ 40 

 Payments with Write-Offs: Implementation Checklist...................................................................................42 

 Customers and Vendors.........................................................................................................................44 

 Customer Statements: Implementation Checklist.........................................................................................44 


<!-- PAGE_BREAK -->
 Contents | 3 

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

**Order Management............................................................................................................................... 60** 

 Direct Returns: Implementation Checklist..................................................................................................... 60 

 Direct Sales: Implementation Checklist......................................................................................................... 61 

 Drop Shipments of Non-Stock Items: Implementation Checklist................................................................. 61 

 Items with Lot and Serial Numbers: Implementation Checklist................................................................... 63 

 Order Management Basic Configuration: Implementation Checklist........................................................... 64 

 Configuration of Order Management: Implementation Checklist................................................................ 65 

 Prepayments for Purchase Orders: Implementation Checklist.....................................................................67 

 Purchase Returns at the Original Cost: Implementation Checklist.............................................................. 68 

 Purchase Returns at the Calculated Cost: Implementation Checklist..........................................................69 

 Purchases for Sale: Implementation Checklist.............................................................................................. 70 

 Purchases of Non-Stock Items and Services with Receipts: Implementation Checklist.............................. 72 

 Purchases of Services Without Receipts: Implementation Checklist............................................................73 

 Purchases with Billing Before Receipt: Implementation Checklist...............................................................74 

 Returns for Credit with Receipts: Implementation Checklist........................................................................ 75 

 Sales from Multiple Warehouses: Implementation Checklist....................................................................... 76 

 Sales of Stock Items: Implementation Checklist........................................................................................... 77 


<!-- PAGE_BREAK -->
 Contents | 4 

 Sales Order Types: Implementation Checklist...............................................................................................78 

 Sales with Payments and Prepayments: Implementation Checklist............................................................ 80 

 Sales of Non-Stock Items with Shipping: Implementation Checklist........................................................... 81 

 Sales of Services: Implementation Checklist................................................................................................. 82 

 Sales with Drop Shipping: Implementation Checklist...................................................................................83 

 Sales Invoice Correction: Implementation Checklist.....................................................................................84 

 Purchases of Stock Items: Implementation Checklist................................................................................... 85 

 Two-Step Transfers: Implementation Checklist.............................................................................................86 

**Prices and Discounts............................................................................................................................. 88** 

 Sales Prices: Implementation Checklist......................................................................................................... 88 

**BigCommerce Integration......................................................................................................................90** 

 Initial Configuration: Implementation Checklist........................................................................................... 90 

**Shopify Integration...............................................................................................................................93** 

 Initial Configuration: Implementation Checklist........................................................................................... 93 


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
 Acumatica ERP Retail Edition | 6 

## Acumatica ERP Retail Edition 

 You can refer to this guide when configuring business processes in Acumatica ERP Retail Edition. Each chapter of this guide is focused on the implementation of a particular functional area, and includes the implementation checklists that you use to make sure that the system is configured properly for performing particular business processes. 

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
 Basic Company Configuration | 7 

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
 Basic Company Configuration | 8 

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
 Basic Company Configuration | 9 

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
 Basic Company Configuration | 10 

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
 Basic Company Configuration | 11 

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
 Basic Company Configuration | 12 

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
 Basic Company Configuration | 13 

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
 Basic Company Configuration | 14 

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
 Basic Company Configuration | 15 

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
 Basic Company Configuration | 16 

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
 Accounts Payable | 17 

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
 Accounts Payable | 18 

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
 Accounts Payable | 19 

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
 Accounts Payable | 20 

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
 Accounts Payable | 21 

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
 Accounts Payable | 22 

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
 Accounts Payable | 23 

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
 Accounts Payable | 24 

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
 Accounts Payable | 25 

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
 Accounts Payable | 26 

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
 Accounts Payable | 27 

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
 Accounts Payable | 28 

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
 Accounts Payable | 29 

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
 Accounts Payable | 30 

#### Testing of Settings 

 To make sure that all settings are configured correctly, we recommend that you void a payment as described in Voiding Payments: Process Activity. 


<!-- PAGE_BREAK -->
 Accounts Receivable | 31 

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
 Accounts Receivable | 32 

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
 Accounts Receivable | 33 

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
 Accounts Receivable | 34 

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
 Accounts Receivable | 35 

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
 Accounts Receivable | 36 

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
 Accounts Receivable | 37 

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
 Accounts Receivable | 38 

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
 Accounts Receivable | 39 

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
 Accounts Receivable | 40 

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
 Accounts Receivable | 41 

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
 Accounts Receivable | 42 

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
 Accounts Receivable | 43 

 consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.) 

- On the **General Settings** tab of the _Accounts Receivable Preferences_ (AR101000) form, do the following: 

- Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives     the created AR invoices and credit memos the _On Hold_ status. 

- Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.     This setting indicates that AR invoices and credit memos will be automatically posted to the general     ledger once they are released. 

- Clear the **Require Payment Reference on Entry** check box in the **Data Entry Settings** section. With this     check box cleared, you do not have to fill in payment reference information in the **Payment Ref.** box on     the _Payments and Applications_ (AR302000) form. 

With these settings specified, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions. 


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
 Order Management | 60 

## Order Management 

### Direct Returns: Implementation Checklist 

 The following sections provide details that you can use to ensure that the system is configured properly for processing direct returns, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 Before you begin processing direct returns, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form Make sure that the Advanced SO Invoices feature has been enabled. 

 Sales Orders Preferences (SO101000) form Make sure that all necessary settings related to order management have been specified, as described in Configuration of Order Management: Implementation Activity. 

 Customers (AR303000) form Make sure that all needed customers have been defined in the system, as described in Customers: Implementation Activity. 

 Stock Items (IN202500) form Make sure that all stock items have been defined in the system, as described in Stock Items: Implementation Activity. 

#### Other Settings that Affect the Workflow 

 You can affect the workflow of processing direct returns by specifying additional settings as follows: 

- To cause inventory issues to be automatically generated and released on release of credit memos (invoices     of the _Credit Memo_ type), select the **Automatically Release IN Documents** check box on the _Sales Orders_     _Preferences_ (SO101000) form. 

- To cause general ledger batches generated during the processing of sales documents to be posted     automatically, select the **Automatically Post on Release** check box on the _General Ledger Preferences_     (GL102000) form. For information on processing general ledger batches, see _GL Transactions: General_     _Information_. 

#### Testing of Settings 

 To make sure that all settings are configured correctly, we recommend that you process a direct return for testing purposes, as described in Direct Returns: Process Activity. 


<!-- PAGE_BREAK -->
 Order Management | 61 

### Direct Sales: Implementation Checklist 

 The following sections provide details that you can use to ensure that the system is configured properly for processing direct sales, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 Before you begin processing direct sales, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form Make sure that the Advanced SO Invoices feature has been enabled. 

 Sales Orders Preferences (SO101000) form Make sure that all necessary settings related to order management have been specified, as described in Configuration of Order Management: Implementation Activity. 

 Customers (AR303000) form Make sure that all needed customers have been defined in the system, as described in Customers: Implementation Activity. 

 Stock Items (IN202500) form Make sure that all stock items are defined in the system, as described in Stock Items: Implementation Activity. 

#### Other Settings that Affect the Workflow 

 You can affect the workflow of processing direct sales by specifying additional settings as follows: 

- To cause inventory issues generated on release of sales invoices be released automatically, select the     **Automatically Release IN Documents** check box on the _Sales Orders Preferences_ (SO101000) form. 

- To cause general ledger batches generated during the processing of sales documents to be posted     automatically, select the **Automatically Post on Release** check box on the _General Ledger Preferences_     (GL102000) form. For information on processing general ledger batches, see _GL Transactions: General_     _Information_. 

#### Testing of Settings 

 To make sure that all settings are configured correctly, we recommend that you process a direct sale for testing purposes, as described in Direct Sales: Process Activity. 

### Drop Shipments of Non-Stock Items: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for the processing of sales of non-stock items intended to be drop-shipped, and to understand (and change, if needed) the settings that affect the processing workflow. 


<!-- PAGE_BREAK -->
 Order Management | 62 

#### Implementation Checklist 

 Before you initially process sales with drop shipment, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) Make sure that the Drop Shipments feature is enabled. 

 Sales Orders Preferences (SO101000) 

 Purchase Orders Preferences (PO101000) 

 Make sure that all necessary settings related to sales orders and purchase orders have been specified as described in Configuration of Order Management: Implementation Activity. 

 Order Types (SO201000) Make sure that the SO order type is active and has been configured as described in Sales Order Types: To Activate the SO Order TypeImplementation Activity. 

 Vendors (AP303000) Make sure that all needed vendors have been configured as described in Vendors: Implementation Activity. 

 Customers (AR303000) Make sure that all needed customers have been configured as described in Customers: Implementation Activity. 

 Non-Stock Items (IN202000) Make sure that all non-stock items are configured as described in Non-Stock Items: Implementation Activity. 

#### Other Settings That Affect the Workflow 

 You can affect the processing workflow by specifying additional settings as follows: 

- To process service lines marked for drop shipment on the _Sales Orders_ (SO301000) form with receipt, select     the **Process Service Lines from Drop-Ship Purchase Orders via Purchase Receipts** on the _Purchase_     _Orders Preferences_ (PO101000) form. 

- To cause sales orders of a particular order type to be created with the _On Hold_ status (so the user can verify     them before processing them further), select the **Hold Orders on Entry** check box for the order type on the     _Order Types_ (SO201000) form. For more information on other order type settings affecting the workflow of     sales orders, see _Sales Order Types: General Information_. 

- To cause the system to automatically create an accounts payable bill on release of a purchase receipt by     default, select the **Create Bill on Receipt Release** check box on the _Purchase Orders Preferences_ form. In     this case, when a user creates a purchase receipt on the _Purchase Receipts_ (PO302000) form, the system     automatically selects the **Create Bill** check box. (The user can clear this check box for a particular bill.) For     information on processing bills, see _AP Bills: General Information_. 

- To cause the system to automatically post general ledger batches generated during the processing of sales     and purchase documents, select the **Automatically Post on Release** check box on the _General Ledger_     _Preferences_ (GL102000) form. For information on processing general ledger batches, see _GL Transactions:_     _General Information_. 


<!-- PAGE_BREAK -->
 Order Management | 63 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you process a sale with drop shipment by performing instructions similar to those described in the Drop Shipments of Non-Stock Items: Process Activity. 

### Items with Lot and Serial Numbers: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for processing items with lot and serial numbers. 

#### Implementation Checklist 

 Before you begin processing purchase and sales documents that include stock items with lot and serial numbers, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) Make sure that the Lot and Serial Tracking feature is enabled. 

 Inventory Preferences (IN101000) Make sure that all necessary settings related to inventory and order management have been specified, as described in Configuration of Order Management: General Information. 

 Lot/Serial Classes (IN207000) Make sure that lot and serial classes with the needed settings have been created, as you will learn to do in Items with Lot and Serial Numbers: Implementation Activity. 

 Item Classes (IN201000) Make sure that the needed lot or serial classes are specified in settings of item classes, as you will learn to do in Items with Lot and Serial Numbers: Implementation Activity. 

 Stock Items (IN202500) Make sure that the needed lot or serial classes are specified in settings of stock items, as you will learn to do in Items with Lot and Serial Numbers: Implementation Activity. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you process a purchase and a sale of stock items with lot or serial numbers by performing instructions similar to those described in the following activities: 

- _Items with Lot and Serial Numbers: To Purchase and Sell Serialized Items_ 

- _Items with Lot and Serial Numbers: To Sell Items in Lots_ 

- _Items with Lot and Serial Numbers: To Purchase and Sell Lot-Numbered Items that Expire_ 

#### Known Process Limitations 

 The following limitations apply to the processing of sales that include items with lot or serial numbers: 


<!-- PAGE_BREAK -->
 Order Management | 64 

- If a full or partial quantity of the item in a sales order line on the _Sales Orders_ (SO301000) form is allocated     by lot or serial number, only the full item quantity can be deallocated on the _Manage Sales Allocations_     (SO501010) form. If you manually change the **Qty. to Deallocate** in the line on the _Manage Sales Allocations_     form, you cannot select this line for processing, and the system shows an error message. 

- If the _Lot/Serial Attributes_ feature is enabled on the _Enable/Disable Features_ (CS100000) form and the     **Specify Lot/Serial Price and Description** check box is selected for the lot or serial class on the _Lot/Serial_     _Classes_ (IN207000) form, the following apply to each item of the class: 

- The item cannot be added to a sales price list or sales price worksheet. 

- The item must have a lot or serial number specified in a sales order line. The **Mark for PO** check box     cannot be selected for this line. 

- Each unit of a stock item with a lot or serial number must be added to a separate sales order line because     each unit may have a unique description and price. 

### Order Management Basic Configuration: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for the processing of sales and purchases with non-stock items, and to specify settings that affect the processing workflow. 

#### Prerequisites 

 Before you start configuring order management, you should make sure that the needed features have been enabled and settings have been specified, as described in the following checklist. 

 Form Criteria to Check 

 Make sure that the minimum company settings are specified, as described in Company Without Branches: General Information. 

 Enable/Disable Features (CS100000) form Make sure that the Inventory and Order Management feature is enabled. 

 Order Types (SO201000) Make sure that the IN order type has been activated, as described in Sales Order Types: To Activate the IN Order Type. 

 Table: Minimum Required Settings To make it possible for users to process sales and purchase orders with non-stock items, you should navigate to the following forms and save the default settings. 

 Form Settings to Save 

 Sales Orders Preferences (SO101000) form Save the default settings. 

 Purchase Orders Preferences (PO101000) Save the default settings. 

#### Settings That Affect the Workflow 

 When you are configuring order management, you can specify additional settings to configure the company to fit your business requirements: 


<!-- PAGE_BREAK -->
 Order Management | 65 

- To cause the system to verify the customer's credit status and put a sales order on hold if the credit limit     has been exceeded, select the **Hold Document on Failed Credit Check** check box on the _Sales Orders_     _Preferences_ (SO101000) form. 

- To reduce input errors during purchase order entry, set up the validation of order totals by selecting the     **For Normal and Standard Orders** check box in the **Validate Total on Entry** section of the _Purchase Orders_     _Preferences_ (PO101000) form, so that a user will need to enter a control total for each order of this type; the     order can be processed further only if the system-calculated total equals the manually entered control total. 

### Configuration of Order Management: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for the order fulfillment and inventory management processes, and to specify settings that affect the processing workflow. 

#### Prerequisites 

 Before you start configuring order and inventory management, you should make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Multiple forms Make sure that the minimum company settings are configured, as described in Company Without Branches: General Information. 

 Enable/Disable Features (CS100000) form Make sure that the Inventory and Order Management and Inventory features are enabled. 

 Order Types (SO201000) Make sure that at least one order type ( SO ) is configured and activated, as described in Sales Order Types: General Information. 

 Reason Codes (CS211000) Make sure that the reason codes to be used for processing inventory transactions and vendor returns have been defined in the system as described in Reason Codes: Implementation Activity. 

#### Minimum Required Settings 

 To be able to keep stock items and track the sales and purchase orders that include these stock items, you should specify and save the minimum settings listed in the following table. 

 Form Settings to Specify 

 Inventory Preferences (IN101000) Specify the Receipt Reason Code , Issue/Return Reason Code , Adjustment Reason Code , and Phys. Inventory Reason Code ; save these settings. 

 Sales Orders Preferences (SO101000) form Specify SO as the Default Sales Order Type , and save your change to this form. 


<!-- PAGE_BREAK -->
 Order Management | 66 

 Form Settings to Specify 

 Purchase Orders Preferences (PO101000) Specify the PO Return Reason Code , and save your change to this form. 

#### Recommended Settings 

 To speed the processing of documents and minimize errors, you should specify and save the recommended settings listed in the following table. 

 Form Settings to Specify 

 Inventory Preferences (IN101000) • Update GL : Selected 

- **Automatically Post on Release** : Selected 

 Sales Orders Preferences (SO101000) form • Hold Shipments on Entry : Cleared 

- **Validate Shipment Total on Confirmation** :     Cleared 

- **Use Shipment Date for Invoice Date** : Selected 

- **Automatically Release IN Documents** : Selected 

 Purchase Orders Preferences (PO101000) • Release IN Documents Automatically : Selected 

#### Other Settings That Affect the Workflow 

 When you are configuring inventory and order management, you can specify additional settings to configure the company to fit your business requirements: 

- To configure the system to post inventory transactions to the general ledger, select the **Update GL** check     box on the _Inventory Preferences_ (IN101000) form. 

- To cause the system to post the generated general ledger transactions automatically, select the     **Automatically Post on Release** check box on the _Inventory Preferences_ form. 

- To cause the system to assign the group of prepared documents the _On Hold_ status by default, select the     following check boxes: 

- **Hold Documents On Entry** check box on the _Inventory Preferences_ form (for inventory transactions) 

- **Hold Shipments on Entry** check box on the _Sales Orders Preferences_ (SO101000) form (for shipment     documents) 

- **Hold Receipts on Entry** check box on the _Purchase Orders Preferences_ (PO101000) form (for purchase     receipt documents) 

- To set up the system so that users need to enter control amounts before it processes documents, select the     following check boxes: 

- **Validate Document Totals on Entry** on the _Inventory Preferences_ form (for inventory transactions) 

- **Validate Shipment Total on Confirmation** on the _Sales Orders Preferences_ form (for shipments) 

- **For Normal and Standard Orders** on the _Purchase Orders Preferences_ form (for purchase orders) 

- **For Receipts** on the _Purchase Orders Preferences_ form (for purchase receipts) 

- To configure the system to automatically release documents that are generated, select the following check     boxes: 

- **Automatically Release IN Documents** check box on the _Sales Orders Preferences_ form (to release     inventory transactions generated during the processing of sales orders) 


<!-- PAGE_BREAK -->
 Order Management | 67 

- **Release IN Documents Automatically** check box on the _Purchase Orders Preferences_ form (to release     inventory documents generated during the processing of purchase orders) 

- **Release AP Documents Automatically** check box on the _Purchase Orders Preferences_ form (to release     accounts payable documents generated during the processing of purchase orders) 

- To cause the system to automatically create accounts payable documents on release of purchase     documents, select the **Create Bill** check box on the _Purchase Orders Preferences_ (PO101000) form. By     default, the state of this check box is copied to each purchase order or purchase return that is created. If the     check box is cleared in a purchase order or purchase return, you can select this check box before releasing     the document. 

### Prepayments for Purchase Orders: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for the processing of prepayments for purchases of stock items, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially process prepayments for purchase orders, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Purchase Orders Preferences (PO101000) form Make sure that all necessary settings related to purchase order management have been specified as described in Configuration of Order Management: Implementation Activity. 

 Vendors (AP303000) form Make sure that all needed vendors have been configured as described in Vendors: General Information. 

#### Vendor Settings Checklist 

 Make sure that all needed vendors have been configured as described in Vendors: General Information. For a vendor, on the Vendors (AP303000) form, you can specify the following settings, which affects the processing of prepayments. 

 Tab Criteria to Check Notes 

 GL Accounts Specify the prepayment account in the Prepayment Account box. 

 If you do not specify a separate account for prepayments, the vendor prepayments will be debited to the vendor AP account. 

 Payment Settings Specify the default prepayment percent in the Prepayment Percent box. 

 To learn how to configure the settings, you can complete Prepayments for Purchase Orders: Implementation Activity. 


<!-- PAGE_BREAK -->
 Order Management | 68 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing purchases with prepayments by specifying additional settings as follows: 

- To reduce input errors when users enter orders, set up the validation of order totals by selecting the **For**     **Normal and Standard Orders** check box in the **Validate Total on Entry** section of the _Purchase Orders_     _Preferences_ (PO101000) form ( **General Settings** tab). If this check box is selected, when a user creates a new     purchase order on the _Purchase Orders_ (PO301000) form, to take the order off hold, the user must enter the     order total in the **Control Total** box aer verifying the order details. 

- To cause an accounts payable bill to be created automatically on release of a purchase receipt by default,     select the **Create Bill on Receipt Release** check box on the _Purchase Orders Preferences_ form. In this case,     when a user creates a purchase receipt on the _Purchase Receipts_ (PO302000) form, the system automatically     selects the **Create Bill** check box. (The user can clear this check box for a particular bill.) 

- To cause the system to automatically release accounts payable bills that are generated on release of     purchase receipts, select the **Release AP Documents Automatically** check box on the _Purchase Orders_     _Preferences_ form. For information on processing bills, see _AP Bills: General Information_. 

- To cause purchase receipts to be created with the _On Hold_ status (so that users can verify them before     processing them further), select the **Hold Receipts on Entry** check box on the _Purchase Orders Preferences_     form. 

- To cause the system to automatically release inventory receipts generated on release of purchase receipts,     select the **Release IN Documents Automatically** check box on the _Purchase Orders Preferences_ form. 

- To cause the system to automatically post general ledger batches generated during processing purchase     documents, select the **Automatically Post on Release** check box on the _General Ledger Preferences_     (GL102000) form. For information on processing general ledger batches, see _GL Transactions: General_     _Information_. 

#### Validation of Configuration 

 To make sure that all settings are configured correctly, you can process a prepayment for a purchase order, as described in Prepayments for Purchase Orders: To Process a Prepayment. 

### Purchase Returns at the Original Cost: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for the processing of purchase returns at the original cost, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 Before you begin processing purchase returns at the original cost, you should make sure the needed settings have been specified, as summarized in the following checklist. 

 Form Criteria to Check Notes 

 Make sure that the basic inventory and order management preferences are configured, as described in Configuration of Order Management: General Information. 


<!-- PAGE_BREAK -->
 Order Management | 69 

 Form Criteria to Check Notes 

 Purchase Orders Preferences (PO101000) form 

 Make sure the Process Return with Original Cost check box is selected. 

 By default, the system copies the state of this check box to each purchase return that is created. (You can change the way to specify the cost in an individual purchase return by selecting the Cost by Issue Strategy or Manual Cost Input options on the Purchase Receipts (PO302000) form.).) 

#### Settings that Affect the Workflow 

 You can affect the workflow of processing purchase returns at the original cost by specifying additional settings as follows: 

- To automatically create debit adjustments on release of purchase returns, select the **Create Bill** check box     on the _Purchase Orders Preferences_ (PO101000) form. By default, the state of this check box is copied to     each purchase return that is created. If the check box is cleared in a purchase return document, you can     select it before releasing a purchase return. 

- To set up the system to automatically release debit adjustments that are generated, select the **Release AP**     **Documents Automatically** check box on the _Purchase Orders Preferences_ form. 

#### Testing of Settings 

 To make sure that all settings are configured correctly, we recommend that you process a purchase return at the original cost, as described in the Purchase Returns at the Original CostPurchase ReturnsPurchase Returns at the Original Cost: Process ActivityTo Process a Return at the Original CostProcess Activity. 

### Purchase Returns at the Calculated Cost: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for the processing of purchase returns at the cost calculated by the system, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 Before you begin processing returns at the calculated cost, you should make sure the needed settings have been specified, as summarized in the following checklist. 

 Form Criteria to Check Notes 

 Make sure that the basic inventory and order management preferences are configured, as described in Configuration of Order Management: General Information. 


<!-- PAGE_BREAK -->
 Order Management | 70 

 Form Criteria to Check Notes 

 Purchase Orders Preferences (PO101000) form 

 Make sure that the Process Return with Original Cost check box is cleared. 

 By default, the system copies the state of this check box to each purchase return that is created. (You can change the way to specify the cost in an individual purchase return by selecting the Cost by Issue Strategy or Manual Cost Input options in the Cost of Inventory Return From box on the Purchase Receipts (PO302000) form.) 

#### Settings that Affect the Workflow 

 You can affect the workflow of processing purchase returns at the system-calculated cost by specifying additional settings as follows: 

- To cause debit adjustments to be automatically created on release of purchase returns, select the **Create**     **Bill** check box on the _Purchase Orders Preferences_ (PO101000) form. By default, the state of this check box     is copied to each purchase return that is created. If the check box is cleared in a purchase return document,     you can select it before releasing a purchase return. 

- To set up the system to automatically release debit adjustments that are generated, select the **Release AP**     **Documents Automatically** check box on the _Purchase Orders Preferences_ form. 

#### Testing of Settings 

 To make sure that all settings are configured correctly, we recommend that you process a purchase return at the system-calculated cost, as described in the Purchase Returns at the Calculated CostPurchase Returns: Process ActivityTo Process a Return at the Calculated Cost. 

### Purchases for Sale: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for the processing of purchases for sale, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 Before you initially process purchases for sale, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) Make sure that the Sales Order to Purchase Order Link feature is enabled. 

 Sales Orders Preferences (SO101000), Purchase Orders Preferences (PO101000) 

 Make sure that all necessary settings related to sales orders and purchase orders have been specified as described in Configuration of Order Management: Implementation Activity. 


<!-- PAGE_BREAK -->
 Order Management | 71 

 Form Criteria to Check 

 Order Types (SO201000) Make sure that the SO order type is active and has been configured as described in Sales Order Types: To Activate the SO Order TypeImplementation Activity. 

 Vendors (AP303000) Make sure that all needed vendors have been configured as described in Vendors: Implementation Activity. 

 Customers (AR303000) Make sure that all needed customers have been configured as described in Customers: Implementation Activity. 

 Stock Items (IN202500) Make sure that all stock items are configured as described in Stock Items: Implementation Activity. 

#### Other Settings That Affect the Workflow 

 You can affect the processing workflow by specifying the following additional settings: 

- To cause sales orders of a particular order type to be created with the _On Hold_ status (so the user can verify     them before processing them further), select the **Hold Documents on Entry** check box for the order type     on the _Order Types_ form. For more information on other order type settings affecting the workflow of sales     orders, see _Sales Order Types: General Information_. 

- To cause the system to automatically create an accounts payable bill on release of a purchase receipt     by default, select the **Create Bill on Receipt Release** check box on the _Purchase Orders Preferences_     (PO101000) form. In this case, when a user creates a purchase receipt on the _Purchase Receipts_ (PO302000)     form, the system automatically selects the **Create Bill** check box. (The user can clear this check box for a     particular bill.) For information on processing bills, see _AP Bills: General Information_. 

- To cause the system to automatically post general ledger batches generated during the processing of sales     and purchase documents, select the **Automatically Post on Release** check box on the _General Ledger_     _Preferences_ (GL102000) form. For information on processing general ledger batches, see _GL Transactions:_     _General Information_. 

#### Known Process Limitations 

 The following limitations apply to the processing of purchases for sale: 

- Sales order lines marked for purchasing cannot be processed during the quick processing of a sales order     until the items are received to stock. For more information, see _Sales Order Types: Quick Processing of Sales_     _Orders_. 

- On the _Sales Orders_ (SO301000) form, for a sales order of the _RR_ or _RM_ type, lines with the _Return_ operation     type cannot be marked for purchasing for sale, because these are the items to be received to inventory. 

#### Validation of Configuration 

 To make sure that all settings are configured correctly, we recommend that in your system, you process a purchase for sale, as described in Purchases for Sale: Process Activity. 


<!-- PAGE_BREAK -->
 Order Management | 72 

### Purchases of Non-Stock Items and Services with Receipts: Implementation 

### Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for the processing of purchases of non-stock items (including services) with purchase receipts, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially process purchases of non-stock items which may include services, you make sure the needed settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Purchase Orders Preferences (PO101000) • Make sure that all necessary settings related to purchase order management have been specified as described in Order Management Basic Configuration: General Information. 

- Make sure that the **Process Service lines from**     **Normal Purchase Orders via Purchase Receipts**     check box (in the **Other** section of the **General** tab)     is selected. 

 Vendors (AP303000) Make sure that all needed vendors have been created as described in Vendors: General Information. 

 Non-Stock Items (IN202000) Make sure that all non-stock items have been configured as described in Non-Stock Items: Implementation Activity. 

 Also, make sure that the Require Receipt check box (in the Item Defaults section of the General tab) is selected in the settings of each non-stock item for which a purchase receipt will be processed when the item is purchased. 

 Enable/Disable Features (CS100000) Make sure that the Inventory feature is enabled to be able to create purchase receipts. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing purchases by specifying additional settings: 

- To cause an accounts payable bill to be created automatically on release of a purchase receipt by default,     select the **Create Bill on Receipt Release** check box on the _Purchase Orders Preferences_ (PO101000)     form (in the **Other** section of the **General** tab). In this case, when a user creates a purchase receipt on the     _Purchase Receipts_ (PO302000) form, the system automatically selects the **Create Bill** check box in the     Summary area. (The user can clear this check box for a particular receipt, if needed.) 

- To cause the system to automatically release accounts payable bills that are generated on release of     purchase receipts, select the **Release AP Documents Automatically** check box on the _Purchase Orders_     _Preferences_ form. For information on processing bills, see _AP Bills: General Information_. 


<!-- PAGE_BREAK -->
 Order Management | 73 

- To cause purchase receipts to be created with the _On Hold_ status (so that users can verify them before     processing them further), select the **Hold Receipts on Entry** check box on the _Purchase Orders Preferences_     form (in the **Other** section of the **General** tab). 

- To cause the system to automatically release inventory receipts generated on release of purchase receipts,     select the **Release IN Documents Automatically** check box on the _Purchase Orders Preferences_ form (in the     **Other** section of the **General** tab). 

- To cause the system to automatically post general ledger batches generated during processing purchase     documents, select the **Automatically Post on Release** check box in the **Posting Settings** section of the     _General Ledger Preferences_ (GL102000) form. For information on processing general ledger batches, see _GL_     _Transactions: General Information_. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in Purchases of Non-Stock Items and Services with Receipts: To Process a Purchase of Non-Stock Items and Purchases of Non-Stock Items and Services with Receipts: To Process a Purchase of Services. 

### Purchases of Services Without Receipts: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for the processing of purchases of services that will not be included in a purchase receipt, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially process purchases of services without receipt, you make sure the needed settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Purchase Orders Preferences (PO101000) 

 Vendors (AP303000) Make sure that all needed vendors have been configured as described in Vendors: General Information. 

 Non-Stock Items (IN202000) 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing purchases of services without receipt by selecting the Automatically Post on Release check box on the General Ledger Preferences (GL102000) form to cause the system to automatically post GL batches generated during processing purchase documents. For information on processing GL batches, see GL Transactions: General Information. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you process a purchase order by performing instructions similar to those described in Purchases of Services Without Receipts: Process Activity. 


<!-- PAGE_BREAK -->
 Order Management | 74 

### Purchases with Billing Before Receipt: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for the processing of purchases of stock items with billing before receipt, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially process purchases of stock items with billing before receipt, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check Notes 

 Purchase Orders Preferences (PO101000) form 

 Make sure that all necessary settings related to purchase order management have been specified as described in Configuration of Order Management: Implementation Activity. 

 Vendors (AP303000) form Make sure that all needed vendors have been configured as described in Vendors: General Information and the Allow AP Bill Before Receipt is selected on the Purchase Settings tab for the applicable vendors. 

 The system copies the state of the Allow AP Bill Before Receipt check box from the vendor settings to each purchase order that is created for this vendor. (You cannot change the state of this check box in individual purchase orders.) 

 Stock Items (IN202500) form Make sure that all stock items have been configured as described in Stock Items: General Information. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing purchases by specifying the following additional settings: 

- To reduce input errors when users enter orders, set up the validation of order totals by selecting the **For**     **Normal and Standard Orders** check box in the **Validate Total on Entry** section of the _Purchase Orders_     _Preferences_ (PO101000) form ( **General Settings** tab). If this check box is selected, when a user creates a new     purchase order on the _Purchase Orders_ (PO301000) form, to take the order off hold, the user must enter the     order total in the **Control Total** box aer verifying the order details. 

- To cause an accounts payable bill to be created automatically on release of a purchase receipt by default,     select the **Create Bill on Receipt Release** check box on the _Purchase Orders Preferences_ form. In this case,     when a user creates a purchase receipt on the _Purchase Receipts_ (PO302000) form, the system automatically     selects the **Create Bill** check box. (The user can clear this check box for a particular bill.) 

- To cause the system to automatically release accounts payable bills generated on release of purchase     receipts, select the **Release AP Documents Automatically** check box on the _Purchase Orders Preferences_     form. For information on processing accounts payable bills, see _AP Bills: General Information_. 

- To cause purchase receipts to be created with the _On Hold_ status (so that users can verify them before     processing them further), select the **Hold Receipts on Entry** check box on the _Purchase Orders Preferences_     form. 


<!-- PAGE_BREAK -->
 Order Management | 75 

- To cause the system to automatically release inventory receipts generated on release of purchase receipts,     select the **Release IN Documents Automatically** check box on the _Purchase Orders Preferences_ form. 

- To cause the system to automatically post general ledger batches generated during the processing     of purchase documents, select the **Automatically Post on Release** check box on the _General Ledger_     _Preferences_ (GL102000) form. For information on processing general ledger transactions, see _GL_     _Transactions: General Information_. 

#### Validation of Configuration 

 To make sure that all settings are configured correctly, you can process a purchase order with billing before receipt, as described in Purchases with Billing Before Receipt: Process Activity. 

### Returns for Credit with Receipts: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for the processing of customer returns for credit with the returned items being received to inventory, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 Before you begin processing returns for credit with the returned items received to inventory, you should make sure the needed settings have been specified, as summarized in the following checklist. 

 Form Criteria to Check 

 Sales Orders Preferences (SO101000) form Make sure that all necessary settings related to sales orders and purchase orders have been specified, as described in Configuration of Order Management: General Information. 

 Order Types (SO201000) form Make sure that the RC order type is active and has been configured, as described in Sales Order Types: To Activate the RC Order Type. 

#### Specifying Other Settings That Affect the Workflow 

 You can affect the workflow of processing customer returns for credit with the returned items received to inventory by specifying additional settings as follows: 

- To cause sales orders of a particular order type to be created with the _On Hold_ status (so that the user can     verify them before processing them further), select the **Hold Documents on Entry** check box for the order     type on the _Order Types_ form. For more information on other order type settings that affect the workflow of     sales orders, see _Sales Order Types: General Information_. 

- To cause the system to automatically post general ledger batches generated during the processing of     sales documents, select the **Automatically Post on Release** check box on the _General Ledger Preferences_     (GL102000) form. For information on processing general ledger batches, see _GL Transactions: General_     _Information_. 


<!-- PAGE_BREAK -->
 Order Management | 76 

#### Testing of Settings 

 To make sure that all settings are configured correctly, we recommend that you process a return for credit with returned items received to inventory, as described in Returns for Credit with Receipts: Process Activity. 

### Sales from Multiple Warehouses: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for processing sales from multiple warehouses, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 Before you begin processing sales from multiple warehouses, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form Make sure that the Inventory and Order Management , Inventory , and Multiple Warehouses features are enabled. 

 Sales Orders Preferences (SO101000) form, Inventory Preferences (IN101000) form 

 Make sure that all necessary settings related to sales orders and inventory have been specified, as described in Configuration of Order Management: General Information. 

 Warehouses (IN204000) form Make sure that all warehouses have been configured, as described in Warehouses: Implementation Activity. 

 Order Types (SO201000) form Make sure that the SO and TR order types are active. The configuration and activation of these types is described in Sales Order Types: To Activate the SO Order TypeImplementation Activity and Sales Order TypesSales from Multiple Warehouses: Implementation ActivityTo Activate the TR Order Type. 

 Customers (AR303000) form Make sure that all needed customers have been defined in the system, as described in Customers: Implementation Activity. 

 Stock Items (IN202500) form Make sure that all stock items have been defined in the system, as described in Stock Items: Implementation Activity. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing sales from multiple warehouses by specifying additional settings as follows: 


<!-- PAGE_BREAK -->
 Order Management | 77 

- To cause shipments to be created with the _On Hold_ status (so that the user can verify them before     processing them further), select the **Hold Shipments on Entry** check box on the _Sales Orders Preferences_     (SO101000) form. 

- To cause inventory transfers to be automatically released when a user releases a transfer order, select the     **Automatically Release IN Documents** check box on the _Sales Orders Preferences_ (SO101000) form. 

- To cause inventory receipts to be automatically released when a user releases a transfer receipt, select the     **Release IN Documents Automatically** check box on the _Purchase Orders Preferences_ (PO101000) form. 

- To cause general ledger batches generated during the processing of sales and inventory documents to     be posted automatically, select the **Automatically Post on Release** check box on the _General Ledger_     _Preferences_ (GL102000) form. For information on the processing of general ledger batches, see _GL_     _Transactions: General Information_. 

#### Testing of Settings 

 To make sure that all settings are configured correctly, we recommend that you process a sale of stock items from multiple warehouses, as described in Sales from Multiple Warehouses: Process Activity. 

### Sales of Stock Items: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for the processing of sales of stock items, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 Before you begin processing sales of stock items, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form Make sure that the Inventory feature is enabled. 

 Sales Orders Preferences (SO101000) form, Inventory Preferences (IN101000) form 

 Make sure that all necessary settings related to sales orders and inventory have been specified, as described in Configuration of Order Management: General Information. 

 Order Types (SO201000) form Make sure that the SO and SA order types are active and have been configured, as described in Sales Order Types: To Activate the SO Order TypeImplementation Activity. 

 Customers (AR303000) form Make sure that all needed customers have been defined in the system, as described in Customers: Implementation Activity. 

 Stock Items (IN202500) form Make sure that all stock items have been defined in the system, as described in Stock Items: Implementation Activity. 


<!-- PAGE_BREAK -->
 Order Management | 78 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing inventory sales by specifying additional settings as follows: 

- To cause shipments to be created with the _On Hold_ status (so that the user can verify them before     processing them further), select the **Hold Shipments on Entry** check box on the _Sales Orders Preferences_     (SO101000) form. 

- To cause inventory issues to be automatically generated and released on release of sales invoices, select the     **Automatically Release IN Documents** check box on the _Sales Orders Preferences_ form. 

- To cause the shipment dates to appear in invoices as invoice dates, select the **Use Shipment Date for**     **Invoice Date** check box on the _Sales Orders Preferences_ form. 

- To cause general ledger batches generated during the processing of sales documents to be posted     automatically, select the **Automatically Post on Release** check box on the _General Ledger Preferences_     (GL102000) form. For information on processing general ledger batches, see _GL Transactions: General_     _Information_. 

#### Testing of Settings 

 To make sure that all settings are configured correctly, we recommend that you process a sale of stock items, as described in Sales of Stock Items: Process Activity. 

### Sales Order Types: Implementation Checklist 

 The following sections provide details that you can use to ensure that the system is configured properly for the processing of sales orders, and to specify settings that affect the processing workflow for orders of different types. 

#### Enabling the Needed Features 

 You should make sure the following features have been enabled on the Enable/Disable Features (CS100000) form based on the types of orders you want to configure and use: 

- The _Inventory and Order Management_ feature to be able to configure and use orders of any of the following     types: _QT_ , _IN_ , _CM_ , _CS_ , _CR_ , and _MO_. 

- The _Inventory and Order Management_ and _Inventory_ features to be able to configure and use orders of any of     the following types: _BL_ , _SO_ , _SA_ , _RR_ , _RM_ , and _RC_ 

- The _Inventory and Order Management_ , _Inventory_ , and _Multiple Warehouses_ features to be able to configure     and use orders of the _TR_ order type 

#### Configuring the System 

 Before you begin configuring order types, you should make sure that on the Chart of Accounts (GL202500) form, all GL accounts that you will use for configuring an order type have been added. For details, see General Ledger: To Create a Chart of Accounts. 

#### Minimum Required Settings 

 For each sales order type that you are going to use, you should specify the following minimum settings to configure and activate the order type. 


<!-- PAGE_BREAK -->
 Order Management | 79 

 Form Criteria to Check 

 The General tab of the Order Types (SO201000) form 

- The **Order Numbering Sequence** , which is the sequence to be used     to assign order reference numbers, is specified. 

- The **Invoice Numbering Sequence** , which is the sequence to be used     to assign reference numbers for invoices prepared for orders of this     type, is specified. 

- The **Freight Account** , which is the account for posting freight charges,     is specified. 

 The Summary area of Order Types form 

 The Active check box, indicating that the order type is available for use, is selected. 

#### Settings That Affect the Workflow 

 For a particular order type, you can specify additional settings on the General tab of the Order Types (SO201000) form that will affect the processing of orders of this type: 

- To cause new orders to be created with the _On Hold_ status (so that they can be verified before further     processing), select the **Hold Orders on Entry** check box. 

- To make the system verify the customer's credit status and put an order on credit hold if the credit limit has     been exceeded, select the **Hold Document on Failed Credit Check** check box.     To make the system automatically remove a sales order of the type from credit hold when a payment     has been applied to the full order amount, make sure that the **Remove Credit Hold on Payment**     **Application** check box is selected. (The system automatically selects this check box when a user selects     **Hold Documents on Failed Credit Check** , but you can clear it.) 

 If the customer specified in a sales order has the Credit Hold status on the Customers (AR303000) form, the order cannot be moved from the Credit Hold status. It keeps the status even if the Remove Credit Hold on Payment Application check box is selected for the order type on the Order Types form and a payment has been applied to the full order amount. The status of the order can be changed only when the customer's status is no longer Credit Hold. 

- To reduce input errors during order entry, set up the validation of order totals by selecting the **Require**     **Control Total** check box, so that a user will need to enter a control total for an order of this type; the order     can be processed further only if the system-calculated total equals the manually entered control total. 

- To cause the system to prepare separate bills for multiple orders of the type for the same customer, select     the **Bill Separately** check box. 

- To cause the system to prepare separate shipment documents for multiple orders of the type for the same     customer, select the **Ship Separately** check box. 

- To cause the system to calculate freight charges for an order of the type, select the **Calculate Freight** check     box. 

- To cause the system to require a user to enter a customer order number for an order of the type, select the     **Require Customer Order Nbr.** check box. To allow users to enter duplicated customer order numbers,     select _Allow Duplicates_ in the **Customer Order Nbr. Validation** ; to warn users if they have entered a     duplicated number, select _Warn About Duplicates_. To prevent users from entering duplicated customer order     numbers in orders of the type, select _Forbid Duplicates_. On the **Template** tab of the _Order Types_ form, to configure an order type for quick processing, you select the **Allow Quick Processing** check box. This causes the **Quick Processing** tab to appear, and you specify the needed settings on this tab. For more information, see _Sales Order Types: Quick Processing of Sales Orders_. 

 If your organization's policies require the approval of sales orders of a type, you can set up their approval, as described in Specific Approvals: Sales Orders. 


<!-- PAGE_BREAK -->
 Order Management | 80 

### Sales with Payments and Prepayments: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for the processing of sales orders with payments and prepayments, and to understand (and change, if needed) additional settings that affect the processing workflow. 

#### Implementation Checklist 

 Before you begin processing sales orders with payments and prepayments, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Sales Orders Preferences (SO101000) form All necessary settings related to sales orders have been specified, as described in Order Management Basic Configuration: General Information. 

 Enable/Disable Features (CS100000) form The Inventory feature is enabled. 

 Order Types (SO201000) form The SO order type is active and has been configured, as described in Sales Order Types: To Activate the SO Order TypeImplementation Activity. 

 To streamline the sales process and avoid small discrepancies between the payment amount applied to a sales order and the amount of the sales invoice created for this sales order (for example, as a result of the system recalculating the applicable taxes in the sales invoice), select the Auto Write-Off check box. For more information on the configuration of automatic write-offs, see Configuration of Automatic Write-Offs in Invoices. 

 Customers (AR303000) form All needed customers have been defined in the system, as described in Customers: Implementation Activity. 

 Stock Items (IN202500) form, Non-Stock Items (IN202000) form 

 All stock and non-stock items to be sold have been defined in the system, as described in Stock Items: Implementation Activity and Non-Stock Items: Implementation Activity. 

 Credit Terms (CS2065000) form For each applicable set of credit terms, if you need to predefine the prepayment percent that must be paid before the shipment can be created, the Prepayment Required check box is selected and the required percent is specified in the Prepayment Percent box. 


<!-- PAGE_BREAK -->
 Order Management | 81 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing sales orders with payments and prepayments by specifying additional settings as follows: 

- To cause shipments to be created with the _On Hold_ status (so that the user can verify them before     processing them further), select the **Hold Shipments on Entry** check box on the _Sales Orders Preferences_     (SO101000) form. 

- To cause general ledger batches generated during the processing of sales documents to be posted     automatically, select the **Automatically Post on Release** check box on the _General Ledger Preferences_     (GL102000) form. For information on processing general ledger batches, see _GL Transactions: General_     _Information_. 

### Sales of Non-Stock Items with Shipping: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for the processing of sales of non-stock items with shipping, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 Before you begin processing sales of non-stock items with shipping, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Sales Orders Preferences (SO101000) Make sure that all necessary settings related to sales orders have been specified, as described in Order Management Basic Configuration: General Information. 

 Enable/Disable Features (CS100000) Make sure that the Inventory feature is enabled. 

 Order Types (SO201000) Make sure that the SO order type is active and has been configured, as described in Sales Order Types: To Activate the SO Order TypeImplementation Activity. 

 Customers (AR303000) Make sure that all needed customers have been defined in the system, as described in Customers: Implementation Activity. 

 Non-Stock Items (IN202000) • Make sure that all non-stock items have been defined in the system, as described in Non-Stock Items: Implementation Activity. 

- Make sure that the **Require Shipment** check box is     selected for non-stock items that you plan to ship. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing sales of non-stock items with shipping by specifying additional settings as follows: 


<!-- PAGE_BREAK -->
 Order Management | 82 

- To cause shipments to be created with the _On Hold_ status (so that the user can verify them before     processing them further), select the **Hold Shipments on Entry** check box on the _Sales Orders Preferences_     (SO101000) form. 

- To cause the shipment dates to appear in invoices as invoice dates, select the **Use Shipment Date for**     **Invoice Date** check box on the _Sales Orders Preferences_ form. 

- To cause general ledger batches generated during the processing of sales documents to be posted     automatically, select the **Automatically Post on Release** check box on the _General Ledger Preferences_     (GL102000) form. For information on processing general ledger batches, see _GL Transactions: General_     _Information_. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you process a sale of non-stock items by performing instructions similar to those described in Sales of Non-Stock Items with Shipping: Process Activity. 

### Sales of Services: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for the processing of sales of services, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 Before you begin processing sales of services, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Sales Orders Preferences (SO101000) Make sure that all necessary settings related to sales orders have been specified, as described in Order Management Basic Configuration: General Information. 

 Order Types (SO201000) Make sure that the SO or IN order type is active and has been configured, as described in Sales Order Types: To Activate the SO Order TypeImplementation Activity. (If needed, you can set up and activate both of these order types.) 

 Customers (AR303000) Make sure that all needed customers have been defined in the system, as described in Customers: Implementation Activity. 

 Non-Stock Items (IN202000) Make sure that all non-stock items have been defined in the system, as described in Non-Stock Items: Implementation Activity. 

#### Other Settings That Affect the Workflow 

 To cause general ledger batches generated during the processing of sales documents to be posted automatically, select the Automatically Post on Release check box on the General Ledger Preferences (GL102000) form. For information on processing general ledger batches, see GL Transactions: General Information. 


<!-- PAGE_BREAK -->
 Order Management | 83 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you process a sale of services by performing instructions similar to those described in Sales of Services: Process Activity. 

### Sales with Drop Shipping: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for the processing of sales for drop shipment, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 Before you initially process sales for drop shipment, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) Make sure that the Drop Shipments feature is enabled. 

 Sales Orders Preferences (SO101000), Purchase Orders Preferences (PO101000) 

 Make sure that all necessary settings related to sales orders and purchase orders have been specified as described in Configuration of Order Management: Implementation Activity. 

 Order Types (SO201000) Make sure that the SO order type is active and has been configured as described in Sales Order Types: To Activate the SO Order TypeImplementation Activity. 

 Vendors (AP303000) Make sure that all needed vendors have been configured as described in Vendors: Implementation Activity. 

 Customers (AR303000) Make sure that all needed customers have been configured as described in Customers: Implementation Activity. 

 Stock Items (IN202500) Make sure that all stock items are configured as described in Stock Items: Implementation Activity. 

#### Other Settings That Affect the Workflow 

 You can affect the processing workflow by specifying additional settings: 

- To cause sales orders of a particular order type to be created with the _On Hold_ status (so the user can verify     them before processing them further), select the **Hold Orders on Entry** check box for the order type on the     _Order Types_ (SO201000) form. For more information on other order type settings affecting the workflow of     sales orders, see _Sales Order Types: General Information_. 

- To cause the system to automatically create an accounts payable bill on release of a purchase receipt     by default, select the **Create Bill on Receipt Release** check box on the _Purchase Orders Preferences_     (PO101000) form. In this case, when a user creates a purchase receipt on the _Purchase Receipts_ (PO302000)     form, the system automatically selects the **Create Bill** check box. (The user can clear this check box for a     particular bill.) For information on processing bills, see _AP Bills: General Information_. 


<!-- PAGE_BREAK -->
 Order Management | 84 

- To cause the system to automatically post general ledger batches generated during the processing of sales     and purchase documents, select the **Automatically Post on Release** check box on the _General Ledger_     _Preferences_ (GL102000) form. For information on processing general ledger batches, see _GL Transactions:_     _General Information_. 

#### Validation of Settings 

 To make sure that all settings are configured correctly, process a sale with drop shipping, as described in the Sales with Drop Shipping: Process Activity. 

#### Known Process Limitations 

- Drop shipping is not supported for sales order lines that are split into multiple lines in the **Line Details**     dialog box on the _Sales Orders_ (SO301000) form. If you select the **Mark for PO** check box and select _Drop-_     _Ship_ in the **Source** column on the **Details** tab for a line with multiple splits, you will not be able to save the     order.     The only exception occurs when you need to process a return of previously drop-shipped lot- or serial-     tracked items to your own warehouse and you use a sales order whose order type has the _RMA Order_     automation behavior on the _Order Types_ (SO201000) form. 

- If there is at least one released purchase receipt generated for a line of a drop-ship purchase order that has     been created for a sales order, you will not be able to perform the following actions: 

- Unlink the lines of the sales and purchase orders. 

- Clear the **Mark for PO** check box on the **Details** tab of the _Sales Orders_ form for the line of the sales order     that is linked to this line of the drop-ship purchase order. 

- If there is at least one confirmed shipment that has been generated for the part of the quantity in a sales     order line, you cannot select the **Mark for PO** check box on the **Details** tab of the _Sales Orders_ form for this     line in order to drop-ship the remaining quantity. 

### Sales Invoice Correction: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for the correcting of sales invoices, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 Before you begin correcting sales invoices, you should make sure the needed settings have been specified and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Sales Orders Preferences (SO101000) form, Inventory Preferences (IN101000) form 

 Make sure that all necessary settings related to sales orders and inventory have been specified, as described in Configuration of Order Management: General Information. 

 Order Types (SO201000) form Make sure that the SO order type is active and has been configured, as described in Sales Order Types: To Activate the SO Order TypeImplementation Activity. 


<!-- PAGE_BREAK -->
 Order Management | 85 

 Form Criteria to Check 

 Customers (AR303000) form Make sure that all needed customers have been defined in the system, as described in Customers: Implementation Activity. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of correcting invoices by specifying additional settings as follows: 

- To cause correction invoices and cancellation credit memos to be created with the _Balanced_ (instead of _On_     _Hold_ ) status, clear the **Hold Documents on Entry** check box on the **General Settings** tab of the _Accounts_     _Receivable Preferences_ (AR101000) form. 

- To cause general ledger batches generated during the processing of sales documents to be posted     automatically, select the **Automatically Post on Release** check box on the _General Ledger Preferences_     (GL102000) form. For information on processing general ledger batches, see _GL Transactions: General_     _Information_. 

#### Testing of Settings 

 To make sure that all settings are configured correctly, we recommend that for testing purposes, you correct a sales invoice, as described in Sales Invoice Correction: To Correct an Invoice , and cancel a sales invoice, as described in Sales Invoice Correction: To Cancel an Invoice. 

### Purchases of Stock Items: Implementation Checklist 

 The following sections provide details you can use to ensure that the system is configured properly for the processing of purchases of stock items, and to understand (and change, if needed) the settings that affect the processing workflow. 

#### Implementation Checklist 

 We recommend that before you initially process purchases of stock items, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. 

 Form Criteria to Check 

 Purchase Orders Preferences (PO101000) Make sure that all necessary settings related to purchase order management have been specified as described in Configuration of Order Management: General Information. 

 Vendors (AP303000) Make sure that all needed vendors have been configured as described in Vendors: General Information. 

 Stock Items (IN202500) Make sure that all stock items have been configured as described in Stock Items: General Information. 


<!-- PAGE_BREAK -->
 Order Management | 86 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of processing purchases by specifying additional settings: 

- To reduce input errors when users enter orders, set up the validation of order totals by selecting the **For**     **Normal and Standard Orders** check box in the **Validate Total on Entry** section of the _Purchase Orders_     _Preferences_ (PO101000) form ( **General Settings** tab). If this check box is selected, when a user creates a new     purchase order on the _Purchase Orders_ (PO301000) form, to take the order off hold, the user must enter the     order total in the **Control Total** box aer verifying the order details. 

- To cause an accounts payable bill to be created automatically on release of a purchase receipt by default,     select the **Create Bill on Receipt Release** check box on the _Purchase Orders Preferences_ form. In this case,     when a user creates a purchase receipt on the _Purchase Receipts_ (PO302000) form, the system automatically     selects the **Create Bill** check box. (The user can clear this check box for a particular bill.)     To cause the system to automatically release accounts payable bills generated on release of purchase     receipts, select the **Release AP Documents Automatically** check box on the _Purchase Orders Preferences_     form. For information on processing bills, see _AP Bills: General Information_. 

- To cause purchase receipts to be created with the _On Hold_ status (so that users can verify them before     processing them further), select the **Hold Receipts on Entry** check box on the _Purchase Orders Preferences_     form. 

- To cause the system to automatically release inventory receipts generated on release of purchase receipts,     select the **Release IN Documents Automatically** check box on the _Purchase Orders Preferences_ form. 

- To cause the system to automatically post general ledger batches generated during processing purchase     documents, select the **Automatically Post on Release** check box on the _General Ledger Preferences_     (GL102000) form. For information on processing general ledger batches, see _GL Transactions: General_     _Information_. 

#### Validation of Configuration 

 To make sure that all configuration has been performed correctly, we recommend that in your system, you process a purchase order, as described in Purchases of Stock Items: Process Activity. 

### Two-Step Transfers: Implementation Checklist 

 Before you start processing two-step transfers, you should make sure that the system is configured properly, as described in the following sections. 

#### Implementation Checklist 

 In the following table, you can find features, settings, and other actions that are required for processing two-step transfers. 

 Form Criteria to Check 

 Enable/Disable Features (CS100000) form Make sure that the following features are enabled: 

- _Inventory_ 

- _Multiple Warehouses_ 

 Inventory Preferences (IN101000) form Make sure that all necessary settings related to inventory have been specified, as described in Order Management with Inventory. 


<!-- PAGE_BREAK -->
 Order Management | 87 

 Form Criteria to Check 

 Warehouses (IN204000) form Make sure that the required warehouses have been created, as described in Warehouses: Implementation Activity. 

 Stock Items (IN202500) form Make sure that the required stock items have been created, as described in the Stock Items: Implementation Activity. 

#### Other Settings That Affect the Workflow 

 You can affect the workflow of the processing of two-step transfers by specifying additional settings: 

- To cause transfers with the _On Hold_ status to be created (so that a user can verify the documents before     further processing), you select the **Hold Documents on Entry** check box in the **Data Entry Settings** section     on the _Inventory Preferences_ (IN101000) form. 

- To cause general ledger batches generated during the processing of inventory documents to be posted     automatically, you select the **Automatically Post on Release** check box in the **Posting Settings** sections on     the _Inventory Preferences_ form. 

#### Validation of Settings 

 To make sure that all settings are configured correctly, process a sale of stock items, as described in Two-Step Transfers: Process Activity. 


<!-- PAGE_BREAK -->
 Prices and Discounts | 88 

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
 Prices and Discounts | 89 

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


<!-- PAGE_BREAK -->
 BigCommerce Integration | 90 

## BigCommerce Integration 

### Initial Configuration: Implementation Checklist 

 You can use the information in this topic to quickly check what needs to be configured in the BigCommerce store and in the Acumatica ERP instance, and what information must be obtained before you can start implementing the integration with the BigCommerce store. 

#### API Credentials to Capture in the BigCommerce Store 

 The table below lists the API information that is necessary for configuring a store connection and should be captured beforehand. For more information, see Initial Configuration: To Capture Store Connection Information. 

 Required Information Description 

 Store Admin Path The permanent URL of the ecommerce store followed by /manage. 

 This path is used for navigating to BigCommerce pages from the Sync History (BC301000) and Process Data (BC501500) forms. 

 REST Settings 

 API Path The URL of the BigCommerce API. 

 Client ID An ID that is provided by BigCommerce when a new store is set up on the BigCommerce platform. 

 Access Token An access token provided by BigCommerce when a new store is set up on the BigCommerce platform. 

 For synchronization to work properly, the access token should have the necessary access permissions in BigCommerce. We recommend that you grant the maximum access permissions, as described in Initial Configuration: To Capture Store Connection Information 

#### Settings in the BigCommerce Store 

 In the table below, you will find the information about the settings that you should specify in the BigCommerce store before you start setting up the integration with Acumatica ERP. For more information, see Initial Configuration: To Set Up a BigCommerce Store. 

 Required Settings Description 

 Store profile The basic information about the online store, including the store name, address, country, and contact details. 

 The store country is important because it determines which payment and shipping options are available for your store. 


<!-- PAGE_BREAK -->
 BigCommerce Integration | 91 

 Required Settings Description 

 Default currency The default currency in which prices are displayed to users and which transactions are made. The default currency should be the same as the base currency in the Acumatica ERP instance. 

 Payment methods for the default currency 

 The payment methods that can be used for transactions in the default currency. 

 Shipping rules The shipping zones and rates that you want to use in your store. 

 Taxes The tax settings that apply to your online store. 

#### Settings in Acumatica ERP 

 The table below contains the features that need to be enabled, the entities that need to be created, and the settings that need to be specified in Acumatica ERP before you can specify the appropriate settings on the BigCommerce Stores (BC201000) form. 

 Form Things to Check Notes 

 Enable/Disable Features (CS100000) 

 The following required features are enabled: 

- _Business Account Locations_ 

- _Retail Commerce_ 

- _BigCommerce Connector_ 

- _Custom Order Types_ 

- _Inventory_ 

- _Scheduled Processing_ 

- _Volume Pricing_ The _Inventory Subitems_ feature is disabled. 

 If this feature is enabled, the import of sales orders will not work. 

 The following recommended features are enabled: 

- _Drop Shipments_ 

- _External Tax Calculation Integration_ 

- _Customer Discounts_ 

- _Multiсurrency Accounting_ 

- _Multiple Warehouses_ 

- _Multiple Warehouse Locations_ 

- _Shipping Carrier Integrations_ 

 See Preparing an Instance: Acumatica ERP Features. 

 Customer Classes (AR201000) 

 The customer class for ecommerce customers has been created. This customer class is used for creating customer records in Acumatica ERP for customers imported from the BigCommerce store. 

 See Accounts Receivable: Customer Classes. 


<!-- PAGE_BREAK -->
 BigCommerce Integration | 92 

**Form Things to Check Notes** 

_Customers_ (AR303000) The customer account for importing to Acumatica ERP orders placed in the online store by guest users has been created. 

 See Customers: General Information. 

_Numbering Sequences_ (CS201010) 

- A numbering sequence has been defined     for the auto-numbered segment that will be     used for generating customer IDs on import. 

- A numbering sequence has been defined     for the auto-numbered segment that will be     used for generating customer location IDs on     import. 

 See Use of Numbering Sequences. 

_Item Sales Categories_ (IN204060) 

 The sales categories under which the stock items and non-stock items are placed have been configured and assigned to individual items. 

 A sales category under which non-stock and stock items will be placed if they are not assigned any category in Acumatica ERP has been configured. 

 See Managing the Inventory Catalog in the Self-Service Portal: General Information. 

_Order Types_ (SO201000) A unique order type has been created for orders imported from the online store. 

 See Sales Order Types: General Information. 

_Taxes_ (TX205000) The sales taxes applicable to the products that you sell have been configured. 

 See Sales Taxes: General Information. 

_Ship via Codes_ (CS207500) The ship via codes for the delivery services that the company uses have been created. 

 See To Create a Ship via Code. 

_Cash Accounts_ The cash accounts associated with payment methods used in the ecommerce transactions have been created. 

 See Cash Management: To Create Cash Accounts. 

_Payment Methods_ The payment methods used in the ecommerce transactions have been configured. 

 See Cash Management: Payment Methods. 

_Processing Centers_ The processing center to be used for processing credit card payments has been configured. 

 See To Configure Acumatica Payments. 


<!-- PAGE_BREAK -->
 Shopify Integration | 93 

## Shopify Integration 

### Initial Configuration: Implementation Checklist 

 You can use the information in this topic to quickly check what needs to be configured in the Shopify store and in the Acumatica ERP instance before you can start implementing the integration with the Shopify store. 

#### API Credentials to Capture in the Shopify Store 

 If you connect a Shopify store to Acumatica ERP by using a custom app, you need to capture the API credentials of the custom app in the Shopify store, which are listed in the following table. You will need to specify these credentials on the General tab of the Shopify Stores (BC201010) form when you establish the store connection. For more information, see Initial Configuration: To Establish the Store Connection with a Custom App. 

 Required Information Description 

 Store Admin URL The permanent URL of the store followed by /admin. 

 This path is used for navigating to the Shopify store's pages from the Sync History (BC301000) and Process Data (BC501500) forms. 

 API Access Token The API access token that was generated for the custom app added to the Shopify store to integrate it with Acumatica ERP. 

 API Secret Key The API secret key that was generated for the custom app created in the Shopify store to integrate it with Acumatica ERP. 

#### Settings in the Shopify Store 

 In the table below, you will find the information about the settings that you should specify in the Shopify store before you start setting up the integration with Acumatica ERP. For more information, see Initial Configuration: To Set Up a Shopify Store. 

 Required Settings Description 

 Store profile The basic information about the online store, including the store name, business name and address. 

 The store country is important because it determines which payment and shipping options are available for your store. 

 Default currency The default currency in which prices are displayed to users and which transactions are made. The default currency should be the same as the base currency in the Acumatica ERP instance. 

 Payment methods for the default currency 

 The payment methods that can be used for transactions in the default currency. 

 Shipping rules The shipping zones and rates that you want to use in your store. 


<!-- PAGE_BREAK -->
 Shopify Integration | 94 

 Required Settings Description 

 Taxes The tax settings that apply to your online store. 

#### Settings in Acumatica ERP 

 The table below contains the features that need to be enabled, the entities that need to be created, and the settings that need to be specified in Acumatica ERP before you can specify the appropriate settings on the Shopify Stores (BC201010) form. 

 Form Criteria to Check Notes 

 Enable/Disable Features (CS100000) The following required features are enabled: 

- _Business Account Locations_ 

- _Retail Commerce_ 

- _Shopify Connector_ 

- _Custom Order Types_ 

- _Inventory_ 

- _Scheduled Processing_ The _Inventory Subitems_ feature is disabled. 

 If this feature is enabled, the import of sales orders will not work. 

 The following recommended features are enabled: 

- _Drop Shipments_ 

- _External Tax Calculation Integra-_     _tion_ 

- _Customer Discounts_ 

- _Multiсurrency Accounting_ 

- _Multiple Warehouses_ 

- _Multiple Warehouse Locations_ 

- _Shipping Carrier Integrations_ 

 See Preparing an Instance: Acumatica ERP Features. 

 Customer Classes (AR201000) The customer class for ecommerce customers has been created. This customer class is used for creating customer records in Acumatica ERP for customers imported from the Shopify store. 

 See Accounts Receivable: Customer Classes. 


<!-- PAGE_BREAK -->
 Shopify Integration | 95 

**Form Criteria to Check Notes** 

_Customers_ (AR303000) The customer account for importing to Acumatica ERP orders placed in the online store by guest users has been created. 

 See Customers: General Information. 

_Numbering Sequences_ (CS201010) • A numbering sequence has been defined for the auto-numbered segment that will be used for generating customer IDs on import. 

- A numbering sequence has been     defined for the auto-numbered     segment that will be used for     generating customer location     IDs on import. 

 See Use of Numbering Sequences. 

_Order Types_ (SO201000) A unique order type has been created for orders imported from the online store. 

 See Sales Order Types: General Information. 

_Taxes_ (TX205000) The sales taxes applicable to the products that you sell have been configured. 

 See Sales Taxes: General Information. 

_Ship via Codes_ (CS207500) The ship via codes for the delivery services that the company uses have been created. 

 See To Create a Ship via Code. 

_Cash Accounts_ (CA202000) The cash accounts associated with payment methods used in the ecommerce transactions have been created. 

 See Cash Management: To Create Cash Accounts. 

_Payment Methods_ (CA204000) The payment methods to be mapped to store payment methods used in the ecommerce transactions have been configured. 

 See Cash Management: Payment Methods. 

_Processing Centers_ (CA205000) The processing center to be used for processing credit card payments has been configured. 

 See To Configure Acumatica Payments. 


