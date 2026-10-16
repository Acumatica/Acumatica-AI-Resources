## Administrator Guide 

# Integrations 

# 2025 R2 


<!-- PAGE_BREAK -->
 Contents | 2 

## Contents 

 Copyright...............................................................................................................................................9 

 Integrating Acumatica ERP with Avalara Avatax...................................................................................... 10 

 Setup of Online Integration with Avalara AvaTax.......................................................................................... 10 

 Sales Tax Calculation.......................................................................................................................................11 

 Sales Tax Calculation in Opportunities and Sales Quotes............................................................................ 14 

 Use Tax Calculation......................................................................................................................................... 15 

 Tax Reporting with Avalara AvaTax.................................................................................................................17 

 Setup of Net or Gross Tax Calculation............................................................................................................17 

 AvaTax's Detection of the Customer's Tax Jurisdiction................................................................................. 19 

 To Configure Your Avalara AvaTax Account.................................................................................................... 20 

 To Set Up Integration With AvaTax................................................................................................................. 21 

 Configuring Exception Certificate Management with Avalara....................................................................25 

 Exception Certificate Management: General Information............................................................................. 25 

 Exception Certificate Management: Configuration Workflow....................................................................... 28 

 Exception Certificate Management: Implementation Activity...................................................................... 30 

 Integrating Acumatica ERP with Vertex Tax Provider............................................................................... 33 

 Online Integration with Vertex Tax Calculation............................................................................................. 33 

 To Configure Your Vertex Account.................................................................................................................. 36 

 To Set Up Integration With Vertex Tax Calculation........................................................................................ 36 

 Setup of Net or Gross Tax Calculation............................................................................................................39 

 Integrating Acumatica ERP with Address Validation Providers..................................................................41 

 To Set Up Integration with an Avalara Address Validation Provider.............................................................41 

 To Set Up Integration with a Vertex Address Validation Provider.................................................................42 

 Integrating Acumatica ERP with Web Map Services................................................................................. 44 

 Integration with Web Map Services: General Information............................................................................ 44 

 Integration with Web Map Services: Configuration Prerequisites................................................................ 45 

 Integration with Web Map Services: Implementation Activity......................................................................45 

 Configuring Payment Processing........................................................................................................... 49 

 Setup of ACH Payment Processing................................................................................................................. 49 

 Setting Up U.S. ACH Payment Processing............................................................................................. 50 

 Setting Up U.S. and Canada ACH Cross-Border Payment Processing................................................. 60 

 Setup of Canadian EFT....................................................................................................................................67 

 Settings of the Canadian EFT Plug-In....................................................................................................70 

 Settings of the Canadian EFT Export Scenario..................................................................................... 73 


<!-- PAGE_BREAK -->
 Contents | 3 

 Settings of the EFT Export Scenario for Canadian Payroll................................................................... 74 

 To Add a Payment Method for the Canadian EFT Plug-In.................................................................... 75 

 To Add a Payment Method for the Canadian EFT Export Scenario......................................................77 

 Setup of BACS HSBC Payment Processing..................................................................................................... 79 

 Settings of the BACS HSBC File............................................................................................................. 80 

 To Add a Payment Method for BACS HSBC Plug-In.............................................................................. 90 

 Setup of BACS Lloyds Payment Processing.......................................................................................... 92 

 Settings of the BACS Lloyds File............................................................................................................ 93 

 To Add a Payment Method for BACS Lloyds Plug-In.............................................................................95 

 Setup of Stripe Processing Center.................................................................................................................. 97 

 To Create the Stripe Processing Center.................................................................................................98 

 To Create a Stripe Payment Method......................................................................................................99 

 Setup of Integration with BILL......................................................................................................................100 

 To Create a Payment Processor........................................................................................................... 102 

 To Configure a Connection to BILL......................................................................................................103 

 To Create a Payment Method for External Payment Processing........................................................ 104 

 To Set Up a Vendor for External Payment Processing........................................................................ 105 

**Integrating Acumatica ERP with Bank Feeds......................................................................................... 106** 

 Mapping of Multiple Bank Accounts to One Cash Account......................................................................... 106 

 To Set Up Plaid Integration........................................................................................................................... 108 

 To Set Up MX Integration.............................................................................................................................. 114 

 To Set Up Mapping Rules.............................................................................................................................. 121 

 To Import Bank Transactions from a Bank Feed......................................................................................... 122 

 Loading of Bank Feeds from a File............................................................................................................... 124 

 Loading of Bank Feeds from BAI2 Files........................................................................................................ 126 

 To Set Up Bank Feeds Loaded from a CSV File............................................................................................ 128 

 To Set Up Bank Feeds Loaded from the BAI2 Format................................................................................. 133 

 To Load Bank Transactions from a File........................................................................................................ 134 

**Configuring and Using Acumatica Payments......................................................................................... 136** 

 Authorized Remainder Aer Partial Payment Capture................................................................................ 137 

 To Configure Acumatica Payments...............................................................................................................138 

 Processing of Payment Links........................................................................................................................ 142 

 To Create Payment Links for AR Documents.......................................................................................146 

 To Create Payment Links for Sales Orders.......................................................................................... 147 

 To Process Payment Links....................................................................................................................148 

 Support of POS Payments.............................................................................................................................149 


<!-- PAGE_BREAK -->
 Contents | 4 

 To Configure the POS Payment Functionality.................................................................................... 153 

 Level 2 Data Transmission During Card Payments...................................................................................... 154 

 Level 3 Data Transmission During Card Payments...................................................................................... 155 

 To Send Level 3 Data............................................................................................................................ 158 

**Synchronizing Acumatica ERP with Microso Exchange Server...............................................................160** 

 Integration with Exchange Server.................................................................................................................160 

 Synchronization Policies............................................................................................................................... 161 

 Configuration of Synchronization with Exchange Server ........................................................................... 162 

 Synchronization of User Records in Acumatica ERP with Exchange Mailboxes......................................... 163 

 Record Synchronization in Acumatica ERP.................................................................................................. 164 

 To Add a Synchronization Policy.................................................................................................................. 166 

 To Set Up a Connection with an Exchange Server.......................................................................................167 

 To Configure Synchronization for the Employee Accounts......................................................................... 168 

 To Set Up Synchronization with Exchange Server.......................................................................................168 

 To Set Up Automatic Synchronization with Exchange Server.....................................................................168 

**Integrating Acumatica ERP Forms on Your Website................................................................................ 170** 

**Integrating Acumatica ERP with Active Directory.................................................................................. 171** 

 Integration with Active Directory..................................................................................................................171 

 To Enable Active Directory Integration.........................................................................................................173 

 To Map Active Directory Groups to Roles in Acumatica ERP....................................................................... 174 

 To Set Up Role Assignment for Domain Users............................................................................................. 175 

**Integrating Acumatica ERP with AD FS..................................................................................................177** 

 Integration with AD FS...................................................................................................................................177 

 To Configure the AD FS Relying Party Trust................................................................................................. 180 

 To Configure AD FS Claims............................................................................................................................185 

 To Enable AD FS Integration with Acumatica ERP....................................................................................... 187 

 To Map AD FS Claims to Roles in Acumatica ERP........................................................................................ 188 

 To Set Up Role Assignment for Domain Users............................................................................................. 189 

 To Enable Silent Logon..................................................................................................................................190 

**Integrating Acumatica ERP with Microso Entra ID................................................................................192** 

 Integration with Microso Entra ID.............................................................................................................. 192 

 To Configure Microso Entra ID for Integration with Your Acumatica ERP Instance ................................. 195 

 To Configure the Web.Config File for Integration with Microso Entra ID..................................................212 

 To Map Microso Entra ID Groups to Roles in Acumatica ERP....................................................................214 

 To Set Up Role Assignment for Domain Users............................................................................................. 215 

 To Enable Silent Logon..................................................................................................................................216 


<!-- PAGE_BREAK -->
 Contents | 5 

**Integrating Acumatica ERP with Microso Teams.................................................................................. 218** 

 Integration with Microso Teams................................................................................................................. 218 

 To Configure Microso Azure for Teams Integration................................................................................... 221 

 To Configure Acumatica ERP for Teams Integration....................................................................................229 

 To Use Teams Integration..............................................................................................................................234 

**Integrating Acumatica ERP with OpenID Identity Providers....................................................................237** 

 Configuration of an OpenID Identity Provider............................................................................................. 237 

 Sign-In with OpenID Identity Providers........................................................................................................244 

 Direct Sign-In Through an OpenID Identity Provider...................................................................................247 

 To Register an Acumatica ERP Instance with Google.................................................................................. 248 

**Integrating Acumatica ERP with SendGrid............................................................................................ 254** 

 Configuration of Integration with SendGrid.................................................................................................254 

 Mail Processing by Using SendGrid.............................................................................................................. 256 

**Integrating with LLM Providers............................................................................................................ 261** 

 Integration with LLM Providers: General Information................................................................................. 261 

**Configuring Multifactor Authentication................................................................................................ 273** 

 General Purpose and Types of Multifactor Authentication......................................................................... 273 

 Multifactor Authentication in Acumatica ERP..............................................................................................274 

 To Implement Multifactor Authentication....................................................................................................274 

**Managing Integration with External Applications.................................................................................. 276** 

**Preparing Data for Import and Export by Using Scenarios...................................................................... 277** 

 Import and Export Scenarios........................................................................................................................ 277 

 Data Providers................................................................................................................................................279 

 To Create a CSV Data Provider...................................................................................................................... 281 

 To Create an Excel Data Provider..................................................................................................................283 

 To Create an XML Data Provider................................................................................................................... 284 

 To Create a Microso SQL Data Provider..................................................................................................... 286 

 To Modify a File Data Provider...................................................................................................................... 287 

 To Link a File Data Provider to an Existing File............................................................................................ 287 

**Configuring Import Scenarios.............................................................................................................. 289** 

 Import Scenario Creation..............................................................................................................................289 

 Import Scenario Parameters......................................................................................................................... 290 

 Target Objects and Fields in Import Scenarios............................................................................................ 290 

 Source Fields in Import Scenarios................................................................................................................297 

 Source Restrictions in Import Scenarios...................................................................................................... 298 

 Target Restrictions in Import Scenarios....................................................................................................... 298 


<!-- PAGE_BREAK -->
 Contents | 6 

 Use Cases....................................................................................................................................................... 299 

 Importing Records with Multiple-Value Attributes (Leads)................................................................ 299 

 Importing Records with Automatic Numbering (Vendors).................................................................303 

 Importing Payment Instructions (Vendors).........................................................................................308 

 Importing Documents (Vendors)......................................................................................................... 311 

**Configuring Export Scenarios...............................................................................................................315** 

 Export Scenario Creation.............................................................................................................................. 315 

 Export Scenario Parameters..........................................................................................................................316 

 Source Restrictions in Export Scenarios.......................................................................................................316 

**Configuring Scenario Mapping............................................................................................................. 318** 

 General Recommendations and Limitations of Data Import...................................................................... 318 

 Types of Target Fields in Import Scenarios.................................................................................................. 320 

 Fields with Commit in Import and Export Scenarios...................................................................................323 

 Service Commands in Import and Export Scenarios...................................................................................323 

 Dialog Boxes in Import Scenarios.................................................................................................................324 

 Actions in Import Scenarios.......................................................................................................................... 324 

 Workflow Actions in Import and Export Scenarios...................................................................................... 326 

 Key Fields and Search in Import Scenarios..................................................................................................328 

 Export of All Records: Use of Every...............................................................................................................331 

 Data Modification During Export: Use of Commit and Actions................................................................... 332 

 Multilanguage Fields in Import and Export Scenarios.................................................................................332 

 The Use of Formulas......................................................................................................................................334 

 Operators........................................................................................................................................................336 

 Functions........................................................................................................................................................ 340 

 To Substitute Values During Data Import or Data Export............................................................................351 

**Importing and Exporting Records by Using Scenarios............................................................................ 353** 

 Data Import.................................................................................................................................................... 353 

 Simple Scenarios for Data Import................................................................................................................ 356 

 Data Export.....................................................................................................................................................357 

 Troubleshooting Performance in Import and Export Scenarios................................................................. 358 

**Using the Acumatica Add-In for Outlook............................................................................................... 361** 

 Overview of the Acumatica Add-In for Outlook........................................................................................... 361 

 Add-In for Outlook: Classic UI.......................................................................................................................361 

 Installing and Updating the Acumatica Add-In for the AcumaticaClassic UI.................................... 362 

 Getting Started......................................................................................................................................368 

 Handling Acumatica ERP Entities........................................................................................................370 


<!-- PAGE_BREAK -->
 Contents | 7 

 Add-In for Outlook: Modern UI..................................................................................................................... 377 

 Acumatica Add-In for Outlook: System Requirements for the Add-In Installation........................... 377 

 Acumatica Add-In for Outlook: To Register an Acumatica ERP Instance in Microso Entra............. 379 

 Acumatica Add-In for Outlook: To Create an OpenID Provider..........................................................381 

 Acumatica Add-In for Outlook: Add-In Installation............................................................................ 382 

 Acumatica Add-In for Outlook: To Install the Acumatica Add-In....................................................... 384 

 Acumatica Add-In for Outlook: To Update the Acumatica Add-In..................................................... 385 

 Acumatica Add-In for Outlook: Getting Started with the Add-In....................................................... 385 

 Acumatica Add-In for Outlook: General Information......................................................................... 387 

 Acumatica Add-In for Outlook: Email Activity Management..............................................................396 

 Acumatica Add-In for Outlook: Contact Management....................................................................... 400 

 Acumatica Add-In for Outlook: Business Account Management....................................................... 403 

 Acumatica Add-In for Outlook: Lead Management............................................................................ 405 

 Acumatica Add-In for Outlook: Opportunity Management................................................................407 

 Acumatica Add-In for Outlook: Case Management............................................................................ 409 

 Acumatica Add-In for Outlook: Incoming Document Management.................................................. 410 

 Acumatica Add-In for Outlook: Project Management........................................................................ 412 

 Acumatica Add-In for Outlook: Requests for Information Management........................................... 413 

 Acumatica Add-In for Outlook: Project Issue Management............................................................... 415 

**Setting Up Synchronization with Salesforce..........................................................................................417** 

 Overview of Synchronization with Salesforce............................................................................................. 417 

 Synchronization Solution Overview.................................................................................................... 417 

 Requirements and Prerequisites......................................................................................................... 418 

 Configuration........................................................................................................................................ 419 

 Supported Data.....................................................................................................................................420 

 Data Synchronization Process............................................................................................................. 421 

 Synchronization of Case Records........................................................................................................ 423 

 Export of Sales Prices........................................................................................................................... 424 

 Limitations............................................................................................................................................ 426 

 Quick Configuration Steps............................................................................................................................ 427 

 Configuration of Salesforce..................................................................................................................427 

 Configuration of Acumatica ERP......................................................................................................... 427 

 To Quickly Obtain a Salesforce Instance...................................................................................................... 428 

 To Obtain a Salesforce Security Token......................................................................................................... 428 

 To Create a Connected App in Salesforce.................................................................................................... 428 

 To Create a Connected App in Salesforce Lightning....................................................................................429 


<!-- PAGE_BREAK -->
 Contents | 8 

 To Create Custom Fields in Salesforce......................................................................................................... 429 

 To Create Custom Fields in Salesforce Lightning.........................................................................................430 

 To Configure Validation Rules in Salesforce.................................................................................................430 

 To Configure Validation Rules in Salesforce Lightning................................................................................432 

 To Disable State and Postal Code Validation............................................................................................... 434 

 To Configure the Salesforce Data Provider.................................................................................................. 434 

 To Configure Predefined Integration Scenarios...........................................................................................434 

 To Set Up Data Synchronization in Acumatica ERP.....................................................................................435 

 To Activate the Predefined Periodic Schedule.............................................................................................435 

 To Create a Salesforce Sync Schedule..........................................................................................................436 

 To Create a Schedule for Full Data Resync...................................................................................................436 

**Appendix............................................................................................................................................ 438** 

 Reports........................................................................................................................................................... 438 

 Report Form.......................................................................................................................................... 438 

 Report....................................................................................................................................................445 

 Form Toolbar and More Menu.......................................................................................................................446 

 Table Toolbar................................................................................................................................................. 453 


<!-- PAGE_BREAK -->
 Copyright | 9 

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
 Integrating Acumatica ERP with Avalara Avatax | 10 

## Integrating Acumatica ERP with Avalara Avatax 

 The integration of Acumatica ERP with the Avalara AvaTax service offers your company the following benefits: 

- Real-time tax calculation for all transactions 

- Up-to-date tax rates for all US tax jurisdictions 

- Verification of customer addresses to ensure accurate tax jurisdiction assignment 

- Management of customer reseller permits and exemption certificates 

- Filing of tax reports on behalf of each branch that reports separately to the appropriate tax authorities This integration simplifies tax management, ensuring that your company remains compliant with state and local tax regulations. 

 This chapter describes the configuration and management of Acumatica ERP integration with the Avalara AvaTax service. 

### Setup of Online Integration with Avalara AvaTax 

 If your company sells multiple types of products across various tax jurisdictions, it can be time-consuming and complex to configure tax calculation and reporting in Acumatica ERP, along with keeping tax rates up to date. In these cases, you may want to consider integrating with Avalara's AvaTax service to streamline sales and use tax processing online. Because Acumatica ERP includes built-in support for online integration with AvaTax, setting up this integration is quick and straightforward. 

 The integration involves tasks that should be performed on both sides: in Acumatica ERP and in Avalara AvaTax. 

#### Account Configuration on the Avalara Website 

 You can configure the integration with the AvaTax service as soon as you have the following: 

- A subscription to the AvaTax service ( _[http://www.avalara.com](http://www.avalara.com)_ ) 

- The license key and password to your organization's account in AvaTax 

- The credentials (username and password) to the AvaTax admin console 

 We recommend that you subscribe to the AvaTax Pro service, which has the features to meet most of your tax-related needs. It validates addresses, maintains up-to-date tax rates, stores customer exemption certificates, and files tax returns. 

 In your AvaTax account, you should configure a company structure that corresponds to the structure of branches in Acumatica ERP. You also need to configure a tax profile for each company in AvaTax (which corresponds to each Acumatica ERP branch). 

 For more information, see To Configure Your Avalara AvaTax Account. 

#### AvaTax Integration Setup in Acumatica ERP 

 Make sure that the External Tax Calculation Integration feature is enabled in your system on the Enable/Disable Features (CS100000) form. 

 To set up the integration with the AvaTax service in Acumatica ERP, perform these general steps: 

1. Establish the connection between Acumatica ERP and your AvaTax account. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Avalara Avatax | 11 

2. Map each Acumatica ERP branch to its corresponding company in the AvaTax account. 

3. Configure address verification in Avalara AvaTax to ensure accurate tax jurisdiction assignments. 

4. Create a dedicated tax agency account specifically for use with Avalara AvaTax. 

5. Create a tax zone and associate it with the tax agency you have created for use with Avalara AvaTax. 

6. Set up the Avalara AvaTax tax codes. Since AvaTax uses hundreds of tax codes for US products and services,     you need to configure these as tax categories in Acumatica ERP as follows: 

- If your company sells a wide variety of products, create a tax category for each tax code in Acumatica     ERP. Consider importing these tax codes by using an import scenario, which you can create on the _Import_     _Scenarios_ (SM206025) form. 

- If your company's stock list is small, on the _Tax Categories_ (TX205500) form, create only the necessary tax     categories corresponding to the tax codes that apply to your company's items. 

- If a default tax category is sufficient, create one (for example, _Taxable_ ) by using the _Tax Categories_     (TX205500) form. Create the corresponding tax code in your Avalara AvaTax account and link it to the     default tax category in Acumatica ERP. 

7. Specify the Avalara tax zone as the default tax zone for each required customer. 

8. Assign a specific tax category to each stock and non-stock item that matches the corresponding AvaTax tax     code.     If you are importing stock item records from another system, include steps for assigning tax categories in     your import scenario. 

 To simplify tax category assignments for similar items, use item classes defined on the Item Classes (IN201000) form. Once a tax category is assigned to an item class, all items in that class will automatically inherit the tax category and other class settings when they are created. 

 For instructions on configuring the AvaTax integration, see To Set Up Integration With AvaTax. 

 We recommend either using the AvaTax integration for tax calculation or setting up the tax calculation process within Acumatica ERP. This ensures that you don’t mix two different tax calculation methods in one system. 

### Sales Tax Calculation 

 In Acumatica ERP, you can set up sales tax calculation for accounts receivable documents, sales orders, and pro forma invoices by using the Avalara AvaTax service. This topic provides an overview of the supported document types, key configuration steps, and important details related to the tax calculation process. 

#### Configuration of Sales Tax Calculations 

 Sales tax calculation can be performed by the Avalara AvaTax service for the following documents in Acumatica ERP: 

- Documents of the _Invoice_ , _Credit Memo_ , and _Debit Memo_ types created on the _Invoices and Memos_     (AR301000) form 

- Documents of the _Invoice_ , _Credit Memo_ , _Debit Memo_ , _Cash Sale_ , and _Cash Return_ types created on the     _Invoices_ (SO303000) form 

- Sales orders created on the _Sales Orders_ (SO301000) form 

- Pro forma invoices created on the _Pro Forma Invoices_ (PM307000) form 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Avalara Avatax | 12 

 To initiate the tax calculation process for a document in Acumatica ERP, the following configuration tasks must be completed: 

1. An external tax provider must be configured on the _Tax Providers_ (TX102000) form. 

2. A dedicated tax zone must be created on the _Tax Zones_ (TX206000) form. In addition to other tax zone     settings, the following must be specified: 

- The **External Tax Provider** check box is selected. 

- _Sales Taxes_ is specified in the **Calculate in AP** box. 

3. The tax zone must be specified either directly in a document or in the customer’s settings. 

4. For a sales order created on the _Sales Orders_ form and invoice prepared for this order on the _Invoices_ form,     make sure that the **Disable Automatic Tax Calculation** check box is cleared on the **Financial** tab. If the     check box is selected, Acumatica ERP stops sending API requests to the Avalara AvaTax service. 

5. The tax categories must be specified either directly in a document line or in the stock or non-stock item     settings so that the system automatically copies them into the document settings. 

 When you save a document and remove it from hold in Acumatica ERP, the system sends an API request to the Avalara AvaTax service. The AvaTax service responds with the applicable tax information, including tax IDs, tax rates, tax amounts, and taxable amounts. This information is added to the Taxes tab of the document form. The total tax amount is shown in the Summary area of the document. The system also adds the applied taxes to the Taxes (TX205000) form. 

#### Tax Calculation Approaches 

 In Acumatica ERP, the calculation of taxes can be performed for one document individually or for multiple documents at the same time as described below: 

- Individually: Tax calculations is performed directly on document entry forms, such as _Invoices and Memos_     (AR301000) or the _Invoices_ (SO303000) form. Taxes are calculated for each document individually as it is     entered or updated. 

- As a group and potentially on a schedule: Taxes are mass-calculated on the _Calculate Taxes_ (AP501600),     _Calculate Taxes_ (CA501600), and _Calculate Taxes_ (AR501600) forms. These forms display documents of     specific types where taxes have not yet been calculated. AvaTax processes these documents sequentially,     calculating the taxes and returning the corresponding tax IDs and tax amounts for each document. On these     forms, you can set up an automation schedule so that the taxes in documents are calculated automatically     according to the schedule. 

 Taxes are calculated on sales orders on the Sales Orders (SO301000) form only for informational purposes. Only taxes on invoices are actually reported. 

#### Address Verification for the Sales Tax Calculation 

 For sales tax calculation, Acumatica ERP sends the document and address information to Avalara, including the sender's address (the shipFrom parameter in the API request) and the recipient's address (the shipTo parameter in the API request). The system determines these addresses as follows: 

- shipFrom is typically the address of the branch specified in the invoice in the **Branch** box on the **Financial**     tab of the _Invoices and Memos_ (AR301000) form.     If you're using the _Service Management_ functionality and the invoice is created from a service order or an     appointment, shipFrom is the address of the warehouse specified for the line item or the branch location     address of the service order (if no warehouse is applicable).     For _Credit Memo_ or _Cash Return_ documents, Acumatica ERP sends the customer's location address as the     shipFrom value.     Although this address does not affect the sales tax calculation, it is required by the Avalara API. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Avalara Avatax | 13 

 If an invoice contains at least one line linked to a sales order with the Will Call check box selected on the Shipping tab of the Sales Orders (SO301000) form, the system will use the shipFrom address as the shipTo address for the document. 

- shipTo directly affects tax calculation. Acumatica ERP uses different address sources depending on the     specific document, as outlined in the table below, when sending information to Avalara for tax calculation. 

 Document shipTo 

 An AR invoice created on the Invoices and Memos form, including an invoice that refers to a project (but excluding an invoice that refers to a service order or appointment) 

 The main contact address that is specified for the customer account on the General tab of the Customers (AR303000) form 

 An AR invoice created on the Invoices and Memos form if the invoice has been generated for a service order or appointment 

 The address specified in the Address section on the Settings tab of the Service Orders (FS300100) form for the related service order 

 An AR invoice created on the Invoices and Memos form, for lines that were added to the invoice on this form and for lines that do not have an associated shipment reference number 

 The address of the customer location that is specified for the invoice in the Location box in the Summary area of the Invoices and Memos form and that is also displayed in the Ship-To Address section of the Addresses tab of this form 

 A document with the Invoice , Cash Sale , or Debit Memo type created on the Invoices (SO303000) form, with lines added directly on this form 

 The address of the customer location that is specified for the document in the Location box in the Summary area of the Invoices form and that is also displayed in the Ship-To Address section of the Addresses tab of this form 

 A pro forma invoice created on the Pro Forma Invoices (PM307000) form, with lines added directly on this form 

 The address of the customer location that is specified for the document in the Location box in the Summary area of the Pro Forma Invoices form and that is also displayed in the Ship-To Address section of the Addresses tab of this form 

 If you need the system to use different logic in retrieving the shipTo value for sales tax calculation in documents, you can override the appropriate method through customization of Acumatica ERP. 

#### Line-Level Tax Calculation in AR Invoices 

 An accounts receivable invoice is paid by line when the Pay by Line check box is selected in the Summary area of the Invoices and Memos (AR301000) form. In this case, the taxes calculated by the Avalara AvaTax service are distributed across the line items on release of the document and shown in the Tax Amount column on the Details tab of the form. The tax amounts are included in the balance of each line item and shown in the Balance column on the Details tab. 

 This functionality is available only if the Payment Application by Line feature is enabled on the Enable/Disable Features (CS100000) form. 

#### Modification of Committed Invoices 

 Once an invoice has been saved in Acumatica ERP, with taxes calculated by the Avalara AvaTax service and the invoice committed in Avalara, no further changes can be made to that invoice. Invoices with the Committed status in the Avalara account cannot be updated in Acumatica ERP. Any changes that would trigger a tax recalculation, 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Avalara Avatax | 14 

 such as modifications to the date, address, or amount, cannot be saved, and as a result, the invoice cannot be released. 

#### Incomplete Invoice Processing 

 If any errors occur during tax calculation on the Invoices (SO303000) form and either of the following conditions are met, the invoice is assigned the Incomplete status: 

- The invoice has been created through the _Process Orders_ (SO501000) or _Process Shipments_ (SO503000)     form. 

- The invoice has been created through the _Shipments_ (SO302000) form. If an invoice is assigned the _Incomplete_ status, taxes are not calculated, and payments applied to related sales orders are not transferred to the invoice. 

 To process an Incomplete invoice, on the Invoices form, you click the only available command on the More menu: Complete Processing. When you click this command, the system recalculates the taxes and transfers payments from the related sales orders to the invoice (if no errors occur during the process). 

 You can also process multiple incomplete invoices on the Process Invoices and Memos (SO505000) form. In the Action box of the Selection area, you select Complete Processing , which causes all invoices with the Incomplete status to be listed in the table. You then initiate processing. 

### Sales Tax Calculation in Opportunities and Sales Quotes 

 In Acumatica ERP, sales tax calculations can be performed by the Avalara AvaTax service in opportunities and sales quotes. This topic provides an overview of the key configuration steps and important details related to the process. 

#### Overview of Sales Tax Calculation in Opportunities and Sales Quotes 

 In Acumatica ERP, the integration with Avalara AvaTax supports tax calculation in opportunities and sales quotes. 

 To initiate tax calculation in an opportunity or a sales quote, you do the following on the Opportunities (CR304000) or Sales Quotes (CR304500) form. 

- Add taxable items on the **Details** tab. 

- Specify an _Avalara_ tax zone on the **Shipping** tab in the **Tax Settings** section. (If a business account with     the _Avalara_ tax zone is specified in the Summary area of the form, the system fills in the **Tax Zone** box     automatically.) When you save the document, Acumatica ERP sends an API request to Avalara. The Avalara AvaTax service returns the applicable taxes and specifies their tax IDs, tax rates, tax amounts, and taxable amounts on the **Taxes** tab of the form. The total tax amount is shown in the **Tax Total** box of the Summary area of the form. Additionally, the applied taxes are added to the _Taxes_ (TX205000) form. 

 When a sales quote is generated from the opportunity, the system transfers the opportunity details, including the calculated taxes, to the sales quote on the Sales Quotes form. Similarly, when a sales order is created from an opportunity, the system transfers the opportunity details, including the calculated taxes, to the sales order. 

#### Address Verification for Tax Calculation in Opportunities and Sales Quotes 

 An API request sent from Acumatica ERP to Avalara contains the shipTo and shipFrom parameters. Acumatica ERP defines the shipTo address, which affects the selection of applicable taxes, according to the conditions described in the following table. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Avalara Avatax | 15 

 The table illustrates the conditions on the Opportunities (CR304000) form. The same conditions are applied to the Sales Quotes (CR304500) and Sales Orders (SO301000) forms. 

 Settings shipTo 

 The Ship Via box is populated on the Shipping tab of the Opportunities form. The Common Carrier check box is selected on the Details tab on the Ship via Codes (CS207500) form for the specified ship via code. 

 The customer's address displayed in the Ship-To Address section on the Shipping tab of the Opportunities form 

 The Ship Via box is populated on the Shipping tab of the Opportunities form. The Common Carrier check box is cleared on the Details tab on the Ship via Codes (CS207500) form for the specified ship via code. 

 The address is one of the following: 

- The **Warehouse** address if a warehouse is specified     in a detail line on the **Details** tab of the _Opportuni-_     _ties_ form 

- The branch address if no warehouse is specified in     a detail line 

 The Ship Via box is cleared on the Shipping tab of the Opportunities form. 

 The address is one of the following: 

- The warehouse address specified in a detail line 

- The branch address if a warehouse is not specified 

 The system defines the shipFrom address to be used in an API request to Avalara according to the conditions described in the following table. 

 Settings shipFrom 

 A warehouse is not specified in a detail line on the Details tab. 

 The branch address 

 A warehouse is specified in a detail line on the Details tab. 

 The warehouse address 

### Use Tax Calculation 

 In Acumatica ERP, use tax calculations can be performed by the Avalara AvaTax service in accounts payable bills and purchase orders. This topic provides an overview of the supported document types, along with key setup steps and important details about the process. 

#### Overview of the Use Tax Calculation Setup 

 In Acumatica ERP, the calculation of use taxes is performed in the following documents: 

- Documents of the _Bill_ type created on the _Bills and Adjustments_ (AP301000) form 

- Purchase orders of the _Normal_ , _Drop-Ship_ , and _Project Drop-Ship_ types created on the _Purchase Orders_     (PO301000) form 

 The taxes calculated in purchase orders on the Purchase Orders form are used for informational purposes. Only taxes calculated in AP bills are actually reported. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Avalara Avatax | 16 

To initiate the use tax calculation in a document in Acumatica ERP, the following configuration tasks must be completed: 

1. An external tax provider must be configured on the _Tax Providers_ (TX102000) form. 

2. A dedicated tax zone must be created on the _Tax Zones_ (TX206000) form. In addition to other tax zone     settings, the following must be specified: 

- The **External Tax Provider** check box is selected. 

- _Use Taxes_ is specified in the **Calculate in AP** box. 

3. The tax zone must be specified either directly in the **Vendor Tax Zone** box on a document entry form or in     the vendor's settings on the _Vendors_ (AP303000) form. 

When you save a document, Acumatica ERP sends an API request to the Avalara AvaTax service. The service returns the applicable use taxes, which are added to the **Taxes** tab of the _Bills and Adjustments_ or _Purchase Orders_ form. The system also adds the applied taxes to the _Taxes_ (TX205000) form. 

As a result of use taxes being processed, a GL transaction is posted to the general ledger that debits the tax expense account and credits the accounts payable account with the amount specified in the **Tax Amount** column of the **Taxes** tab on the _Bills and Adjustments_ form. 

 The bill reclassification process does not send updated information about the general ledger accounts to the external tax provider. For more information, see Project Expense Reclassification: Limitations. 

The following table lists the settings of the use taxes that are returned by the Avalara AvaTax service and added to the _Taxes_ form of Acumatica ERP. 

 UI Element Value 

 Tax ID The value from the taxName parameter in the API response + the USE suffix 

 Calculation Rule Exclusive Document-Level (read-only) 

 Description External Tax Provider State tax for followed by the jurisName value from the API response 

 Cash Discount Reduces Taxable Amount (read-only) 

 Tax Type Use (read-only) 

 Exclude from Tax-on-Tax Calculation Selected (read-only) 

 Tax Agency The value of the Tax Agency ID box specified on the Tax Zones form 

 Not Valid After Empty (read-only) 

 Partially Deductible VAT Cleared (read-only) 

 Reverse VAT Cleared (read-only) 

 Statistical VAT Cleared (read-only) 

 Include in VAT Exempt Total Cleared (read-only) 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Avalara Avatax | 17 

 UI Element Value 

 Include in VAT Taxable Total Cleared (read-only) 

 Pending VAT Cleared (read-only) 

 Direct-Entry Tax Cleared (read-only) 

 GL Accounts tab 

 Tax Payable Account The value specified in the Tax Payable Account box on the Tax Agency tab of the Vendors (AP303000) form 

 Tax Payable Subaccount (if applicable) The value specified in the Tax Payable Subaccount box on the Tax Agency tab of the Vendors form 

 Use Tax Expense Account Selected 

 Tax Expense Account The value specified in the Tax Expense Account box on the Tax Agency tab of the Vendors form 

 Tax Expense Subaccount (if applicable) The value specified in the Tax Expense Subaccount box on the Tax Agency tab of the Vendors form 

#### Line-Level Tax Calculation in AP Bills 

 An accounts payable bill is paid by line when the Pay by Line check box is selected in the Summary area of the Bills and Adjustments (AP301000) form. In this case, the taxes calculated by the Avalara AvaTax service are distributed across the line items on release of the bill and shown in the Tax Amount column on the Details tab of the form. The tax amounts are included in the balance of each line item and shown in the Balance column on the Details tab. 

 This functionality is available only if the Payment Application by Line feature is enabled on the Enable/Disable Features (CS100000) form. 

### Tax Reporting with Avalara AvaTax 

 In Acumatica ERP, you can select documents to be included in your tax reports. 

#### Selecting Documents to Post to the AvaTax Account 

 The Post Taxes (TX501500) form displays the list of released transactions for which AvaTax has calculated taxes. You can choose to post all the listed transactions to your AvaTax account or only the ones you select, based on the information you want AvaTax to include in your company's tax reports. Each posted document will have a copy in AvaTax. 

### Setup of Net or Gross Tax Calculation 

 To ensure accurate pricing and compliance with local tax regulations, you can define how taxes are calculated— either as inclusive (gross) or exclusive (net). Start by specifying the default tax calculation mode for a tax provider. You can then fine-tune tax behavior by assigning a specific mode to individual customers or vendors. And when exceptions arise, you have the flexibility to switch the tax mode directly within a document. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Avalara Avatax | 18 

 The Net/Gross Entry Mode feature must be enabled on the Enable/Disable Features (CS100000) form. 

#### Specify a Tax Providers’ Default Tax Calculation Mode 

 Select the default tax calculation mode for a tax provider on the Tax Providers (TX102000) form. In the Default Tax Calculation Mode box, you can select one of the following options: 

- _Gross_ : Refers to inclusive taxes, meaning the price includes taxes 

- _Net_ : Refers to exclusive taxes, meaning the price does not include taxes Keep in mind that you can override this setting for a specific customer, vendor, or directly within a document. 

#### Specify the Tax Calculation Mode for Customers and Vendors 

 We recommend that you specify the tax calculation mode for each customer or vendor to align with their specific tax regulations or pricing structures. The Tax Calculation Mode box is available in the following locations: 

- On the _Customers_ (AR303000) form, on the **Shipping** tab 

- On the _Vendors_ (AP303000) from, on the **Purchase Settings** tab 

#### Tax Calculation Mode in Documents 

 You can view and adjust the tax mode applied to each document. The Tax Calculation Mode box is available on the following forms: 

- _Appointments_ (FS300200) 

- _Bills and Adjustments_ (AP301000) 

- _Cash Sales_ (AR304000) 

- _Cash Transactions_ (CA304000) 

- _Invoices_ (SO303000) 

- _Invoices and Memos_ (AR301000) 

- _Purchase Orders_ (PO301000) 

- _Sales Orders_ (SO301000) 

- _Sales Quotes_ (CR304500) 

- _Service Orders_ (FS300100) 

- _Opportunities_ (CR304000) Note that the tax provider's tax zone—the tax zone with the **External Tax Provider** check box selected on the _Tax Zones_ (TX206000) form—must be specified in the document. 

 If the project functionality is in use in your system, the Tax Calculation Mode box is not shown on the Project Quotes (PM304500), Pro Forma Invoices (PM307000), and Subcontracts (SC301000) forms. During tax calculation: 

- On the _Project Quotes_ and _Subcontracts_ forms, the system uses the tax calculation mode of the customer     or vendor's location. If _Tax Settings_ is selected in the **Tax Calculation Mode** box on the _Customer Locations_     (AR303020) or _Vendor Locations_ (AP303010) forms, the provider’s default tax mode is applied. 

- On the _Pro Forma Invoices_ form, the provider's tax mode is applied by default. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Avalara Avatax | 19 

### AvaTax's Detection of the Customer's Tax Jurisdiction 

 The AvaTax service can identify a customer's tax jurisdiction by using either the postal code or the latitude and longitude coordinates. 

#### Identification of the Customer's Tax Jurisdiction 

 You can specify a customer's location by entering either the postal code or the latitude and longitude coordinates directly on the document entry form or in the customer’s settings. (The list of forms containing the Latitude and Longitude boxes is provided later in this topic.) 

 When you specify the latitude and longitude coordinates, the AvaTax service defines the customer's tax jurisdiction based on these coordinates. If you specify both the postal address and the latitude and longitude coordinates, the AvaTax service defines the tax jurisdiction based on the postal code. If the postal code and the latitude or longitude coordinate (or both coordinates) are missing, the AvaTax service cannot identify the tax jurisdiction, and the system displays an error message. 

 Aer the latitude and longitude coordinates are saved, the system copies these coordinates between the associated documents. For example, when you create an invoice based on a sales order, the system copies the address information, including the latitude and longitude coordinates, from the sales order to the invoice. You can override the copied coordinates, if needed. 

 The entered latitude and longitude coordinates must be specified to six decimal places. 

#### Forms and Reports that Use Latitude and Longitude Coordinates 

 The following forms have the Latitude and Longitude boxes. 

 Form Location 

 Invoices and Memos (AR301000) In the Ship-To Address section of the Addresses tab 

 Customers (AR303000) In the Ship-To Address section of the Shipping tab 

 Customer Locations (AR303020) In the Ship-To Address section of the Shipping tab 

 Cash Sales (AR304000) In the Ship-To Address section of the Addresses tab 

 Business Accounts (CR303000) In the Ship-To Address section of the Shipping tab 

 Account Locations (CR303010) In the Location Addresses section of the General tab 

 Opportunities (CR304000) In the Ship-To Address section of the Shipping tab 

 Sales Quotes (CR304500) In the Ship-To Address section of the Shipping tab 

 Service Orders (FS300100) In the Address section of the Settings tab 

 Appointments (FS300200) In the Address section of the Settings tab 

 Project Quotes (PM304500) In the Ship-To Address section of the Addresses tab 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Avalara Avatax | 20 

 Form Location 

 Sales Orders (SO301000) In the Ship-To Address section of the Addresses tab 

 Shipments (SO302000) In the Ship-To Address section of the Shipping tab 

 Invoices (SO303000) In the Ship-To Address section of the Addresses tab 

 The latitude and longitude coordinates are displayed on the reports that are generated on the following report forms: 

- _Invoice & Memo_ (SO643000) 

- _Invoice/Memo_ (AR641000) 

- _Service Order_ (FS641000) 

- _Appointment_ (FS642000) 

- _Sales Order_ (SO641010) 

- _Shipment Confirmation_ (SO642000) 

- _Appointments in Service Order_ (FS642500) 

### To Configure Your Avalara AvaTax Account 

 This topic outlines the general steps for configuring an Avalara AvaTax account. 

 Please refer to the documentation from Avalara to complete the listed steps. 

 To set up your account in Avalara AvaTax, perform these steps: 

1. Create an organizational structure.     Set up an organizational structure in Avalara AvaTax that mirrors the branch structure in your Acumatica     ERP. Use the parent company, child company, and separate reporting entity properties to represent your     organization's branches. Once the structure is created, associate each branch in Acumatica ERP with the     corresponding company in Avalara AvaTax. 

2. Set up tax profiles.     Create a tax profile in Avalara AvaTax for each company (that is, each branch in Acumatica ERP). Be sure to     select the states where each company has a tax nexus to ensure accurate tax calculation. 

3. Map tax codes.     Map the tax codes between Avalara AvaTax and Acumatica ERP. Depending on your Avalara AvaTax     subscription and the stage of your Acumatica ERP setup, you can either use AvaTax system tax codes     directly or map your existing Acumatica ERP tax categories to the AvaTax system tax codes. This mapping is     managed on the Avalara website. 

4. _Optional:_ Configure and maintain tax rules as needed. For example, define tax holidays for specific products     during certain periods. 

 AvaTax gives you the ability to gather and store information about customer exemption certificates. For details, see Exception Certificate Management: General Information. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Avalara Avatax | 21 

### To Set Up Integration With AvaTax 

 To set up integration between Acumatica ERP and Avalara AvaTax, you need to perform the following general steps, each of which is described in its own section of this topic: 

1. Set up the connection on the _Tax Providers_ (TX102000) form. 

2. Enable the _Address Validation Integration_ feature on the _Enable/Disable Features_ (CS100000) form, and     configure address verification on the _Countries/States_ (CS204000) form. 

3. Set up a tax agency to be used for the AvaTax integration on the _Vendors_ (AP303000) form. 

4. Create a tax zone on the _Tax Zones_ (TX206000) form that will be used with this special tax agency. 

5. Create tax categories to be associated with the AvaTax tax codes on the _Tax Categories_ (TX205500) form. 

6. Specify the appropriate settings for the customers on the _Customers_ (AR303000) form. 

7. Assign tax categories to stock items and non-stock items on the _Stock Items_ (IN202500) and _Non-Stock Items_     (IN202000) forms. 

 Before you start configuring the integration with Avalara AvaTax in Acumatica ERP, make sure of the following: 

- Your Avalara AvaTax account has been configured. For details, see _To Configure Your Avalara_     _AvaTax Account_. 

- The _External Tax Calculation Integration_ feature has been enabled on the _Enable/Disable_     _Features_ (CS100000) form. 

#### Connecting Acumatica ERP to Your AvaTax Account 

 To establish a connection between Acumatica ERP and your AvaTax account, do the following: 

1. On the _Tax Providers_ (TX102000) form, add a new record. 

2. In the **Provider ID** box of the Summary area, type the identifier to be used for the provider. 

3. In the **Description** box, enter a description of the provider. 

4. In the **Plug-In (Type)** box, select the built-in Avalara plug-in. 

5. Select the **Active** check box to activate the connection. 

6. On the **Plug-In Parameters** tab, in the **Value** column for the _Account Number_ parameter, type your account     number in AvaTax. 

7. In the **Value** column for the _License Key_ parameter, type the license key your company uses for connecting to     AvaTax. 

8. In the **Value** column for the _URL_ parameter, type the URL to be used to connect to AvaTax. 

9. In the **Value** column for the _Request Timeout (sec)_ parameter, type the number of seconds for the     connection timeout. 10.In the **Value** column for the _Send Sales Account_ and _Check Address Before Calculating Tax_ parameters, select     the check boxes; also, if required, in the **Value** column for the _Inclusive Tax_ parameter, select the check box. 11.In the **Value** column for the _Log Trace_ parameter, select the check box if you want the system to save the     requests and results of the calls to the trace logs. 12.On the form toolbar, click **Test Connection** to test the connection. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Avalara Avatax | 22 

 If the connection is successful, you will see a Test Connection message confirming the validity of your credentials. 

 13.On the Company Code Mapping tab, click Add Row on the table toolbar to add a new row. 14.In the Branch column of the new row, select a branch by its ID to map it to the corresponding company that you have created in the AvaTax account. 15.In the Company Code column, type the company name that you have created in AvaTax for this branch. 16.Repeat Instructions 13–15 for each branch. 17.On the form toolbar, click Save. 

#### Configuring an Address Validation Provider 

 To set up an address validation provider in Acumatica ERP, do the following: 

1. On the _Address Providers_ (CS103000) form, add a new record. 

2. In the **Provider ID** box, type the identifier to be used for the provider. 

3. In the **Description** box, enter the description of the provider. 

4. In the **Plug-In** box, select the built-in Avalara address validation plug-in. 

5. Select the **Active** check box to activate the connection. 

6. On the **Plug-In Parameters** tab, in the **Value** column for the _Account Number_ parameter, type your account     number in AvaTax. 

7. In the **Value** column for the _License Key_ parameter, type the license key your company uses for connecting to     AvaTax. 

8. In the **Value** column for the _URL_ parameter, type the URL to be used to connect to AvaTax. 

9. In the **Value** column for the _Request Timeout (sec)_ parameter, type the number of seconds for the     connection timeout. 10.On the form toolbar, click **Test Connection** to test the connection. 

 If the connection is successful, you will see a Test Connection message confirming the validity of your credentials. 

 11.On the form toolbar, click Save. 

#### Setting Up Address Verification 

 To set up address verification in Acumatica ERP, do the following: 

1. Open the _Countries/States_ (CS204000) form. 

2. In the **Country ID** box of the Summary area, select _US_. 

3. In the **Address Verification Plug-In** box, select the Avalara address validation plug-in you set up. 

4. On the form toolbar, click **Save**. 

#### Setting Up a Tax Agency 

 To set up a tax agency in Acumatica ERP, do the following: 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Avalara Avatax | 23 

 In Acumatica ERP, a tax agency is defined as a vendor. 

1. On the _Vendors_ (AP303000) form, add a new record. 

2. In the **Vendor ID** box, type AVALARA (or another name that complies with the formatting rules defined by     the _VENDOR_ segmented key). 

3. In the **Vendor Class** box, select a vendor class that has been defined for tax agencies (if you have defined     such a class) or any other appropriate class. 

4. On the **General** tab (in the **Account Address** section), in the **Country** box, select _US_. 

5. In the **Vendor Properties** section, select the **Vendor Is Tax Agency** check box. Notice that the **Tax Agency**     tab appears. 

6. On the **GL Accounts** tab, specify the general ledger accounts and subaccounts that will be used for this     vendor. 

 Default accounts and subaccounts (if subaccounts are used in your system) are displayed if they have been specified for the vendor class that you have selected in the Summary area; however, you can select other accounts and subaccounts. 

7. On the form toolbar, click **Save**. 

#### Creating a Tax Zone 

 To create a tax zone to be used for the AvaTax service, do the following: 

1. On the _Tax Zones_ (TX206000) form, add a new record. 

2. In the **Tax Zone ID** box, type AVALARA. 

3. Select the **External Tax Provider** check box; the **Provider ID** and **Tax Agency ID** boxes appear on the form. 

4. In the **Provider ID** box, select the Avalara tax provider. 

5. In the **Tax Agency ID** box, select the tax agency you created for this integration. 

6. On the form toolbar, click **Save**. 

#### Creating Tax Categories for Tax Codes 

 To create a tax category or multiple categories for use with the integration, perform the following instructions: 

1. On the _Tax Categories_ (TX205500) form, add a new record. 

2. In the **Tax Category ID** box, type an AvaTax code, and in the **Description** box, provide a description. 

3. On the form toolbar, click **Save**. 

4. Repeat Instructions 1–3 for each required tax code. 

#### Specifying the Customer Settings 

 To specify the settings related to Avalara integration for a customer, do the following: 

1. Open the _Customers_ (AR303000) form. 

2. Select a customer for which sales taxes should be calculated by AvaTax. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Avalara Avatax | 24 

 Each customer has at least one automatically created location. 

3. On the **Locations** tab, click the link of one of the listed customer locations (or the only customer location, if     only one is listed). 

4. On the **Shipping** tab of the _Customer Locations_ (AR303020) form, which opens in a pop-up window, in the     **Tax Zone** box, select _Avalara_. 

5. In the **Tax Registration ID** box, enter the customer's tax registration number. 

6. If this customer location is tax exempt, in the **Tax Exemption Number** box, enter the tax exemption number. 

7. In the **Tax Exemption Type** box, select the appropriate tax exemption reason. 

8. On the form toolbar, click **Save** , and close the pop-up window. 

9. For each additional location, repeat Instructions 4–8. 

#### Assigning Tax Categories to Stock Items and Non-Stock Items 

 To assign a specific tax category to each needed stock and non-stock item, do the following: 

1. Open the _Stock Items_ (IN202500) or _Non-Stock Items_ (IN202000) form. 

2. Select a stock or non-stock item by its inventory ID. 

3. On the **General** tab, in the **Tax Category** box, select the appropriate tax category for the item. 

4. On the form toolbar, click **Save**. 


<!-- PAGE_BREAK -->
 Configuring Exception Certificate Management with Avalara | 25 

## Configuring Exception Certificate Management with 

## Avalara 

 In 43 states across the United States, economic nexus laws require businesses to collect and remit sales taxes based on their activities within each state. These laws require businesses to manage tax-exempt transactions for various customer types, such as healthcare organizations, governments, universities, and nonprofit organizations, which are exempt from tax payments. Therefore, companies must have current and correct versions of their customers' tax exemption certificates to accurately apply valid certificates to transactions. 

 In this chapter, you will explore how to implement the exemption certificate management functionality in Acumatica ERP. You can use this functionality to accurately track tax-exempt transactions for eligible customers. 

### Exception Certificate Management: General Information 

 In Acumatica ERP, you can configure tax-exemption functionality through Avalara integration. This gives you the ability to request the tax exemption certificates from eligible customers and keep the certificates updated. As a result, you can manage tax-exempt transactions seamlessly through Avalara's exemption certificate management (ECM) service. 

#### Learning Objectives 

 In this chapter, you will learn how to do the following: 

- Configure integration of Acumatica ERP with the Avalara ECM provider 

- Add multiple Acumatica ERP customers to the Avalara ECM account 

- Add a single Acumatica ERP customer to the Avalara ECM account 

- Request an exemption certificate from a customer 

- Retrieve an exemption certificate in Acumatica ERP 

- Update a customer's information in the Avalara ECM account 

#### Applicable Scenarios 

 You configure Avalara exemption certificate management in Acumatica ERP in the following cases: 

- Your company has customers across various states in the US, and some customers are qualified for tax     exemptions. 

- You want to use an online service to easily manage tax-exempt transactions for various customer types and     keep the tax exemption certificates up to date. 

#### Configuring the Exemption Certificate Management in Acumatica ERP 

 Acumatica ERP provides built-in support for seamless online integration with Avalara, covering the exemption certificate management solution. For details, see Exception Certificate Management: Configuration Workflow. 

 Once integration with Avalara's ECM service is configured, you add Acumatica ERP customers to the Avalara ECM account. Then, in Acumatica ERP, you request tax exemption certificates from eligible customers, which are then uploaded to the Avalara ECM account. In Acumatica ERP, you can also retrieve, view, update and print certificates as needed. These processes are described in detail in the next sections of this topic. 

 With Avalara ECM service configured, tax-exempt transactions are efficiently managed within Acumatica ERP. 


<!-- PAGE_BREAK -->
 Configuring Exception Certificate Management with Avalara | 26 

#### Adding Customers to the ECM Provider Account 

 In Acumatica ERP, you can add either a single customer or multiple customers at once to the ECM account. To add a specific customer to the Avalara ECM account, on the More menu of the Customers (AR303000) form, you click the Create Customer in ECM Provider command. The system opens the Select Company Code dialog box, which shows all company codes available for the customer. A company code represents a company that has been created in Avalara and linked to one or more branches in Acumatica ERP. You select any number of company codes for which the customer record must be created in the Avalara ECM provider account. Then you click OK , which closes the dialog box. If only one company code is linked to Acumatica ERP, the system does not open the dialog box; instead, it adds the corresponding customer record to the Avalara ECM provider account for the only available company code. 

 To create multiple customers at once in Avalara ECM account, you do the following on the Manage Exempt Customers (TX505000) form: 

1. In the Selection area, you specify the following settings: 

- **Action** : _Create Customer in ECM Provider_.     When you select this option, the table shows all the active customers defined in Acumatica ERP. The     customers that you select for processing will be added to the Avalara ECM provider account. 

- **Company Code** : The company code you want to assign to each customer added to the Avalara ECM     provider account. 

 If only one company code is available, the system inserts it by default, and the box is unavailable for editing. 

2. You do one of the following: 

- To add only the selected customer records in the Avalara ECM account, select the unlabeled check box     in the rows of the customers that must be added to the Avalara ECM account. Then on the form toolbar,     click **Process**. 

- To add all listed customers to the Avalara ECM account, on the form toolbar, click **Process All**. 

 The same customer can be added to the Avalara ECM account for multiple company codes. During each process, however, you can add the processed customers to a single code. If customers have been created for only one of the available company codes, when you select another code in the Company Code box, the whole list of customers will again be displayed when you start to add customers to the Avalara ECM account for another company code. 

 Once the processing has completed, the processed customers are added to the ECM provider, and the success message is displayed next to each customer on the Processed tab of the Processing dialog box. If any of the customers have already been created in the ECM provider with the company code, the system displays a warning message about this on the Warnings tab of the Processing dialog box. In this case, the system only synchronizes the company code specified for the customer in the ECM account with Acumatica ERP. 

#### Requesting a Customer's Exemption Certificate 

 To request a certificate from a particular customer, you first open the customer on the Customers (AR303000) form. Then on the More menu, you click Request Certificate. 

 The Request Certificate command is unavailable if the customer has not been created in the ECM provider account. 

 In the Request Certificate dialog box, which opens, you fill in the following boxes: 

- **Company Code** : The company code to which the certificate will be linked. You can select one of the     company codes available for this customer. By default, the system inserts the company code that 


<!-- PAGE_BREAK -->
 Configuring Exception Certificate Management with Avalara | 27 

 corresponds to the current branch—that is, the branch that is selected in the Company and Branch Selection menu at the top of the Acumatica ERP screen. 

- **Email** : The email address to be used for sending a request. By default, the customer's default email address     is specified. 

- **Certificate Request Template** : The cover letter template that the system will use to send the request. You     can use any template that has been created in the Avalara ECM provider. 

- **Country** : The country of the customer. By default, _US_ is inserted. 

- **State** : The state for which the exemption certificate will be issued. The user selects a state from the list of     states available for the selected country. 

- **Reason for Exemption** : The reason the customer is exempt from paying taxes. The lookup table contains     the list of exemption reasons that have been created in the Avalara ECM provider. When you click **Request** in the dialog box, the system sends a request to the provided email address and closes the dialog box. If the request has been sent successfully, a message about its success is displayed in the top-right corner of the _Customers_ form. If the certificate was not successfully requested, then a warning message is shown instead. 

 Once a customer has received a request, they need to upload an exemption certificate to Avalara by using the link provided in the email. Once the certificate is uploaded, it appears in the ECM account in the customer's list of certificates. Aer that, the certificate can be retrieved in Acumatica ERP. 

#### Retrieving, Viewing, and Printing a Customer's Exemption Certificates 

 In Acumatica ERP, you can view all of a customer's exemption certificates that have been added to the ECM account. To begin this process, you open the customer on the Customers (AR303000) form. On the More menu, click the Retrieve Certificates command under Exemption Certificates. 

 This command is available for users with the Admin , Acumatica Support , TX Admin , AR Admin , or AR Clerk access rights. 

 Once you click the command, the Exemption Certificates dialog box opens, which shows the list of all of the customer's exemption certificates that are available in the ECM account. 

 You can check the statuses of the existing certificates ( Valid or Invalid ) in the Certificate Status column. You can request a new certificate from the customer by selecting a needed row and clicking Request Certificate on the table toolbar. 

 By clicking the Refresh button, which is also available on the table toolbar, you refresh the list of certificates; the system sends a new API request to Avalara to obtain the latest available certificates. 

 To open and view a certificate, you click the certificate number (which is displayed as a link) in the Certificate ID column. The system opens the certificate file in a new tab, on which you can save and print the certificate. If a certificate file is not available in the ECM provider, when you click the link in the Exemptions Certificates dialog box, the system displays an error message at the top right corner of the form: The certificate cannot be opened because no certificate file is attached. 

#### Updating Customers in the Avalara ECM Provider Account 

 Sometimes an update of a customer's information may be required in the Avalara ECM account if any changes have been made to the customer settings in Acumatica ERP. This may occur, for example, if some changes have been made to the business or the contact's personal details, such as name and address. 

 Once any changes have been made to a customer in Acumatica ERP, the Update Customer in ECM Provider menu command becomes available on the More menu of the Customers (AR303000) form. 


<!-- PAGE_BREAK -->
 Configuring Exception Certificate Management with Avalara | 28 

 This command is available if the customer has already been added to the Avalara ECM provider account. 

 When you click the command, the corresponding customer record is updated in the Avalara ECM provider account, and the following message is shown in the top right corner of the form: The customer has been updated successfully in the Avalara ECM provider. You can check the ECM account to be sure that the customer details have been updated successfully. 

 To mass-update customers, on the Manage Exempt Customers (TX505000) form, in the Selection area, you select the Update Customer in ECM Provider action (see the following screenshot. Then you update customers in either of the following ways: 

- Update only selected customers by selecting the unlabeled check boxes in the table and clicking **Process** on     the form toolbar 

- Update all customers by clicking **Process All** on the form toolbar 

 Figure: The Update Customer in ECM Provider action 

 When you select the Update Customer in ECM Provider action, the table lists all the active customers whose information has been updated in Acumatica ERP and that have already been added to the Avalara ECM account for at least one company code. 

 To update any number of customers in the Avalara ECM provider account, you should do the following on the Manage Exempt Customers form: 

1. In the Selection area, you select _Update Customer in ECM Provider_ in the **Action** box. 

2. Then you do one of the following: 

- To update only selected customer accounts: In the table, select the unlabeled check box in each row     of the customers that must be updated in the Avalara ECM account. Then on the form toolbar, click     **Process**. 

- To update all listed customers: On the form toolbar, click **Process All**. 

 Once the process has been successfully completed, the customer records disappear from the table. 

### Exception Certificate Management: Configuration Workflow 

 Before you start to add customers to the Avalara exception certificate management (ECM) account and request exempt certificates for them, you should be sure that the needed feature has been enabled in Acumatica ERP, settings have been specified, and entities have been configured, as described in the following sections of this topic. 

 Before the exemption certificate management functionality can be configured, integration with Avalara must be configured in Acumatica ERP, and the ECM tax provider account must be created in Avalara. For details, see Setup of Online Integration with Avalara AvaTax. 


<!-- PAGE_BREAK -->
 Configuring Exception Certificate Management with Avalara | 29 

#### Configuring the Integration with the Avalara ECM Provider 

 Before configuring the Avalara ECM in Acumatica ERP, ensure that your company's ECM provider account has been configured in Avalara and that integration with Avalara has been set up in Acumatica ERP. 

 To configure the Avalara exemption certificate management in Acumatica ERP, you perform the following general steps: 

1. You enable the _Exemption Certificate Management_ feature on the _Enable/Disable Features_ (CS100000) form. 

2. You configure the Avalara ECM provider on the _Tax Providers_ (TX102000) form. 

3. You specify the Avalara ECM provider in the **ECM Provider** box on the _Tax Preferences_ (TX103000) form. 

 These steps are described in detail in the following sections of this topic. 

 Once all the listed steps are completed, you can add the Acumatica ERP tax-exempt customers to the ECM provider account and request the exemption certificates from the customers. For details, see Exception Certificate Management: General Information. 

#### Enabling the Exemption Certificate Management Feature 

 On the Enable/Disable Features (CS100000) form, the Exemption Certificate Management feature should be enabled. To enable the feature, you click Modify on the form toolbar and then select the Exemption Certificate Management check box, which is located under External Tax Calculation Integration in the Third-Party Integrations group of features. On the form toolbar, you click Enable. 

 Once the Exemption Certificate Management feature is enabled, all UI elements related to the exemption certificate management become available for users with the appropriate access rights, such as Admin , Acumatica Support , TX Admin , AR Admin , and AR Clerk. 

#### Configuring the Tax Provider 

 On the Tax Providers (TX102000) form, the Avalara tax provider has to be configured, as shown in the following screenshot. See Setup of Online Integration with Avalara AvaTax for information about how to perform this configuration. 


<!-- PAGE_BREAK -->
 Configuring Exception Certificate Management with Avalara | 30 

 Figure: The Avalara ECM tax provider's configuration settings 

 In the Summary area of the form, in the Plug-In (Type) box, the PX.TaxProvider.AvalaraRest.AvalaraRestTaxProvider plug-in type should be selected for the Avalara ECM tax providers. 

#### Specifying the ECM Tax Provider in Acumatica ERP 

 On the Tax Preferences (TX103000) form, the Avalara ECM tax provider should be specified in the ECM Provider box of the ECM Settings section. 

### Exception Certificate Management: Implementation Activity 

 In the following implementation activity, you will learn how to add customers existing in Acumatica ERP to the Avalara exemption certificate management (ECM) account, and how to request an exemption certificate from the customer. 

 This activity is based on the U100 dataset. If you are using another dataset or if any system settings have been changed in U100 , these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the U100 dataset to its initial state. 

#### Story 

 Suppose that the SweetLife company, which sells juicers, has been expanding rapidly and has acquired a significant number of customers across various states in the US. As their customer base grows, SweetLife needs to ensure compliance with sales tax regulations in each jurisdiction where they conduct business. 

 Additionally, they have customers who qualify for tax exemptions. To streamline their sales tax compliance processes and efficiently manage exemption customers, SweetLife has decided to integrate their sales and tax systems with Avalara, and to implement its exemption certificate management functionality to accurately track and validate exemption certificates provided by eligible customers. 

 Acting as the a system administrator, you need to configure the exemption certificate management functionality in Acumatica ERP. 


<!-- PAGE_BREAK -->
 Configuring Exception Certificate Management with Avalara | 31 

#### Process Overview 

 In this activity, you will do the following: 

1. Add the Acumatica ERP tax-exempt customers to the ECM provider account. 

2. Request an exemption certificate from a customer. 

#### System Preparation 

 Before you start creating customers and requesting exempt certificates, you need to launch the Acumatica ERP website, and sign in to a company with the U100 dataset preloaded. You should sign in as the system administrator, Kimberly Gibbs, with the gibbs username and the 123 password. 

 As a prerequisite activity, be sure you have configured the Avalara account and set up integration with Avalara AvaTax, as described in the To Set Up Integration With AvaTax. 

 As a prerequisite activity, be sure the needed feature has been enabled in Acumatica ERP, and settings have been specified, as described in Exception Certificate Management: Configuration Workflow. 

#### Step 1: Adding Multiple Customers to the ECM Provider Account 

 To create multiple Acumatica ERP customers in the Avalara ECM account, do the following: 

1. Open the _Manage Exempt Customers_ (TX505000) form. 

2. In the **Action** box of the Selection area, select _Create Customer in ECM Provider_. When you select this option,     the table displays all the active customers defined in Acumatica ERP.     Notice that in the **Company Code** box of the selection area, _SWEETSTORE_ is specified, and this box is     unavailable for editing. The box was filled in because only one company created in the ECM provider     account has been linked with the branches of the SweetLife company in Acumatica ERP on the **Company**     **Code Mapping** tab of the _Tax Providers_ (TX102000) form. Because only this company code is available,     the system has inserted this code oin the box by default. The processed customers will be created in the     company in the ECM account that corresponds to the selected company code. 

3. In the header row of the table, select the unlabeled check box, which selects all records on the current page. 

4. On the form toolbar, click **Process**. 

 Once the process is completed, the processed customers are created in the ECM provider, and the success message is displayed next to each customer on the Processed tab of the Processing dialog box. For these customers, the system populates the Company Code column in the table on the current form with the company code. If you click the Go to Next Page arrow button located at the bottom of the table, you can see that the Company Code column is empty for customers listed on the next page because you have not processed these customers. 

#### Step 2: Creating a Single Customer in the ECM Provider 

 To create a particular customer in the ECM provider, do the following: 

1. On the _Customers_ (AR303000) form, open the _HHEAVEN - Harmony Heaven_ customer. 

2. On the More menu (under **Exemption Certificates** ), click **Create Customer in ECM Provider**.     Because only one company created in the ECM provider account has been linked to the branches of the     SweetLife company in Acumatica ERP, the system adds the customer to the _SWEETSTORE_ company in the     ECM account by default. 

3. Once the process is completed, the notification message is displayed in the upper right corner of the form. 


<!-- PAGE_BREAK -->
 Configuring Exception Certificate Management with Avalara | 32 

 For the purposes of this activity, the customer has already been added to Avalara, so the warning message notifies you about it. If the customer had not been added to Avalara before, you would have received a message about the successful creation of the customer in the ECM account. 

#### Step 3: Requesting an Exemption Certificate for a Customer 

 To have a customer's valid exemption certificate, you need to send an email to the customer with a request to upload the certificate to Avalara. To request an exemption certificate from a customer, do the following 

1. On the _Customers_ (AR303000) form, open the _HHEAVEN - Harmony Heaven_ customer. 

2. On the More menu (under **Exemption Certificates** ), click **Request Certificate**. The **Request Certificate**     command become available once you have created the customer in the ECM provider account in Instruction     2 of this activity.     The **Request Certificate** dialog box opens. 

3. In the dialog box, do the following: 

- In the **Certificate Request Template** box, select _Default Cover Letter_. This is the cover letter template     that has been created in the Avalara ECM Provider and that the system will use to send the request. 

- In the **State** box, select _NY_ , which is the state for which the exemption certificate will be issued. 

- In the **Company Code** box, notice that the system has inserted _SWEETSTORE_ (the only company linked to     the branches of the SweetLife company in Acumatica ERP). 

- In the **Email** box, notice that the system has inserted the customer's default email address to be used for     requesting a certificate. 

- In the **Country** box, notice that the system has inserted the country of the customer. By default, _US_ is     selected. 

4. Click **Request**. The system sends a request to the provided email address and closes the dialog box. 

 The success message is displayed in the upper right corner of the Customers form. This means that an email request has been successfully sent to the customer containing a request to upload the valid exemption certificate; the email included the link the user can click to upload the certificate. Once the customer uploads the certificate to Avalara, it will be available in the list of customer certificates in the ECM account. From there, it can be retrieved and viewed in Acumatica ERP. 

#### Retrieving a Certificate to Acumatica ERP 

 In this step, you will retrieve an exemption certificate in Acumatica ERP. 

 For testing purposes, assume that HHEAVEN customer has received a certificate request and has already uploaded a valid certificate to Avalara by using the link in the email. 

 Do the following: 

1. On the _Customers_ (AR303000) form, open the _HHEAVEN_ customer. 

2. On the More menu (under **Exemption Certificates** ), click **Retrieve Certificates**. The **Exemption**     **Certificates** dialog box opens, in which the certificate is listed. 

3. In the **Certificate Status** column, notice that the status of the certificate is _Valid_. 

4. In the **Certificate ID** column, click the reference number of the certificate. The system opens it in a separate     tab. You can review, save, or print the certificate. 

 As a result, when you create an invoice or sales order containing taxable items for this customer in Acumatica ERP, the taxes are not calculated, and the related tax total boxes contain 0. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Vertex Tax Provider | 33 

## Integrating Acumatica ERP with Vertex Tax Provider 

 In Acumatica ERP, you can configure the automatic calculation of taxes by setting up online integration with the Tax Calculation service provided by Vertex. 

 By configuring the integration of Acumatica ERP with the Vertex tax calculation service, your company gains the following benefits: 

- Real-time tax calculation for all transactions 

- Up-to-date tax rates for all US tax jurisdictions 

- Verification of customer addresses to ensure accurate tax jurisdiction assignment 

- Management of customer reseller permits and exemption certificates 

- Filing of tax reports on behalf of each branch that reports separately to the appropriate tax authorities This chapter describes the configuration and management of Acumatica ERP integration with the Vertex tax calculation service. 

### Online Integration with Vertex Tax Calculation 

 If your company sells multiple types of products in many tax jurisdictions, configuring tax calculation and reporting in Acumatica ERP and maintaining up-to-date rates for all the taxes may require too much work and time. In this case, you might consider integrating with the Tax Calculation service by Vertex and then processing sales and VAT taxes online by using it. Acumatica ERP supports integration both with Vertex O Series (On-Premise or On-Demand deployment) and Vertex Cloud (SaaS deployment). 

 Also, Acumatica ERP shares a customer class and unit price with Vertex and you can use this data to work with in your Vertex Account. 

 Because Acumatica ERP provides built-in support for online integration with Vertex tax calculation, you can easily set up this integration. The integration involves tasks that should be performed on both sides: in Acumatica ERP and in Vertex. 

 Make sure that the External Tax Calculation Integration feature is enabled in your system on the Enable/Disable Features (CS100000) form. 

#### Account Configuration on the Vertex Website 

 You can configure the integration with the Vertex tax calculation service as soon as you have the following: 

- A subscription to the _Vertex Tax_ service 

- The unique identifier (Trusted ID) for your organization's account in Vertex 

- The credentials (username and password) to access your Vertex account In your Vertex account, you should configure the company structure that corresponds to the structure of branches in Acumatica ERP, and configure the tax profile for each company in Vertex (which corresponds to each Acumatica ERP branch). 

 For more information, see To Configure Your Vertex Account. 

#### Setup of Integration with Vertex Tax Calculation in Acumatica ERP 

 To set up the integration with the Vertex tax calculation service in Acumatica ERP, you should perform the following general tasks: 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Vertex Tax Provider | 34 

1. Setting up the connection between your Acumatica ERP and Vertex. You also map each Acumatica ERP     branch to the corresponding company that you have created in the Vertex for that branch. 

2. Creating a dedicated tax agency account for use with Vertex tax calculation. 

3. Creating a tax zone associated with the tax agency you have created. 

4. Setting up the Vertex tax codes (Vertex uses hundreds of tax codes for products and services that are sold in     the United States) as tax categories in one of the following ways: 

- If your company's stock list includes many types of products, you can define all these tax codes as tax     categories in Acumatica ERP by creating a tax category for each tax code. In this case, consider importing     the needed tax codes by using an import scenario, which you can create on the _Import Scenarios_     (SM206025) form. 

- If your company's stock list is small, use only the codes that apply to your company's products by     creating the appropriate tax categories manually by using the _Tax Categories_ (TX205500) form. 

- If it is sufficient for your company to use the default tax category, create one tax category (for example,     you can name it _Taxable_ ) by using the _Tax Categories_ (TX205500) form. In this case, you should create the     corresponding tax code in your Vertex account to associate it with the default tax category in Acumatica     ERP. 

5. Configuring customers by specifying the Vertex tax zone for each required customer as the default tax zone.     For each customer location with an effective tax exemption certificate, you should specify the number of     this certificate and the default entity use code that provides the reasons for exemption. 

6. Configuring stock items and non-stock items by assigning them a special tax category that corresponds to     the appropriate Vertex tax code.     If you are going to import stock item records from the source application you used before Acumatica ERP,     consider adding to your import scenario the steps for assigning tax categories to the items. 

 To facilitate assigning tax categories to stock items, you can use item classes, which are defined on the Item Classes (IN201000) form. Item classes provide settings for similar products, and most items in the class have the same tax category. Once you assign a tax category to an item class, all items (of this class) that you create later will have this tax category and other class settings by default. 

 For instructions on configuring the integration with Vertex tax calculation service, see To Set Up Integration With Vertex Tax Calculation. 

 We recommend that you use tax calculation either by configuring integration with the Vertex tax calculation service, or by setting up the tax calculation process within Acumatica ERP. Thus, you do not mix two tax calculation approaches in one system. 

#### Document Processing 

 Once integration with Vertex tax calculation service is configured and activated, documents are processed as follows: 

- Individually, in real time, by using the _Invoices and Memos_ (AR301000) and _Invoices_ (SO303000) forms.     Once a user takes a sales order or an invoice off hold, the system checks whether the customer location     specified on the document is in the special ( _VERTEX_ ) tax zone. If so, the system sends a request to Vertex Tax     for processing the document. Vertex Tax determines the applicable taxes based on the customer location     address, entity code, available exemption certificates, and tax rules (if any), and computes the tax amounts.     Vertex Tax shows the tax IDs and tax amounts of the applicable taxes on the processed documents.     For a sales order created on the _Sales Orders_ (SO301000) form and invoice prepared for this order on the     _Invoices_ form, make sure that the **Disable Automatic Tax Calculation** check box is cleared on the **Financial**     tab. If the check box is selected, Acumatica ERP stops sending API requests to the Vertex tax calculation     service. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Vertex Tax Provider | 35 

- In bulk, on schedule, by using the _Calculate Taxes_ (AP501600), _Calculate Taxes_ (CA501600), or _Calculate_     _Taxes_ (AR501600) forms. Each of these forms displays the documents (of particular types) for which taxes     have not been calculated (for example, if the connection was not available). Vertex Tax processes the     documents one by one, by calculating taxes and returning tax IDs and tax amounts. A user can initiate     document processing manually or schedule it to be performed at night or any other convenient time. 

 Taxes are calculated on sales orders only for informational purposes. Only taxes on invoices are actually reported. 

#### Vertex Tax Calculation in AR Invoices 

 For sales tax calculation of an AR invoice, Acumatica ERP sends to Vertex the invoice amount and the information on two addresses used in Vertex: Address From and Address To. 

 Address From is generally the address of the branch specified for the invoice as a whole—the one specified in the Branch box on the Financial Details tab of the Invoices and Memos (AR301000) form. If the invoice has been created from a service order or an appointment, Address From is the address of the warehouse (if applicable) specified for the line item, or the branch location address of the service order (if no warehouse is applicable). This address does not affect the sales tax calculation but is required in the Vertex API. 

 For a document of the Credit Memo or Cash Return type, Acumatica ERP sends the address of the customer's location as the Address From in the header and in document lines that have been directly entered. 

 Address To affects the tax calculation. In all existing versions of Acumatica ERP, the system uses the following sources of the addresses to send to Vertex for tax calculation of a particular document. 

 Document Address To 

 An AR invoice created on the Invoices and Memos form, including an invoice that refers to a project (but excluding an invoice that refers to a service order or appointment) 

 The main contact address that is specified for the customer account on the General Info tab of the Customers (AR303000) form 

 An AR invoice created on the Invoices and Memos form if the invoice has been generated for a service order or appointment 

 The address specified in the Address section on the Settings tab of the Service Orders (FS300100) form for the related service order 

 An AR invoice created on the Invoices and Memos form, for lines that were added to the invoice on this form and for lines that do not have an associated shipment reference number 

 The address of the customer location that is specified for the invoice in the Location box in the Summary area of the Invoices and Memos form and that is also displayed in the Ship-To Address section of the Address Details tab of this form 

 A document with the Invoice , Cash Sale , or Debit Memo type created on the Invoices (SO303000) form, with lines added directly on this form 

 The address of the customer location that is specified for the document in the Location box in the Summary area of the Invoices form and that is also displayed in the Ship-To Address section of the Address Details tab of this form 

 A pro forma invoice created on the Pro Forma Invoices (PM307000) form, with lines added directly on this form 

 The address of the customer location that is specified for the document in the Location box in the Summary area of the Pro Forma Invoices form and that is also displayed in the Ship-To Address section of the Address Details tab of this form 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Vertex Tax Provider | 36 

 If you need the system to use different logic in retrieving Address To for sales tax calculation in documents, you can override the appropriate method through customization of Acumatica ERP. 

#### Tax Reporting 

 By using the Post Taxes (TX501500) form, you can select the documents to be reflected on your tax reports. This form displays the list of released transactions for which Vertex Tax has calculated the taxes. You can post to your Vertex account all the listed transactions or only those that you select, depending on the information you want Vertex to use on the tax reports for your organization. Each posted document will have a copy in Vertex. 

 Related Links 

- _To Configure Your Vertex Account_ 

- _Tax Providers_ 

- _Tax Zones and Tax Categories_ 

### To Configure Your Vertex Account 

 At this stage of integration configuration, you have to use the documentation provided by Vertex. We only briefly describe the general steps: 

1. Create an organizational structure that, in relation to taxes, is similar to the structure of branches in     your organization in Acumatica ERP. By default, you can configure one company in Vertex. If you need to     configure more than one company, contact Vertex support. Later you will associate each branch of your     organization in Acumatica ERP with the corresponding company that you have created in Vertex. 

2. Create a tax profile for each company (that is, each branch in Acumatica ERP). You must specify basic     company information and enable taxes for each jurisdiction where you are required to collect and remit     taxes. 

3. Depending on your subscription level to Vertex cloud and the stage in initializing Acumatica ERP, either use     Vertex system tax codes or map your existing tax categories to Vertex system tax codes (which is made on     the Vertex website). 

4. Optional: Create and maintain tax rules—for example, define tax holidays for specific products for certain     periods of time. 

 Vertex cloud lets you gather information about customer exemption certificates and store it. 

### To Set Up Integration With Vertex Tax Calculation 

 To set up integration between Acumatica ERP and Vertex tax calculation service, you need to do the following: 

- Set up the connection on the _Tax Providers_ (TX102000) form. 

- Set up a tax agency to be used for the Vertex tax calculation integration on the _Vendors_ (AP303000) form. 

- Create a tax zone on the _Tax Zones_ (TX206000) form that will be used with this special tax agency. 

- Create tax categories to be associated with the Vertex tax codes on the _Tax Categories_ (TX205500) form. 

- Specify appropriate settings for the customers on the _Customers_ (AR303000) form. 

- Assign tax categories to stock items and non-stock items on the _Stock Items_ (IN202500) and _Non-Stock Items_     (IN202000) forms. These subprocedures are described below. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Vertex Tax Provider | 37 

#### Before You Proceed 

 Before you configure the integration with Vertex tax calculation in Acumatica ERP, make sure of the following: 

- Your Vertex account is configured. For details, see _To Configure Your Vertex Account_. 

- The _External Tax Calculation Integration_ feature is enabled on the _Enable/Disable Features_ (CS100000) form. 

#### To Set Up the Connection Between Acumatica ERP and Your Vertex Account 

1. Open the _Tax Providers_ (TX102000) form. 

2. On the form toolbar, click **Add New Record**. 

3. In the **Provider ID** box of the Summary area, type the identifier to be used for the provider. 

4. In the **Description** box, enter a description of the provider. 

5. In the **Plug-In (Type)** box, select the built-in Vertex plug-in. 

6. Select the **Active** check box to activate the connection. 

7. On the **Plug-In Parameters** tab, in the **Value** column for the _Account ID_ parameter, type your username in     Vertex. 

8. In the **Value** column for the _Password_ parameter, type your password in Vertex. 

9. In the **Value** column for the _TrustedID_ parameter, type the _Trusted ID_ identifier your company uses for     connecting to Vertex. 10.In the **Value** column for the _URL_ parameter, type the URL to be used to connect to Vertex tax calculation     service. 11.In the **Value** column for the _Request Timeout (sec)_ parameter, type the number of seconds for the     connection timeout. 12.In the **Value** column for the _Log Trace_ parameter, select the check box, if you want the system to save the     requests and results of the calls to the trace logs. 13.On the form toolbar, click **Test Connection** to test the connection. 

 If the connection is successful, you will see a Test Connection message confirming the validity of your credentials. 

 14.On the Company Code Mapping tab, click Add Row on the table toolbar to add a new row. 15.In the Branch column of the new row, select a branch by its ID to map it to the corresponding company that you have created in the Vertex Account. 16.In the Company Code column, type the company name that you have created in Vertex for this branch. 17.Repeat Steps 13–15 for each branch. 18.Click Save. 

#### To Set Up a Tax Agency 

 In Acumatica ERP, a tax agency is defined as a vendor. 

1. Open the _Vendors_ (AP303000) form. 

2. In both the **Vendor ID** and **Vendor Name** boxes, type VERTEX (or another name that complies with the     formatting rules defined by the _VENDOR_ segmented key). 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Vertex Tax Provider | 38 

3. On the **General Info** tab (in the **Main Address** section), in the **Country** box, enter _US_. 

4. In the **Financial Settings** section, in the **Vendor Class** box, select a vendor class that has been defined for     tax agencies (if you have defined such a class) or any other appropriate class. 

5. In the **Vendor Properties** section, select the **Vendor Is Tax Agency** check box. (Notice that the **Tax Agency**     **Settings** tab appears.) 

6. On the **GL Accounts** tab, specify the general ledger accounts and subaccounts that will be used for this     vendor. 

 Default accounts and subaccounts are displayed if they have been specified for the vendor class that you have selected on the General Info tab; however, you can select other accounts and subaccounts. 

7. Click **Save**. 

#### To Create the Needed Tax Zone 

1. Open the _Tax Zones_ (TX206000) form. 

2. Type VERTEX in the **Tax Zone ID** box, and then type a description. 

3. Select the **External Tax Provider** check box; the **Provider ID** and **Tax Agency ID** boxes appear on the form. 

4. In the **Provider ID** box, select the Vertex tax provider. 

5. In the **Tax Agency ID** box, select the tax agency you created for this integration. 

6. Click **Save**. 

#### To Create Tax Categories for Tax Codes 

1. Open the _Tax Categories_ (TX205500) form. 

2. On the form toolbar, click **Add New Record**. 

3. In the **Tax Category ID** box, type an Vertex code, and in the **Description** box, provide a description. 

4. Click **Save**. 

5. Repeat Steps 2–4 for each required tax code. 

#### To Specify the Needed Settings for Each Customer 

1. Open the _Customers_ (AR303000) form. 

2. Select a customer for which sales taxes should be calculated by Vertex Tax. 

 Each customer has at least one automatically created location. 

3. On the **Locations** tab, click the link of one of the listed customer locations (or the only customer location, if     only one is listed). 

4. On the **General Info** tab of the _Account Locations_ (CR303010) form, which opens in a pop-up window, in the     **Tax Zone** list, select _Vertex_. 

5. In the **Tax Registration ID** box, enter the customer's tax registration number. 

6. If this customer location is tax exempt, in the **Tax Exemption Number** box, enter the tax exemption number. 

7. In the **Tax Exemption Type** box, select the option that corresponds to this location. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Vertex Tax Provider | 39 

8. On the form toolbar, click **Save and Close**. 

9. For each additional location, repeat Steps 4–8. 

#### To Assign Tax Categories to Each Stock Item or Non-Stock Items 

1. Open the _Stock Items_ (IN202500) or _Non-Stock Items_ (IN202000) form. 

2. Select the stock or non-stock item by its inventory ID. 

3. On the **General** tab, in the **Tax Category** box, select the appropriate tax category for the selected item. 

4. Click **Save** on the form toolbar. 

### Setup of Net or Gross Tax Calculation 

 To ensure accurate pricing and compliance with local tax regulations, you can define how taxes are calculated— either as inclusive (gross) or exclusive (net). Start by specifying the default tax calculation mode for a tax provider. You can then fine-tune tax behavior by assigning a specific mode to individual customers or vendors. And when exceptions arise, you have the flexibility to switch the tax mode directly within a document. 

 The Net/Gross Entry Mode feature must be enabled on the Enable/Disable Features (CS100000) form. 

#### Specify a Tax Providers’ Default Tax Calculation Mode 

 Select the default tax calculation mode for each tax provider on the Tax Providers (TX102000) form. In the Default Tax Calculation Mode box, you can select one of the following options: 

- _Gross_ : Refers to inclusive taxes, meaning the price includes taxes 

- _Net_ : Refers to exclusive taxes, meaning the price does not include taxes Keep in mind that you can override this setting for a specific customer, vendor, or directly within a document. 

#### Specify the Tax Calculation Mode for Customers and Vendors 

 We recommend that you specify the tax calculation mode for each customer or vendor to align with their specific tax regulations or pricing structures. The Tax Calculation Mode box is available in the following locations: 

- On the _Customers_ (AR303000) form, on the **Shipping** tab 

- On the _Vendors_ (AP303000) from, on the **Purchase Settings** tab 

#### Tax Calculation Mode in Documents 

 You can view and adjust the tax mode applied to each document. The Tax Calculation Mode box is available on the following forms: 

- _Appointments_ (FS300200) 

- _Bills and Adjustments_ (AP301000) 

- _Cash Sales_ (AR304000) 

- _Cash Transactions_ (CA304000) 

- _Invoices_ (SO303000) 

- _Invoices and Memos_ (AR301000) 

- _Purchase Orders_ (PO301000) 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Vertex Tax Provider | 40 

- _Sales Orders_ (SO301000) 

- _Sales Quotes_ (CR304500) 

- _Service Orders_ (FS300100) 

- _Opportunities_ (CR304000) 

Note that the tax provider's tax zone—the tax zone with the **External Tax Provider** check box selected on the _Tax Zones_ (TX206000) form—must be specified in the document. 

If the project functionality is in use in your system, the **Tax Calculation Mode** box is not shown on the _Project Quotes_ (PM304500), _Pro Forma Invoices_ (PM307000), and _Subcontracts_ (SC301000) forms. During tax calculation: 

- On the _Project Quotes_ and _Subcontracts_ forms, the system uses the tax calculation mode of the customer     or vendor's location. If _Tax Settings_ is selected in the **Tax Calculation Mode** box on the _Customer Locations_     (AR303020) or _Vendor Locations_ (AP303010) forms, the provider’s default tax mode is applied. 

- On the _Pro Forma Invoices_ form, the provider's tax mode is applied by default. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Address Validation Providers | 41 

## Integrating Acumatica ERP with Address Validation 

## Providers 

 If your company works with multiple customers and vendors, you can validate vendor and customer addresses through an independent plug-in system or the built-in address validation plug-ins, such as Avalara and Vertex. 

 You can validate an address for each business account individually or run validation for multiple accounts at once by using the Validate Addresses in Profiles (CR509020) form. 

 You can also perform mass validation for multiple addresses that are specified in documents without updating the addresses of the business accounts specified in these documents. To do this, you can use the following forms: 

- _Validate Addresses in AP Documents_ (AP508000): For validation in checks and payments 

- _Validate Addresses in AR Documents_ (AR509010): For validation in cash sale documents, invoices, and     memos 

- _Validate Addresses in Purchase Documents_ (PO507000): For validation in purchase orders 

- _Validate Addresses in Sales Documents_ (SO508000): For validation in sales orders, shipments, and sales     invoices 

- _Validate Addresses in CRM Documents_ (CR508000): For validation in opportunities, sales quotes, and project     quotes 

- _Validate Addresses in Project Documents_ (PM507000): For validation in projects, pro forma invoices, and     project quotes This chapter describes the details of configuring the integration of Acumatica ERP with the built-in address validation plug-ins. 

### To Set Up Integration with an Avalara Address Validation Provider 

 The following topic will walk you through the process of setting up integration with the Avalara Address Validation plug-in. 

#### Before You Proceed 

 Before you configure the integration with Avalara Address Validation plug-in in Acumatica ERP, make sure that the Address Validation Integration feature is enabled in your system on the Enable/Disable Features (CS100000) form. 

#### To Set Up an Address Validation Provider 

1. On the _Address Providers_ (CS103000) form, add a new record. 

2. In the **Provider ID** box, type the identifier to be used for the provider. 

3. In the **Description** box, enter the description of the provider. 

4. In the **Plug-In** box, select the built-in Avalara address validation plug-in. 

5. Select the **Active** check box to activate the connection. 

6. On the **Plug-In Parameters** tab, in the **Value** column for the _Account Number_ parameter, type your account     number in AvaTax. 

7. In the **Value** column for the _License Key_ parameter, type the license key your company uses for connecting to     AvaTax. 

8. In the **Value** column for the _URL_ parameter, type the URL to be used to connect to AvaTax. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Address Validation Providers | 42 

9. In the **Value** column for the _Request Timeout (sec)_ parameter, type the number of seconds for the     connection timeout. 10.On the form toolbar, click **Test Connection** to test the connection. 

 If the connection is successful, you will see a Test Connection message confirming the validity of your credentials. 

 11.On the form toolbar, click Save. 

#### To Set Up Address Verification 

1. Open the _Countries/States_ (CS204000) form. 

2. In the **Country ID** box of the Summary area, select _US_. 

3. In the **Address Verification Plug-In** box, select the Avalara address validation plug-in you set up. 

4. On the form toolbar, click **Save**. 

### To Set Up Integration with a Vertex Address Validation Provider 

 The following topic will walk you through the process of setting up integration with the Vertex address validation plug-in. 

#### Before You Proceed 

 To get access to the service, you need to obtain the following from Vertex: 

- A subscription to the Vertex Cloud service 

- The unique identifier (Trusted ID) for your organization's account in Vertex Cloud 

- The username and password to access your Vertex Cloud account. Before you configure the integration with Vertex address validation plug-in in Acumatica ERP, make sure that the _Address Validation Integration_ feature is enabled in your system on the _Enable/Disable Features_ (CS100000) form. 

#### To Set Up an Address Validation Provider 

1. Open the _Address Providers_ (CS103000) form. 

2. On the form toolbar, click **Add New Record**. 

3. In the **Provider ID** box, type the identifier to be used for the provider. 

4. In the **Description** box, enter the description of the provider. 

5. In the **Plug-In (Type)** box, select the built-in Vertex address validation plug-in. 

6. Select the **Active** check box to activate the connection. 

7. On the **Plug-In Parameters** tab, in the **Value** column for the _Account ID_ parameter, type your username in     Vertex Cloud. 

8. In the **Value** column for the _Password_ parameter, type your password in Vertex cloud. 

9. In the **Value** column for the _TrustedID_ parameter, type the _Trusted ID_ identifier your company uses for     connecting to Vertex cloud. 10.In the **Value** column for the _URL_ parameter, type the URL to be used to connect to Vertex Address Cleansing. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Address Validation Providers | 43 

 11.In the Value column for the Request Timeout (sec) parameter, type the number of seconds for the connection timeout. 12.On the form toolbar, click Test Connection to test the connection. 

 If the connection is successful, you will see a Test Connection message confirming the validity of your credentials. 

 13.Click Save. 

#### To Set Up Address Verification 

1. Open the _Countries/States_ (CS204000) form. 

2. In the **Country ID** box of the Summary area, select _US_. 

3. In the **Address Verification Plug-In** box, select the Vertex address validation plug-in you set up in the     previous subprocedure. 

4. Click **Save**. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Web Map Services | 44 

## Integrating Acumatica ERP with Web Map Services 

 In this chapter, you will find information about the integration of Acumatica ERP with the web map services Google Maps and Azure Maps. 

### Integration with Web Map Services: General Information 

 Address data quality is essential for many business operations. The integration of Acumatica ERP with web map services gives users the ability to maximize the accuracy of address information. 

#### Learning Objectives 

 In this chapter, you will learn how to do the following: 

- Set up integration with the Google Maps web map service 

- Set up integration with the Azure Maps web map service 

#### Applicable Scenarios 

 You may need to set up integration with web map services in scenarios that include the following: 

- Users need to find a company address by a company name. 

- Users need to find a company address by a postal code if no other address details are available. 

- Users need to find a full address by a street address. 

#### Address Enrichment Functionality Through Web Map Services 

 With the address enrichment functionality through integration with web map services, you can add a new address, update an existing address, and fill in the missing address information in a record that has address settings. To make this functionality available, you must enable the Address Lookup Integration feature on the Enable/Disable Features (CS100000) form in the Customer Management group of features. You then need to set up integration with the web map service on the Address Providers (CS103000) form and select the address provider on the Site Preferences (SM200505) form, as described in Integration with Web Map Services: Implementation Activity. 

 As a result, the selected web map service will be used as the address provider on all forms that have address information (if applicable). 

 The Address Lookup Integration feature can also be used for the Acumatica Self-Service Portal: To do so, aer the Address Lookup Integration feature has been enabled on the Enable/Disable Features (CS100000) form and the address provider has been set up on the Address Providers (CS103000) form, you should set up the address provider on the Portal Preferences (SP800000) form. 

#### Web Map Services as Address Providers 

 Acumatica ERP provides integration with the Google Maps and Azure Maps web map services. On the Address Providers (CS103000) form, you need to enter an identifier for the provider in the Provider ID box and select either of the following plug-ins in the Plug-In box: 

- _Google Maps_ 

- _Azure Maps_ 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Web Map Services | 45 

 When the plug-in has been selected, on the Plug-In Parameters tab of the form, you need to specify values in the Value column for the following parameters: 

- _API KEY_ : You get an API key when you register with the particular web map service that you are planning to     use. This key should be entered here. 

- _COUNTRY_ : You specify the ISO 3166 country code (For details, see _https://www.iso.org/iso-3166-country-_     _codes.html_ .) for each country in which users can search for addresses, with the codes separated by commas.     The countries supported by the Google Maps address provider are the United States, the United Kingdom,     Canada, and Mexico. The country supported by the Azure Maps address provider is the United States. 

 A user can select up to five countries to be used for the address search by Google Maps and one country to be used for the address search by Azure Maps. The countries that are not supported by the web map services may have different address templates used by postal services, and Acumatica cannot guarantee that the data from these templates will be correctly processed by the system. 

### Integration with Web Map Services: Configuration Prerequisites 

 Before you start setting up the integration of Acumatica ERP with web map services, you must be sure that the system has been configured properly and that all required entities have been created, as described in the following sections. 

#### Web Map Service Registration 

 Before you set up the integration, registration in the Google Maps or Azure Maps web map service needs to be completed and an API key has been obtained as a result of this registration. 

 You get the API key on either of the following websites: 

- Google Maps: _https://developers.google.com/places/web-service/get-api-key_ 

- Azure Maps: _https://learn.microsoft.com/en-us/azure/azure-maps/how-to-manage-account-keys_ 

#### Enabling the Needed Features 

 On the Enable/Disable Features (CS100000) form, the following features must be enabled: 

- _Customer Management_ : Provides the customer relationship management (CRM) functionality, including     lead and customer tracking, as well as the handling of sales opportunities, contacts, marketing lists, and     marketing campaigns. 

- _Address Lookup Integration_ : Provides the address enrichment functionality, which gives users the ability to     add new addresses, update existing addresses, and fill in the missing address information on the forms that     have address information. 

### Integration with Web Map Services: Implementation Activity 

 The following activity will help you set up integration with the Google Maps web map service. 

 You can perform similar steps to set up integration with Azure Maps instead. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Web Map Services | 46 

#### Story 

 You, as administrator, need to set up integration with the Google Maps web map service to give users the ability to add new addresses, update existing addresses, and fill in the missing address information of a company or a person. 

#### Process Overview 

 In this activity, you will do the following: 

1. Define the Google Maps address provider on the _Address Providers_ (CS103000) form. 

2. Check the connection of Acumatica ERP with the address provider. 

3. Select this address provider on the _Site Preferences_ (SM200505) form. 

4. Optional: Select this address provider on the _Portal Preferences (SP800000)_ form of the Acumatica Self-     Service Portal. 

#### System Preparation 

 Before you start setting up integration with an address provider, you need to do the following: 

1. Complete registration in the Google Maps web map service and obtain an API key. 

 You get the API key on either of the following websites: 

- Google Maps: _https://developers.google.com/places/web-service/get-api-key_ 

- Azure Maps: _https://learn.microsoft.com/en-us/azure/azure-maps/how-to-manage-account-keys_ 

2. Launch the Acumatica ERP website, and sign in as an administrator. 

3. On the _Enable/Disable Features_ (CS100000) form, enable the following features: 

- _Customer Management_ : Provides the customer relationship management (CRM) functionality, including     lead and customer tracking, as well as the handling of sales opportunities, contacts, marketing lists, and     marketing campaigns. 

- _Address Lookup Integration_ : Provides the address enrichment functionality, which gives users the ability     to add new addresses, update existing addresses, and fill in the missing address information on all the     forms that have address information. 

#### Step 1: Creating an Address Provider Based On the Google Maps Plug-In 

 To create an address provider based on the Google Maps plug-in, do the following: 

 You can similarly create an address provider based on the Azure Maps plug-in. 

1. Open the _Address Providers_ (CS103000) form. 

2. On the form toolbar, click **New Record** 

3. In the **Provider ID** box, specify the identifier for the Google Maps address provider, such as _GOOGLEMAPS_. 

4. In the **Description** box, specify the description of the address provider, such as _Google Maps web map_     _service_. 

5. In the **Plug-In** box, select the _Google Maps_ plug-in. On the **Plug-In Parameters** tab, the system adds to the     table the rows that have the _API KEY_ and _COUNTRIES_ identifiers. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Web Map Services | 47 

6. In the row that has _API KEY_ as its identifier, in the **Value** column, enter the API key you have received. 

7. In the row that has _COUNTRIES_ as its identifier, notice the default values in the **Value** column, which are     the ISO 3166 country codes (that are supported by Google Maps) separated by commas. The system will be     searching for addresses in these countries. 

 For Google Maps, you can specify up to five country codes; for Azure Maps, you can specify one country code. 

8. Optional: Make any needed changes to the selected country codes. 

9. On the form toolbar, click **Test Connection** to check the connection with the address provider. If the     connection is successful, the system opens the **Settings** dialog box. 10.In the dialog box, click **OK**. 11.In the Summary area, select the **Active** check box to make the address provider available for use in the     system. 12.On the form toolbar, click **Save**. 

 You have created an address provider based on the Google Maps plug-in. 

#### Step 2: Selecting Google Maps as the Address Provider to Be Used 

 To select the Google Maps web map service you have created as the address provider to be used in the system, you need to select the address provider in the preference settings of the Acumatica ERP website. Do the following: 

 You can similarly select the Azure Maps web map service as the address provider to be used in the system. 

1. Open the _Site Preferences_ (SM200505) form. 

2. In the **Address Lookup Plug-In** box of the Summary area, select _GOOGLEMAPS_ , which is the address     provider that you have created in the previous step of this activity. 

3. On the form toolbar, click **Save**. 

 On the Site Preferences (SM200505) form, you can create, set up, and select an address provider as well. If you had opened this form before defining the address provider, you could have clicked the Edit button right of the Address Lookup Plug-In box; the system would have opened the Address Providers (CS103000) form in a pop-up window, in which you could specify the settings that you have specified in Step 1 of this topic. 

 You have selected the Google Maps web map service as the address provider to be used by the system. Now the address enrichment functionality is available to the users. 

#### Step 3: Selecting Google Maps as the Address Provider in the Acumatica Self-Service Portal 

 To select the Google Maps web map service as the address provider to be used in the Acumatica Self-Service Portal, do the following: 

 You can similarly select the Azure Maps web map service as the address provider to be used in the Self-Service Portal. 

1. Open the _Portal Preferences (SP800000)_ form. 

2. In the **Address Lookup Plug-In** box of the Summary area, select _GOOGLE MAPS_ , which is the address     provider that you have created in Step 1 of this activity. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Web Map Services | 48 

3. On the form toolbar, click **Save**. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 49 

## Configuring Payment Processing 

 With Acumatica ERP, you can perform the actual payment processing through integration with payment gateways, processing centers, and external payment processors. You can also export payments by using plug-ins that support multiple formats. This payment processing includes paying your vendors and initiating incoming payments from your customers that use credit and debit cards as payment methods. 

 In this chapter, you will read about how to configure payment processing through the ACH network, U.S. ACH plug-in, RBC ACH094 plug-in, Canadian EFT plug-in, the Stripe processing center, and the BILL external payment processor. 

### Setup of ACH Payment Processing 

 ACH payments are electronic payments made through the Automated Clearing House (ACH) network in the United States. In Acumatica ERP, you can automate payments to vendors by making ACH payments. To do this, you export a batch of payments to a file that is then processed in the ACH system. For each vendor, the specified amount is automatically credited from one of your company's bank accounts and transferred to the payment recipient electronically. 

 The National Automated Clearing House Association (NACHA) has developed the rules and standards about ACH transactions, including the following: 

- To set up ACH payments, you need an agreement and an account with the ACH operator—that is, the     financial institution providing ACH services. 

- You need agreements with your vendors covering ACH transaction authorization, and information about     their accounts in the ACH network. Accounts are identified by the financial institution's routing number and     the account number within that institution. By using ACH payments, you reduce errors, while eliminating the hassles of check preparation, printing, and emailing. Because you can pay promptly, you also can usually get available cash discounts. 

#### Implementation Steps 

 To start paying your vendors through the ACH network, you should perform the following steps: 

1. You sign up for the ACH service with the ACH operator. As part of the sign-up process, you receive the     credentials with which your company is registered in the ACH network, such as account number, bank     routing number, and company identification. 

2. You set up agreements with your vendors covering ACH transaction authorization, and you get information     about their accounts in the ACH network. 

3. You set up the payment method to be used for ACH payments. The payment method includes elements that     need to be filled with the vendor's custom information, file export details, and details that need to be filled     in with your ACH credentials. For details, see _To Add a Payment Method for ACH Payments (Export Scenarios)_. 

4. You specify remittance information (ACH credentials) for each cash account you are going to use as a source     for paying your vendors. For details, see _To Add Remittance Information to a Cash Account_. 

5. You assign the payment method intended for ACH payments to each vendor that will accept ACH payments.     By using the ACH-related information you collected from each vendor in Step 2, fill in the settings of the     payment method on the **Payment** tab of the _Vendors_ (AP303000) form. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 50 

### Setting Up U.S. ACH Payment Processing 

 In this chapter, you will learn how to configure ACH payments in the United States. 

### Setting Up Payment Processing By Using the U.S. ACH Plug-In 

 In Acumatica ERP, you can use the flexible U.S. ACH plug-in. The plug-in provides the flexibility to adjust ACH export settings according to known variations in customers' and banks' requirements for exported US ACH files. This flexibility includes the following capabilities: 

- An offset record can be added to an ACH file. 

- Addenda records can be added to an ACH file, and rules can be configured to generate the addenda     description. 

- The mapping of ACH fields can be changed. For example, the _Company Identification_ remittance detail can     be configured to be exported to the Immediate Origin field of the ACH file. 

- The format of the File ID Modifier field of the ACH file can be adjusted (that is, it can be set to either _0-9, A-Z_     or _A-Z, 0-9_ ). 

- The value in the **Service Class Code** field of the ACH file can be set to _200_ (mixed debits and credits) or _220_     (credits only). Also, the value in the **Standard Entry Class Code** field can be set to _CCD_ (Corporate Credit or     Debit) or _PPD_ (Prearranged Payment or Deposit). 

- The type of a vendor's account (savings or checking) can be specified. The system considers this type when     it generates the transaction code for records of type 6 in the ACH file. The use of the ACH plug-in provides enhanced validations, including control of the ACH export settings and verification of data validity. 

### U.S. ACH Plug-In Settings 

 You can specify the settings of the U.S. ACH plug-in on the Plug-In Settings tab of the Payment Methods (CA204000) form. 

 All the settings shown in the table are displayed if you select the Show All Settings check box on the Plug-In Settings tab. 

 The following table lists the settings of the U.S. ACH plug-in, grouped according to the specifics of the U.S. ACH file structure. 

 Table: Settings of the U.S. ACH plug-in 

 Setting Type of Control 

 Description Required Default Value 

 General Settings section 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 51 

**Setting Type of Control** 

 Description Required Default Value 

**Include Offset Record** 

 Check box 

 Indicates (if selected) that an offset record should be included in the ACH file. 

 If this check box is selected, the system generates balanced ACH files. When you select this check box, the system displays a dialog box that prompts you confirm that remittance settings should be added for the offset record. 

 No Selected 

**Include Addenda Records** 

 Check box 

 Indicates (if selected) that addenda records should be included in the ACH file. 

 If this check box is selected, ACH records of type 7 (addenda records) will be included in the exported ACH file. The system will calculate Payment-Related Information field of the addenda records by using the formula specified in the Payment-Related Information setting of the plug-in. On the Batch Payments (AP305000) form, when you are creating a batch with a payment method that has the Include Addenda Records check box selected, the Payment-Related Info (Addenda) column is displayed in the table so that you can review and manually edit the addenda description. 

 No Selected 

**Payment-Related Information** 

 Text box for a formula 

 A formula to generate payment-related information for Addenda records. This setting is displayed and becomes required if the Include Addenda Records check box is selected. 

 For details, see Modification of the Payment-Related Information Formula. 

 No = Concat('Inv*',[Bill.InvoiceNbr], '\\') 

**Block Filler** Text A character that will be used to fill in the _File Padding_ section of the exported file. If you want the _File Padding_ section to be empty, you should insert a blank in this setting. 

 No 9 

_File Header Record_ section 

**Immediate Destination** 

 Lookup box 

 A nine-digit bank routing and transit number. The lookup table displays the remittance settings specified on the Remittance Settings tab of the Payment Methods form. 

 Yes Routing Number (ABA) 

**Immediate Origin** 

 Lookup box 

 The routing number or a company ID. The lookup table displays the remittance settings specified on the Remittance Settings tab of the Payment Methods form. 

 Yes Company Identification 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 52 

**Setting Type of Control** 

 Description Required Default Value 

**File ID Modifier** 

 Dropdown list 

 The numbering format of file ID. The following options are available: 

- _A-Z, 0-9_ 

- _0-9, A-Z_ 

 Yes A-Z, 0-9 

**Immediate Destination Name** 

 Lookup box 

 The bank name. The lookup table displays the remittance settings specified on the Remittance Settings tab of the Payment Methods form. 

 Yes Bank Name 

**Immediate Origin Name** 

 Lookup box 

 The beneficiary (company) name. The lookup table displays the remittance settings specified on the Remittance Settings tab of the Payment Methods form. 

 Yes Beneficiary Name 

_Batch Header Record_ section 

**Service Class Code** 

 Dropdown list 

 The service class code. The following options are available: 

- _200 - Mixed Debits and Credits_ 

- _220 - Credits Only_ 

 Yes 220 Credits Only 

**Company Name** 

 Lookup box 

 The short company name, which needs to be recognizable by the receiver. The lookup table displays the remittance settings specified on the Remittance Settings tab of the Payment Methods form. 

 Yes Company Short Name 

**Company Discretionary Data** 

 Text Information that optionally can be specified for the company's internal use. You can enter an alphanumeric value of up to 20 characters. 

 No 

**Company Identification** 

 Lookup box 

 A 10-digit company ID number. The lookup table displays the remittance settings specified on the Remittance Settings tab of the Payment Methods form. 

 Yes Company Identification 

**Standard Entry Class Code** 

 Dropdown list 

 The entry class code. The following options are available: 

- _CCD_ : Corporate credit or debit 

- _PPD_ : Prearranged payment or deposit 

 Yes CCD 

**Company Entry Description** 

 Text The description of the entry's purpose. You can enter an alphanumeric value of up to 10 characters. 

 This value will be exported to the ACH file by default if on the Batch Payments form, the Description box is empty for the exported batch. 

 Yes Payment 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 53 

**Setting Type of Control** 

 Description Required Default Value 

**Originator Status** 

 Text The originator status. An originator status of 1 identifies the company as a non-federal government entity. You can enter an alphanumeric value of one character. 

 Yes 1 

**Originating DFI ID (first 8 digits)** 

 Lookup box 

 The bank routing number (only the first eight digits are used). The lookup table displays the remittance settings specified on the Remittance Settings tab of the Payment Methods form. 

 Yes Routing Number (ABA) 

_Entry Detail Record_ section 

**Receiving DFI ID (first 8 digits)** 

 Lookup box 

 The routing and transit number of the receiving bank. The lookup table displays a list of payment details specified on the Settings for Use in AP tab of the Payment Methods form. 

 Yes Routing Number (ABA) 

**DFI Accounting Nbr.** 

 Lookup box 

 The recipient's account number. The lookup table displays a list of payment details specified on the Settings for Use in AP tab of the Payment Methods form. 

 Yes Beneficiary Account No 

**Receiving Inv./Comp. Name** 

 Lookup box 

 The recipient's name. The lookup table displays the list of payment details specified on the Settings for Use in AP tab of the Payment Methods form. 

 Yes Beneficiary Name 

**Transaction Code** 

 Lookup box 

 The type of the recipient's account, which affects the calculation of the transaction code. The lookup table displays the list of payment details specified on the Settings for Use in AP tab of the Payment Methods form. 

 For example, if Savings Account is selected for a vendor in the Account Type row in the Payment Instructions table on the Payment tab of the Vendors form, the 23 transaction code is exported to the ACH file for the vendor's payments. If Checking Account is selected for a vendor on the Vendors form, the 22 transaction code is exported for this vendor's payments. If no value is specified for this setting, the transaction code will always be 22 for credit transactions. 

 No Account Type 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 54 

 Setting Type of Control 

 Description Required Default Value 

 Offset: Receiving DFI ID 

 Lookup box 

 The routing number of the offset entry. The lookup table displays a list of the remittance settings specified on the Remittance Settings tab of the Payment Methods form. 

 This setting is displayed and is required only if the Include Offset Record check box is selected on the Plug-in Settings tab of the Payment Methods form. 

 Yes Offset ABA/Routing # 

 Offset: DFI Accounting Nbr. 

 Lookup box 

 The account number for the offset entry. The lookup table displays a list of the remittance settings specified on the Remittance Settings tab of the Payment Methods form. 

 This setting is displayed and is required only if the Include Offset Record check box is selected on the Plug-in Settings tab of the Payment Methods form. 

 Yes Offset Account # 

 Offset: Receiving Ind./Comp. Name 

 Lookup box 

 The description of the offset entry. The lookup table displays a list of the remittance settings specified on the Remittance Settings tab of the Payment Methods form. 

 This setting is displayed and is required only if the Include Offset Record check box is selected on the Plug-in Settings tab of the Payment Methods form. 

 Yes Offset Description 

#### Modification of the Payment-Related Information Formula 

 You edit the formula specified for the Payment-Related Information setting of the plug-in by performing the following steps: 

1. You double-click the formula in the **Value** column. 

2. You click the Edit button to open the _Formula Editor Dialog Box_ , where you update the formula.     For details on working with formulas, see _The Use of Formulas_. 

3. When you have finished editing the formula, click **OK**. 

 The following fields are available in the Component Selection pane of the Formula Editor Dialog Box and can be used to calculate the Payment-Related Information setting for the addenda record: 

- _[Payment.RefNbr]_ : The **Reference Nbr.** of an AP payment 

- _[Payment.DocDesc]_ : The **Description** of an AP payment 

- _[Payment.DocDate]_ : The **Payment Date** of an AP payment 

- _[Payment.CuryOrigDocAmt]_ : The **Payment Amount** of an AP payment 

- _[Bill.RefNbr]_ : The **Reference Nbr.** of a bill to which the AP payment is applied 

- _[Bill.InvoiceNbr]_ : The **Vendor Ref.** number of a bill to which the AP payment is applied 

- _[Bill.DocDesc]_ : The **Description** of a bill to which the AP payment is applied 

- _[Bill.DocDate]_ : The **Date** of a bill to which the AP payment is applied 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 55 

- _[Adjustment.CuryAdjgAmt]_ : The AP payment amount applied to a specific bill 

- _[Vendor.AcctName]_ : The **Account Name** of an AP payment vendor The payment-related information will be calculated separately for each payment application if both of the following are true: 

- An AP payment is applied to multiple bills. 

- The formula specified for the **Payment-Related Information** setting contains such fields as _[Bill.RefNbr]_ ,     _[Bill.InvoiceNbr]_ , _[Bill.DocDesc]_ , _[Bill.DocDate]_ , and _[Adjustment.CuryAdjgAmt]_. The standard functions and operations available in the corresponding sections, as well as static text, can be used along with the fields. 

 If you want to insert the \ character in the formula, use \\ instead. (You can see its use in the default formula specified in the Payment-Related Information setting.) 

 If you leave the default formula, = Concat('Inv*',[Bill.InvoiceNbr], '\\'), the payment-related information generated for an AP payment will look like this: Inv*VendorRef1\Inv*VendorRef2. In this information, note the following: 

- _VendorRef1_ is the **Vendor Ref.** number specified for one bill to which the AP payment is applied. 

- _VendorRef2_ is the **Vendor Ref.** number specified for another bill to which the AP payment is applied. 

### To Add a Payment Method for the U.S. ACH Plug-In 

 You use the Payment Methods (CA204000) form to create a payment method to be used for Automated Clearing House (ACH) payments through the U.S. ACH plug-in. 

#### Before You Proceed 

 Review the cash accounts you have and decide which ones you are going to use as the source of payments to your vendors. You will specify these in Step 9 below. 

#### To Add a Payment Method for the U.S. ACH Plug-In 

 To add a payment method that uses the U.S. ACH plug-in, do the following: 

1. Open the _Payment Methods_ (CA204000) form. 

2. On the form toolbar, click **Add New Record**. 

3. In the **Payment Method ID** box, type an identifier you want to use for the payment method. 

4. Select the **Active** check box to make the payment method available for use in the system. 

5. In the **Means of Payment** box, select the _Direct Deposit_ option. 

6. Select the **Use in AP** check box to make the payment method available to be assigned to vendors. 

7. Select the **Require Remittance Information for Cash Account** check box. The **Remittance Settings** tab     appears on the form so you can add elements to fill with the ACH credentials for the cash accounts. 

8. In the **Description** box, type a description for the payment method. 

9. On the **Settings for Use in AP** tab, configure the export of batches to a file to be sent to the ACH operator for     processing as follows:     a. Select the **Create Batch Payments** option button.     b. In the **Export Method** box, select _U.S. ACH Plug-In_. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 56 

 c. Select the Release Batch Payment Before Export check box if you want to export ACH payment batches aer they are released. If you want to export batches before release, leave this check box cleared. d. In the Payment Method Details table, review the elements that have been added automatically, which will appear on the Vendors (AP303000) form so that users can enter the ACH credentials that are specific to the particular vendor. 10.On the Allowed Cash Accounts tab, do the following to add the list of cash accounts you are planning to use as a source for payments made to vendors by using the payment method: a. For each cash account you want to link to the payment method, on the table toolbar, click Add Row. In the Cash Account box, select the cash account. b. Select the AP/PR Default check box for the listed cash account that is to be used by default. c. Select the Quick Batch Generation check box to quickly prepare batches of AP payments on the Prepare Payments (AP503000) form. 11.On the Remittance Settings tab, review the automatically added elements that will appear on the Cash Accounts (CA202000) form so users can enter your company's ACH credentials for each cash account. 12.On the Plug-In Settings tab, review the plug-in settings, which were added automatically when you selected the U.S. ACH plug-in. To review all settings, select the Show All Settings check box. 13.Optional: Update the values for the needed settings according to the vendor's or bank's requirements. For the list of available plug-in settings, see U.S. ACH Plug-In Settings. 14.On the form toolbar, click Save. 

 Aer the payment method is configured, you should specify your remittance information for each cash account that you have listed on the Allowed Cash Accounts tab (as described in To Add Remittance Information to a Cash Account ), and specify ACH credentials for each vendor that agreed to receive your payments through the ACH network. 

#### To Add Payment Details for a Vendor 

 To add payment details for a vendor that will receive your payments, do the following: 

1. Open the _Vendors_ (AP303000) form. 

2. In the **Vendor ID** box, select the ID of the vendor whose settings you need to update. 

3. On the **Payment** tab, select the U.S. ACH payment method in the **Payment Method** box.     The **Payment Instructions** table is displayed. 

4. In the table, fill in the payment details that you have received from the vendor. 

5. In the **Account Type** box, select the type of the recipient's account— _Checking Account_ or _Savings Account_. 

6. On the form toolbar, click **Save**. 

### To Add a Payment Method for ACH Payments (Export Scenarios) 

 You use the Payment Methods (CA204000) form to create a payment method to be used for Automated Clearing House (ACH) payments in one of the following ways: 

- By using the _ACH_ (exports payments to an unbalanced file) and _ACHBA_ (exports payments to a balanced file)     predefined payment methods, which are available for selection on this form. _ACH_ and _ACHBA_ are already     configured to be used for paying your vendors through the ACH network. 

- By using the _ACH_ or _ACHBA_ payment method as a basis and using commands on the **Clipboard** menu on the     form toolbar. You can copy the settings of a particular payment method and paste them to create another 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 57 

 one (changing any needed settings), or you can create a template for multiple similar payment methods. For details, see Record Entry: Copy-and-Paste Options and Record Templates. 

- By entering the settings of a payment method manually. This procedure describes how to manually create a payment method based on an export scenario, which will be used to pay your vendors through the ACH network. 

 Alternatively, you can create a payment method based on the U.S. ACH plug-in. For details, see To Add a Payment Method for the U.S. ACH Plug-In. 

#### Before You Proceed 

 Review the cash accounts you have and decide which ones you are going to use as the source of payments to your vendors. You will specify these in Step 9 of the next section. 

#### To Add a Payment Method for ACH Payments 

 To add a payment method that uses an export scenario, do the following: 

1. Open the _Payment Methods_ (CA204000) form. 

2. On the form toolbar, click **Add New Record**. 

3. In the **Payment Method ID** box, type the identifier you want to use for the payment method (such as _ACH_ ). 

4. Select the **Active** check box to make the payment method available for use in the system. 

5. In the **Means of Payment** box, select the _Direct Deposit_ option. 

6. Select the **Use in AP** check box to make the payment method available to be assigned to vendors. 

7. Select the **Require Remittance Information for Cash Account** check box. The **Remittance Settings** tab     appears on the form so you can add elements to fill with the ACH credentials for the cash accounts. 

8. In the **Description** box, type a description for the payment method. 

9. On the **Allowed Cash Accounts** tab, do the following to add the list of cash accounts you are planning to use     as a source for payments made to vendors by using the payment method:     a. For each cash account you want to link to the payment method, on the table toolbar, click **Add Row**. In        the **Cash Account** box, select the cash account.     b. Select the **AP Default** check box for the listed cash account that is to be used by default. 10.On the **Settings for Use in AP** tab, configure the export of batches to a file to be sent to the ACH operator for     processing as follows:     a. In the **Additional Processing** section, select the **Create Batch Payments** option button to indicate that        the payment method involves creating payment batches. 

 Once you select this option button, the Quick Batch Generation check box appears on the Allowed Cash Accounts tab. You can select this check box to quickly prepare batches of AP payments on the Prepare Payments (AP503000) form. For details, see To Quickly Prepare a Batch of Payments. 

 b. In the Export Method box, select Export Scenario. c. In the Export Scenario box, under the Export Settings section (which appears to the right), select the Export AP Payments to ACH v2 or Export AP Payments to ACH Balanced v2 scenario, which is designed to export the batch payments in the proper format. d. Select the Release Batch Payment Before Export check box if you want to export ACH payment batches aer they are released. If you want to export batches before release, leave this check box cleared. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 58 

 e. In the Payment Method Details table, add the elements shown in the following screenshot, which will appear on the Vendors (AP303000) form so users can enter the ACH credentials specific to the particular vendor. 

 11.On the Remittance Settings tab, add the elements shown in the following screenshots, which will appear on the Cash Accounts (CA202000) form so users can enter your company's ACH credentials for each cash account. If you create a payment method to export payments to unbalanced file, add the following elements: 

 If you create a payment method to export payments to balanced file, add the following elements: 

 12.On the form toolbar, click Save. 

 Aer the payment method is configured, you should specify your remittance information for each cash account you have listed on the Allowed Cash Accounts tab (as described in To Add Remittance Information to a Cash Account ), and specify ACH credentials for each vendor that agreed to receive your payments through the ACH network. 

### To Add Remittance Information to a Cash Account 

 You use the Cash Accounts (CA202000) form to fill in your remittance information for each cash account that you plan to use as a source of payments to vendors through the ACH network. 

#### Before You Proceed 

 Make sure that you have on hand the correct list of cash accounts you plan to use as sources of payments to vendors through the ACH network. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 59 

#### To Add Remittance Information for a Cash Account 

1. Open the _Cash Accounts_ (CA202000) form. 

2. In the **Cash Account** box, select the identifier of the cash account. 

3. On the **Remittance Settings** tab, do the following:     a. In the **Payment Method** table, select the payment method you have configured for ACH payments. The        elements of the selected payment method appear in the **Remittance Details** table.     b. Fill in the values of the elements as follows: 

- As the **Beneficiary Account No.** value, type your company's account number with the ACH system. 

- As the **Beneficiary Name** value, type the name of your company as it is registered in the ACH system. 

- As the **Bank Routing Number (ABA)** value, type the routing number of the bank where your company     has the account. 

- As the **Bank Name** value, type the name of the bank where your company has the account. 

- As the **Company Type** value, type the company type your company has been assigned in accordance     with the classifications used in the ACH system. The options are 1 (IRS Employer Identification     Number), 3 (Data Universal Numbering Systems), and 9 (User Assigned Number). 

- As the **Company ID** value, type the company identifier your company has been assigned by the ACH     system. If the selected payment method is configured to export payments to ACH balanced file, the remittance information additionally contains the following parameters needed to generate the offset record: 

- As the **Offset ABA/Routing #** value, type the routing number of the bank where your company has the     account. 

- As the **Offset Account #** value, type an offset account number. 

- As the **Offset Description** value, type an offset account description. 

 We recommend that you contact your bank to verify information needed to generated the offset record. 

4. On the form toolbar, click **Save**. 

5. Repeat Steps 2–4 for each cash account that you plan to use as a source of payments to vendors through the     ACH network. 

### Setting Up U.S. ACH Payment Processing By Using Export Scenarios 

 In Acumatica ERP,you can use the predefined export scenarios to process ACH payments. 

 The ACH system supports the processing of balanced and unbalanced files. A balanced file contains an offsetting entry that automatically credits or debits the specified offset account for the debit or credit transactions in the file. An unbalanced file contains only the transactions you specify and does not include an offsetting entry. 

 Acumatica ERP provides functionality that you can use to export payments to get an unbalanced file or a balanced file. The export scenarios Export AP Payments to ACH v2 and Export AP Payments to ACH Balanced v2 (for unbalanced and balanced files, respectively) are provided with Acumatica ERP and are available on the Export Scenarios (SM207025) form. These scenarios were developed for the Corporate Credit or Debit (CCD) application of the ACH system, and they fully comply with the file format specifications for ACH. These scenarios create files that are then processed in the ACH system. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 60 

 Also, you can modify the scenario if another ACH application will be used or if your financial institution uses another format for electronic funds transfer. 

 The Export AP Payments to ACH v2 scenario uses the ACHExportProvider data provider, and the Export AP Payments to ACH Balanced v2 one uses ACHBalancedProvider. 

 Do not delete the ACHExportProvider or ACHBalancedProvider data providers. If you have accidentally deleted it, contact Acumatica ERP support to restore it. 

 The export scenario is configured to use exact identifiers of payment method details as those defined for payment method details in the ACH and ACHBA demo payment methods. If you add details to your payment method manually, either copy identifiers from the demo payment method or adjust the scenario accordingly. For details, see To Add a Payment Method for ACH Payments (Export Scenarios). 

 The existing FEDWIRE and FEDWIREBA payment methods are becoming obsolete and will be removed in future versions of Acumatica ERP. While these payment methods can still be selected, we recommend that you select the ACH and ACHBA payment methods instead. 

### Setting Up U.S. and Canada ACH Cross-Border Payment Processing 

 In this chapter, you will learn how to configure ACH cross-border payments from Canada to the United States. 

### Setting Up the RBC ACH094 Plug-In for Cross-Border Payment Processing 

 The ACH094 file format, based on the ACH IAT standard, is accepted by the Royal Bank of Canada (RBC) for crossborder payments. In Acumatica ERP, the RBC ACH094 plug-in is available to configure payment processing from Canada to the United States. 

 The plug-in is available in the system when the Canadian Localization feature is enabled on the Enable/Disable Features (CS100000) form. 

#### Overview of the RBC ACH094 Plug-In Configuration 

 The RBC ACH094 plug-in in Acumatica ERP has been adjusted to meet the requirements of both customers and banks. It supports only the following ACH094 format setup: 

- Origin country: Canada (CA) 

- Origin currency: USD 

- Destination country: United States (US) 

- Destination currency: USD The ACH file in RBC ACH094 plug-in has following record structure: 

1. File Header Record 

2. IAT Batch Header Record 

3. IAT Entry Records 

4. Addendum Records 1, 2, 3, 6, 7, and Remittance Information Record 

5. Batch Control Record 

6. File Control Record 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 61 

 The RBC ACH094 plug-in offers flexibility to adjust ACH export settings according to known variations in customer and bank requirements for exported ACH files. This key capabilities include the following: 

- You can add the IAT addenda record for remittance information by selecting the **Include Remittance**     **Information Addenda Record** check box. 

- The format of the **File ID Modifier** field of the ACH094 file can be adjusted. It can be set to either _0-9, A-Z_ or     _A-Z, 0-9_ ). For details, see _RBC ACH094 Plug-In Settings_. 

 The RBC ACH094 plug-in doesn't have an equivalent export scenario. 

#### Setup of the RBC ACH094 Plug-In Payment Processing 

 To initiate payment processing by using the RBC ACH094 plug-in, you need to complete the following configuration tasks: 

- Configure a payment method that uses the RBC ACH094 plug-in. 

- Assign this payment method to each vendor that accepts cross-border ACH payments and specify the     vendor-specific ACH credentials for these parameters. 

- Specify the ACH-specific remittance information for each cash account you plan to use as the source for     vendor payments. Specifically, you need to do the following: 

1. On the _Payment Methods_ (CA204000) form, create a new payment method. 

2. In the Summary area, specify the following settings: 

- **Means of Payment** : _Direct Deposit_ 

- **Direct Deposit File Format** : _RBC ACH094_ Once these settings are specified, the following check boxes will be selected automatically in the Summary area of the form: 

- **Use in AP** 

- **Require Remittance Information for Cash Account** Additionally, the following payment method settings will be specified: 

- On the **Settings for Use in AP** tab, the _RBC ACH094 Plug-In_ is selected in the **Export Method** box. In the     **Payment Method Details** table, payment parameters are automatically added. These parameters will     appear on the **Payment** tab of the _Vendors_ (AP303000) form when this payment method is specified for a     vendor in the **Payment Method** box on the _Vendors_ form. You will need to enter the ACH credentials that     are specific to the particular vendor for these parameters on the _Vendors_ form. 

- On the **Remittance Settings** tab, the list of remittance parameters with plug-in-specific settings are     automatically added. These parameters will appear on the **Remittance Settings** tab of the _Cash_     _Accounts_ (CA202000) form for each cash account selected on the **Allowed Cash Accounts** tab of the     _Payment Methods_ form. You will need to enter your company's ACH credentials for these parameters for     each cash account on the _Cash Accounts_ form. 

- On the **Plug-In Settings** tab, the system specifies the default parameters for this plug-in. For the details     of the listed plug-in parameters, see _RBC ACH094 Plug-In Settings_. The default values can be adjusted if     needed. 

3. On the **Allowed Cash Accounts** tab, specify cash accounts that you are going to use as a source for ACH     cross-border payments. 

4. On the _Vendors_ form, specify the created payment method to each vendor intended for cross-border ACH     payments, and specify the ACH credentials specific to a vendor on the **Payment** tab of this form. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 62 

5. On the **Remittance Settings** tab of the _Cash Accounts_ form, enter your company's ACH credentials for each     cash account specified in the payment method settings (in Step 3 of the current instruction). 

 For detailed steps, see To Add a Payment Method for the RBC ACH094 Plug-In. 

### RBC ACH094 Plug-In Settings 

 You can review the settings of the RBC ACH094 plug-in on the Plug-In Settings tab of the Payment Methods (CA204000) form. 

 All the settings listed in the table below are displayed on the tab if you select the Show All Settings check box on the tab. 

 The following table lists the settings of the RBC ACH094 plug-in. 

 Setting Type of Control 

 Description Required Default Value 

 General Settings section 

 Include Remittance Addenda Record 

 Check box Indicates (if selected) that a remittance addenda record should be included in the ACH file. 

 No Cleared 

 Payment-Related Information 

 Formula box The formula is calculated once a payment is added to the batch payment. It allows you to retrieve information from payments, bills, applications, and vendors. 

 Yes = Concat('Inv*',[Bill.InvoiceNbr], '\') 

 Block Filter Text box 9 

 File Header Record section 

 File ID Modifier Drop-down menu 

 The numbering format of file ID. The following options are available: 

- _A-Z, 0-9_ 

- _0-9, A-Z_ 

 Yes A-Z, 0-9 

 Batch Header Record section 

 Service Class Code 

 Drop-down list 

 The service class code. The available option is 220 Credits Only. 

 Yes 220 

 Standard Entry Class Code 

 Drop-down list 

 The code used in ACH transactions to specify the type of payment or transaction being processed. The available option is IAT. IAT is used for cross-border transactions involving the U.S. and other countries. 

 Yes IAT 

 Company Entry Description 

 Text box A brief description of the purpose or nature of the transaction being processed. You can enter an alphanumeric value of up to 10 characters. 

 Yes Payment 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 63 

**Setting Type of Control** 

 Description Required Default Value 

**Originator Identification Number** 

 Lookup box A unique identifier assigned to a company initiating ACH transactions. It typically consists of 10 digits. 

 This parameter is displayed on the Remittance Settings tab of the Cash Accounts (CA202000) form if the cash account is specified on the Allowed Cash Accounts tab of the Payment Methods form, You must specify you company's specific ACH value for this parameter. 

 Yes Originator Identification Number 

**Company Name** Lookup box The company name. 

 This parameter is displayed on the Remittance Settings tab of the Cash Accounts (CA202000) form if the cash account is specified on the Allowed Cash Accounts tab of the Payment Methods form, You must specify you company's specific ACH value for this parameter. 

 Yes Company Name 

**Originator Street/ Address** 

 Lookup box The originator street/address. 

 This parameter is displayed on the Remittance Settings tab of the Cash Accounts (CA202000) form if the cash account is specified on the Allowed Cash Accounts tab of the Payment Methods form, You must specify you company's specific ACH value for this parameter. 

 Yes Originator Street/ Address 

**Originator City** Lookup box The originator city. 

 This parameter is displayed on the Remittance Settings tab of the Cash Accounts (CA202000) form if the cash account is specified on the Allowed Cash Accounts tab of the Payment Methods form, You must specify you company's specific ACH value for this parameter. 

 Yes Originator City 

**Originator Province/State** 

 Lookup box The originator province/state. 

 This parameter is displayed on the Remittance Settings tab of the Cash Accounts (CA202000) form if the cash account is specified on the Allowed Cash Accounts tab of the Payment Methods form, You must specify you company's specific ACH value for this parameter. 

 Yes Originator Province/ State 

**Originator Country Code** 

 Text box The originator country code. Yes CA 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 64 

**Setting Type of Control** 

 Description Required Default Value 

**Originator Postal/ZIP Code** 

 Lookup box The originator postal/ZIP code. 

 This parameter is displayed on the Remittance Settings tab of the Cash Accounts (CA202000) form if the cash account is specified on the Allowed Cash Accounts tab of the Payment Methods form, You must specify you company's specific ACH value for this parameter. 

 Yes Originator Postal/ZIP Code 

**Originator Currency Code** 

 Text box The originator currency code. Yes USD 

**Destination Currency Code** 

 Text box The destination currency code. Yes USD 

**Destination Country Code** 

 Text box The destination country code. Yes US 

**Entry Detail Record** section 

**Receiver Name** Lookup box The name of the party who has authorized the Originator to initiate ACH payments or debits to their bank account, which is processed through the RDFI. 

 This parameter is displayed on the Payment tab of the Vendors (AP303000) form if the payment method that uses the RBC ACH094 plug-in is selected in the Payment Method box of this form. You must specify the vendor-specific ACH value for this parameter. 

 Yes Receiver Name 

**Receiving DFI Routing Number** 

 Lookup box The routing number of the bank that receives the ACH payment or transaction. 

 This parameter is displayed on the Payment tab of the Vendors (AP303000) form if the payment method that uses the RBC ACH094 plug-in is selected in the Payment Method box of this form. You must specify the vendor-specific ACH value for this parameter. 

 Yes Receiving DFI Routing Number 

**Account Number** 

 Lookup box The unique identifier of the bank account of the receiver in an ACH transaction. 

 This parameter is displayed on the Payment tab of the Vendors (AP303000) form if the payment method that uses the RBC ACH094 plug-in is selected in the Payment Method box of this form. You must specify the vendor-specific ACH value for this parameter. 

 Yes Account Number 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 65 

**Setting Type of Control** 

 Description Required Default Value 

**Transaction Code** 

 Lookup box The transaction code. The following options are available: 

- _22 Demand credit_ 

- _32 Savings credit_ This parameter is displayed on the **Payment** tab of the _Vendors_ (AP303000) form if the pay- ment method that uses the RBC ACH094 plug-in is selected in the **Payment Method** box of this form. You must specify the vendor-specific ACH value for this parameter. 

 No Transaction Code 

**Transaction Type Code** 

 Lookup box A three-character code used to identify the type of transaction. The following options are available: 

- _BUS (Business/Commercial)_ 

- _DEP (Deposit)_ 

- _MIS (Miscellaneous)_ This parameter is displayed on the **Payment** tab of the _Vendors_ (AP303000) form if the pay- ment method that uses the RBC ACH094 plug-in is selected in the **Payment Method** box of this form. You must specify the vendor-specific ACH value for this parameter. 

 No Transaction Type Code 

**Destination Street/Address** 

 Lookup box The address or street name of the party receiving the ACH payment or transaction. 

 This parameter is displayed on the Payment tab of the Vendors (AP303000) form if the payment method that uses the RBC ACH094 plug-in is selected in the Payment Method box of this form. You must specify the vendor-specific ACH value for this parameter. 

 Yes Destination Street/Address 

**Destination City** 

 Lookup box The city of the party receiving the ACH payment or transaction. 

 This parameter is displayed on the Payment tab of the Vendors (AP303000) form if the payment method that uses the RBC ACH094 plug-in is selected in the Payment Method box of this form. You must specify the vendor-specific ACH value for this parameter. 

 Yes Destination City 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 66 

 Setting Type of Control 

 Description Required Default Value 

 Destination Province/State 

 Lookup box The province or state of the receiving party's address. 

 This parameter is displayed on the Payment tab of the Vendors (AP303000) form if the payment method that uses the RBC ACH094 plug-in is selected in the Payment Method box of this form. You must specify the vendor-specific ACH value for this parameter. 

 Yes Destination Province/ State 

 Destination Postal Code/ZIP Code 

 Lookup box The postal code or ZIP code associated with the address of the party receiving the ACH payment or transaction. 

 This parameter is displayed on the Payment tab of the Vendors (AP303000) form if the payment method that uses the RBC ACH094 plug-in is selected in the Payment Method box of this form. You must specify the vendor-specific ACH value for this parameter. 

 Yes Destination Postal Code/ ZIP Code 

### To Add a Payment Method for the RBC ACH094 Plug-In 

 You use the Payment Methods (CA204000) form to create a payment method that uses the RBC ACH094 plug-in. 

 The plug-in is available in the system if the Canadian Localization feature is enabled on the Enable/ Disable Features (CS100000) form. 

#### Before You Proceed 

 Review your cash accounts and decide which ones will be used as the payment source for your vendors. You will specify these in Step 9 below. 

#### To Add a Payment Method for the RBC ACH094 Plug-In 

 To add a payment method that uses the RBC ACH094 plug-in, do the following: 

1. Open the _Payment Methods_ (CA204000) form. 

2. On the form toolbar, click **Add New Record**. 

3. In the **Payment Method ID** box, type an identifier you want to use for the payment method. 

4. Review the **Active** check box is selected to make the payment method available for use in the system. 

5. In the **Means of Payment** box, select the _Direct Deposit_ option. 

6. In the **Direct Deposit File Format** box, select _RBC ACH094_. 

7. Ensure the **Use in AP** check box is selected. It indicates (if selected) that the payment method can be     assigned to vendors. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 67 

8. Ensure the **Require Remittance Information for Cash Account** check box is selected. With this check     box selected, the **Remittance Settings** tab appears on the _Payment Methods_ form and _Cash Accounts_     (CA202000) form, so you can specify the ACH credentials for the cash accounts. 

9. In the **Description** box, type a description for the payment method. 10.On the **Settings for Use in AP** tab, review the settings automatically specified by the system: 

- The **Create Batch Payments** option button is selected. 

- The _RBC ACH094 Plug-In_ is selected in the **Export Method** box. 

- In the **Payment Method Details** table, the parameters have been added automatically, They will appear     on the **Payment** tab of the _Vendors_ (AP303000) form when this payment method is specified. You will     need to enter the ACH credentials that are specific to the particular vendor for these parameters. 11.On the **Allowed Cash Accounts** tab, do the following for each cash accounts you are planning to use as a source for payments made to vendors by using the payment method: a. On the table toolbar, click **Add Row**. In the **Cash Account** box, select a cash account. b. In the added row, select the **AP/PR Default** check box for a cash account to be used by default. c. (Optional) In the added row, select the **Quick Batch Generation** check box to quickly prepare batches of AP payments on the _Prepare Payments_ (AP503000) form. 12.On the **Remittance Settings** tab, review the automatically added parameters. These parameters will appear on the **Remittance Settings** tab of the _Cash Accounts_ (CA202000) form for each cash account specified for the payment method. You will need to enter your company's ACH credentials for each cash account to configure these parameters. 13.On the **Plug-In Settings** tab, review the plug-in settings, which were added automatically when you selected the RBC ACH094 plug-in. To review all settings, select the **Show All Settings** check box. 14.Optional: Update the values for the needed settings according to the vendor's or bank's requirements. For the list of available plug-in settings, see _RBC ACH094 Plug-In Settings_. 15.On the form toolbar, click **Save**. 

 Aer the payment method is configured, specify your remittance information for each cash account listed on the Allowed Cash Accounts tab, and specify ACH credentials for each vendor who has agreed to receive payments through the ACH network. 

#### To Add Payment Details for a Vendor 

 To add a payment method that uses the RBC ACH094 plug-in to a vendor, do the following: 

1. Open the _Vendors_ (AP303000) form. 

2. In the **Vendor ID** box, select the ID of the vendor. 

3. On the **Payment** tab, in the **Payment Method** box, select the payment method that uses the RBC ACH094     plug-in.     The **Payment Instructions** table is displayed. 

4. In the table, specify the ACH parameters that you have received from the vendor. 

5. On the form toolbar, click **Save**. 

### Setup of Canadian EFT 

 In Acumatica ERP, you can export batch payments to a CPA-005 file by using a Canadian EFT plug-in. CPA-005 is an electronic funds transfer (EFT) file format accepted by the major Canadian banks. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 68 

 The Canadian EFT plug-in provides the following capabilities for users and administrators: 

- Users can generate a production document that is CPA-005 compatible and a test EFT file for batch     payments. 

- Users can edit the automatically generated sundry information for a payment. 

- An administrator can specify what information is exported in the _Originator's Cross Reference No_ and     _Originator's Sundry Information_ fields of the file. 

- An administrator can change the mapping for EFT fields. For example, it is possible to export different     account numbers in the _Payee Account No._ and _Account No. for Returns_ fields of the file. (By default, these     fields are mapped to one value.) The EFT file generated for the Royal Bank of Canada includes the _RBC Header_ record. Only transaction amounts greater than 0 are listed in the EFT file. If an EFT file cannot be exported, the system shows a clear error message to the user. 

 This functionality is available if the Canadian Localization feature is enabled on the Enable/Disable Features (CS100000) form. 

#### Setup of Batch Payment Processing by Using the Canadian EFT Plug-In 

 To start paying your vendors by using the Canadian EFT plug-in, you should perform the following general steps: 

1. You sign up for the EFT services with EFT Canada. As part of the sign-up process, you receive the credentials     with which your company is registered in the EFT network, such as the account number, bank routing     number, and company identification. 

2. You set up agreements with your vendors covering EFT transaction authorization, and you get information     about their accounts in the EFT network. 

3. You set up the payment method to be used for EFT payments. For details, see _To Add a Payment Method for_     _the Canadian EFT Plug-In_. 

4. On the _Vendors_ (AP303000) form, you specify the payment method intended for EFT payments as the default     payment method for each vendor that will accept EFT payments. By using the EFT-related information that     you collected from each vendor in Step 2, you fill in the settings of the payment method on the **Payment**     tab. For details, see _To Add a Payment Method for the Canadian EFT Plug-In_. 

#### Export of Batches via the Canadian EFT Plug-In 

 When a user exports a batch of payments on the Batch Payments (AP305000) form, the system uses the Canadian EFT plug-in if on the Settings For Use in AP tab of the Payment Methods (CA204000) form, the Canadian EFT Plug-in option is selected in the Export Method box. 

 The EFT file exported from the Batch Payments form by using the Canadian EFT plug-in has the following structure. 

 EFT Record Comment 

 Header Record This record is generated only for the Royal Bank of Canada (RBC). Only one header record can be included in the EFT file. 

 A: File Header Record This header is required because only one record of type A can be included in the file. 

 C: Detail Deposit Record 1 For each payment included in a batch of payments, a separate Detail Deposit Record is included in the EFT file. 

 C: Detail Deposit Record 2 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 69 

 EFT Record Comment 

 C: Detail Deposit Record N 

 Z: Control Totals (End Record) This record is required because only one record of type Z can be included in the EFT file. 

 The names of the EFT files that the system generates have the following format: 

- EFT production file: {PaymentMethodID}-{CashAccountCD}-{Date:yyyyMMdd}-     {BatchSeqNbr:0000}.txt 

- EFT test file: {PaymentMethodID}-{CashAccountCD}-{Date:yyyyMMdd}-     {BatchSeqNbr:0000}-Test.txt 

 The system selects the date that it inserts in the file name based on the Creation Date setting on the Plug-In Settings tab of the Payment Methods form for the payment method: 

- If _Current Date_ is selected, the system inserts the current business date. 

- If _Batch Date_ is selected, the system inserts the date specified in the **Batch Date** box on the     _Batch Payments_ form. 

 If the remittance setting mapped to the Institutional ID Number for Returns (Bank) box on the Remittance Settings tab of the Cash Accounts (CA204000) form is 003 or 0003 , which corresponds to the RBC bank code, the generated EFT file will include the following predefined header record: 

- EFT production file: _$$AA01CPA1464[PROD[NL$$_ 

- EFT test file: _$$AA01CPA1464[TEST[NL$$_ The system applies the following general rules to each EFT field if another mapping is not specified for the field: 

- An alphanumeric field is le-justified and padded with trailing spaces. 

- A numeric field is right-justified and padded with leading zeros. 

- If a numeric field is not needed, it is filled entirely with zeros. If an alphanumeric field is not needed, it is     filled entirely with spaces. For details on how to prepare payments and export them to a file, see _Processing Canadian EFT Payments_. 

#### Setup of Email Notifications 

 You can set up email notifications that will be sent to vendors aer EFT files are generated. To set up email notifications in the system, you perform the following general instructions: 

1. On the **Mailing & Printing** tab of the _Accounts Payable Preferences_ (AP101000) form, you set up the default     source of email notifications. You specify the following settings in the **Default Sources** table: 

- **Mailing ID** : _PAYMENTNOTICE_ 

- **Report** : Empty 

- **Email Template** : _PaymentNotice_. This is a predefined email template available in the system. 

2. In the **Default Recipients** table, you specify the needed recipients. 

3. On the **Mailing & Printing** tab of the _Vendors_ (AP303000) form, for each vendor that needs email     notifications, in the **Mailing ID** column, you select the mailing ID that you set up on the _Accounts Payable_     _Preferences_ form and save the changes. 

 On the Batch Payments (AP305000) form, you initialize sending of email notifications by clicking Send Notifications by Email on the More menu. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 70 

#### Limitations 

 The following limitations are applied to the Canadian EFT plug-in: 

- The plug-in does not support offset records for HSBC bank. The support for these records will be added in a     later version of Acumatica ERP. (Export scenarios do not support offset records either.) 

- The plug-in does not support the processing of payroll batches. 

### Settings of the Canadian EFT Plug-In 

 You can specify the settings of the Canadian EFT plug-in on the Plug-In Settings tab of the Payment Methods (CA204000) form. 

 All the settings listed in the table below are displayed on the tab if you select the Show All Settings check box on the tab. 

 The following table lists the settings of the Canadian EFT plug-in. 

 Setting Type of Control 

 Description Required Default Value 

 General Settings section 

 Compress to ZIP format 

 Lookup box The lookup table (which opens when you click the magnifier button) displays the remittance settings specified on the Remittance Settings tab of the Payment Methods form. 

 No 

 A: File Header Record section 

 Originator's ID Lookup box The originator of the file. The lookup table displays the remittance settings specified on the Remittance Settings tab of the Payment Methods form. 

 Yes Originator ID 

 Destination Data Center 

 Lookup box The data center to which the file is being delivered. The lookup table displays the remittance settings specified on the Remittance Settings tab of the Payment Methods form. 

 Yes Data Center 

 Creation Date Drop-down list 

 The creation date of the file, which can be one of the following options: 

- _Batch Date_ 

- _Current Date_ 

 Yes Current Date 

 C: Entry Detail (Deposit) Record section 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 71 

**Setting Type of Control** 

 Description Required Default Value 

**Institutional Identification No. (Bank)** 

 Lookup box The financial institution in which the payee maintains an account. The lookup table displays the payment details specified on the Settings for Use in AP tab of the Payment Methods form. 

 Yes Bank 

**Institutional Identification No. (Branch)** 

 Lookup box The branch of the financial institution in which the payee maintains an account. The lookup table displays the payment details specified on the Settings for Use in AP tab of the Payment Methods form. 

 Yes Branch 

**Payee Account No.** 

 Lookup box The payee's account with the financial institution. The lookup table displays the payment details specified on the Settings for Use in AP tab of the Payment Methods form. 

 Yes Account 

**Payee Name** Lookup box The payee’s name. The lookup table displays the payment details specified on the **Settings for Use in AP** tab of the _Payment Methods_ form. 

 Yes Beneficiary Name 

**Originator's Short Name** 

 Lookup box The short name of the originator of the transaction. The lookup table displays the remittance settings specified on the Remittance Settings tab of the Payment Methods form. 

 Yes Short Name 

**Originator's Long Name** 

 Lookup box The long name of the originator of the transaction. The lookup table displays the remittance settings specified on the Remittance Settings tab of the Payment Methods form. 

 Yes Name 

**Originating Direct Clearer's User ID** 

 Lookup box The identification code assigned to the user by the company’s direct clearer. The lookup table displays the remittance settings specified on the Remittance Settings tab of the Payment Methods form. 

 No Originator ID 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 72 

 Setting Type of Control 

 Description Required Default Value 

 Originator's Cross Reference No. 

 Formula box The formula used by the originator to identify the transaction. 

 This is a standard formula box. You can edit the value by using the Formula Editor dialog box. The list of fields that can be added to the formula (together with static text, operations, and functions) include the following: 

- _[APPayment.Reference Nbr]_ 

- _[APPayment.Description]_ 

- _[APPayment.Payment Date]_ 

- _[APPayment.Payment Ext Ref]_ 

- _[APPayment.Payment Amount]_ 

- _[APPayment.Vendor Name]_ 

- _[Bill.Reference Nbr]_ 

- _[Bill.Vendor Ref]_ 

- _[Bill.Description]_ 

- _[Bill.Date]_ 

 Yes [APPayment.Payment Ext Ref] 

 Institutional ID Number for Returns (Bank) 

 Lookup box The bank number to which returns and rejects are returned. The lookup table displays the remittance settings specified on the Remittance Settings tab of the Payment Methods form. 

 Yes Bank 

 Institutional ID Number for Returns (Branch) 

 Lookup box The branch number to which returns and rejects are returned. The lookup table displays the remittance settings specified on the Remittance Settings tab of the Payment Methods form. 

 No Branch 

 Account No. for Returns 

 Lookup box The account number to which returns and rejects are returned. The lookup table displays the remittance settings specified on the Remittance Settings tab of the Payment Methods form. 

 No Account 

 Originator's Sundry Information 

 Formula box The formula used by the originator to further identify the transaction. 

 This is a formula box. You can edit the value by using the Formula Editor dialog box. 

 No 

#### Modification of the Payment-Related Information Formula 

 On the Plug-In Settings tab of the Payment Methods (CA204000) form, you can edit the formula specified for the Originator's Cross Reference No. and Originator's Sundry Information settings of the plug-in by performing the following general steps: 

1. You double-click the formula in the **Value** column. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 73 

2. You click the Edit button to open the Formula Editor dialog box (described in _Formula Editor Dialog Box_ ),     where you update the formula.     For details on working with formulas, see _The Use of Formulas_. 

3. When you have finished editing the formula, click **OK**. 

 The following fields, which are available in the Component Selection pane of the Formula Editor dialog box, can be used to calculate the Originator's Cross Reference No. and Originator's Sundry Information settings for the record: 

- _[APPayment.Reference Nbr]_ : The **Reference Nbr.** of the AP payment on the _Checks and Payments_ (AP302000)     form 

- _[APPayment.Description]_ : The **Description** of the AP payment on the _Checks and Payments_ form 

- _[APPayment.Payment Date]_ : The **Payment Date** of the AP payment on the _Checks and Payments_ form 

- _[APPayment.Payment Ext Ref]_ : The **Payment Ref.** of the AP payment on the _Checks and Payments_ form 

- _[APPayment.Payment Amount]_ : The **Payment Amount** of the AP payment on the _Checks and Payments_ form 

- _[APPayment.Vendor Name]_ : The ID and **Account Name** of the vendor specified for the AP payment; these     values can be found in the **Vendor ID** element in the Summary area of the _Vendors_ (AP303000) form and the     **Account Name** specified on the **General** tab of the form 

- _[Bill.Reference Nbr]_ : The **Reference Nbr.** of the bill to which the AP payment is applied; this value can be     found on the _Bills and Adjustments_ (AP301000) form 

- _[Bill.Vendor Ref]_ : The **Vendor Ref.** number of the bill to which the AP payment is applied; this value can be     found on the _Bills and Adjustments_ form 

- _[Bill.Description]_ : The **Description** of the bill to which the AP payment is applied; this value can be found on     the _Bills and Adjustments_ form 

- _[Bill.Date]_ : The **Date** of a bill to which the AP payment is applied; this value can be found on the _Bills and_     _Adjustments_ form In the dialog box, you can use standard functions and operators along with the fields. You can manually edit the formula in the Formula Text pane. 

 If you want to insert the \ character in the formula, use \\ instead. 

### Settings of the Canadian EFT Export Scenario 

 In addition to the Canadian EFT plug-in, you can use the Canadian EFT export scenario to export batch payments to a CPA-005 file. On the Payment Methods (CA204000) form, when setting up a payment method for Canadian EFT, you select the following options on the Settings for Use in AP tab: 

- **Export Method** : _Export Scenario_ 

- **Export Scenario** : _Export AP Payment to Payments (Canadian Localization)_ (inserted by default) 

#### Settings of the Canadian EFT Export Scenario 

 When you select the Export AP Payment to Payments (Canadian Localization) export scenario, the system fills in the Payment Method Details table on the Settings for Use in AP tab with the following settings. 

 ID Description Entry Mask Validation Reg. Exp. 

 1 Bank 0000 ^\d{3,3}$ 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 74 

 ID Description Entry Mask Validation Reg. Exp. 

 2 Branch 00000 ^\d{5,5}$ 

 3 Account AAAAAAAAAAAA ^([\w]|\s){1,12}$ 

 4 Beneficiary Name AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA ^([\w]|\s){1,30}$ 

 The Remittance Settings tab is populated with the following settings. 

 ID Description Entry Mask Validation Reg. Exp. 

 1 Name AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA ^([\w]|\s){1,30}$ 

 2 Short Name AAAAAAAAAAAAAAA ^([\w]|\s){1,15}$ 

 3 Bank 0000 ^\d{3,3}$ 

 4 Branch 00000 ^\d{5,5}$ 

 5 Account AAAAAAAAAAAA ^([\w]|\s){1,12}$ 

 6 Originator ID AAAAAAAAAA ^([\w]|\s){1,10}$ 

 7 Data Center ^\d{5,5}$ 

 8 Compress to ZIP format 

##### 0 ^(1|0)$ 

 When the system generates a file on the Batch Payments (AP305000) form, the following rules are applicable: 

- If _003_ (RBC bank code) is specified for the **Bank** row of the **Remittance Details** table ( **Remittance Settings**     tab) on the _Cash Accounts_ (CA202000) form for a cash account, the generated EFT production file for a     released batch payment will include the following predefined header record: _$$AA01CPA1464[PROD[NL$$_. 

 The Bank row corresponds to the bank code or institution number. The Bank Code format is specified on the Remittance Settings tab of the Payment Methods (CA204000) form for the payment method. 

- If the bank code for the test file is _003_ (RBC bank code), the following conditions will apply: 

- The RBC EFT test file will have the following header record: _$$AA01CPA1464[TEST[NL$$_ 

- The **File Creation Number** values will be set to _TEST_ for logical records A, C, and Z 

- If the bank code for the test file is not _003_ (all other banks), the **File Creation Number** will be set to _0000_. 

### Settings of the EFT Export Scenario for Canadian Payroll 

 You can export payroll batch payments to a CPA-005 file on the Batch Payments (AP305000) form by using the Canadian EFT plug-in. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 75 

 This functionality becomes available if the Canadian Payroll and Canadian Localization features are enabled on the Enable/Disable Features (CS100000) form. 

 To configure the export of batch payments for Canadian payroll, you need to set up a Direct Deposit payment method on the Payment Methods (CA204000) form. In the Summary area, they specify the following settings for the payment method: 

- **Use in PR** : Selected 

- **Require Remittance Information for Cash Account** : Selected 

- **Direct Deposit File Format** : _CPA005_ On the **Settings for Use in PR** tab, you specify the following settings: 

- **Create Batch Payments** : Selected 

- **Export Scenario** : _Export PR Payments to EFT_ 

- **Skip Payments with Zero Amounts** : Cleared (the default value)     You select this check box if you want the system to exclude payments with zero amount from the exported     file. The **Remittance Settings** tab is populated with the settings listed in the following table. These remittance settings will be required for the cash accounts linked to the payment method on the **Allowed Cash Accounts** tab. 

 ID Description Entry Mask Validation Reg. Exp. 

 1 Name AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA ^([\w]|\s){1,30}$ 

 2 Short Name AAAAAAAAAAAAAAA ^([\w]|\s){1,15}$ 

 3 Bank 0000 ^\d{3,3}$ 

 4 Branch 00000 ^\d{5,5}$ 

 5 Account AAAAAAAAAAAA ^([\w]|\s){1,12}$ 

 6 Originator ID AAAAAAAAAA ^([\w]|\s){1,10}$ 

 7 Data Center ^\d{5,5}$ 

 8 Compress to ZIP format 0 ^(1|0)$ 

 The Compress to ZIP format setting determines whether the system should compress the exported file. You set the entry mask for this setting to 1 to make the system perform the compression. 

### To Add a Payment Method for the Canadian EFT Plug-In 

 You use the Payment Methods (CA204000) form to create a payment method to be used for electronic funds transfer (EFT) payments through the Canadian EFT plug-in. 

 As an alternative to adding a payment method, you can use the predefined Direct Deposit payment method that is provided in an out-of-the-box instance of Acumatica ERP. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 76 

#### Before You Proceed 

 Make sure that the Canadian Localization feature is enabled on the Enable/Disable Features (CS100000) form. 

#### To Add a Payment Method for the Canadian EFT Plug-In 

 To add a payment method that uses the Canadian EFT plug-in, do the following: 

1. On the _Payment Methods_ (CA204000) form, add a new record. 

2. In the **Payment Method ID** box, type the identifier you want to use for the payment method (such as EFT). 

3. Make sure that the **Active** check box is selected, which makes the payment method available for use in the     system. 

4. In the **Means of Payment** box, select the _Direct Deposit_ option. 

5. In the **Direct Deposit File Format** box, select _CPA005_. 

6. Select the **Use in AP** check box to make the payment method available to be assigned to vendors. 

7. In the **Description** box, type a description for the payment method. 

8. On the **Settings for Use in AP** tab, configure the export of batches to an EFT file for processing as follows:     a. In the **Additional Processing** section, select the **Create Batch Payments** option button to indicate that        the payment method involves creating payment batches.     b. In the **Export Method** box, select _Canadian EFT Plug-In_.     c. Select the **Release Batch Payment Before Export** check box if you want to export EFT payment batches        aer they are released. If you want to export batches before release, leave this check box cleared.     d. In the **Payment Method Details** table, review the elements that have been added automatically. These        elements will appear on the _Vendors_ (AP303000) form so that users can enter the EFT credentials that are        specific to the particular vendor. 

9. On the **Allowed Cash Accounts** tab, do the following to add each cash account you are planning to use as a     source for payments made to vendors by using the payment method:     a. On the table toolbar, click **Add Row**. In the **Cash Account** column, select the cash account.     b. Select the **AP Default** check box if this cash account is to be used by default.     c. Optional: Select the **Quick Batch Generation** check box to make it possible to quickly prepare batches of        AP payments for this cash account and payment method on the _Prepare Payments_ (AP503000) form.     d. If you selected the **Quick Batch Generation** check box, specify the number used for the last payment        associated with this cash account in accounts payable in the **AP Last Reference Number** column. 10.On the **Remittance Settings** tab, review the automatically added elements that will appear on the _Cash_     _Accounts_ (CA202000) form so that users can enter your company's EFT credentials for each cash account. 

 Although the table on the Remittance Settings tab is filled in automatically for the Canadian EFT plug-in, you can remove the existing settings or add new ones. 

 11.On the Plug-In Settings tab, review the plug-in settings, which were added automatically when you selected the Canadian EFT plug-in. To review all the settings, select the Show All Settings check box. 12.Optional: Update the values for the needed settings according to the vendor's or bank's requirements. For the list of available plug-in settings, see Settings of the Canadian EFT Plug-In. 13.On the form toolbar, click Save. 

 Next, you will specify the remittance details for the cash account that uses this payment method. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 77 

#### To Add Remittance Details to the Cash Account 

 To add remittance details to each cash account that is linked to the EFT payment method, do the following: 

1. On the _Cash Accounts_ (CA202000) form, open the cash account. 

2. Go to the **Remittance Settings** tab. 

3. In the le pane, select the EFT payment method. 

4. In the **Remittance Details** table in the right pane, review the remittance settings that appear in the table.     The settings in the **Description** column are copied from the **Remittance Settings** tab of the _Payment_     _Methods_ (CA204000) form.     For a full description of the Canadian plug-in settings, see _Settings of the Canadian EFT Plug-In_. 

5. In the **Value** column, enter the needed value for each setting. 

6. On the form toolbar, click **Save**. 

 Now you will specify EFT credentials for each vendor that agreed to receive your payments through EFT. 

#### To Add Payment Details for a Vendor 

 To add payment details for a vendor that will receive your payments, do the following: 

1. Open the _Vendors_ (AP303000) form. 

2. In the **Vendor ID** box, select the ID of the vendor whose settings you need to update. 

3. On the **Payment** tab, select the Canadian EFT payment method in the **Payment Method** box.     The **Payment Instructions** table is displayed. 

4. In the table, fill in the payment details that you have received from the vendor. 

5. On the form toolbar, click **Save**. 

### To Add a Payment Method for the Canadian EFT Export Scenario 

 You use the Payment Methods (CA204000) form to create a payment method to be used for electronic funds transfer (EFT) payments through the Canadian EFT export scenario. 

 As an alternative to adding a payment method, you can use the predefined Direct Deposit payment method that is provided in an out-of-the-box instance of Acumatica ERP. 

#### Before You Proceed 

 Make sure that the Canadian Localization feature is enabled on the Enable/Disable Features (CS100000) form. 

#### To Add a Payment Method for the Canadian EFT Export Scenario 

 To add a payment method that uses the Canadian EFT export scenario, do the following: 

1. On the _Payment Methods_ (CA204000) form, add a new record. 

2. In the **Payment Method ID** box, type the identifier you want to use for the payment method (such as EFT). 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 78 

3. Make sure that the **Active** check box is selected, which makes the payment method available for use in the     system. 

4. In the **Means of Payment** box, select the _Direct Deposit_ option. 

5. In the **Direct Deposit File Format** box, select _CPA005_. 

6. Select the **Use in AP** check box to make the payment method available to be assigned to vendors. 

7. In the **Description** box, type a description for the payment method. 

8. On the **Settings for Use in AP** tab, configure the export of batches to an EFT file for processing as follows:     a. In the **Additional Processing** section, select the **Create Batch Payments** option button to indicate that        the payment method involves creating payment batches.     b. In the **Export Method** box, select _Export Scenario_.     c. In the **Export Scenario** box, make sure that _Export AP Payment to Payments (Canadian Localization)_ is        selected.     d. Select the **Release Batch Payment Before Export** check box if you want to export EFT payment batches        aer they are released. If you want to export batches before release, leave this check box cleared.     e. In the **Payment Method Details** table, review the elements that have been added automatically. These        elements will appear on the _Vendors_ (AP303000) form so that users can enter the EFT credentials that are        specific to the particular vendor. 

9. On the **Allowed Cash Accounts** tab, do the following to add each cash account you are planning to use as a     source for payments made to vendors by using the payment method:     a. On the table toolbar, click **Add Row**. In the **Cash Account** column, select the cash account.     b. Select the **AP Default** check box if this cash account is to be used by default.     c. Optional: Select the **Quick Batch Generation** check box to make it possible to quickly prepare batches of        AP payments for this cash account and payment method on the _Prepare Payments_ (AP503000) form.     d. If you selected the **Quick Batch Generation** check box, specify the number used for the last payment        associated with this cash account in accounts payable in the **AP Last Reference Number** column. 10.On the **Remittance Settings** tab, review the automatically added elements that will appear on the _Cash_     _Accounts_ (CA202000) form so that users can enter your company's EFT credentials for each cash account. 

 Although the table on the Remittance Settings tab is filled in automatically for the Canadian EFT export scenario, you can remove the existing settings or add new ones. 

 11.On the form toolbar, click Save. 

 Next, you will specify the remittance details for the cash account that uses this payment method. 

#### To Add Remittance Details to the Cash Account 

 To add remittance details to each cash account that is linked to the EFT payment method, do the following: 

1. On the _Cash Accounts_ (CA202000) form, open the cash account. 

2. Go to the **Remittance Settings** tab. 

3. In the le pane, select the EFT payment method. 

4. In the **Remittance Details** table in the right pane, review the remittance settings that appear in the table.     The settings in the **Description** column are copied from the **Remittance Settings** tab of the _Payment_     _Methods_ (CA204000) form. 

5. In the **Value** column, enter the needed value for each setting. 

6. On the form toolbar, click **Save**. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 79 

 Now you will specify EFT credentials for each vendor that agreed to receive your payments through EFT. 

#### To Add Payment Details for a Vendor 

 To add payment details for a vendor that will receive your payments, do the following: 

1. Open the _Vendors_ (AP303000) form. 

2. In the **Vendor ID** box, select the ID of the vendor whose settings you need to update. 

3. On the **Payment** tab, select the Canadian EFT payment method in the **Payment Method** box.     The **Payment Instructions** table is displayed. 

4. In the table, fill in the payment details that you have received from the vendor. 

5. On the form toolbar, click **Save**. 

### Setup of BACS HSBC Payment Processing 

 In Acumatica ERP, you can export batch payments to a Bankers' Automated Clearing System (BACS) file in the BACS HSBC format by using a plug-in. (BACS is used in the United Kingdom.) 

 This functionality is available if the UK Localization feature is enabled on the Enable/Disable Features (CS100000) form. 

#### Setup of Batch Payment Processing by Using the BACS HSBC Plug-In 

 To start paying your vendors by using the BACS HSBC plug-in, you should perform the following general steps: 

1. You sign up for the payment processing services with HSBC. As part of the sign-up process, you receive the     credentials with which your company is registered, such as the account number, bank routing number, and     company identification. 

2. You set up agreements with your vendors covering receipts of payment in BACS HSBC format, and you get     information about their accounts. 

3. You set up the payment method to be used for BACS HSBC payments. For details, see _To Add a Payment_     _Method for BACS HSBC Plug-In_. 

4. On the _Vendors_ (AP303000) form, you specify the payment method intended for BACS HSBC payments as     the default payment method for each vendor that will accept BACS payments. By using the payment-related     information that you collected from each vendor in Step 2, you fill in the settings of the payment method on     the **Payment** tab. For details, see _To Add a Payment Method for BACS HSBC Plug-In_. 

#### Export of Batches via the BACS HSBC Plug-In 

 During export of a batch of payments on the Batch Payments (AP305000) form, the system uses the BACS HSBC plug-in if on the Settings For Use in AP tab of the Payment Methods (CA204000) form, BACS HSBC Plug-In is selected as the Export Method. 

 The file exported from the Batch Payments form by using the BACS HSBC plug-in has the following structure. 

 BACS File Comment 

 VOL Required. Only one record can be included in a file. 

 HDR1 Required. Only one record can be included in a file. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 80 

 BACS File Comment 

 HDR2 Required. Only one record can be included in a file. 

 UHL Required. Only one record can be included in a file. 

 Standard record 1 For each payment included in a batch, a separate standard record is added to the file. 

 Standard record 2 

 Standard record N 

 Contra record One record is added for the batch. It includes the total of all payments. 

 EOF1 Required. Only one record can be included in a file. 

 EOF2 Required. Only one record can be included in a file. 

 The name of the file generated by the plug-in is created by using the following format: {PaymentMethodID}{CashAccountCD}-{Creation Date:yyyyMMdd}-{BatchSeqNbr:0000}.txt. 

 For details on how to prepare payments and export them to a file, see To Prepare BACS Payments and To Export BACS Payments. 

#### Limitations 

 The following limitations apply to this functionality: 

- Only multiprocessing files with ACH credits are supported. 

- Even though a multiprocessing file is exported, the _BACS processing day of data_ setting will be the current     day plus two working days for all files. (The same limitation is applicable to the export scenario.) 

- The plug-in will export a file with the same data as the export scenario because any changes to the file     format require additional testing. By switching to the plug-in, users can more easily process errors. Any     additional requirements will be implemented in later versions of Acumatica ERP. 

### Settings of the BACS HSBC File 

 You specify the settings of the BACS HSBC plug-in on the Plug-In Settings tab of the Payment Methods (CA204000) form. 

 The file exported on the Batch Payments (AP305000) form via the BACS HSBC plug-in has the following structure. 

 BACS File Section Comment 

 VOL Required. Only one record can be included in a file. 

 HDR1 Required. Only one record can be included in a file. 

 HDR2 Required. Only one record can be included in a file. 

 UHL Required. Only one record can be included in a file. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 81 

 BACS File Section Comment 

 Standard record 1 For each payment included in a batch, a separate standard record is added to the file. 

 Standard record 2 

 Standard record N 

 Contra record One record is added for the batch. It includes the total of all payments. 

 EOF1 Required. Only one record can be included in a file. 

 EOF2 Required. Only one record can be included in a file. 

The following tables show the structure of each section in the BACS HSBC file. 

**_Table: VOL Record_** 

 Field Number 

 Field Name 

 Position in Record 

 Data Element Size 

 Format Required Comment 

 1 Label Identifier 

 1–3 3 A value of VOL. 

 2 Label Number 

 4 1 A value of 1. 

 3 Serial Number 

 5–10 6 The value specified in the Batch Seq. Number box in the Summary area of the Batch Payments form. 

 This value is le padded with zeros if necessary. 

 4 Accessibility Indicator 

 11 1 A blank value. 

 5 Reserved field 

 12–31 20 A blank value. 

 6 Reserved field 

 32–37 6 Alphanumeric 

 No A value of HSBCbb , where b is a blank value. This value is used if the remittance setting on the Remittance Settings tab of the Cash Accounts (CA202000) form, which is mapped to the Service User Number (SUN) setting on the Plug-In Settings tab of the Payment Methods (CA204000) form is empty. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 82 

 Field Number 

 Field Name 

 Position in Record 

 Data Element Size 

 Format Required Comment 

 7a Owner ID 

 38–41 4 A blank value. 

 7b 42–47 6 Numeric No The remittance setting specified on the Remittance Settings tab of the Cash Accounts form, which is mapped to the Service User Number (SUN) setting on the Plug-In Settings tab of the Payment Methods form. 

 The value must have 6 characters. 

 7c 48–51 4 A blank value. 

 8 Reserved field 

 52–79 28 A blank value. 

 9 Label Standard Level 

 80 1 A value of 1. 

**_Table: HDR1 Record_** 

 Field Number 

 Field Name 

 Position in Record 

 Data Element Size 

 Format Required Comment 

 1 Label Identifier 

 1–3 3 A value of HDR. 

 2 Label Number 

 4 1 A value of 1. 

 3a File Identifier 

 5 1 A value of A. 

 3b 6–11 6 Numeric No The remittance setting specified on the Remittance Settings tab of the Cash Accounts form, which is mapped to the Service User Number (SUN) setting on the Plug-In Settings tab of the Payment Methods form. 

 3c 12 1 A value of S. 

 3d 13–14 2 A blank value. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 83 

**Field Number** 

 Field Name 

 Position in Record 

 Data Element Size 

 Format Required Comment 

3e 15 1 A blank value. 

3f 16–21 6 Numeric No The remittance setting specified on the **Remittance Settings** tab of the _Cash Accounts_ form, which is mapped to the _Service User Number (SUN)_ setting on the **Plug-In Settings** tab of the _Payment Methods_ form. 

4 _Set Identification_ 

 22–27 6 Alphanumeric 

 Yes The value specified in the Batch Seq. Number box in the Summary area of the Batch Payments form. 

 This value is le padded with zeros if necessary. 

5 _File Section Number_ 

 28–31 4 A value of 0001. 

6 _File Sequence Number_ 

 32–35 4 A value of 0001. 

7 _Generation Number_ 

 36–39 4 A blank value. 

8 _Generation Version Number_ 

 40–41 2 A blank value. 

9 _Creation Date_ 

 42–47 6 Yes The date mapped to the Creation Date setting on the Plug-In Settings tab of the Payment Methods form. 

 The format must be byyddd, where: 

- b is a blank space 

- yy are the last two digits of the     year 

- ddd is the number of the day     within the year 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 84 

 Field Number 

 Field Name 

 Position in Record 

 Data Element Size 

 Format Required Comment 

 10 Expiration Date 

 48–53 6 Yes The date that is three working days later than the Creation Date setting specified on the Plug-In Settings tab of the Payment Methods form. 

 The value must be in the bYYDDD format. 

 11 Accessibility Indicator 

 54 1 A blank value. 

 12 Block Count 

 55–60 6 A value of 000000. 

 13 System Code 

 61–73 13 A blank value. 

 14 Reserved field 

 74–80 7 A blank value. 

**_Table: HDR2 Record_** 

 Field Number 

 Field Name 

 Position in Record 

 Data Element Size 

 Format Required Comment 

 1 Label Identifier 

 1–3 3 A value of HDR. 

 2 Label Number 

 4 1 A value of 2. 

 3 Record Format 

 5 1 A value of F. 

 4 Block Length 

 6–10 5 A value of 02000. 

 5 Record Length 

 11–15 5 A value of 00106. 

 6 Reserved for operating systems 

 16–50 35 A blank value. 

 7 Buffer Offset 

 51–52 2 A value of 00. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 85 

 Field Number 

 Field Name 

 Position in Record 

 Data Element Size 

 Format Required Comment 

 8 Reserved field 

 53–80 28 A blank value. 

**_Table: UHL1 Record_** 

 Field Number 

 Field Name Position in Record 

 Data Element Size 

 Format Required Comment 

 1 Label Identifier 

 1–3 3 A value of UHL. 

 2 Label Number 

 4 1 A value of 1. 

 3 BACS Processing Day 

 5–10 6 The date that is two working days later than the Creation Date setting specified on the Plug-In Settings tab of the Payment Methods form. 

 The value must be in the bYYDDD format. 

 4a Identifying Number of Receiving Party 

 11–16 6 A value of 999999. 

 4b 17–20 4 A blank value. 

 5 Currency Code 

 21–22 2 A value of 00. 

 6 Country Code 

 23–28 6 A value of 000000. 

 7 Work Code 29–37 9 A value in the 4bMULTIbb format, where b is a blank space. 

 8 File Number 

 38–40 3 A value of 001. 

 9 Reserved field 

 41–47 7 A blank value. 

 10a Audit Print Identifier 

 48–50 3 A blank value. 

 10b 51–54 4 A blank value. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 86 

 Field Number 

 Field Name Position in Record 

 Data Element Size 

 Format Required Comment 

 11 For Use by User/Bureau 

 55–80 26 A blank value. 

**_Table: Standard Record_** 

 Field Number 

 Field Name Data Element Size 

 Format Required Comment 

 1 Destination Sorting Code Number 

 6 Numeric Yes The vendor's payment setting specified in the Payment Instructions table ( Payment tab) on the Vendors (AP303000) form. This setting is mapped to the Destination Sort Code Number setting on the Plug-In Settings tab of the Payment Methods (CA204000) form. 

 2 Destination Account Number 

 8 Numeric Yes The vendor's payment setting specified in the Payment Instructions table ( Payment tab) on the Vendors form. This setting is mapped to the Destination Account Number setting on the Plug-In Settings tab of the Payment Methods form. 

 3 Destination Type Account 

 1 A value of 0. 

 4 Transaction Code 

 2 A value of 99 Bank Giro Credit. 

 5 Originating sorting code number 

 6 Numeric Yes The remittance setting specified on the Remittance Settings tab of the Cash Accounts (CA204000) form. This setting is mapped to the Originating Sort Code Number setting on the Plug-In Settings tab of the Payment Methods form. 

 6 Originating account number 

 8 Numeric Yes The remittance setting specified on the Remittance Settings tab of the Cash Accounts form. This setting is mapped to the Originating Account Number setting on the Plug-In Settings tab of the Payment Methods form 

 7 Free format 4 A blank value. 

 8 Amount (in pence) 

 11 Numeric Yes The payment amount from the batch line in $$$$$$$$$cc format. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 87 

 Field Number 

 Field Name Data Element Size 

 Format Required Comment 

 9 User's name 18 Yes The remittance setting specified on the Remittance Settings tab of the Cash Accounts form. This setting is mapped to the Originating Account Name setting on the Plug-In Settings tab of the Payment Methods form 

 10 User's reference 

 18 Yes The vendor's payment setting specified in the Payment Instructions table ( Payment tab) on the Vendors form. This setting is mapped to the Destination Payment Ref. setting on the PlugIn Settings tab of the Payment Methods form. 

 11 Destination account name 

 18 Yes The vendor's payment setting specified in the Payment Instructions table ( Payment tab) on the Vendors form. This setting is mapped to the Destination Account Name setting on the PlugIn Settings tab of the Payment Methods form. 

 12 BACS processing day of data 

 6 Yes Two working days after the date mapped to the Creation Date setting on the Plug-In Settings tab of the Payment Methods form. 

**_Table: Contra Record_** 

 Field Number 

 Field Name Data Element Size 

 Format Required Comment 

 1 Originating Sorting Code Number 

 6 Numeric Yes The remittance setting specified on the Remittance Settings tab of the Cash Accounts (CA204000) form. This setting is mapped to the Originating Sort Code Number setting on the Plug-In Settings tab of the Payment Methods (CA204000) form. 

 2 Originating account number 

 8 Numeric Yes The remittance setting specified on the Remittance Settings tab of the Cash Accounts form. This setting is mapped to the Originating Account Number setting on the Plug-In Settings tab of the Payment Methods form. 

 3 Type of user's account 

 1 A value of 0. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 88 

**Field Number** 

 Field Name Data Element Size 

 Format Required Comment 

4 _Transaction code_ 

 2 A value of 17. 

5 _Originating sorting code number_ 

 6 Numeric Yes The remittance setting specified on the Remittance Settings tab of the Cash Accounts form. This setting is mapped to the Originating Sort Code Number setting on the Plug-In Settings tab of the Payment Methods form. 

6 _Originating account number_ 

 8 Numeric Yes The remittance setting specified on the Remittance Settings tab of the Cash Accounts form. This setting is mapped to the Originating Account Number setting on the Plug-In Settings tab of the Payment Methods form. 

7 Free format 4 A blank value. 

8 _Amount (in pence)_ 

 11 The sum of the payment amounts from the batch lines in $$$$$$$$$cc format. 

9 _Narrative of user's choice_ 

 18 The remittance setting specified on the Remittance Settings tab of the Cash Accounts form. This setting is mapped to the Originating Account Name setting on the Plug-In Settings tab of the Payment Methods form. 

10 _Contra identification_ 

 18 A value of CONTRA. 

11 _Abbreviated account name of user's nominated account_ 

 18 Yes The remittance setting specified on the Remittance Settings tab of the Cash Accounts form. This setting is mapped to the Originating Account Name setting on the Plug-In Settings tab of the Payment Methods form. 

12 _BACS processing day of data_ 

 6 Two working days after the date mapped to the Creation Date setting on the Plug-In Settings tab of the Payment Methods form. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 89 

**_Table: EOF1 Record_** 

 Field Number 

 Field Name 

 Position in Record 

 Data Element Size 

 Format Required Comment 

 1 Label Identifier 

 1–3 3 A value of EOF. 

 2 Label Number 

 4 1 A value of 1. 

 3 Same as HDR1 

 5–54 50 A value copied from the HDR1 record (positions 5–54). 

 4 Block Count 

 55–60 6 A blank value. 

 5 Same as HDR1 

 61–80 20 A blank value. 

**_Table: EOF2 Record_** 

 Field Number 

 Field Name 

 Position in Record 

 Data Element Size 

 Format Required Comment 

 1 Label Identifier 

 1–3 3 A value of EOF. 

 2 Label Number 

 4 1 A value of 2. 

 3 Same as HDR1 

 5–80 50 A value copied from the HDR2 record (positions 5–80). 

**_Table: UTL1 Record_** 

 Field Number 

 Field Name 

 Position in Record 

 Data Element Size 

 Format Required Comment 

 1 Label Identifier 

 1–3 3 A value of UTL. 

 2 Label Number 

 4 1 A value of 1. 

 3 Monetary Total of Debit Records 

 5–17 13 Numeric No The sum of payment amounts from the detail lines of the batch payment in the $$$$$$$ $$cc format. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 90 

 Field Number 

 Field Name 

 Position in Record 

 Data Element Size 

 Format Required Comment 

 4 Monetary Total of Credit Records 

 18–30 13 Numeric No The sum of payment amounts from the detail lines of the batch payment in the $$$$$$$ $$cc format. 

 5 Count of Debit Records 

 31–37 7 A value of 1. 

 6 Count of Credit Records 

 38–44 7 Number of payments in the batch. 

 7 Reserved for future standardization 

 45–54 10 A blank value. 

 8 For Use by User or Bureau 

 55–80 26 A blank value. 

### To Add a Payment Method for BACS HSBC Plug-In 

 You use the Payment Methods (CA204000) form to create a payment method to be used for export of a BACS HSBC file through the BACS HSBC plug-in. 

 As an alternative to adding a payment method, you can use the predefined Direct Deposit payment method that is provided in an out-of-the-box instance of Acumatica ERP. 

#### Before You Proceed 

 Make sure that the UK Localization feature is enabled on the Enable/Disable Features (CS100000) form. 

#### To Add a Payment Method for the BACS HSBC Plug-In 

 To add a payment method that uses the BACS HSBC plug-in, do the following: 

1. On the _Payment Methods_ (CA204000) form, add a new record. 

2. In the **Payment Method ID** box, type the identifier you want to use for the payment method (such as     BACS_HSBC). 

3. Make sure that the **Active** check box is selected, which makes the payment method available for use in the     system. 

4. In the **Means of Payment** box, select the _Direct Deposit_ option. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 91 

5. In the **Direct Deposit File Format** box, select _BACS HSBC Payment_. 

6. Make sure that the **Use in AP** check box is selected to make the payment method available to be assigned to     vendors. 

7. In the **Description** box, type a description for the payment method. 

8. On the **Settings for Use in AP** tab, configure the export of batches to a BACS HSBC file for processing as     follows:     a. In the **Additional Processing** section, make sure that the **Create Batch Payments** option button is        selected. It indicates that the payment method involves creating payment batches.     b. In the **Export Method** box, select _BACS HSBC Plug-In_.     c. Select the **Release Batch Payment Before Export** check box if you want to export BACS payment        batches aer they are released. If you want to export batches before release, leave this check box        cleared.     d. In the **Payment Method Details** table, review the elements that have been added automatically. These        elements will appear on the _Vendors_ (AP303000) form so that users can enter the credentials that are        specific to the particular vendor. 

9. On the **Allowed Cash Accounts** tab, do the following to add each cash account you are planning to use as a     source for payments made to vendors by using the payment method:     a. On the table toolbar, click **Add Row**. In the **Cash Account** column, select the cash account.     b. Select the **AP Default** check box if this cash account is to be used by default.     c. Optional: Select the **Quick Batch Generation** check box to make it possible to quickly prepare batches of        AP payments for this cash account and payment method on the _Prepare Payments_ (AP503000) form.     d. If you selected the **Quick Batch Generation** check box, specify the number used for the last payment        associated with this cash account in accounts payable in the **AP Last Reference Number** column. 10.On the **Remittance Settings** tab, review the automatically added elements that will appear on the _Cash_     _Accounts_ (CA202000) form so that users can enter your company's BACS credentials for each cash account. 

 Although the table on the Remittance Settings tab is filled in automatically for the BACS HSBC plug-in, you can remove the existing settings or add new ones. 

 11.On the Plug-In Settings tab, review the plug-in settings, which were added automatically when you selected the BACS HSBC plug-in. 12.Optional: Update the values for the needed settings according to the vendor's or bank's requirements. For the list of available plug-in settings, see Settings of the BACS HSBC File. 13.On the form toolbar, click Save. 

 Next, you will specify the remittance details for the cash account that uses this payment method. 

#### To Add Remittance Details to the Cash Account 

 To add remittance details to each cash account that is linked to the BACS payment method, do the following: 

1. On the _Cash Accounts_ (CA202000) form, open the cash account. 

2. Go to the **Remittance Settings** tab. 

3. In the le pane, select the BACS payment method. 

4. In the **Remittance Details** table in the right pane, review the remittance settings that appear in the table.     The settings in the **Description** column are copied from the **Remittance Settings** tab of the _Payment_     _Methods_ (CA204000) form.     For a full description of the BACS HSBC plug-in settings, see _Settings of the BACS HSBC File_. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 92 

5. In the **Value** column, enter the needed value for each setting. 

6. On the form toolbar, click **Save**. 

 Now you will specify BACS credentials for each vendor that agreed to receive your payments through BACS. 

#### To Add Payment Details for a Vendor 

 To add payment details for a vendor that will receive your payments, do the following: 

1. Open the _Vendors_ (AP303000) form. 

2. In the **Vendor ID** box, select the ID of the vendor whose settings you need to update. 

3. On the **Payment** tab, select the BACS HSBC method in the **Payment Method** box.     The **Payment Instructions** table is displayed. 

4. In the table, fill in the payment details that you have received from the vendor. 

5. On the form toolbar, click **Save**. 

### Setup of BACS Lloyds Payment Processing 

 In Acumatica ERP, you can export batch payments to a Bankers' Automated Clearing System (BACS) file in the BACS Lloyds format by using a plug-in. (BACS is used in the United Kingdom.) 

 This functionality is available if the UK Localization feature is enabled on the Enable/Disable Features (CS100000) form. 

#### Setup of Batch Payment Processing by Using the BACS Lloyds Plug-In 

 To start paying your vendors by using the BACS Lloyds plug-in, you should perform the following general steps: 

1. You sign up for the payment processing services with Lloyds. As part of the sign-up process, you receive the     credentials with which your company is registered, such as the account number, bank routing number, and     company identification. 

2. You set up agreements with your vendors covering receipts of payment in BACS Lloyds format, and you get     information about their accounts. 

3. You set up the payment method to be used for BACS Lloyds payments. For details, see _To Add a Payment_     _Method for BACS Lloyds Plug-In_. 

4. On the _Vendors_ (AP303000) form, you specify the payment method intended for BACS Lloyds payments as     the default payment method for each vendor that will accept BACS payments. By using the payment-related     information that you collected from each vendor in Step 2, you fill in the settings of the payment method on     the **Payment** tab. For details, see _To Add a Payment Method for BACS Lloyds Plug-In_. 

#### Export of Batches via the BACS Lloyds Plug-In 

 During export of a batch of payments on the Batch Payments (AP305000) form, the system uses the BACS Lloyds plug-in if on the Settings For Use in AP tab of the Payment Methods (CA204000) form, BACS Lloyds Plug-In is selected as the Export Method. 

 The name of the file generated by the plug-in is created by using the following format: {PaymentMethodID}{CashAccountCD}-{Creation Date:yyyyMMdd}-{BatchSeqNbr:0000}.csv. 

 For details on how to prepare payments and export them to a file, see To Prepare BACS Payments and To Export BACS Payments. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 93 

### Settings of the BACS Lloyds File 

 You specify the settings of the BACS Lloyds plug-in on the Plug-In Settings tab of the Payment Methods (CA204000) form. 

 The file exported from the Batch Payments form by using the BACS Lloyds plug-in contains the sections shown in the tables below. 

 Table: H Section Only one line per file is added. 

 Field Number 

 Field Name Max. Length (Min. Length) 

 Required Comment 

 1 Header Identifier 1 (1) Yes The value of this field is H. 

 2 Current Date 8 (8) Yes The date mapped to the Creation Date setting on the Plug-in Settings tab of the Payment Methods form. 

 3 Sequence Number 6 (1) Yes The Batch Seq. Number setting on the Batch Payments form. 

 Table: D Section Only one line per file is added. 

 Field Number 

 Field Name Max. Length (Min. Length) 

 Required Comment 

 1 Logical Record Type 

 1 (1) Yes The value of this field is D. 

 2 Value Date 8 (8) Yes The payment date from the first line in the batch. The format of this element is YYYYMMDD. 

 The system verifies that only payments with the same date are added to a batch payment if the payment method has BACS Lloyds Payment in the Direct Deposit File Format box. 

 3 Debit Account Reference 

 18 Yes The cash account from the batch payment. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 94 

 Field Number 

 Field Name Max. Length (Min. Length) 

 Required Comment 

 4 Account Number 15 (15) Yes A field with the Acc1 Acc2 format, where: 

- Acc1 is the value of the remittance set-     ting specified on the **Remittance Settings**     tab of the _Cash Accounts_ (CA204000) form.     This setting is mapped to the _Originating_     _Sort Code Number_ setting on the **Plug-**     **In Settings** tab of the _Payment Methods_     form. 

- Acc2 is the value of the remittance set-     ting specified on the **Remittance Settings**     tab of the _Cash Accounts_ form. This set-     ting is mapped to the _Originating Account_     _Number_ setting on the **Plug-In Settings**     tab of the _Payment Methods_ form. _Originating Sort Code Number_ must contain six characters and _Originating Account Num- ber_ must contain eight characters. 

**_Table: C Section_** 

One line is added to each payment in the batch. 

 Field Number 

 Field Name Max. Length (Min. Length) 

 Required Comment 

 1 Logical Record Type 

 1 (1) Yes The value of this field is C. 

 2 Payment Amount 18 Yes The payment amount from the batch payment line. Ending zeros after the decimal point are dropped. 

 3 Beneficiary Name 18 Yes The vendor's payment setting specified in the Payment Instructions table ( Payment tab) on the Vendors (AP303000) form. This setting is mapped to the Destination Account Name setting on the Plug-In Settings tab of the Payment Methods form. 

 4 Beneficiary Account Number 

 8 (8) Yes The vendor's payment setting specified in the Payment Instructions table ( Payment tab) on the Vendors form. This setting is mapped to the Destination Account Number setting on the Plug-In Settings tab of the Payment Methods form. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 95 

 Field Number 

 Field Name Max. Length (Min. Length) 

 Required Comment 

 5 Beneficiary Sort Code 

 6 (6) Yes The vendor's payment setting specified in the Payment Instructions table ( Payment tab) on the Vendors form. This setting is mapped to the Destination Sort Code Number setting on the Plug-In Settings tab of the Payment Methods form. 

 6 Beneficiary Reference 

 18 Yes The Payment Ref. setting from the batch payment line. 

 Table: T Section Only one line per file is added. 

 Field Number 

 Field Name Max. Length (Min. Length) 

 Required Comment 

 1 Logical Record Type 

 Yes The value of this field is T. 

### To Add a Payment Method for BACS Lloyds Plug-In 

 You use the Payment Methods (CA204000) form to create a payment method to be used for export of a BACS Lloyds file through the BACS Lloyds plug-in. 

 As an alternative to adding a payment method, you can use the predefined Direct Deposit payment method that is provided in an out-of-the-box instance of Acumatica ERP. 

#### Before You Proceed 

 Make sure that the UK Localization feature is enabled on the Enable/Disable Features (CS100000) form. 

#### To Add a Payment Method for the BACS Lloyds Plug-In 

 To add a payment method that uses the BACS Lloyds plug-in, do the following: 

1. On the _Payment Methods_ (CA204000) form, add a new record. 

2. In the **Payment Method ID** box, type the identifier you want to use for the payment method (such as     BACS_LLOYDS). 

3. Make sure that the **Active** check box is selected, which makes the payment method available for use in the     system. 

4. In the **Means of Payment** box, select the _Direct Deposit_ option. 

5. In the **Direct Deposit File Format** box, select _BACS Lloyds Payment_. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 96 

6. Make sure that the **Use in AP** check box is selected to make the payment method available to be assigned to     vendors. 

7. In the **Description** box, type a description for the payment method. 

8. On the **Settings for Use in AP** tab, configure the export of batches to a BACS Lloyds file for processing as     follows:     a. In the **Additional Processing** section, make sure that the **Create Batch Payments** option button is        selected. It indicates that the payment method involves creating payment batches.     b. In the **Export Method** box, select _BACS Lloyds Plug-In_.     c. Select the **Release Batch Payment Before Export** check box if you want to export BACS payment        batches aer they are released. If you want to export batches before release, leave this check box        cleared.     d. In the **Payment Method Details** table, review the elements that have been added automatically. These        elements will appear on the _Vendors_ (AP303000) form so that users can enter the credentials that are        specific to the particular vendor. 

9. On the **Allowed Cash Accounts** tab, do the following to add each cash account you are planning to use as a     source for payments made to vendors by using the payment method:     a. On the table toolbar, click **Add Row**. In the **Cash Account** column, select the cash account.     b. Select the **AP Default** check box if this cash account is to be used by default.     c. Optional: Select the **Quick Batch Generation** check box to make it possible to quickly prepare batches of        AP payments for this cash account and payment method on the _Prepare Payments_ (AP503000) form.     d. If you selected the **Quick Batch Generation** check box, specify the number used for the last payment        associated with this cash account in accounts payable in the **AP Last Reference Number** column. 10.On the **Remittance Settings** tab, review the automatically added elements that will appear on the _Cash_     _Accounts_ (CA202000) form so that users can enter your company's BACS credentials for each cash account. 

 Although the table on the Remittance Settings tab is filled in automatically for the BACS Lloyds plug-in, you can remove the existing settings or add new ones. 

 11.On the Plug-In Settings tab, review the plug-in settings, which were added automatically when you selected the BACS Lloyds plug-in. 12.Optional: Update the values for the needed settings according to the vendor's or bank's requirements. For the list of available plug-in settings, see Settings of the BACS Lloyds File. 13.On the form toolbar, click Save. 

 Next, you will specify the remittance details for the cash account that uses this payment method. 

#### To Add Remittance Details to the Cash Account 

 To add remittance details to each cash account that is linked to the BACS payment method, do the following: 

1. On the _Cash Accounts_ (CA202000) form, open the cash account. 

2. Go to the **Remittance Settings** tab. 

3. In the le pane, select the BACS payment method. 

4. In the **Remittance Details** table in the right pane, review the remittance settings that appear in the table.     The settings in the **Description** column are copied from the **Remittance Settings** tab of the _Payment_     _Methods_ (CA204000) form.     For a full description of the BACS Lloyds plug-in settings, see _Settings of the BACS Lloyds File_. 

5. In the **Value** column, enter the needed value for each setting. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 97 

6. On the form toolbar, click **Save**. 

 Now you will specify BACS credentials for each vendor that agreed to receive your payments through BACS. 

#### To Add Payment Details for a Vendor 

 To add payment details for a vendor that will receive your payments, do the following: 

1. Open the _Vendors_ (AP303000) form. 

2. In the **Vendor ID** box, select the ID of the vendor whose settings you need to update. 

3. On the **Payment** tab, select the BACS Lloyds method in the **Payment Method** box.     The **Payment Instructions** table is displayed. 

4. In the table, fill in the payment details that you have received from the vendor. 

5. On the form toolbar, click **Save**. 

### Setup of Stripe Processing Center 

 Acumatica ERP can be configured to support integration with the Stripe processing center, which makes it possible for users to process card payments in the system via Stripe. The Stripe integration is enabled in the system if the Stripe Payment Plug-In feature is enabled on the Enable/Disable Features (CS100000) form. 

 On the Activate License (SM201510) form, the Stripe Payment Plug-In feature must be included and active. If the payment plug-in is not active in the applied license, the check box with the corresponding feature will not visible on the Enable/Disable Features form. 

#### Stripe Plug-In 

 The Stripe plug-in that is used by the Stripe processing center allows users to perform the following actions for B2B processes: 

- Loading card data from the processing center 

- Adding customer payment methods 

- Processing credit card payments For over-the-counter sales, the Stripe plug-in supports the following actions: 

- Accepting payments from new cards, with or without saving the card 

- Refunding original payments partially or in full 

#### Configuring Stripe Integration 

 To configure Stripe integration, you perform the following steps: 

1. On the _Enable/Disable Features_ (CS100000) form, you enable the _Stripe Payment Plug-In_ feature under the     _Integrated Card Processing_ group of features. 

2. On the _Processing Centers_ (CA205000) form, you create a new processing center with Stripe settings in the     test mode and test the credentials. If the processing center setup is valid, you can change to the live mode.     For details, see _To Create the Stripe Processing Center_. 

3. On the _Payment Methods_ (CA204000) form, you create a payment method for each bank operator whose     cards you are going to process (such as Visa, Mastercard, or American Express), and associate payment 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 98 

 methods with the Stripe processing center. You can then use these payment methods as templates to create customer payment methods. For details, see To Create a Stripe Payment Method. 

4. You collect credit and debit card details from your customers, and on the _Customer Payment Methods_     (AR303010) form, you create customer payment methods for all customers whose payments you want to     process with the Stripe processing center. 

### To Create the Stripe Processing Center 

 To use Stripe integration, you need to create a processing center that uses the Stripe plug-in. 

#### Before You Proceed 

 Make sure that the Stripe Payment Plug-In feature has been enabled on the Enable/Disable Features (CS100000) form. 

#### To Create the Stripe Processing Center 

1. Open the _Processing Centers_ (CA205000) form. 

2. On the form toolbar, click **Add New Record** and specify the following settings in the Summary area: 

- **Proc. Center ID** : STRIPE 

- **Name** : Stripe 

- **Cash Account** : A cash account to be used for transactions processed by Stripe 

- **Active** : Selected 

- **Payment Plug-In** : _Stripe plug-in_ 

3. (Optional): In the Summary area, select the following check boxes: 

- **Allow Saving Payment Profiles** : To enable the saving of a payment profile by extracting the payment     profile ID from the processing center and creating a customer payment method associated with the     credit card. 

- **Synchronize Deletion** : To delete the payment method information from the Stripe server every time a     user deletes a customer payment method that is registered with Stripe. 

- **Accept Payments from New Cards** : To enable the system to accept a payment from a new credit card     when you are processing a payment for a particular payment method. 

- **Allow Unlinked Refunds** : To enable the processing of unlinked refunds for card payment methods     associated with the processing center. 

4. On the **Plug-In Parameters** tab, specify the following settings: 

- **ADDRVERIF** : Cleared if you are not planning to use address verification or selected if you are planning to     use address verification. 

- **MODE** : If you are setting up a test environment, in the **Value** column, select _Test Mode_ (the default value)     to send the credit card data to the processing center without it being validated in the processing center.     If you are setting up a production environment, in the **Value** column, select _Live Mode_. The credit card     data will be sent to the processing center, which will generate a test transaction to validate the customer     profile. (The transaction will be generated with the _0.00_ amount, and will be voided immediately by the     processing center.) 

- **MOTO** : Selected if you are going to use MOTO (Mail Order/Telephone Order) transactions. 

- **PUBLICKEY** : Your public key assigned by Stripe. 

- **SECRETKEY** : Your secret key assigned by Stripe. 

5. On the form toolbar, click **Save**. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 99 

6. On the form toolbar, click **Test Credentials** to validate the credentials you have entered with the processing     center. 

### To Create a Stripe Payment Method 

 You use the Payment Methods (CA204000) form to create a payment method. This procedure describes how you create a payment method that is used as a template for configuring customer payment methods—credit or debit cards. 

#### Before You Proceed 

 You should review the cash accounts you have defined in the system, and decide which one you are going to use to record customer payments made with the payment method you are adding. 

 Make sure that you have configured the processing center and established and tested the connection to the Stripe payment gateway. For details, see To Create the Stripe Processing Center. 

#### To Add a Payment Method for Stripe 

1. Open the _Payment Methods_ (CA204000) form. 

2. On the form toolbar, click **Add New Record**. 

3. In the **Payment Method ID** box, type the identifier to be used for the payment method (such as _VISA_ ,     _MASTERCARD_ , or _AMEX_ ). 

4. Select the **Active** check box to make the payment method available for use in the system. 

5. In the **Means of Payment** box, select _Credit Card_ to use the template that is specifically designed for the     configuration of credit and debit cards.     When you select this template, the system adds the built-in elements that are usually established by     financial institutions and required by the processing center to the **Payment Method Details** table on the     **Settings for Use in AR** tab. Also, this selection causes the **Integrated Processing** , **Require Card/Account**     **Number** , and the **Has Billing Information** check boxes to be selected automatically. 

6. Select the **Use in AR** check box to make the payment method available for the creation of customer     methods. 

7. Make sure that the **Use in AP** and **Require Remittance Information for Cash Account** check boxes are     cleared. 

8. In the **Description** box, type a description of the payment method. 

9. On the **Allowed Cash Accounts** tab, do the following for each cash account you are planning to record     customer payments to as follows:     a. Click **Add Row** on the table toolbar, and select the cash account.     b. If the selected cash account in this row should be used by default for recording card transactions, select        the **AR Default** check box.     c. Optional: Select the **AR-Suggest Next Number** check box to enable auto-numeration of the payments        created with this payment method and cash account. If you have selected the check box in the **AR Last**        **Reference Number** column, specify the last number of the payment made, which will be incremented        by 1 each time you create a new payment. The system automatically assigns the next number in the        **Payment Ref.** box on the _Payments and Applications_ (AR302000) form. 10.On the **Settings for Use in AR** tab, do the following:     a. Make sure that the **Integrated Processing** check box is selected. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 100 

 The Processing Centers tab appears on the form so you can associate the payment method with the processing center that you have configured (which you will do in the next step). b. Make sure that the Require Card/Account Number check box is selected. 

 The system verifies the state of the Integrated Processing and Require Card/Account Number check boxes and, if they differ (for example, one is selected and the other one is cleared), displays an error message when you do either of the following: 

- You save the payment method. 

- You change the value of either of the following UI elements: the **Integrated Processing**     check box, the **Require Card/Account Number** check box, the **Means of Payment** box     in the Summary area, and the **Use in AR** check box in the Summary area. 

 c. If you use address verification, select the Has Billing Information check box. d. Make sure that the Void Using Clearing Account and the Use Document Date as Void Date check boxes are cleared (because these are used for processing deposits). 11.On the Processing Centers tab, which you use to associate the payment method with multiple processing centers, do the following for each processing center: a. On the table toolbar, click Add Row. b. In the Proc. Center ID box, select the processing center that you have configured for integration with Stripe. c. Select the Active check box to make the association available. d. Optional: Select the Default check box if this processing center should be used by default with this payment method. 12.On the form toolbar, click Save. 

### Setup of Integration with BILL 

 You can directly integrate Acumatica ERP with BILL —a trusted external payment processor that simplifies accounts payable. BILL handles the end-to-end processing of ACH payments, virtual cards, and checks, allowing you to securely delegate payment execution and focus on higher-value. 

 With the integration with BILL, you: 

- Won't need to spend time on check printing and mailing, configuring an export scenario or a plug-in for     Electronic Funds Transfers (EFT), and uploading files to your banks. BILL will do all of this. 

- Won't need to maintain vendors' bank account details in Acumatica ERP for vendors connected to BILL. BILL     has a vendor database with prefilled bank account details and preferred payment methods. This database is     kept up-to-date in case a vendor changes its name or address or goes out of business. 

 This functionality is available in the system if the BILL Integration feature is enabled on the Enable/ Disable Features (CS100000) form. 

 For information about processing payments through BILL, see Creating Documents for External Payment Processing. 

#### Configuring the Connection to BILL 

 You configure the connection to BILL on the External Payment Processor (AP205500) form. You create a payment processor and specify its settings, such as companies, users, and funding accounts. For details, see To Create a Payment Processor. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 101 

To be able to create a payment processor, you must have the _Administrator_ or _AP Admin_ role assigned on the _Users_ (SM201010) form. Users with the _AP Clerk_ , _AP Viewer_ , and _AcumaticaSupport_ roles can only view the settings. 

 You can create only one active payment processor on this form. An active payment processor has the Active check box selected in the Summary area. 

To configure the connection to BILL, perform the following general steps: 

1. **Onboard Acumatica ERP companies to BILL**.     Once you create a payment processor on the _External Payment Processor_ form, you add a company and click     **Onboard** on the toolbar of the **Companies** table. The system creates an organization and a user in BILL by     using an API call. 

 A company can be added if all of the following conditions are met: 

- The company is active 

- The current user has access to the company in Acumatica ERP 

- The company is located in the United States 

- The company hasn't yet been added to the payment processor 

2. **Subscribe each company to a BILL webhook**. 

 For creation of webhooks, your Acumatica ERP instance must be hosted over HTTPS. 

 Webhooks allow users to track the status of payments in the external payment processor. The system automatically creates a webhook on the Webhooks (SM304000) form during company onboarding. The system makes an API request to BILL to create the webhook subscription. 

3. **Add, activate, and onboard users to BILL**.     You do this on the **Users** tab of the _External Payment Processor_ form. To onboard the user, you click     **Onboard** on the table toolbar. To deactivate an active user, you click **Deactivate** on the table toolbar. To re-     activate an inactive user, you click **Activate** on the table toolbar. 

4. **Create and verify BILL funding accounts for each company**.     There are two ways of creating a funding account: 

- By using the Plaid processing center. You will need to log in with your credentials. The funding account     will be created with the _Verified_ status. 

- By entering bank details manually. In this case, aer some time you will receive a bank transfer from BILL     to your bank account. You should then enter this amount, which is usually less than a dollar, to verify     that you really have access to that bank account. To enter bank details manually, you click the **Manage Accounts** button on the table toolbar. The system opens the **Funding Accounts** widget. You use it to create, manage, and verify the funding accounts under this organization ID. You can also identify yourself for those funding accounts. When you close the **Funding Accounts** widget, accounts are automatically refreshed. However, you can click **Refresh Accounts** to update the accounts that changed in BILL but weren't updated in Acumatica ERP. 

 If you click the Disable button or the Delete button on the Funding Accounts widget that you can open with the Manage Accounts button on the table toolbar, the selected funding account will be permanently disabled. 

5. **Map a funding account to a cash account**.     You do this by selecting an active cash account in the **Cash Account** column on the **Funding Accounts** tab. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 102 

 A cash account can be mapped to a funding account if all of the following conditions are met: 

- The cash account is assigned to the company on the _Cash Accounts_ (CA202000) form 

- The cash account is nominated in US dollars (USD) 

- The cash account hasn't been mapped to another funding account even in a different     company in the same processor 

6. **Verify your identity for each company to use its verified accounts**.     Once you verify your identity on the company level, you'll be able to use all the accounts that were already     verified or will be verified in future.     All users who are onboarded on a company are nominated for all the verified cash accounts in either of the     following ways: 

- When the user is onboarded 

- When the account is verified You verify yourself on the **Funding Accounts** tab by clicking **Manage Accounts**. Alternatively, you can verify yourself on the _User Profile_ (SM203010) form, as explained in the section below. Another way of verifying yourself is by clicking **Verify Funding Accounts** on the _Process Payments / Print Checks_ (AP505000) form. You can click **Refresh Accounts** to update the users of the funding accounts that changed in BILL but weren't updated in Acumatica ERP. 

 If you click the Disable button, the selected user will be permanently disabled from using the funding account. 

 For detailed steps of configuring the connection, see To Configure a Connection to BILL. 

#### Setting Up the Payment Method 

 For integration with BILL, the External Payment Processor means of payment is used. You set up a payment method on the Payment Methods (CA204000) form. For details, see To Create a Payment Method for External Payment Processing. 

#### Verifying the Vendor Settings 

 For a vendor to get connected to the BILL network, you should make sure that it has a correct name and address in Acumatica ERP. 

 For vendors not connected to BILL, you should make sure that their bank details are up to date. These settings are located in the Payment Instructions section on the Payment tab of the Vendors (AP303000) form. 

 BILL will try to verify the bank account and if it gets verified (usually within one or two working days), they will start paying the vendor through ACH. If the verification fails, they will send a check to the vendor's address that you specified in Acumatica ERP. 

 For details, see To Set Up a Vendor for External Payment Processing. 

### To Create a Payment Processor 

 You use the External Payment Processor (AP205500) form to create a payment processor for the connection to BILL. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 103 

#### Before You Proceed 

 Make sure that the BILL Integration feature is enabled on the Enable/Disable Features (CS100000) form. 

#### To Create a Payment Processor 

1. Open the _External Payment Processor_ (AP205500) form. 

2. On the form toolbar, click **Add New Record**. 

3. In the Summary area, specify the following settings: 

- **Payment Processor ID** : A unique ID of the payment processor 

- **Name** : The name of the payment processor 

- **Active** : Selected 

 You can have only one active payment processor configured on this form. 

- **Plug-In** : _BILL_ 

- **For Production Use** : Selected 

4. Click **Save** to save your changes. 

### To Configure a Connection to BILL 

 You use the External Payment Processor (AP205500) form to configure a connection between the payment processor and BILL. 

#### Before You Proceed 

 Make sure that you have set up an external payment processor as described in To Create a Payment Processor. 

#### To Configure the Connection to BILL 

1. Open the _External Payment Processor_ (AP205500) form. 

2. In the **Payment Processor ID** box, make sure that the created payment processor is selected. 

3. In the **Companies** table, click **Add Row** on the table toolbar and in the **Company ID** box, select the needed     company. Repeat this step for each company that you need to add. 

4. Select the needed company in the table and, on the table toolbar, click **Onboard**. 

5. Follow the instructions displayed in the widgets to set up 2-step verification, specify your business type and     industry, add a payment method, and select a financial institution.     Each onboarded company will have the **Onboarded** check box selected in the table. 

6. On the table toolbar, click **Create Webhook**. 

 For creation of webhooks, your Acumatica ERP instance must be hosted over HTTPS. 

 The system creates a webhook on the Webhooks (SM304000) form. The system uses the ID of the BILL organization mapped to the company and the ID of the BILL user mapped to the current user. If the webhook is created successfully, the webhook name is inserted in the Webhook column. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 104 

7. On the **Users** tab, select a row with the needed user and click **Activate** on the tab toolbar.     The system changes the user's status to _Active_ , gets the user ID from BILL, and adds it in the **External User**     **ID** column. 

8. On the tab toolbar, click **Onboard**.     The system gets the ID of the BILL organization mapped to the company, creates a BILL user, and maps it to     the current user. 

9. On the **Funding Accounts** tab, click **Manage Accounts**. The system opens the **Funding Accounts** widget. 10.Follow the instructions in the widget to create and verify the funding accounts under this organization ID,     and to nominate and verify a user for each funding account.     You can review the list of users on the **Funding Account Users** tab.     Alternatively, you can verify yourself as a user of a funding account on the _User Profile_ (SM203010) as     described later. 11.To map the funding account to a cash account, select the funding account and in the **Cash Account** column,     select an Acumatica ERP cash account. 

#### Optional: To Verify Yourself as a User of a Funding Account 

1. Open the _User Profile_ (SM203010) form by clicking **My Profile** under your username in the Info area of     Acumatica ERP. 

2. Go to the **Funding Accounts** tab. 

3. In the table, select a company with the _Nominated_ status. 

4. On the form toolbar, click **Verify**. The system opens a widget where you set up 2-step verification. 

5. Follow the instructions in the widget to enter your phone number and other information.     Once your user has been verified, the system changes its status to _Verified_ in the **Verification Status** column     of the table. 

### To Create a Payment Method for External Payment Processing 

 You create a payment method for external payment processing on the Payment Methods (CA204000) form. 

#### To Create a Payment Method for BILL 

1. Open the _Payment Methods_ (CA204000) form. 

2. On the form toolbar, click **Add New Record** and specify the following settings in the Summary area: 

- **Payment Method ID** : A unique identifier of the payment method 

- **Active** : Selected 

- **Means of Payment** : _External Payment Processor_ 

- **External Payment Processor** : _BILLCOM_ 

- **Description** : A description of the payment method 

 Notice that the Use in AP check box is selected automatically. The other check boxes in the Summary area are cleared and unavailable. 

 Only two tabs are displayed on the form— Allowed Cash Accounts and Settings for Use in AP. 

3. On the **Allowed Cash Accounts** tab, click **Add Row** to add an allowed cash account for this method. 


<!-- PAGE_BREAK -->
 Configuring Payment Processing | 105 

4. In the **Cash Account** column, select the account number. 

5. Repeat the previous two steps for each needed cash account. 

6. On the form toolbar, click **Save** to save your changes. 

### To Set Up a Vendor for External Payment Processing 

 You set up a vendor for external payment processing (BILL) on the Vendors (AP303000) form. 

#### Before You Proceed 

 Make sure that a payment method for external payment processing has been created as described in To Create a Payment Method for External Payment Processing. 

#### To Set Up a Vendor for External Payment Processing 

1. Open the _Vendors_ (AP303000) form. 

2. In the **Vendor ID** box, select the vendor's ID. 

3. Go to the **Payment** tab. 

4. In the **Payment Method** box, select a payment method set up for external payment processing. 

 The External Payment Processing section on this tab will show the vendor's connection status in BILL and its preferred disbursement method. 

5. On the form toolbar, click **Save** to save your changes. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 106 

## Integrating Acumatica ERP with Bank Feeds 

 Acumatica ERP is integrated with Plaid and MX, which are financial service companies that provide secure bank feeds. A bank feed is a secure link between Acumatica ERP and a company's bank profile, which can include multiple bank accounts. A bank feed is used for the automatic import of bank transactions into the system. A company may create different bank feeds for different banks. Alternatively, if the accounts in one bank are registered to different users, a company may create a bank feed for each user with a separate set of credentials. With this integration, Acumatica ERP users can automatically connect to their bank profiles, import bank transactions to Acumatica ERP, and create expense receipts based on these transactions. 

 Bank feed integration is available in the system if the Bank Feed Integration feature is enabled on the Enable/Disable Features (CS100000) form. 

 If this feature is enabled, Plaid and MX subscriptions will become available to users in Acumatica ERP without the need to register separately in Plaid and MX. Acumatica ERP will store and return Plaid and MX authentication by using a special proxy server through API. 

 Some banks do not have integration with Plaid or MX bank feeds, but they provide bank transactions to their customers in a file located in an SFTP folder. You can use Acumatica ERP to load bank statements from this type of file. The system then automatically creates the cash transactions and expense receipts that correspond to the transactions in the file. 

 The Bank Feed Integration feature is subject to licensing. If an organization needs to map more than one bank feed account, it should buy an appropriate license. 

 Currently, integration with MX works only for financial institutions in the United States and Canada. 

### Mapping of Multiple Bank Accounts to One Cash Account 

 You can set up bank feeds to map multiple bank accounts to one cash account in Acumatica ERP. With this functionality, users can do the following: 

- Load bank transactions for one cash account from different bank accounts and financial periods 

- Manually change the start date for importing transactions to Acumatica ERP 

- Load transactions from multiple bank feeds for one cash account This functionality is available in the system if the _Bank Feeds_ and _Mapping of Multiple Accounts for Bank Feeds_ features are enabled on the _Enable/Disable Features_ (CS100000) form. 

#### Setup Overview 

 To set up this functionality, you perform the following general steps: 

1. On the _Enable/Disable Features_ (CS100000) form, you enable the _Mapping of Multiple Accounts for Bank Feeds_     feature under **Experimental Features**. 

2. On the _Bank Feeds_ (CA205500) form, you set up the Plaid or MX integration, selecting the **Map Multiple**     **Bank Accounts to One Cash Account** check box in the Summary area. 

3. On the **Cash Accounts** tab, you map a cash account to a bank account.     For details, see _To Set Up Plaid Integration_ and _To Set Up MX Integration_. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 107 

#### Date Selection Rules 

 When you select the Map Multiple Bank Accounts to One Cash Account check box for a bank feed on the Bank Feeds (CA205500) form, multiple bank accounts can be matched to a single cash account. With this check box selected, for each mapped bank account in the bank feed, the system does the following on the Bank Feeds form: 

- Makes the **Import Transactions From** column available on the **Cash Accounts** tab for a particular bank     account line. The system calculates the default date by using the rules described below, but you can     change this date to a later one. (The system will prevent you from specifying a date that is earlier than the     calculated date.) 

 The Import Transactions From date remains unavailable and cannot be overridden if the Map Multiple Bank Accounts to One Cash Account check box is cleared for the bank feed. 

- Checks whether any transactions were loaded for the cash account from the bank feed for a particular     bank account for which the **Bank Feed Account** column contains the bank account name and mask. If     transactions were loaded, updates the **Import Start Date** column with the latest of the following dates: 

- The date specified in the **Import Start Date** box in the Summary area 

- The date of the most recent bank transaction loaded for the cash account from the bank feed for a     particular bank account if the **Bank Feed Account** column contains the bank account name and mask. If no transactions were loaded for the cash account from a particular bank account, the system will update the **Import Start Date** column with the latest of the following dates: 

- The date specified in the **Import Start Date** box in the Summary area 

- The date of most recent bank transaction loaded for the cash account from the bank feed for which the     **Bank Feed Account** column is empty 

- The date that is one day aer the most recent bank transaction that was entered manually by a user You can override the dates in the **Import Start Date** box of the Summary area and in the **Import Transactions From** column on the **Cash Accounts** tab. 

 If you need to revert to the date calculated by the system, you need to manually clear the entered value in the Import Transactions From column. The system will recalculate the dates and populate the date in the Import Transactions From column. 

#### Transaction Retrieval of Plaid Bank Feeds 

 In the production environment for Plaid bank feeds, the Plaid data provider does not allow the same bank feed to be called more than 30 times per minute. To avoid this limitation, Acumatica ERP’s API requests combine accounts into one bank feed while the API requests new transactions from Plaid. 

 Transactions are retrieved for one bank feed account in either of the following cases: 

- On the _Bank Feeds_ (CA205500) form, you clicked **Load Transactions in Test Mode** on the More menu and     selected one bank account in the **Load Transactions in Test Mode** dialog box. 

- On the _Import Bank Transactions_ (CA306500) or _Process Bank Transactions_ (CA306000) form, you clicked     **Retrieve Transactions** on the form toolbar and both of the following conditions are met in the system: 

- On the _Cash Management Preferences_ (CA101000) form, the **Import Bank Statement to Single Cash**     **Account** check box is selected in the **Import Settings** section of the **Bank Statements** tab. 

- On the _Bank Feeds_ form, the **Map Multiple Bank Accounts to One Cash Account** check box is cleared for     the bank feed. Transactions are retrieved for all mapped bank feed accounts in either of the following cases: 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 108 

- On the _Retrieve Bank Feed Transactions_ (CA507500) form, you selected a bank feed and clicked **Process** on     the form toolbar. Alternatively, the _Automation Schedules_ (SM205020) form has been used to schedule this     process to occur automatically. 

- On the _Import Bank Transactions_ or _Process Bank Transactions_ form, you clicked **Retrieve Transactions** on     the form toolbar and both of the following conditions are met in the system: 

- On the _Cash Management Preferences_ form, the **Import Bank Statement to Single Cash Account** check     box is cleared in the **Import Settings** section of the **Bank Statements** tab. 

- On the _Bank Feeds_ form, the **Map Multiple Bank Accounts to One Cash Account** check box is cleared for     the bank feed. 

- On the _Import Bank Transactions_ or _Process Bank Transactions_ form, you clicked **Retrieve Transactions** on     the form toolbar and the **Map Multiple Bank Accounts to One Cash Account** check box is selected for the     bank feed on the _Bank Feeds_ form. If the **Map Multiple Bank Accounts to One Cash Account** check box is selected for a bank feed on the _Bank Feeds_ form, the system uses the following rules of retrieving transactions: 

- If you select a cash account to which multiple bank accounts are mapped and click **Retrieve Transactions**     on the form toolbar of the _Import Bank Transactions_ or _Process Bank Transactions_ form, the system uses     the date in the **Import Transactions From** column to fetch data for each bank account within the affected     feeds. Because the same cash account can be used in multiple bank feeds, all bank feeds with the _Active_ or     _Setup Required_ status are processed. 

- The system ignores the state of the **Import Bank Statement to Single Cash Account** check box in the     **Import Settings** section of the **Bank Statements** tab on the _Cash Management Preferences_ form. If the     bank feed has the **Map Multiple Bank Accounts to One Cash Account** check box selected on the _Bank_     _Feeds_ form, the system always proceeds as if the **Import Bank Statement to Single Cash Account** check     box is cleared. 

- Once the download of transactions is complete, the system shows all bank feeds that were affected, all     accounts, and the number of transactions that were fetched and created. This information can be reviewed     in the **Bank Feed Account** column on the _Import Bank Transactions_ and _Process Bank Transactions_ form. 

### To Set Up Plaid Integration 

 You perform the following instructions to set up the integration of Acumatica ERP with Plaid. You use the Retrieve Bank Feed Transactions (CA507500) form as a starting point and then specify the settings of the bank feed on the Bank Feeds (CA205500) form. 

#### Before You Proceed 

 Make sure that the Bank Feed Integration feature has been enabled on the Enable/Disable Features (CS100000) form. 

#### To Set Up Plaid Integration 

 To set up Plaid integration, do the following: 

1. Open the _Retrieve Bank Feed Transactions_ (CA507500) form. 

2. On the form toolbar, click **Add New Record**. 

3. On the _Bank Feeds_ (CA205500) form, which is opened, specify the following settings: 

- **Bank Feed ID** : PLAID 

- **Bank Feed Type** : _Plaid_ 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 109 

 If you want to set up a connection to the Plaid sandbox, you should select the Test Plaid type. Cash accounts mapped to bank accounts in Test Plaid bank feeds will also be counted by the license and will reduce the number of available bank feed accounts. 

- **Import Start Date** : The date starting from which you want to import transactions 

4. On the form toolbar, click **Connect** , as shown in the following screenshot. 

 Figure: Clicking Connect on the Bank Feeds form 

5. In the dialog box that is opened, which is shown in the following screenshot, click **Continue**. 

 Figure: Continuing the connection 

 The dialog box shown in the previous screenshot and the dialog boxes shown later are hosted forms supported by Plaid and are subject to change. (Plaid might change the view and steps required for the user before selecting the financial institution.) Once the user selects a bank, the authorization path will also depend on the bank's setup. 

6. In the next dialog box, which is shown in the following screenshot, select a bank. (In this example, **Chase** is     selected.) 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 110 

 Figure: Selecting a bank 

7. In the next dialog box, which is shown in the following screenshot, enter the username and password, and     click **Submit**. 

 Figure: Entering Plaid user credentials 

8. In the next dialog box, which is shown in the following screenshot, select an account or multiple accounts in     Plaid, and click **Continue**. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 111 

 Figure: Selecting accounts in Plaid 

9. In the next dialog box, which is shown in the following screenshot, click **Continue** to complete the linking of     the account. 

 When you click Continue in this dialog box, the system will check whether the selected accounts have been linked in other bank feeds and display an error message if they have. 

 Figure: Completing the connection to Plaid 

 Once the connection has been established, the dialog box is closed, and the status of the bank feed changes to Setup Required , as shown in the following screenshot. This status indicates that you need to specify a cash account for at least one listed account in order to import transactions for the bank feed. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 112 

 Figure: Reviewing the updated status 

10.Optional: If the _Mapping of Multiple Accounts for Bank Feeds_ feature is enabled on the _Enable/Disable Features_ (CS100000) form, select the **Map Multiple Bank Accounts to One Cash Account** check box in the Summary area. 

11.On the **Cash Accounts** tab, specify a cash account for at least one listed account, as shown in the following screenshot. Once you do this, the status of the bank feed changes to _Active_. When you import transactions for the bank feed, they will be imported for only those accounts for which a cash account is selected. 

 Figure: Selecting a cash account 

 If you have selected the Map Multiple Bank Accounts to One Cash Account check box, you can specify the same cash account for multiple bank feed accounts. 

12.If you need to create expense receipts, select the **Create Expense Receipts** check box in the Summary area, as shown in the following screenshot. The **Corporate Cards** and **Expense Items** tabs appear on the form. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 113 

 Figure: Selecting the Create Expense Receipts check box 

13.On the table toolbar of the **Corporate Cards** tab, click **Add Row** , and select a corporate card in the **Corporate Card ID** column of the row, as shown in the following screenshot. 

 Figure: Selecting a corporate credit card on the Corporate Cards tab 

 When you select the Create Expense Receipts check box and specify a corporate card, the system displays an error message that a default expense item must be selected; otherwise, your changes cannot be saved. 

14.On the **Expense Items** tab, select an item in the **Default Expense Item** box, as shown in the following screenshot. You typically select a non-stock item with the _Expense_ type and the _Expenses_ item class. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 114 

 Figure: Selecting the default expense item on the Expense Items tab 

 15.Optional: Add a row to the table for each expense category (with Category selected in the Field to Match column), and specify the rule for matching it. 16.Click Save to save the settings of the bank feed. 

### To Set Up MX Integration 

 You perform the following instructions to set up the integration of Acumatica ERP with MX. You use the Retrieve Bank Feed Transactions (CA507500) form as a starting point and then specify the settings of the bank feed on the Bank Feeds (CA205500) form. 

#### Before You Proceed 

 Make sure that the Bank Feed Integration feature has been enabled on the Enable/Disable Features (CS100000) form. 

#### To Set Up MX Integration 

 To set up MX integration, do the following: 

1. Open the _Retrieve Bank Feed Transactions_ (CA507500) form. 

2. On the form toolbar, click **Add New Record**. 

3. On the _Bank Feeds_ (CA205500) form, which is opened, specify the following settings: 

- **Bank Feed ID** : MX 

- **Bank Feed Type** : _MX_ 

- **Import Start Date** : The date starting from which you want to import transactions 

4. On the form toolbar, click **Connect** , as shown in the following screenshot. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 115 

 Figure: Creating and connecting to an MX bank feed 

 Click Continue in the dialog box that is opened. 

 The dialog box shown in the previous screenshot and the dialog boxes shown later are hosted forms supported by MX and are subject to change. (MX might change the view and steps required for the user before selecting the financial institution.) Once the user selects a bank, the authorization path will also depend on the bank's setup. 

5. In the next dialog box, which is shown in the following screenshot, click a bank. (In this example, **MX Bank**     **(Oauth)** is selected.) 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 116 

 Figure: Selecting a bank 

6. In the next dialog box, which is shown in the following screenshot, click **Sign in** , which provides the ability     to sign in to MX Bank if **MX Bank (OAuth)** was clicked. (If any other institution was selected in the previous     instruction, you should enter the credentials to access the bank account's information.) 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 117 

 Figure: Signing in to the bank 

7. In the dialog box that is displayed, click **Authorize** to authorize this access in the bank. 

 Figure: Authorizing in MX Bank 

 Authentication can also be implemented by sending a code to your email address or phone number that is predefined in the bank profile. The authentication method depends on the selected bank. 

8. In the next dialog box, which is shown in the following screenshot, click **Continue** to complete the     connection to MX Bank. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 118 

**_Figure: Completing the connection to MX Bank_** 

 MX does not require you to select accounts; this service automatically adds to the bank feed all bank accounts available for the credentials that have been entered. 

Once the connection has been established, the dialog box is closed, and the status of the bank feed changes to _Setup Required_ , as shown in the following screenshot. This status indicates that you need to specify a cash account for at least one listed account in order to import transactions for the bank feed. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 119 

 Figure: Reviewing the updated status of the connection to MX 

9. Optional: If the _Mapping of Multiple Accounts for Bank Feeds_ feature is enabled on the _Enable/Disable_     _Features_ (CS100000) form, select the **Map Multiple Bank Accounts to One Cash Account** check box that     appears in the Summary area. 

10.On the **Cash Accounts** tab, specify a cash account for at least one listed account, as shown in the following screenshot. Once you do this, the status of the bank feed changes to _Active_ When you import transactions for the bank feed, they will be imported for only those accounts for which a cash account is selected. 

 Figure: Selecting a cash account for each account 

 If you have selected the Map Multiple Bank Accounts to One Cash Account check box, you can specify the same cash account for multiple bank feed accounts. 

11.If you need to create expense receipts, select the **Create Expense Receipts** check box in the Summary area, as shown in the following screenshot. The **Corporate Cards** and **Expense Items** tabs appear on the form. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 120 

 Figure: Selecting the Create Expense Receipts check box 

12.On the table toolbar of the **Corporate Cards** tab, click **Add Row** , and select a corporate card in the **Corporate Card ID** column of the row, as shown in the following screenshot. 

 Figure: Selecting a corporate credit card on the Corporate Cards tab 

 When you select the Create Expense Receipts check box and specify a corporate card, the system displays an error message that a default expense item must be selected; otherwise, your changes cannot be saved. 

13.On the **Expense Items** tab, select an item in the **Default Expense Item** box, as shown in the following screenshot. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 121 

 Figure: Selecting the default expense item on the Expense Items tab 

 14.Optional: Add a row to the table for each expense category (with Category selected in the Field to Match column), and specify the rule for matching it. 15.Click Save to save the settings of the bank feed. 

### To Set Up Mapping Rules 

 On the Custom Mapping Rules tab of the Bank Feeds (CA205500) form, you can set up optional mapping between the bank feed fields and the bank transaction fields by specifying the source and target fields, respectively, and using formulas in the source field. You can specify your own mapping or set up the default mapping. 

 The following table shows the default mapping settings for Plaid bank feeds. 

 Active Target Field Source Field 

 Selected Ext. Ref. Nbr. =ISNULL([Check Number], [Transaction ID]) 

 Selected Card Number =TRIM(ISNULL([Account Owner], '')) 

 The following table shows the default mapping settings for MX bank feeds. 

 Active Target Field Source Field 

 Selected Ext. Ref. Nbr. =ISNULL([Check Number], [Transaction ID]) 

 If mapping is defined in the table for a target field and the Active check box is selected, the custom mapping rule will have a priority over the core program mapping, if it exists for this field. The specified rules will affect all bank transactions that will be created for all cash accounts from the current bank feed. 

#### To Set Up Mapping Rules 

 To set up mapping rules, do the following: 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 122 

1. On the _Bank Feeds_ form, select the needed bank feed and go to the **Custom Mapping Rules** tab. 

2. On this tab, set up mapping rules in either of the following ways: 

- To set up custom mapping rules, click **Add Row** on the table toolbar and specify the needed settings in     the **Target Field** and **Source Field or Value** columns. 

- To set up default mapping rules, click **Set Default Mapping** on the form toolbar. The system will fill in the     settings automatically based on the bank feed selected on the form. 

3. Click **Save** to save the changes. 

### To Import Bank Transactions from a Bank Feed 

 When Plaid or MX integration has been set up, you perform the instructions described below to import bank transactions from a bank feed into the system. You use the Retrieve Bank Feed Transactions (CA507500) form for this import. 

 A Plaid bank feed retrieves not more than 730 days of transaction history. If the mapped bank account has transactions older than 730 days, they will not be imported into the system. 

#### Before You Proceed 

 Make sure that the following features are enabled on the Enable/Disable Features (CS100000) form: 

- _Bank Feed Integration_ 

- _Mapping of Multiple Accounts for Bank Feeds_ if you need to map multiple bank accounts to one cash account Make sure that Plaid or MX integration has been properly set up. For details, see _To Set Up Plaid Integration_ and _To Set Up MX Integration_. 

#### To Import Bank Transactions 

 To import bank transactions into the system, do the following: 

1. Open the _Retrieve Bank Feed Transactions_ (CA507500) form. 

2. In the table, select each needed bank feed by selecting the unlabeled Included check box in its row. 

3. On the form toolbar, click **Process** to run the retrieval process for only the selected feeds or **Process All** to     run the retrieval process for all listed bank feeds. 

 You can schedule this process by clicking Schedules on the form toolbar. 

4. On the _Import Bank Transactions_ (CA306500) form, open the imported bank statement. 

5. Review the transactions imported for the cash account or accounts, as shown in the example in the     following screenshot. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 123 

**_Figure: Imported bank transactions_** 

During the import of the bank transactions, for the imported transactions with the _Disbursement_ type, the system automatically creates expense receipts (or updates existing expense receipts) on the _Expense Receipt_ (EP301020) form if the following conditions are met: 

- The **Create Expense Receipts** check box is selected on the _Bank Feeds_ (CA205500) form. 

- The transaction amount is greater than _0.00_. 

- The transaction status is not _Pending_ and the **Create Expense Receipts for Pending Transactions** check     box is cleared on the _Bank Feeds_ form, or the transaction status is _Pending_ and the **Create Expense**     **Receipts for Pending Transactions** check box is selected. 

- On the **Corporate Cards** tab of the _Bank Feeds_ form, there is a record with a cash account ID that is the     same as the transaction account ID and an employee ID that is the same as the account owner of the     transaction. 

- On the **Expense Items** tab of the _Bank Feeds_ form, there is a matching line with the **Skip** check box     cleared, or there is no matching line. 

- On the _Expense Receipt_ form, there is no expense receipt with a **Receipt Number** that is the same as the     transaction ID.     If a transaction has a pending transaction ID and an expense receipt exists with a **Receipt Number** that is     the same as this pending transaction ID, this expense receipt is updated. 

The following screenshot illustrates an example of the expense receipts that have been created automatically for some transactions imported on the _Import Bank Transactions_ form. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 124 

 Figure: Expense receipts created automatically based on imported transactions 

### Loading of Bank Feeds from a File 

 To configure the system for loading of bank feeds from a file, the following configuration steps should be performed: 

1. The bank creates a Secure File Transfer Protocol (SFTP) folder and provides read-only access to it. 

2. An administrative user sets up a bank feed on the _Bank Feeds_ (CA205500) form, specifying the login, the     password, and the SFTP folder as the URL. 

3. On the _Bank Feeds_ form, the administrative user sets up the mapping between the fields of the incoming file     and the fields of a bank feed transaction in Acumatica ERP. 

4. The bank then exports the transactions to a file and places the file in the SFTP folder. 

5. Acumatica ERP detects the new file and extracts transactions from it. The system then performs the     following steps automatically: 

- On the _Import Bank Transactions_ (CA306500) form, creates bank transactions for the cash account that is     specified in the bank feed settings 

- Detects duplicate transactions by transaction ID from the _Ext. Tran ID_ field and omits their creation 

- Creates expense receipts for the corporate card and employee that are specified in the bank feed settings     and matches them to a respective bank transaction 

#### Bank Feed Setup 

 To set up a bank feed for loading bank statements from a file, you perform the following general steps: 

1. On the _Activate License_ (SM201510) form, you activate the license that supports the functionality of loading     bank feeds from a file. 

2. On the _Enable/Disable Features_ (CS100000) form, you enable the _Bank Feed Integration_ feature. 

3. On the _Bank Feeds_ (CA205500) form, you create a bank feed and select _File_ in the **Bank Feed Type** box. For     details, see _To Set Up Bank Feeds Loaded from a CSV File_. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 125 

 You can now select this bank feed and load transactions from a file on the Retrieve Bank Feed Transactions (CA507500) form. 

#### Bank Feed Statuses 

 A bank feed with the File type can have one of the following statuses on the Bank Feeds (CA205500) form: 

- _Setup Required_ : This status is assigned to a bank feed when the bank feed is created. Also, this status is     assigned if some bank feed settings are removed in an active or suspended bank feed. 

- _Active_ : This status is assigned to a bank feed when you click **Activate** on the More menu and all of the     following conditions are met for the bank feed: 

- In the **Connection to Source File** section of the **Source File** tab, the URL, login, and password are     specified. 

- In the **Mapping Rules** table of the **Source File** tab, mapping rules are set up for all the required rows     (those that have the **Active** check box selected). 

- On the **Cash Accounts** tab, at least one line has been added with both the **Account Name** column and     the **Cash Account** column filled in. Only bank feeds with this status can be processed on the _Retrieve Bank Feed Transactions_ (CA507500) form. 

- _Suspended_ : This status is assigned to a bank feed when you click **Suspend** on the More menu. 

#### Transaction Loading in Test Mode 

 To load transactions in test mode from a file for a bank feed with the File type, you perform the following actions on the Bank Feeds (CA205500) form: 

1. On the More menu, click **Load Transactions in Test Mode**.     The system fetches a list of files available in the specified SFTP folder with the specified format. These files     are shown in the drop-down list in the **File with Transactions** box. 

2. In the **Load Transactions in Test Mode** dialog box, which is opened, select the needed file in the **File with**     **Transactions** box. 

3. In the dialog box, click **Load Transactions**.     The system loads transactions to the table according to the mapping rules specified on the **Source File** tab. 

#### Manual File Loading 

 You can manually select a file from a specified SFTP folder and load it, regardless of whether it was processed before. To load a file, you perform the following steps on the Bank Feeds (CA205500) form: 

1. On the More menu, you click **Load File Manually**.     The system fetches a list of files available in the specified SFTP folder with the specified format. These files     are shown in the drop-down list in the **File with Transactions** box. 

2. In the **Load File Manually** dialog box, which is opened, you select the needed file in the **File with**     **Transactions** box. 

3. Optional: You select the **Create Transactions Before Import Transactions From Date** check box. If the     check box is selected, the system will create transactions regardless of the **Import Transactions From Date**     specified for the cash account on the **Cash Accounts** tab, but it will continue to omit duplicates by using the     transaction ID ( **Ext. Tran. ID** ). 

4. In the dialog box, you click **Load**. The system creates bank transactions and expense receipts if the **Create**     **Expense Receipts** check box is selected. The system then performs the steps described in the next section. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 126 

#### Loading of Bank Feed Transactions 

 When you select a bank feed and click Process on the toolbar of the Retrieve Bank Feed Transactions (CA507500) form, the system does the following: 

1. Verifies that the status of the bank feed is active. 

2. Detects new unprocessed previously files in the SFTP folder. 

3. Pulls the new files into Acumatica ERP and parses them to create bank transactions by using the mapping     from the **Mapping Rules** section of the **Source File** tab on the _Bank Feeds_ (CA205500) form. 

4. Applies the mapping of bank accounts to the cash accounts listed on the **Cash Accounts** tab of the     _Bank Feeds_ form, and determines the cash account for which transactions should be created and the     transactions' dates. 

5. Applies the corporate cards from the **Corporate Cards** tab and determines the card for which employee     expense receipts must be created or updated, as well as the receipts' dates. 

6. Creates transactions and expense receipts by using the current **Import Transactions From** date and bank     transaction ID to avoid the duplication of transactions. (Transactions dated earlier than this date are not     created.) 

 The imported transactions are displayed on the Import Bank Transactions (CA306500) form. If you click Process Transactions on the form toolbar, the system navigates to the Process Bank Transactions (CA306000) form, where you can proceed to matching the transactions and creating new transactions in the system. For details, see To Load Bank Transactions from a File. 

#### Creation of Expense Receipts 

 To cause the system to create expense receipts, you must select the Create Expense Receipts check box in the Summary area of the Bank Feeds (CA205500) form. On the Corporate Cards and Expense Items tabs, which appear on the form, you specify the needed settings. 

 The Create Expense Receipts for Pending Transactions check box does not appear for bank feeds with the File type because source files contain only posted transactions. For more details about the creation of expense receipts, see Processing Expense Receipts with Corporate Cards. 

### Loading of Bank Feeds from BAI2 Files 

 Acumatica ERP supports the Bank Administration Institute Version 2 (BAI2) format of bank statements. The Balance and Transaction Reporting Standard (BTRS) improves upon the BAI2 format. The BAI2 and BTRS formats are banking industry standards for communicating bank statements electronically. 

 The BAI2 and BTRS file formats are supported by bank feeds. When a user retrieves bank feed transactions, the system detects a new file with transactions exported to it by a bank and creates bank transactions for the specified cash account. If a corporate card and employee are specified in the bank feed settings, the system creates expense receipts for them. 

#### Setup of BAI2 Transaction Retrieval 

 To set up the functionality of retrieving BAI2 transactions from a bank feed, an administrative user does the following: 

1. On the _Bank Feeds_ (CA205500) form, creates a bank feed, selecting _BAI2 (Bank Administration Institute)_ as     the **File Format** and entering credentials to the SFTP folder where the bank stores BAI2 files. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 127 

2. Clicks **Set Up Data Provider**. The system creates a new data provider for BAI2 files and inserts it in the **Data**     **Provider** box. 

3. Reviews the mapping rules populated by the system and changes the mapping for optional fields, if needed.     For details, see the _Mapping Rules_ section below. 

4. On the **Cash Accounts** tab of the _Bank Feeds_ form, specifies the needed bank accounts and their     corresponding cash accounts. 

5. Activates the bank feed by clicking **Activate** on the form toolbar. This changes the bank feed’s status to     _Active_. Now users can start retrieving bank transactions on the _Retrieve Bank Feed Transactions_ (CA507500)     form. 

 For details, see To Set Up Bank Feeds Loaded from the BAI2 Format. 

#### Mapping Rules 

 On the Source File tab ( Mapping Rules section) of the Bank Feeds (CA205500) form, the system inserts the following settings. 

 Table: Required fields 

 Active Target Field Source Field or Value 

 Selected Bank Account Name Customer Account Number 

 Selected Ext. Tran. ID Bank Reference Number 

 Selected Tran. Date As-of-date 

 The format of this value is YYMMDD. 

 Selected Transaction Amount Amount 

 Selected Tran. Desc =Concat( [Tran Desc], [Additional Tran Desc]) 

 The required fields are added by the system when the data provider is created and cannot be edited. 

 Table: Optional fields 

 Active Target Field Source Field or Value 

 Cleared Card Number 

 Cleared Ext. Ref. Nbr. Bank Reference Number 

 The Bank Reference Number source field is optional in the BAI2 format, but is required in Acumatica ERP because it is mapped to the transaction ID. The transaction ID is used by the system to identify transactions and avoid duplicate records. 

 Cleared Custom Tran. Desc. 

 Cleared Invoice Nbr. Customer Reference Number 

 Cleared Payee/Payer 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 128 

 Active Target Field Source Field or Value 

 Cleared Tran. Code Type Code 

 The optional fields are also added by the system when the data provider is created. The mapping of these fields can be updated by the system administrator. 

### To Set Up Bank Feeds Loaded from a CSV File 

 You use the Bank Feeds (CA205500) form to set up bank feeds that load bank transactions from a CSV file. On the same form, you connect to the SFTP folder where source files are stored and specify the mapping between the fields of the source file and the settings in Acumatica ERP. 

 In the Amount Format box of the Bank Feeds form ( Source File tab), you select the option that describes the format of debit and credit amounts in the source file; the bank feed is set up slightly differently depending on the result in this file. The following sections describe how to set up bank feeds that use different amount formats. 

#### Before You Proceed 

 Make sure that the Bank Feed Integration feature is enabled on the Enable/Disable Features (CS100000) form. On the Activate License (SM201510) form, make sure that the needed license is activated. 

#### To Set Up a Bank Feed (Debit/Credit in Same Column) 

 To set up a bank feed that loads a source file with the Debit/Credit in Same Column amount format, do the following: 

1. On the _Bank Feeds_ (CA205500) form, create a new record. 

2. In the Summary area, specify the following settings: 

- **Bank Feed ID** : A unique ID that identifies the bank feed 

- **Bank Feed Type** : _File_ 

- **Import Start Date** : The date starting from which you want to import bank transactions to the system 

- **Description** : A description of the bank feed 

- **Financial Institution** : The name of the bank that will provide source files with transactions 

3. Go to the **Source File** tab, and specify the following settings in the **Connection to Source File** section: 

- **URL** : The path to the SFTP folder, such as sftp://FirstBankSFTP. 

- **File Format** : _CSV (Comma-Separated Values)_ (inserted by default). 

- **Login** : The current user's login to the SFTP folder. This value is provided either by the bank or by your     organization. 

- **Password** : The current user's password to the SFTP folder. 

- **SSH Private Key** : The private Secure Shell (SSH) key created on the _Encryption Certificates_ (SM200530)     form, which will be used for SFTP authentication. 

4. Click **Test Connection**.     The system verifies the connection to the SFTP folder. 

5. In the **Source File** section, click **Set Up Data Provider**.     In the **Data Provider** box, the system automatically inserts the name of the created data provider. 

6. In the **Amount Format** box, make sure that _Debit/Credit in Same Column_ is selected. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 129 

7. In the **Mapping Rules** section, enter the mapping rules between the source file and Acumatica ERP.     The settings for which the **Active** check box is selected and unavailable are required. Other settings are     optional. The following table shows an example of this mapping. 

 Active Target Field Source Field or Value 

 Selected Bank Account Name =[Account Number] 

 Selected Ext. Tran. ID =[???TransactionID] 

 Selected Tran. Date =[Posting Date] 

 Selected Transaction Amount =[Transaction Amount] 

 Selected Tran. Desc =[Supplier Name] 

 Cleared Card Number =[Cardholder ID] 

 Cleared Ext. Ref. Nbr. =[???TransactionID] 

 Cleared Custom Tran. Desc. =Concat( [Supplier Merchant Category Code], [Supplier Name]) 

 Cleared Invoice Nbr. =[Authorization Number] 

 Cleared Payee/Payer =[Supplier Name] 

 Cleared Tran. Code =[Authorization Number] 

8. Go to the **Cash Accounts** tab, and click **Add Row** on the table toolbar. Specify the following settings in the     added row: 

- **Account Name** : The account name as it is specified in the source file 

- **Cash Account** : The cash account in Acumatica ERP that will be mapped to the bank account 

- **Statement Period** : _Month_ 

- **Statement Start Day** : _1_ 

- **Import Transactions From** : The date that is specified in the Summary area for the bank feed (inserted     automatically by the system) 

- **Currency** : The currency of the bank transactions Repeat this instruction for each bank account and cash account that you want to map. 

9. Click **Save** to save your settings. 10.On the form toolbar, click **Activate** to activate the bank feed. The bank feed's status changes to _Active_.     You can process this bank feed on the _Retrieve Bank Feed Transactions_ (CA507500) form. For details, see _To_     _Load Bank Transactions from a File_.    . 

#### To Set Up a Bank Feed (Debit and Credit in Different Columns) 

 To set up a bank feed that loads a source file with the Debit and Credit in Different Columns amount format, do the following: 

1. On the _Bank Feeds_ (CA205500) form, create a new record. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 130 

2. In the Summary area, specify the following settings: 

- **Bank Feed ID** : A unique ID that identifies the bank feed 

- **Bank Feed Type** : _File_ 

- **Import Start Date** : The date starting from which you want to import bank transactions to the system 

- **Description** : A description of the bank feed 

- **Financial Institution** : The name of the bank that will provide source files with transactions 

3. Go to the **Source File** tab, and specify the following settings in the **Connection to Source File** section: 

- **URL** : The path to the SFTP folder, such as sftp://FirstBankSFTP. 

- **File Format** : _CSV (Comma-Separated Values)_ (inserted by default). 

- **Login** : The current user's login to the SFTP folder. This value is provided either by the bank or by your     organization. 

- **Password** : The current user's password to the SFTP folder. 

- **SSH Private Key** : The private Secure Shell (SSH) key that will be used for SFTP authentication. 

4. Click **Test Connection**. 

 The system verifies the connection to the SFTP folder. 

5. In the **Source File** section, click **Set Up Data Provider**. 

 In the Data Provider box, the system automatically inserts the name of the created data provider. 

6. In the **Amount Format** box, select _Debit and Credit in Different Columns_. 

7. In the **Mapping Rules** section, enter the mapping rules between the source file and Acumatica ERP. 

 The settings for which the Active check box is selected and unavailable are required. Other settings are optional. The following table shows an example of this mapping. 

 Active Target Field Source Field or Value 

 Selected Bank Account Name =[Account Parent] 

 Selected Ext. Tran. ID =[???TransactionID] 

 Selected Tran. Date =[Posting Date] 

 Selected Receipt Amount =[Credit Amount] 

 Selected Disbursement Amount =[Debit Amount] 

 Selected Tran. Desc =[Supplier Name] 

 Selected Card Number =[Cardholder ID] 

 Selected Ext. Ref. Nbr. =[???TransactionID] 

 Selected Custom Tran. Desc. =[Supplier Name] 

 Selected Invoice Nbr. =[Authorization Number] 

 Selected Payee/Payer =[Supplier Name] 

 Selected Tran. Code =[Authorization Number] 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 131 

8. Go to the **Cash Accounts** tab, and click **Add Row** on the table toolbar. Specify the following settings in the     added row: 

- **Account Name** : The account name as it is specified in the source file 

- **Cash Account** : The cash account in Acumatica ERP that will be mapped to the bank account 

- **Statement Period** : _Month_ 

- **Statement Start Day** : _1_ 

- **Import Transactions From** : The date that is specified in the Summary area for the bank feed (inserted     automatically by the system) 

- **Currency** : The currency of the bank transactions Repeat this step for each bank account and cash account that you want to map. 

9. Click **Save** to save your settings. 10.On the form toolbar, click **Activate** to activate the bank feed. The bank feed's status changes to _Active_.     You can process this bank feed on the _Retrieve Bank Feed Transactions_ (CA507500) form. For details, see _To_     _Load Bank Transactions from a File_. 

#### To Set Up a Bank Feed (Debit/Credit Property in Separate Columns) 

 To set up a bank feed that loads a source file with the Debit/Credit Property in Separate Columns amount format, do the following: 

1. On the _Bank Feeds_ (CA205500) form, create a new record. 

2. In the Summary area, specify the following settings: 

- **Bank Feed ID** : A unique ID that identifies the bank feed 

- **Bank Feed Type** : _File_ 

- **Import Start Date** : The date starting from which you want to import bank transactions to the system 

- **Description** : A description of the bank feed 

- **Financial Institution** : The name of the bank that will provide a source file with transactions 

3. Go to the **Source File** tab, and specify the following settings in the **Connection to Source File** section: 

- **URL** : The path to the SFTP folder, such as sftp://FirstBankSFTP 

- **File Format** : _CSV (Comma-Separated Values)_ (inserted by default) 

- **Login** : The current user's login to the SFTP folder. This value is provided either by the bank or by your     organization. 

- **Password** : The current user's password to the SFTP folder. 

- **SSH Private Key** : The private Secure Shell (SSH) key that will be used for SFTP authentication. 

4. Click **Test Connection**.     The system verifies the connection to the SFTP folder. 

5. In the **Source File** section, click **Set Up Data Provider**.     In the **Data Provider** box, the system automatically inserts the name of the created data provider. 

6. In the **Amount Format** box, select _Debit/Credit Property in Separate Columns_. 

7. In the **Disbursement Property** box, enter the setting from the source file that is used for disbursement     entries, such as Dr. 

8. In the **Receipt Property** box, enter the setting from the source file that is used for receipt entries, such as     Cr. 

9. In the **Mapping Rules** section, enter the mapping rules between the source file and Acumatica ERP. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 132 

 The settings for which the Active check box is selected and unavailable are required. Other settings are optional. The following table shows an example of this mapping. 

 Active Target Field Source Field or Value 

 Selected Bank Account Name =[Account Parent] 

 Selected Ext. Tran. ID =[???TransactionID] 

 Selected Tran. Date =[Posting Date] 

 Selected Transaction Amount =[Transaction Amount] 

 Selected Debit/Credit Property in Separate Column 

 =[Transaction Debit/Credit Indicator] 

 Selected Tran. Desc =[Supplier Name] 

 Cleared Card Number =[Cardholder ID] 

 Cleared Ext. Ref. Nbr. =[???TransactionID] 

 Cleared Custom Tran. Desc. =Concat( [Posting Date], [Supplier Name], [Supplier City]) 

 Cleared Invoice Nbr. =[Authorization Number] 

 Cleared Payee/Payer =[Supplier Name] 

 Cleared Tran. Code =[Authorization Number] 

10.Go to the **Cash Accounts** tab, and click **Add Row** on the table toolbar. Specify the following settings in the added row: 

- **Account Name** : The account name as it is specified in the source file 

- **Cash Account** : The cash account in Acumatica ERP that will be mapped to the bank account 

- **Statement Period** : _Month_ 

- **Statement Start Day** : _1_ 

- **Import Transactions From** : The date that is specified in the Summary area for the bank feed (inserted     automatically by the system) 

- **Currency** : The currency of the bank transactions Repeat this step for each bank account and cash account that you want to map. 

11.Click **Save** to save your settings. 

12.On the form toolbar, click **Activate** to activate the bank feed. The bank feed's status changes to _Active_. 

 You can process this bank feed on the Retrieve Bank Feed Transactions (CA507500) form. For details, see To Load Bank Transactions from a File. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 133 

### To Set Up Bank Feeds Loaded from the BAI2 Format 

 You use the Bank Feeds (CA205500) form to set up bank feeds that load bank transactions from a BAI2 or BTRS file. On the same form, you connect to the SFTP folder where source files are stored and specify the mapping between the optional fields of the source file and the settings in Acumatica ERP. 

#### Before You Proceed 

 Make sure that the Bank Feed Integration feature is enabled on the Enable/Disable Features (CS100000) form. On the Activate License (SM201510) form, make sure that the needed license is activated. 

#### To Set Up a Bank Feed 

1. On the _Bank Feeds_ (CA205500) form, create a new record. 

2. In the Summary area, specify the following settings: 

- **Bank Feed ID** : A unique ID that identifies the bank feed 

- **Bank Feed Type** : _File_ 

- **Import Start Date** : The date starting from which you want to import bank transactions to the system 

- **Description** : A description of the bank feed 

- **Financial Institution** : The name of the bank that will provide source files with transactions 

3. Go to the **Source File** tab, and specify the following settings in the **Connection to Source File** section: 

- **URL** : The path to the SFTP folder, such as sftp://FirstBank/Doc. 

- **File Format** : _BAI2 (Bank Administration Institute)_. 

- **Login** : The current user's login to the SFTP folder. This value is provided either by the bank or by your     organization. 

- **Password** : The current user's password to the SFTP folder. 

- **SSH Private Key** : The private Secure Shell (SSH) key created on the _Encryption Certificates_ (SM200530)     form, which will be used for SFTP authentication. 

4. Click **Test Connection**.     The system verifies the connection to the SFTP folder. 

5. In the **Source File** section, click **Set Up Data Provider**.     In the **Data Provider** box, the system automatically inserts the name of the created data provider. 

6. Optional: In the **Mapping Rules** section, enter the mapping rules between the source file and Acumatica     ERP.     The settings for which the **Active** check box is selected and unavailable are required. You cannot edit them.     Other settings are optional. You can modify the mapping rules for optional settings only. 

7. Go to the **Cash Accounts** tab, and click **Add Row** on the table toolbar. Specify the following settings in the     added row: 

- **Account Name** : The account name as it is specified in the source file. 

- **Cash Account** : The cash account in Acumatica ERP that will be mapped to the bank account. 

- **Statement Period** : The bank statement period required by the bank, for example _Month_. 

- **Statement Start Day** : The start date of the bank statement required by the bank, for example _1_. 

- **Import Transactions From** : The date starting on which transactions for the cash account will be     imported (inserted automatically by the system and read-only). 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 134 

 This setting is filled in with the latest of the following dates: 

- The **Import Start Date** in the Summary area 

- The transaction date of the most recent bank transaction received through the file bank feed for the     selected cash account. This date is specified in the **Tran. Date** column on the _Import Bank Transactions_     (CA306500). 

- The transaction date of the most recent bank transaction for the selected cash account received from     a source other than the _File_ bank feed, for example, loaded from Plaid or MX bank feed, an OFX file or     entered manually. This is the date specified in the **Tran. Date** column on the _Import Bank Transactions_     form plus one day. 

- **Currency** : The currency of the bank transactions Repeat this instruction for each bank account and cash account that you want to map. 

 You can click Load Transactions in Test Mode on the More menu to review the exact bank account names that exist in the file located in the specified SFTP folder. 

8. Click **Save** to save your settings. 

9. On the form toolbar, click **Activate** to activate the bank feed. The bank feed's status changes to _Active_.     You can process this bank feed on the _Retrieve Bank Feed Transactions_ (CA507500) form. For details, see _To_     _Load Bank Transactions from a File_. 

### To Load Bank Transactions from a File 

 You use the Retrieve Bank Feed Transactions (CA507500) form to load bank transactions from a file. Alternatively, you can use the Import Bank Transactions (CA306500) or Process Bank Transactions (CA306000) form. You can load transactions for a bank feed that has the Active status. 

#### To Load Bank Transactions on the Retrieve Bank Feed Transactions Form 

 To use the Retrieve Bank Feed Transactions (CA507500) form as a starting point for loading bank transactions, do the following: 

1. Open the _Retrieve Bank Feed Transactions_ form. 

2. In the table, select the unlabeled check box for the needed bank feed, and click **Process** on the form toolbar.     The system loads the bank transactions from the specified bank feed. 

3. Open the _Import Bank Transactions_ (CA306500) form, and select the reference number of the imported     document for the needed cash account. 

4. On the form toolbar, click **Process Transactions**. 

 For details on matching bank transactions to documents in the system and creating new transactions, see Bank Reconciliation: To Process a Bank Statement in OFX Format (Part 1) and Bank Reconciliation: To Process a Bank Statement in OFX Format (Part 2). 

#### To Load Bank Transactions on the Import Bank Transactions Form 

 To use the Import Bank Transactions (CA306500) form as a starting point for loading bank transactions, do the following: 

1. Open the _Import Bank Transactions_ form. 

2. In the Summary area, select the needed cash account in the **Cash Account** box. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Bank Feeds | 135 

3. On the form toolbar, click **Retrieve Transactions**.     The system populates the table on the form with the transactions from the source file. 

4. On the form toolbar, click **Process Transactions**.     The system opens the _Process Bank Transactions_ (CA306000) form, where you can match the transactions to     documents in the system or create new documents for the transactions.     For details on matching bank transactions to documents in the system and creating new transactions, see     _Bank Reconciliation: To Process a Bank Statement in OFX Format (Part 1)_ and _Bank Reconciliation: To Process_     _a Bank Statement in OFX Format (Part 2)_. 

#### To Load Bank Transactions on the Process Bank Transactions Form 

 To use the Process Bank Transactions (CA306000) form as a starting point for loading bank transactions, do the following: 

1. Open the _Process Bank Transactions_ form. 

2. In the Selection area, specify the needed cash account in the **Cash Account** box. 

3. On the form toolbar, click **Retrieve Transactions**.     The system populates the table in the le pane with the transactions from the source file. You can match     these transactions to documents in the system or create new documents for the transactions. For details,     see _Bank Reconciliation: To Process a Bank Statement in OFX Format (Part 1)_ and _Bank Reconciliation: To_     _Process a Bank Statement in OFX Format (Part 2)_. 

#### To Process Bank Transactions Loaded from a File 

 To process bank transactions that the system has loaded from a file, do the following: 

1. Open the _Process Bank Transactions_ (CA306000) form. 

2. Select a transaction in the le pane. 

3. Match the transaction in the le pane with the needed document in the right pane.     You can match a bank transaction to a document with the _Payment_ , _Invoice_ , or _Expense Receipt_ type. 

4. If there are no transactions in the system that can be matched to the selected bank transaction and you     need to create one, on the **Create Payment** tab, select the **Create** check box. Specify the settings for a     receipt or disbursement transaction. 

5. On the form toolbar, click **Process**.     The system creates cash transactions based on the loaded bank transactions. You can review the created     transactions on the _Cash Transactions_ (CA304000) form. 


<!-- PAGE_BREAK -->
 Configuring and Using Acumatica Payments | 136 

## Configuring and Using Acumatica Payments 

 You can use the functionality of Acumatica payments to provide more payment flexibility to users and the customers they serve. A user can do any of the following: 

- Process credit cards or electronic funds transfer (EFT) payments. 

- Create payment links that customer representatives can click to review a list of their documents that are     pending payment. 

- Pay any number of invoices or sales orders by using a credit card or EFT in several clicks. The user will not     need to provide the company's card data or account data to operators so that this data is entered into     Acumatica ERP. The payment links functionality is available in the system if the _Acumatica Payments_ feature is enabled on the _Enable/Disable Features_ (CS100000) form. 

 Payment links can be used in any of the following cases: 

- An AR clerk prints an invoice, and then a customer representative scans a QR code with a smart phone,     opens a payment link, and pays the invoice or multiple open invoices via a credit card or EFT. 

- An AR clerk sends a payment link for an invoice to the customer. A customer representative opens the link     and pays the invoice by using a credit card. The system automatically creates the payment and applies the     payment to the invoice; the invoice is closed. 

- An AR clerk creates and releases an invoice and sends a payment link to the customer by email. A customer     representative opens the link and pays the invoice or multiple open invoices. The payment is automatically     created in Acumatica ERP and applied to the invoice or invoices. Each invoice is closed if it is fully paid     or stays open if it is partially paid. If the customer representative pays the invoice with another means of     payment without using the payment link, the payment link is closed automatically. 

- An AR clerk voids a credit memo or reverses a payment application to an invoice and runs synchronization     between the payment link and the document. The customer representative opens the old payment link and     sees new invoice details and an updated amount to be paid. 

- An AR clerk needs to check if any payments have been made for a particular invoice. The AR clerk opens     the invoice and synchronizes the payment link with the document. If the invoice is paid, the system checks     whether the respective payment has been created in Acumatica ERP. If it has not, the system creates the     payment and applies to the invoice; the payment link is automatically updated with any changes made to     the invoice (due date or other applied payments). 

- Multiple AR invoices are created for customers. In one click, an AR clerk releases all created invoices and     creates and sends payment links to all customers. 

- Incoming payments received by using a webhook trigger automatic payment creation in Acumatica ERP     for all payments made by customer representatives via payment links. Each payment is applied to the     respective AR invoice, sales invoice, or sales order. 

- A salesperson creates a sales order, creates a payment link for it, and sends the link to the customer. The     customer representative pays the full amount via the payment link, and the payment is automatically     created in Acumatica ERP and applied to the respective sales order. 

- A salesperson creates a sales order, partially ships the order, and creates a sales invoice for the shipped part.     The salesperson creates a payment link for the sales order and sends the link to the customer. A customer     representative pays the full sales order amount, and the payment is automatically created in Acumatica     ERP; they payment is applied to the sales invoice first, the remaining amount is applied to the respective     sales order. 

 Currently, Acumatica Payments works for merchants located in the US and Canada only. 

 In this chapter, you will read about how to configure the processing of payment links in Acumatica ERP and how to use payment links. 


<!-- PAGE_BREAK -->
 Configuring and Using Acumatica Payments | 137 

### Authorized Remainder Aer Partial Payment Capture 

 To simplify the processing of partially shipped orders, you can turn on smarter handling of pre-authorized payments. When a payment is partially captured for a sales invoice, the system will keep the remaining sales order amount pre-authorized—eliminating the need to manually create a new authorization. The system automatically creates a new payment for the remainder and pre-authorizes it. 

 This functionality is available only if the Acumatica Payments feature is enabled on the Enable/Disable Features (CS100000) form. 

#### Before You Begin 

 Make sure that the Authorize Remainder Aer Partial Capture check box is selected for the order type on the Order Types (SO201000) form. 

#### Usage Example 

 Imagine that you’re a sales manager. Your customer wants to place an order, but not all goods are in stock. The customer agrees to a partial shipment and a back order for the remaining goods. 

 Here's what you do in the system: 

1. Create a sales order on the _Sales Orders_ (SO301000) form. 

2. Create a payment for the sales order on the _Payments and Applications_ (AR302000) or _Sales Orders_ form     without saving the credit card in the system. For this payment, the system selects the **New Card** check box. 

3. Pre-authorize the full amount of the sales order. 

4. Partially ship the order and create a sales invoice for the amount of the shipped goods. The system transfers     a portion of the payment amount to the sales invoice. 

5. Capture the payment amount applied to the sales invoice on the _Invoices_ (SO303000) or _Credit Card_     _Processing for Sales_ (SO507000) form.     Aer you successfully capture the card transaction and close the original payment, the system: 

- Creates a new payment for the remaining balance 

- Pre-authorizes it 

- Applies it to the sales order 

#### Partial Payment Capture 

 When you capture payments on the Invoices (SO303000) and Credit Card Processing for Sales (SO507000) forms, the system does the following: 

1. Verifies that the payment has been applied to the sales order, transferred to the sales invoice, and partially     captured from the sales invoice. 

2. Confirms that the **Authorize Remainder Aer Partial Capture** check box is selected for the order type. 

3. If both of the conditions above are true, creates a new payment (based on the previous card transaction) for     the remaining amount and applies the payment to the sales order. 

 If the capture fails with an error, no new payment is created. 


<!-- PAGE_BREAK -->
 Configuring and Using Acumatica Payments | 138 

 The following table shows examples of the system’s calculation of the new payment amount. 

 Sales Order Total 

 Initial Payment (Pre-authorized Amount) 

 Sales Invoice Amount 

 Captured Amount 

 Sales Order's Unpaid Balance 

 New Payment (Pre-authorized Amount) 

##### $100 $100 $80 $80 $20 $20 

##### $120 $100 $55 $55 $65 $45 

 $100 $100 $60 $60 0 No new payment 

#### Partially Shipped Order with a Pre-Authorized Balance 

 The system continues authorizing the remaining payment balance for each partial capture on the sales invoice as long as the sales order still has an unpaid balance. If the sales order is completed aer a partial capture, the payment remainder is released and no new authorization is created. 

 Consider the following example: The customer's shipping rule is Cancel Remainder , so the payment pre-authorized for the full sales order amount is transferred to the sales invoice partially. The order status is changed to Completed once it has been partially shipped. The payment is captured on the Credit Card Processing for Sales (SO507000) form. Only the sales invoice amount is captured, no new payment is created due to the sales order status. 

### To Configure Acumatica Payments 

 This topic describes the configuration steps that you need to perform in the system to set up Acumatica payments. 

#### Before You Proceed 

 Before you start configuring Acumatica payments in Acumatica ERP, your organization needs to contact the Acumatica Payments sales team. Your sales representative will provide actual payment processing rates and guide your organization through concluding the agreement, obtaining the merchant account ID, and migrating tokens from the previous payment gateway to Acumatica ERP. 

 You will need the following settings of the merchant account to perform the configuration of the processing center in Acumatica ERP: 

- _Location ID_ 

- _User ID_ 

- _User API Key_ 

- _User Hash Key_ On the _Cash Accounts_ (CA202000) form, make sure that the needed cash accounts have been created. 

#### To Enable the Needed Feature 

 To enable the Acumatica Payments feature, do the following: 

1. Open the _Enable/Disable Features_ (CS100000) form. 

2. On the form toolbar, click **Modify**. 

3. In the **Integrated Card Processing** group of features, select the **Acumatica Payments** check box. 


<!-- PAGE_BREAK -->
 Configuring and Using Acumatica Payments | 139 

4. On the form toolbar, click **Enable** to enable the feature. 

#### To Create a Payment Method 

 To create a payment method for Acumatica payments, do the following: 

1. On the _Payment Methods_ (CA204000) form, create a new record. 

2. In the Summary area, specify the following settings: 

- **Payment Method ID** : The ID of the payment method 

- **Active** : Selected 

- **Means of Payment** : _Credit Card_ if you want to process credit card payments, or _EFT_ if you want to     process electronic funds transfer (EFT) payments 

- **Description** : The description of the payment method 

- **Use in AR** : Selected 

3. On the **Allowed Cash Accounts** tab, click **Add Row** and in the **Cash Account** column, select a cash account. 

4. For the cash account, select the **Use in AR** check box. 

5. On the form toolbar, click **Save** to save the changes. 

#### To Create a Processing Center 

 To create a processing center for Acumatica payments, do the following: 

1. On the _Processing Centers_ (CA205000) form, create a new record. 

2. In the Summary area, specify the following settings: 

- **Proc. Center ID** : The ID for the processing center 

- **Name** : The name for the processing center 

- **Cash Account** : The cash account to be to be associated with the processing center 

- **Active** : Selected 

- **Payment Plug-In** : _Acumatica Payments Plug-In_     The settings for the selected plug-in appear on the **Plug-In Parameters** tab, listed in Instruction 6 below. 

- **Allow Payment Links** : Selected     When this check box is selected, the **Payment Links** tab appears on the form. 

3. Optional: Select the **Allow Saving Payment Profiles** check box if you want to allow users to save any     payment profile. The system saves the profile by extracting the payment profile ID from the processing     center and creating a customer payment method associated with the credit card. 

4. Optional: Select the **Synchronize Deletion** check box if you want payment method information to be     automatically deleted from the processing center when a user deletes a customer payment method in     Acumatica ERP. 

5. Optional: Select the **Accept Payments from New Card** check box if you want this processing center to     accept payments from customers' credit cards that are not stored in the system. 

6. On the **Plug-In Parameters** tab, specify the values for the following settings: 

- _APIKEY_ : The API secret key from the merchant account. 

- _HASHKEY_ : The API user hash key from the merchant account. 

- _LOCATIONID_ : The location ID from the merchant account. 

- _RFNDUNSTTL_ : A check box that you select if you want to allow refunds for unsettled transactions for the     processing center. 


<!-- PAGE_BREAK -->
 Configuring and Using Acumatica Payments | 140 

- _TESTMODE_ : _Test Mode_ if you want to connect to your sandbox merchant account, or _Live Mode_ if you want     to connect to the production account. 

- _USERID_ : The ID of the API user from the merchant account. 

- _WEBHOOKPWD_ : The password for webhook authorization. This setting will be sent to the merchant     account when you click **Create/Update Webhook** on the form toolbar. 

- _WEBHOOKUSR_ : The username for webhook authorization. This setting will be sent to the merchant     account when you click **Create/Update Webhook** on the form toolbar. The rest of the plug-in settings are either automatically filled in by the system or generated by the system when you save the current processing center. 

7. On the form toolbar, click **Test Credentials** to make sure that the credentials are accepted by the processing     center. In the **Result** dialog box, which is displayed, click **OK**. 

8. On the form toolbar, click **Save** to save the changes. 

#### To Link the Processing Center to a Payment Method 

 To link the new processing center to the payment method, do the following: 

1. On the _Payment Methods_ (CA204000) form, open the payment method that you created earlier. 

2. On the **Processing Centers** tab, click **Add Row** on the table toolbar. 

3. In the **Proc. Center ID** column, select the processing center for Acumatica payments, which you created     earlier. 

4. On the form toolbar, click **Save** to save the changes. 

#### To Configure Support of Payment Links 

 To set up the settings for payment links, do the following: 

1. On the _Processing Centers_ (CA205000) form, open the processing center that you created earlier. 

2. In the Summary area, notice that a warning message is displayed near the **Allow Payment Links** check box     that no settings for payment links have been specified. 

3. On the **Payment Links** tab, specify the settings for payment links as follows:     a. Optional: Select the **Allow Partial Payment** check box to allow partial payments for customers that use        payment links.     b. In the **Create from SO Payment Link** box, keep the default value of _Payment_ if you want the system to        create payments when a sales order is paid by using a payment link. If you prefer the system to create        prepayments, select _Prepayment_.     c. For each branch that will use the current processing center as the default one for the creation of payment        links, click **Add Row** on the table toolbar, and specify the following settings for the row: 

- **Branch** : The branch specified for the invoice or sales order on the **Financial** tab of the _Invoices and_     _Memos_ (AR301000), _Invoices_ (SO303000), or _Sales Orders_ (SO301000) form. 

- **Use by Default** : A check box that you select if the selected processing center should appear by default     for the creation of payment links for invoices and sales orders with the **Branch** specified in the row     and the currency of the processing center. 

- **Credit Card Payment Method** : The payment method that will be used in a created payment if a card     payment for the payment link is received from the current processing center and if the related invoice     or sales order originated in the branch defined for the row. (You created this payment method, which     has the _Credit Card_ means of payment, earlier.) 


<!-- PAGE_BREAK -->
 Configuring and Using Acumatica Payments | 141 

- **Credit Card Cash Account** : The cash account that will be used along with the credit card payment     method. This is the _Credit Card_ cash account that is specified for the selected payment method, which     has the same currency as the processing center and is visible for the branch specified in the row. 

- **EFT Payment Method** : The payment method that will be used for payment creation if an EFT     payment for the payment link is received from the current processing center and if the related invoice     or sales order originated in the branch defined for the row. (You created this payment method, which     has the _EFT_ means of payment, earlier.) 

- **EFT Cash Account** : The cash account that will be used along with the _EFT_ payment method. This is     the _EFT_ cash account that you specified for the selected payment method. 

 For each row in the table, you must fill in at least one of the following combinations of columns: 

- **Credit Card Payment Method** and **Credit Card Cash Account** 

- **EFT Payment Method** and **EFT Cash Account** 

4. On the form toolbar, click **Create/Update Webhook**. The system creates a webhook and populates the     **Webhook ID** box with its ID. If the webhook has already been created, clicking this button will synchronize     the webhook parameters in Acumatica ERP and the merchant account. 

5. On the form toolbar, click **Save** to save the changes. 

#### To Set Up a Customer Class 

 You need to update the settings of each customer class to indicate whether payment links are turned on for the customers and if so, which payment link settings apply to the customers. For each customer class, do the following: 

1. On the _Customer Classes_ (AR201000) form, open the needed customer class. 

2. On the **General** tab ( **Payment Link Settings** section), specify the following settings: 

- **Exclude from Payment Link Processing** : Cleared (the default state) 

- **Delivery Method** : _None_ (default) if you do not want the system to automatically send customers of the     class emails with payment links, or _Email_ if you want the customers of the class to receive payment links     by email 

- **Allowed Means of Payment** : The means of payment that a customer of the class may use when making     payments by using payment links 

3. Optional: Select the **Enable Delivery Method Override** check box if you want users to be able to override     the delivery method for a particular document. 

4. On the form toolbar, click **Save** to save the changes. 

#### Optional: To Set Up Authorized Remainder aer Payment Capture 

 Optionally, you can set up the authorized remainder for partially captured payments. When a payment is partially captured for a sales invoice, the system will keep the remaining sales order amount pre-authorized. For each needed order type, do the following: 

1. On the _Order Types_ (SO201000) form, open the order type. 

2. On the **General** tab ( **Payment Settings** section), select the **Authorize Remainder Aer Partial Capture**     check box. 

3. Save your changes. 


<!-- PAGE_BREAK -->
 Configuring and Using Acumatica Payments | 142 

### Processing of Payment Links 

 In Acumatica ERP, webhooks have been used to implement the receipt of payments that were made in the processing center by using payment links. The system receives information about all created payments from the processing center and processes those payments that were created by using payment links. 

 Using webhooks is the preferable way to receive payments and is supported by Acumatica ERP. However, webhook creation requires manual actions by administrative users. 

#### Supported Document Types 

 You can create payment links for the following document types created on the following forms: 

- _Invoices and Memos_ (AR301000): _Invoice_ , _Debit Memo_ , and _Overdue Charge_ 

- _Sales Orders_ (SO301000): Sales orders with the _Sales Order_ automation behavior 

- _Invoices_ (SO301000): Sales invoices 

#### Creation of Payment Links 

 When open AR documents and sales invoices are released, the system automatically creates payment links via business events. For sales orders with the SO behavior, you create payment links manually on the Process Orders (SO501000) or Sales Orders (SO301000) form. 

 The type of document that the system creates for payments made by using payment links from sales orders depends on the setting in the Create from SO Payment Link box on the Payment Links tab of the Processing Centers (CA205000) form: 

- If _Payment_ is selected, a payment is created when a sales order is paid by using a payment link. 

- If _Prepayment_ is selected, a prepayment is created when a sales order is paid by using a payment link. For payment links to be created automatically for a document, the following conditions must be met: 

- A processing center must be specified for the document on the **Payment Links** tab of the _Invoices and_     _Memos_ (AR301000), _Sales Orders_ , or _Invoices_ (SO303000) form. 

- If the delivery method on the _Customer Classes_ (AR201000) form is _Email_ , a valid email address must be     specified for the customer in the **Bill-To Contact** section on the **Addresses** tab of the _Invoices and Memos_ ,     _Sales Orders_ , or _Invoices_ form. To manually create payment links, you should do either of the following: 

- To create payment links for multiple released AR documents or sales invoices, you select _Create Payment_     _Link_ in the **Action** box on the _Process Payment Links_ (AR513000) form, select the required documents in the     table, and click **Process**. Alternatively, you can create a payment link for an individual AR document or sales     invoice by clicking **Create Payment Link** on the **Payment Links** tab of the _Invoices and Memos_ or _Invoices_     form, respectively. 

- To create payment links for multiple sales orders, you select _Create Payment Link_ in the **Action** box     on _Process Orders_ (SO501000) form, select the required sales orders in the table, and click **Process**.     Alternatively, you can open the sales order on the _Sales Orders_ form and create a payment link by clicking     **Create Payment Link** on the **Payment Links** tab. If the AR document or sales order becomes open again (for example, if payment application is reversed), the **Create Payment Link** button becomes available again on the **Payment Links** tab of the respective form. 


<!-- PAGE_BREAK -->
 Configuring and Using Acumatica Payments | 143 

#### Attachment Generation for Payment Links 

 For multiline documents, you can choose to include only the document total in the payment link, while attaching the full line-item details separately as a PDF file. 

 This functionality doesn't depend on the state of the Acumatica Payments feature. If the feature is disabled and you create a sales order with more than 310 lines, the system will still send a request to create a payment link with an attachment. 

 To set up generation of a PDF attachment for a payment link, perform the following steps: 

1. On the _Processing Centers_ (CA205000) form, select the needed processing center. 

2. On the **Payment Links** tab, select the **Attach Document Details as PDF** check box. 

3. Click **Save** to save your changes. 

 Line details will be included in a PDF attachment for payment links created for these document types on the following forms: 

- _Sales Orders_ (SO301000): Sales orders with the _SO_ type 

- _Invoices_ (SO303000): Sales invoices with the _Invoice_ type 

- _Invoices and Memos_ (AR301000): Documents with the _Invoice_ , _Debit Memo_ , and _Overdue Charge_ type When you create a payment link for a document on a data entry form, the system generates the following reports and attaches them as PDF files to the following documents: 

- _Sales Order_ (SO641010) to sales orders 

- _Invoice & Memo_ (SO643000) to sales invoices 

- _Invoice/Memo_ (AR641000) to AR invoices If the status of a sales order is _Open_ , you can change the line items of the sales order, for example, the quantity. In this case, you click **Sync Payment Link** on the **Payment Links** tab of the _Sales Orders_ (SO301000) form. If you sync a payment link with an attachment, the system will: 

1. Remove the currently attached PDF file with line details. 

2. Create a new PDF file and attach it to the payment link. 

#### Attachments to Email Notifications 

 Although the system uses the default reports, you can select other reports in the mailing and printing settings of the customer class or the customer. These reports are fully customizable and you can change or update them according to your business needs. 

 On the Customers (AR303000) and Customer Classes (AR201000) forms, no default report is specified for the SALES ORDER PAY LINK and INVOICE PAY LINK mailing IDs. 

 If a payment link is generated with an attachment, the system attaches the following reports to both the email and the payment link: 

- **No report is specified for the** **_SALES ORDER PAY LINK_** **or** **_INVOICE PAY LINK_** **mailing ID** (default): The report     specified for the _SALES ORDER_ , _SO INVOICE_ , or _INVOICE_ mailing ID 

- **A report is specified for the** **_SALES ORDER PAY LINK_** **or** **_INVOICE PAY LINK_** **mailing ID** : This report 

#### Synchronization of Payment Links 

 Once a payment link is created, synchronization between an AR document or sales order and the payment link is automatic. That is, related business events are active by default aer you upgrade Acumatica ERP. Synchronization 


<!-- PAGE_BREAK -->
 Configuring and Using Acumatica Payments | 144 

 is triggered by any change made to the due date or amounts of the document or its lines, or any change to the dates or the unpaid balance for sales orders. Also, you can manually synchronize payment links on the Invoices and Memos (AR301000), Invoices (SO303000), Sales Orders (SO301000), and Process Payment Links (AR513500) forms. 

 Once the AR document or sales order corresponding to a payment link is fully paid or the document or sales order does not have an open balance, the payment link will be marked as closed in Acumatica ERP during the next synchronization. 

 A payment link is closed automatically if the corresponding sales order is assigned the Completed status. You can also close a payment link manually for a sales order at any time by clicking Close Payment Link on the Payment Links tab of the Sales Orders form. 

#### Payment Links in Reports 

 The following reports, which show print-friendly versions of documents, contain a QR code for a payment link and the Pay now link, shown in the screenshot below, if a payment link has been created for the document: 

- _Invoice/Memo_ (AR641000) 

- _Sales Order_ (SO641010) 

- _Invoice & Memo_ (SO643000) The following screenshot shows an invoice printed on the _Invoice/Memo_ report. 


<!-- PAGE_BREAK -->
 Configuring and Using Acumatica Payments | 145 

 Figure: An invoice with a payment link 

#### Troubleshooting 

 When you are processing payment links, you may encounter the issues listed in the following table. This table describes the issues and how they can be solved. 

 Issue What Causes the Issue Solution 

 On the Sales Orders (SO301000) form, a payment link is closed and a new link cannot be created. 

 A payment link for the sales invoice is created when the invoice is released, because the SO Invoice Payment Link Create business event is active. If the linked sales order had a payment link too, this link is closed and a new one cannot be created. 

 If you process payment links on sales orders rather than sales invoices, you need to clear the Active check box for the SO Invoice Payment Link Create business event on the Business Events (SM302050) form. 


<!-- PAGE_BREAK -->
 Configuring and Using Acumatica Payments | 146 

 Issue What Causes the Issue Solution 

 A technical error is displayed on the Sales Orders form when you edit the lines of a sales order for which a payment link has been created. 

 After the creation of a payment link, each change in sales order lines triggers the SO Payment Link Update business event, which may lead to unnecessary service loading and technical errors. 

 If frequent changes to sales orders are required after payment link creation, you can do the following: 

1. On the _Business Events_ form, clear the **Ac-**     **tive** check box for the _SO Payment Link Up-_     _date_ business event. 

2. On the _Process Payment Links_ (AR513500)     form, schedule synchronization of sales or-     ders.     The frequency of synchronization should be     once a week or less frequent. 

### To Create Payment Links for AR Documents 

 You use the Payment Links tab of the Invoices and Memos (AR301000) and Invoices (SO303000) forms to create a payment link for a released AR invoice, debit memo, overdue charge, or sales invoice. 

 Alternatively, you can create payment links for multiple AR documents and sales invoices on the Process Payment Links (AR513500) form. 

#### Before You Proceed 

 Before you start creating payment links for AR documents and sales invoices, you need to make sure that the Acumatica payments are configured as described in To Configure Acumatica Payments. 

#### To Create a Payment Link for an AR Document 

 To create a payment link for an AR document, do the following: 

1. On the _Invoices and Memos_ (AR301000) form, open the needed document. 

2. Go to the **Payment Links** tab. 

3. Make sure that a processing center is selected in the **Processing Center** box. 

4. In the **Link Delivery Method** box, select one of the following settings: 

- _Email_ to automatically send the link to the customer and verify that a valid email address is specified in     the **Bill-To Contact** section on the **Addresses** tab 

- _None_ if the link should not be automatically sent to the customer 

 This box is available if on the Customer Classes (AR201000) form, the Enable Delivery Method Override check box is selected on the General tab for the class of the customer. 

5. Click **Create Payment Link**.     The system creates a payment link and displays it in the **Payment Link** box. When the link is created, _Open_     is inserted in the **Link Status** box, indicating that the document can be paid via the payment link. 

6. Optional: If _None_ is selected in the **Link Delivery Method** box, print the AR document by clicking **Print** on     the More menu. 


<!-- PAGE_BREAK -->
 Configuring and Using Acumatica Payments | 147 

 The system opens the Invoice/Memo (AR641000) report with a print-friendly version of the document that contains a QR code for the payment link and the Pay now link. You can send this document to the customer or copy the payment link from the Payment Link box and send it in some other way. 

#### To Create a Payment Link for a Sales Invoice 

 To create a payment link for a sales invoice, do the following: 

1. On the _Invoices_ (SO303000) form, open the needed sales invoice. 

2. Go to the **Payment Links** tab. 

3. Make sure that a processing center is selected in the **Processing Center** box. 

4. In the **Link Delivery Method** box, select _Email_ to automatically send the link to the customer or _None_ if the     link should not be automatically sent to the customer. 

 This box is available if on the Customer Classes (AR201000) form, the Enable Delivery Method Override check box is selected on the General tab for the class of the customer. 

5. Click **Create Payment Link**.     The system creates a payment link and displays it in the **Payment Link** box. When the link is created, _Open_     is inserted in the **Link Status** box, indicating that the invoice can be paid via the payment link. 

6. Optional: If _None_ is selected in the **Link Delivery Method** box, print the sales invoice by clicking **Print**     **Invoice** on the More menu.     The system opens the _Invoice & Memo_ (SO643000) report with a print-friendly version of the document that     contains a QR code for the payment link and the _Pay now_ link. You can send this document to the customer. 

#### To Create Payment Links on the Process Payment Links Form 

 To create a payment link for an AR document or sales invoice on the Process Payment Links (AR513000) form, do the following: 

1. Open the _Process Payment Links_ (AR513500) form. 

2. In the Selection area, specify the following settings: 

- **Action** : _Create Payment Link_ 

- **Customer** (optional): The customer for whose documents you want to create payment links The system displays the documents that are ready for payment link creation. These documents have the _Open_ status, have no open payment links, and have a processing center specified on the **Payment Links** tab of the _Invoices and Memos_ (AR301000) or _Invoices_ (SO303000) form. 

3. In the table, select the unlabeled check box for each document that you want to include in processing, and     click **Process** on the form toolbar; alternatively, click **Process All** to process all the displayed documents. 

### To Create Payment Links for Sales Orders 

 You use the Process Orders (SO501000) form to create payment links for multiple released sales orders with the SO behavior. 

 Alternatively, you can create a payment link for a particular sales order on the Payment Links tab of the Sales Orders (SO301000) form. 


<!-- PAGE_BREAK -->
 Configuring and Using Acumatica Payments | 148 

#### Before You Proceed 

 Before you start creating payment links for sales orders, you need to make sure that Acumatica payments are configured as described in To Configure Acumatica Payments. 

#### To Create Payment Links for Multiple Sales Orders 

 To create payment links for multiple sales orders, do the following: 

1. Open the _Process Orders_ (SO501000) form. 

2. In the Selection area, specify the following settings: 

- **Action** : _Create Payment Link_ 

- **Customer** : A customer for whose sales orders you want to create payment links. You can leave this box     empty to include multiple customers into processing. 

3. In the table on the **All Records** tab, review the list of documents and click the unlabeled check boxes to     include specific documents into processing. 

4. On the form toolbar, click **Process** to process the selected documents or click **Process All** to process all     documents. 

#### To Create a Payment Link for a Specific Sales Order 

 To create a payment link for a specific sales order, do the following: 

1. On the _Sales Orders_ (SO301000) form, open the needed sales order. 

2. Go to the **Payment Links** tab. 

3. Make sure that a processing center is selected in the **Processing Center** box. 

4. In the **Link Delivery Method** box, select _Email_ to automatically send the link to the customer or _None_ if the     link should not be automatically sent to the customer. 

 This box is available if on the Customer Classes (AR201000) form, the Enable Delivery Method Override check box is selected on the General tab for the class of the customer. 

5. Click **Create Payment Link**.     The system creates a payment link and displays it in the **Payment Link** box. When the link is created, it is     assigned the _Open_ status. 

6. Optional: If _None_ is selected in the **Link Delivery Method** box, print the sales order by clicking **Print Sales**     **Order** on the More menu.     The system displays the _Sales Order_ (SO641010) form with a print-friendly version of the document that     contains a QR code for the payment link and the _Pay now_ link. You can send this document to the customer. 

### To Process Payment Links 

 Once a payment link for an AR document or sales invoice has been created, you can synchronize it and resend it to the customer. Once a payment link for a sales order has been created, you can synchronize, resend, or close it. 

 During the synchronization and closure of payment links, the system will receive all payments made by using the payment link, create and apply the payments in Acumatica ERP, and then send the updated sales order or invoice, or close the payment link. 


<!-- PAGE_BREAK -->
 Configuring and Using Acumatica Payments | 149 

#### To Synchronize a Payment Link 

 To synchronize a payment link for an AR document, sales invoice, or sales order, do the following: 

1. Open the _Invoices and Memos_ (AR301000), _Invoices_ (SO303000), or _Sales Orders_ (SO301000) form. 

2. Open the needed document, and go to the **Payment Links** tab. 

3. Click **Sync Payment Link**.     The system synchronizes the payment link in Acumatica ERP with the processing center. 

 You can instead use the Process Payment Links (AR513500) form for mass synchronization or for scheduling this process. 

#### To Resend a Payment Link 

 You can resend a payment link to a customer if the Link Delivery Method is set to Email on the Customer Classes (AR201000) form for the customer class and the customer has a valid email address specified on the Billing tab ( Bill-To Info section) of the Customers (AR303000) form. 

 To resend a payment link to a customer, do the following: 

1. Open the _Invoices and Memos_ (AR301000), _Invoices_ (SO303000), or _Sales Orders_ (SO301000) form. 

2. Open the needed document, and go to the **Payment Links** tab. 

3. Click **Resend Payment Link**.     The system resends the payment link to the customer's email address. 

#### To Close a Payment Link 

 To close a payment link for a sales order, do the following: 

1. On the _Sales Orders_ (SO301000) form, open the needed sales order. 

2. Go to the **Payment Links** tab. 

3. Click **Close Payment Link**.     The system closes the payment link and assigns it the _Closed_ status. 

### Support of POS Payments 

 Acumatica ERP provides support for point-of-sale (POS) payments. Users can now do the following: 

- Set up the POS functionality and import the POS terminals’ settings into the system for each location from     the payment processor 

- Assign a user-friendly name to each POS terminal 

- Activate and deactivate POS terminals 

- Use the user's default POS terminal when creating POS payments and override the default terminal for a     specific user 

- Send a credit card payment request to a POS terminal from any of the following forms: _Payments and_     _Applications_ (AR302000), _Cash Sales_ (AR304000), _Sales Orders_ (SO301000), _Invoices_ (SO303000), and _Invoices_     _and Memos_ (AR301000) 


<!-- PAGE_BREAK -->
 Configuring and Using Acumatica Payments | 150 

- Track the status of transactions and update POS payments in the system 

- Resend a transaction to the POS terminal 

- Authorize and void a POS transaction 

- Issue a refund or a partial refund for a POS payment The support of POS payments can be configured and used in the system if the _Acumatica Payments_ feature is enabled on the _Enable/Disable Features_ (CS100000) form. 

#### General Configuration Steps 

 To configure the support of POS payments in the system, a system administrator performs the following general steps: 

1. On the _Enable/Disable Features_ (CS100000) form, enables the _Acumatica Payments_ feature. 

2. On the _Processing Centers_ (CA205000) form, configures a processing center for which the **Accept Payments**     **from POS Terminals** check box is selected. 

3. On the _Payment Methods_ (CA204000) form, creates a processing center with the _POS Terminal_ means of     payment and links it to the created processing center on the **Processing Centers** tab. 

 For details, see To Configure the POS Payment Functionality. 

#### Processing of POS Payments on the Payments and Applications Form 

 To send and capture a payment via a POS terminal, you perform the following general steps: 

1. On the _Payments and Applications_ (AR302000) form, you create a payment, selecting a payment method with     the _POS Terminal_ means of payment. 

2. In the **Terminal** box, you select a POS terminal from the lookup table. 

3. In the **Cash Account** box, you select a cash account. 

4. On the **Documents to Apply** tab, you select a document or multiple documents that will be applied to the     payment. 

5. On the More menu, you click **Capture** , which causes the following actions to occur:     a. The system sends an API request to the processing center to create a transaction on the POS terminal.     b. The payment processor launches a transaction on the terminal.     The customer receives the transaction on the terminal and taps, swipes, or inserts their credit card; they     then complete the payment. The system automatically does the following:     a. Updates the payment transaction in Acumatica ERP with the final status.     b. On the **Card Processing** tab of the _Payments and Applications_ form, adds a new line and populates the        **Proc. Center Tran. Nbr.** column with the credit card transaction ID.     c. Releases the payment. 

 The payment is released automatically because the Integrated Processing check box is selected on the Settings for Use in AR tab of the Payment Methods (CA204000) form for the payment method. 

 When a POS transaction is launched on the POS terminal, the payment is not editable in Acumatica ERP, as is the case with payments that have the Authorize Only status. 

 The system does not save payment profiles and credit card details. No customer payment method is created through POS payments. 


<!-- PAGE_BREAK -->
 Configuring and Using Acumatica Payments | 151 

#### Processing of POS Payments on the Cash Sales Form 

 To send and capture a payment via a POS terminal, you perform the following general steps: 

1. On the _Cash Sales_ (AR304000) form, you create a cash sale, selecting a payment method with the _POS_     _Terminal_ means of payment. 

2. In the **Terminal** box, you select a POS terminal from the lookup table. 

3. In the **Cash Account** box, you select a cash account. 

4. On the **Details** tab, you add a line or multiple lines with cash sale details. 

5. On the More menu, you click **Capture** , which causes the following actions to occur:     a. The system sends an API request to the processing center to create a transaction on the POS terminal.     b. The payment processor launches a transaction on the terminal.     The customer receives the transaction on the terminal and taps, swipes, or inserts their credit card; they     then complete the payment for the cash sale. The system automatically does the following:     a. Updates the payment transaction in Acumatica ERP with the final status.     b. On the **Card Processing** tab of the _Cash Sales_ form, adds a new line and populates the **Proc. Center**        **Tran. Nbr.** column with the credit card transaction ID.     c. Releases the payment. 

 The payment is released automatically because the Integrated Processing check box is selected on the Settings for Use in AR tab of the Payment Methods (CA204000) form for the payment method. 

#### Creation of POS Payments on the Sales Orders Form 

 To create a payment for a sales order and capture it via a POS terminal, you perform the following general steps: 

1. On the _Sales Orders_ (SO301000) form, you create a sales order. 

2. You go to the **Payments** tab and click **Create Payment** on the table toolbar. The **Create Payment** dialog box     opens. 

3. You select the following settings in the **Create Payment** dialog box: 

- **Payment Method** : A payment method with the _POS Terminal_ means of payment. The system     automatically fills in the **Proc. Center ID** box with the processing center associated with the selected     payment method. 

- **Terminal** : The POS terminal to be used. This box is automatically filled in with the default terminal, but     you can override this setting. 

4. You click **Capture** in the **Create Payment** dialog box.     The system sends an API request to the processing center with all the mandatory settings to create a POS     transaction on the terminal. The processing center launches a transaction on the terminal.     The customer receives the transaction on the terminal and then taps, swipes, or inserts their credit card;     then they complete the payment. When the payment is sent to the processing center, the card payment is     processed and a response is sent to Acumatica ERP with the final transaction status.     Once the system receives the response, it adds the reference number of the processing center and updates     the transaction status. 

5. Once the payment is successful, the system automatically releases the payment. 


<!-- PAGE_BREAK -->
 Configuring and Using Acumatica Payments | 152 

 The payment is released automatically because the Integrated Processing check box is selected on the Settings for Use in AR tab of the Payment Methods (CA204000) form for the payment method. 

#### Creation of POS Payments on the Invoices Form 

 To create a payment for a sales invoice and capture it via a POS terminal, you perform the following general steps: 

1. On the _Invoices_ (SO303000) form, you create a sales invoice. 

2. You go to the **Applications** tab and click **Create Payment** on the table toolbar. The system displays the     **Create Payment** dialog box. 

3. You select the following settings in this dialog box: 

- **Payment Method** : A payment method with the _POS Terminal_ means of payment. The system     automatically fills in the **Proc. Center ID** box with the processing center associated with the selected     payment method. 

- **Terminal** : The POS terminal to be used. This box is automatically filled in with the default terminal, but     you can override this setting. 

4. You click **Capture** in the **Create Payment** dialog box.     The system sends an API request to the payment processor with all the mandatory settings to create a POS     transaction on the terminal. The processing center launches a transaction on the terminal.     The customer receives the transaction on the terminal and then taps, swipes, or inserts their credit card;     then they complete the payment. When the payment is sent to the processing center, the card payment is     processed and a response is sent to Acumatica ERP with the final transaction status.     Once the system receives the response, it adds the reference number of the processing center and updates     the transaction status. 

5. Once the payment is successful, the system automatically releases the payment. 

 The payment is released automatically because the Integrated Processing check box is selected on the Settings for Use in AR tab of the Payment Methods (CA204000) form for the payment method. 

#### Processing of Refunds 

 Refunds made by using payment methods with the POS Terminal means of payment are processed as follows: 

- For refunds created on the _Payments and Applications_ (AR302000) form, the processing center allows a full or     partial refund aer a transaction is captured. For POS payments, the transaction amount can be refunded     at any time aer it has been created because it is not limited by the _Settled_ status. For linked refunds, a     terminal or credit card is not needed; only the original transaction number is required. 

- When you record a linked refund on the _Sales Orders_ (SO301000) form by creating a sales order of the _RC_     type and clicking **Create Refund** on the **Payments** tab, if there are multiple original invoices in the _RC_ order,     for the refund on the _Payments and Applications_ (AR302000) form, the system leaves the **Orig. Transaction**     box empty. You must select the original transaction number of the invoice that you want to refund. 

- On the _Invoices_ (SO303000) form, cash returns for POS transactions can be created aer the transaction has     been captured. The system allows refunds and does not wait for the transaction to be settled. To make it possible for users to record unlinked refunds (those for which the system does not require the original transaction number; these refunds are also called _blind refunds_ ), the system administrator must do the following: 

- Get approval from the processing center and enable blind refunds on the processing center's side. 


<!-- PAGE_BREAK -->
 Configuring and Using Acumatica Payments | 153 

- In Acumatica ERP, make sure that the **Allow Unlinked Refunds** check box is selected on the _Processing_     _Centers_ (CA205000) form. 

### To Configure the POS Payment Functionality 

 This topic describes the configuration steps that you need to perform in the system to set up the support of POS payments in Acumatica ERP. 

#### Before You Proceed 

 Before you start configuring support of POS payments, your organization needs to contact the Acumatica Payments sales team. Your sales representative will provide actual payment processing rates and guide your organization through concluding the agreement, obtaining the merchant account ID, and migrating tokens from the previous payment gateway to Acumatica ERP. 

 You will need the following settings of the merchant account to perform the configuration of the processing center in Acumatica ERP: 

- _Location ID_ 

- _User ID_ 

- _User API Key_ 

- _User Hash Key_ On the _Cash Accounts_ (CA202000) form, make sure that the needed cash accounts have been created. 

#### To Enable the Needed Feature 

 To enable the Acumatica Payments feature, do the following: 

1. Open the _Enable/Disable Features_ (CS100000) form. 

2. On the form toolbar, click **Modify**. 

3. In the **Integrated Card Processing** group of features, select the **Acumatica Payments** check box. 

4. On the form toolbar, click **Enable** to enable the feature. 

#### To Create a Processing Center 

 To create a processing center for POS payments, do the following: 

1. On the _Processing Centers_ (CA205000) form, create a new record. 

2. In the Summary area, specify the following settings: 

- **Proc. Center ID** : The ID for the processing center 

- **Name** : The name for the processing center 

- **Cash Account** : The cash account to be to be associated with the processing center 

- **Active** : Selected 

- **Payment Plug-In** : _Acumatica Payments Plug-In_     The settings for the selected plug-in appear on the **Plug-In Parameters** tab, listed in Instruction 4 below. 

- **Accept Payments from POS Terminals** : Selected     When this check box is selected, the **POS Terminals** tab appears on the form. 

3. Optional: Select the **Accept Payments from New Card** check box if you want this processing center to     accept payments from customers' credit cards that are not stored in the system. 


<!-- PAGE_BREAK -->
 Configuring and Using Acumatica Payments | 154 

4. On the **Plug-In Parameters** tab, specify the values for the following settings: 

- _APIKEY_ : The API secret key from the merchant account. 

- _HASHKEY_ : The API user hash key from the merchant account. 

- _LOCATIONID_ : The location ID from the merchant account. 

- _RFNDUNSTTL_ : A check box that you select if you want to allow refunds for unsettled transactions for the     processing center. 

- _TESTMODE_ : _Test Mode_ if you want to connect to your sandbox merchant account, or _Live Mode_ if you want     to connect to the production account. 

- _USERID_ : The ID of the API user from the merchant account. 

- _WEBHOOKPWD_ : The password for webhook authorization. This setting will be sent to the merchant     account when you click **Create/Update Webhook** on the form toolbar. 

- _WEBHOOKUSR_ : The username for webhook authorization. This setting will be sent to the merchant     account when you click **Create/Update Webhook** on the form toolbar. The rest of the plug-in settings are either automatically filled in by the system or generated by the system when you save the current processing center. 

5. On the form toolbar, click **Test Credentials** to make sure that the credentials are accepted by the processing     center. In the **Result** dialog box, which is displayed, click **OK**. 

6. On the form toolbar, click **Save** to save the changes. 

#### To Create a Payment Method 

 To create a payment method for POS payments, do the following: 

1. On the _Payment Methods_ (CA204000) form, create a new record. 

2. In the Summary area, specify the following settings: 

- **Payment Method ID** : The ID of the payment method 

- **Active** : Selected 

- **Means of Payment** : _POS Terminal_ 

- **Description** : The description of the payment method 

- **Use in AR** : Selected 

3. On the **Allowed Cash Accounts** tab, click **Add Row** and in the **Cash Account** column, select a cash account. 

4. For the cash account, select the **Use in AR** check box. 

5. On the **Processing Centers** tab, click **Add Row** and add the processing center that you selected in the     previous configuration step. 

6. On the form toolbar, click **Save** to save the changes. 

### Level 2 Data Transmission During Card Payments 

 All businesses accepting credit cards payments fall into a certain level of data processing. Each level is defined by the amount of information that is required or passed to complete the payment. Level 1 processing is the default one and is the basic level because the merchant does not add any extra data except the basic payment data to a transaction. 

 Level 2 processing is the level when the merchant provides incremental data, combined with the basic payment data, that is sent electronically to the bank to define the purchase in more detail. In return, the merchants get fraud prevention, and the card networks lower the interchange rates to process the credit card payments for B2B and B2G transactions. 


<!-- PAGE_BREAK -->
 Configuring and Using Acumatica Payments | 155 

 Acumatica ERP supports level 2 data processing and incorporates the following additional data in the transaction API request along with the payment data for Card Not Present transaction endpoint requests: 

1. Tax amount (the tax field) 

2. Subtotal amount (the subtotal_amount field) 

 During credit card processing, this additional data is sent to the processing center if the selected payment method has Credit Card specified in the Means of Payment box on the Processing Centers (CA205000) form. 

 Although multiple tax calculation rules are used in Acumatica ERP, there is no difference in how the system calculates the tax amount and the subtotal amount. The tax amount is always the amount from the Tax Total box in the Summary area of a data entry form and the subtotal amount is always the payment amount minus the tax amount. The tax amount cannot be less than 0 in the system. 

 Transmission of level 2 data is not supported for the following types of documents: 

- Documents paid by line: For documents that have the **Pay by Line** check box selected on the _Invoices and_     _Memos_ (AR301000) form, this functionality is not supported, because it is applied only on the document     level. If a payment is applied to a document paid by line, the system does not calculate the taxes for the     individual lines, but treats the document in the same way as the documents with the **Pay by Line** check box     cleared and calculates the tax amount at the document level.     If on the _Payments and Applications_ (AR302000) form, a payment is applied to two documents one of which     is paid by line and the other is paid at the document level, the system will calculate the tax amount for the     document paid by line at the document level, but not on the line level. 

- Refund transactions: Documents with the _Cash Return_ type created on the _Cash Sales_ (AR304000) form and     documents with the _Refund_ type created on the _Payments and Applications_ form produce transactions with     the _Credit_ type, so they do not qualify for level 2 processing. Only transactions with the _Sale_ type quality for     level 2 interchange rate. 

- Sales orders imported from eCommerce sites: When orders from eCommerce sites are synched with a sales     order in Acumatica ERP, the payment for the order is imported either automatically by the system along     with the order or it is manually imported by the user.     If the payments for this order is _Authorized_ or _Captured_ in the eCommerce site, this transaction may not     qualify for level 2 processing. In this case, Acumatica Payments was not used to capture the payment and     thus cannot send the transaction with the level 2 data to the payment gateway. 

 If the payment has been authorized with the Fortis Gateway in the eCommerce site and imported to Acumatica ERP in a sales order, the tax information is synced as part of the order details. When this payment is captured, the system can fetch the Total Tax amount and calculate the subtotal amount from the sales order and incorporate it in the transaction request to reclassify it for level 2 processing. 

### Level 3 Data Transmission During Card Payments 

 Visa and Mastercard charge a higher interchange rate to process payments created with corporate or government issued credit cards. They offer a special program under which it is possible to reduce this interchange rate called Level 3. Under the level 3 program, the merchant must submit the transactional data along with the payment data to the card networks. This data is used to identify the purchase in more detail to prevent fraud and charge backs. In return, the card networks lower the interchange rate. 

 By default, support of level 3 data is enabled for all Acumatica merchants. When a transaction is captured, the payment gateway verifies the card used to create the payment. As a result, for every payment created with a commercial credit card, their system will send the default line-level data to the card network on behalf of the 


<!-- PAGE_BREAK -->
 Configuring and Using Acumatica Payments | 156 

 merchant. The merchant must then send an update with the correct data from the documents where these payments are applied. 

 Payments created with personal credit card are not eligible for level 3 interchange rate and thus the payment gateway does not send any default data for them. When a payment is captured, Acumatica ERP gets no level 3 identifier in response and identifies that level 3 is not supported for this payment. So the merchant is not required to send any transaction data. 

#### Setup of Level 3 Data Transmission 

 To set up transmission of level 3 data, you perform the following general instructions: 

1. On the _Enable/Disable Features_ (CS100000) form, you make sure that the _Integrated Card Processing_ and     _Acumatica Payments_ features are enabled. 

2. On the _Processing Centers_ (CA205000) form, you set up a processing center that uses the Acumatica     Payments plug-in and has a payment method with the _Credit Card_ means of payment. 

3. On the _Payment Methods_ (CA204000) form, you make sure that the payment method has the following     settings on the **Settings for Use in AR** tab: 

- **Integrated Processing** : Selected 

- **Require Card/Account Number** : Selected 

4. On the _Cash Accounts_ (CA202000) form, the cash account used by the payment method has the **Use for**     **Corporate Cards** check box selected in the Summary area. 

#### Additional Information to be Sent as Level 3 Data 

 To be able to successfully send level 3 data to the payment gateway, you must specify the following information that will be used when creating documents on data entry forms: 

- Required: **Commodity Code** for items in the **International Shipping** section on the **Packaging** tab of the     _Stock Items_ (IN202500) or _Non-Stock Items_ (IN202000) form. 

- Optional: **Tax Registration ID** in the **Tax Settings** section on the **Shipping** tab of the _Customer Locations_     (AR303020) form or **Tax Registration ID** in the **Tax Settings** section on the **Shipping** tab of the _Customers_     (AR303000) form. 

- Optional: **Postal Code** in the **Location Address** section of the **General** tab of the _Customer Locations_ form or     **Postal Code** in the **Account Address** section on the **General** tab of the _Customers_ form. 

- Optional: **Tax Registration ID** in the **Tax Registration Info** section on the **Branch Details** tab of the     _Branches_ (CS102000) form. This information represents the merchant's tax registration ID. 

- Optional: **Postal Code** in the **Main Address** section on the **Branch Details** tab of the _Branches_ form. 

 The optional information, although not required, can increase the chances for the transaction to be approved for level 3 rates. We recommend that you enter this information before sending level 3 data of documents on the Send Level 3 Data (CA508000) form. 

#### Mapping of Units of Measure 

 If the Canadian Localization feature is enabled on the Enable/Disable Features (CS100000) form in your tenant, you can specify a level 3 unit of measure for every unit of measure used in the system. To do this, you select a required unit of measure and fill in the Level 3 Unit ID box. 

 Although Level 3 Unit ID is not a required box on this form, it is one of level 3 parameters required by the payment gateway. You should specify this ID for the needed units of measure to get level 3 interchange rates for payments. 


<!-- PAGE_BREAK -->
 Configuring and Using Acumatica Payments | 157 

 If the Canadian Localization feature is disabled on the Enable/Disable Features form, the level 3 units of measure will be mapped to the default units of measure when level 3 data is sent. The following table shows this mapping. 

 Unit of Measure Description Level 3 Unit ID 

 BOTTLE Bottle EA 

 CAN Can EA 

 HOUR Hour HUR 

 KG kg KGM 

 LITER Liter LTR 

 METER Meter MTR 

 MINUTE Minute MIN 

 PACK Pack NMP 

 PALLET Pallet EA 

 PIECE Piece PCB 

 If a specific unit of measure is not a part of the default list or if you create a unit of measure for which the Level 3 Unit ID mapping is not available, the system will send EA , as it is the value suggested by the payment gateway for unknown units of measure. Because level 3 units of measure require a minimum of 3 characters, a space will be added to fill in the third character. 

#### Documents for Which Level 3 Data Can be Sent 

 On the Send Level 3 Data (CA508000) form, you can send level 3 data for the following types of documents: 

- _Payment_ : A document of the _Payment_ type created on the _Payments and Applications_ (AR302000) form and     applied to a sales invoice or an AR invoice. The sales order must have an inventory item in its lines for which     the **Commodity Code** is specified on the _Stock Items_ (IN202500) form. 

- _Prepayment_ : A document of the _Prepayment_ type created on the _Payments and Applications_ (AR302000) form     and applied to a sales invoice or an AR invoice. The sales order must have an inventory item in its lines for     which the **Commodity Code** is specified on the _Stock Items_ (IN202500) form. 

- _Cash Sale_ : A document of the _Cash Sale_ type created on the _Cash Sales_ (AR304000) form and paid with a     credit card. The cash sale must have a non-stock item in its lines for which the **Commodity Code** is filled in     on the _Non-Stock Items_ (IN202000) form. 

#### Processing of Documents Paid by Line 

 If a payment is applied to an AR invoice that has the Pay by Line check box selected, and is applied to a specific line or lines but not to the full invoice amount, when the payment is processed, the system will send the level 3 data from these lines only and will exclude the lines to which the payment is not applied. 

 If on the Payments and Applications (AR302000) form, a payment is applied to an invoice that has the Pay by Line check box cleared, the system will send level 3 data from all the lines of this invoice. 


<!-- PAGE_BREAK -->
 Configuring and Using Acumatica Payments | 158 

#### Limitations 

 The following documents are excluded from level 3 processing: 

- Document lines with negative amounts (invoices and sales orders created for returns and refunds) 

- Sales orders with the following behavior: _Cash Return (CR)_ , _Return for Credit (RC)_ , _Return for Replacement_     _(RR)_ , _Transfer (TR)_ , and _eCommerce RMA Order (ER)_ 

- Sales invoices with the following types: _Cash Return (RCS)_ , _Credit Memo (CRM)_ , and _Credit WO (SMB)_ 

- Sales orders that have lines with a negative extended price and the following behavior: _RMA Order (RMA)_ and     _Mixed Order (MO)_ 

- Documents with no **Inventory ID** specified in their lines 

### To Send Level 3 Data 

 You use the Send Level 3 Data (CA508000) form to send level 3 transaction data of captured payments to the payment gateway. If this data is accepted, the documents are eligible for level 3 interchange rates. You can also use this form to view a list of documents with the following processing statuses: Pending , Sent , Failed , and Resend Failed. 

 To open any form, you can navigate to it or search for it (by its name or by its form ID without periods). For more information about search capabilities, see Search. 

#### Before You Proceed 

 Make sure that documents with the Payment , Prepayment , or Cash Sale types paid by corporate credit cards exist in the system. 

#### To Send Level 3 Data of Documents 

1. Open the _Send Level 3 Data_ (CA508000) form. 

2. In the Selection area, specify the following settings: 

- **Processing Center** : The Acumatica Payments processing center configured for the processing of     corporate credit cards or business credit cards 

- **Processing Status** : _Pending_     The system displays a list of documents for which payments have been captured, but no level 3 data has     been sent yet 

3. In the table, for the documents that you want to process, select the Included check box. Click **Process** on     the form toolbar to process the selected documents or click **Process All** to process all documents in the     table. 

4. Wait for the processing to complete and review the value in the **Processing Status** column for the     documents.     The processing status can be one of the following: 

- _Sent_ : The level 3 data has been successfully sent and accepted by the payment gateway. 

- _Failed_ : The level 3 data has been sent but this action ended with an error. You can attempt to resend the     data. 

- _Resend Failed_ : The level 3 data has been resent but this action ended with an error. 


<!-- PAGE_BREAK -->
 Configuring and Using Acumatica Payments | 159 

 Level 3 data has to be sent before the payment is settled. Once the payment is settled, the card networks will not accept any updates to the transaction data. 

The payment gateway does not send any indication of whether the transaction was qualified for level 3 or not because the card networks themselves do not provide this information to the payment gateway. You will know this as you receive a monthly statement that will mention how many transactions were accepted for the level 3 interchange rate. 


<!-- PAGE_BREAK -->
 Synchronizing Acumatica ERP with Microso Exchange Server | 160 

## Synchronizing Acumatica ERP with Microso Exchange 

## Server 

 In Acumatica ERP, you can synchronize contacts, emails, tasks, and events between your users' Exchange Server and Acumatica ERP accounts. 

 In this chapter, you will find information on configuring and managing synchronization between Acumatica ERP and Microso Exchange Server. 

### Integration with Exchange Server 

 Microso Exchange Server is one of the most popular email-based collaborative communication servers for businesses. By integrating Acumatica ERP with Exchange Server, you can seamlessly and transparently synchronize contacts, tasks, appointments, and emails across platforms. 

 You control the synchronization process by setting up synchronization policies and assigning those policies to your users. Automatic synchronization ensures that updates are delivered on time. 

 In this topic, you will find information about synchronization between Acumatica ERP and Microso Exchange Server. 

#### Requirements 

 Acumatica ERP can be integrated with Microso Exchange Server 2013 or later. 

 The license for your Acumatica ERP instance must include the following features, which must be enabled on the Enable/Disable Features (CS100000) form: 

- _Exchange Integration_ : Required for the configuration and management of integration with Exchange Server 

- _Scheduled Processing_ : Required for the setup of synchronization schedules 

#### Support of Authentication with OAuth 2.0 

 If you use MS Exchange Server in Azure cloud or have a subscription to MS Office 365, you can configure the system to use the OAuth 2.0 authentication method for integration. The system uses the Microso Entra ID service for authentication. 

 You use the Exchange Server Configuration (SM204015) form to configure this synchronization; on the form, you select the OAuth2 option in the Authentication Method box. Then you configure a connector of the Exchange Online EWS type on the External Applications (SM301000) form and specify the connector in the External Application box on the Exchange Server Configuration form. While you configure the connector, you need to register the connector in the Microsoft Azure Portal to obtain the needed settings for the connector. For details on registering the connection in the Microsoft Azure Portal , see To Create a System Email Account for Office 365 with OAuth 2.0. 

#### Customer Management 

 We recommend that you set up the customer management functionality in your Acumatica ERP instance. Even though your employees can work with emails, tasks, events, and contacts by using other Acumatica ERP capabilities, the customer management functionality provides a single entry point for your employees to work with contacts. On the Contacts (CR302000) form, they can view and manage all emails, tasks, and appointments grouped by contacts. 


<!-- PAGE_BREAK -->
 Synchronizing Acumatica ERP with Microso Exchange Server | 161 

#### Configuration Tasks 

 To configure the integration between the Acumatica ERP instance and the Exchange Server instance, you will perform the following basic tasks: 

1. Configuring synchronization policies that define synchronization settings, such as the directions for     synchronization and the types of records that would be synchronized across platforms. For more     information, see _Synchronization Policies_. 

2. Setting up an account for your Exchange Server in the Acumatica ERP instance. You specify the connection     settings and the Exchange Server account to be used for synchronization. For details, see _Configuration of_     _Synchronization with Exchange Server_. 

3. Setting up synchronization for your Acumatica ERP users. For every user, you specify the Exchange server     to connect to, the synchronization policy, and the schedule for automatic synchronization. For more     information, see _Synchronization of User Records in Acumatica ERP with Exchange Mailboxes_. 

 Related Links 

- _Synchronization Policies_ 

- _Configuration of Synchronization with Exchange Server_ 

- _Synchronization of User Records in Acumatica ERP with Exchange Mailboxes_ 

- _Record Synchronization in Acumatica ERP_ 

### Synchronization Policies 

 Synchronization policies define the settings for synchronization between your Exchange Server and Acumatica ERP instances, such as the record types to be synchronized, the synchronization direction, and the way the synchronized records will be marked. 

 You can create different synchronization policies to meet the needs of the employees of your company. Rather than configuring synchronization individually for each employee, you define the synchronization policies and assign them to employees. Changing a synchronization policy changes the synchronization settings for all employees with this policy assigned. 

#### Record Types 

 For a synchronization policy, you can select the types of records to be synchronized. The following table shows how record types are mapped between Acumatica ERP and Exchange Server. 

 Table: Supported Record Types 

**Record Types in Acumatica ERP** (^) **Record Types in Exchange Server** Contact Contact Email Email Event Appointment/Meeting Task Task For more information, see _Record Synchronization in Acumatica ERP_. 


<!-- PAGE_BREAK -->
 Synchronizing Acumatica ERP with Microso Exchange Server | 162 

#### Category 

 Any synchronization policy includes a category to be used to mark records exported from Acumatica ERP. A category includes a color and a word (or a phrase) that you have entered for the policy. 

#### Synchronization Direction 

 A policy defines the direction for synchronization. You can select either unidirectional or bidirectional synchronization for tasks, contacts, and events. Email synchronization is bidirectional only. 

#### Conflict Resolution 

 If a policy includes bidirectional synchronization of any type of records, you need to define how the system is to resolve possible conflicts that may arise if records of the corresponding type have been updated since the previous synchronization. You can give priority to records from a particular system, or you can choose to keep copies of records from both systems. 

#### Contact Synchronization 

 For a synchronization policy that includes contact synchronization, you have to decide the following: 

- Which contacts will be synchronized: all the available contacts, or specific contact groups (such as the     contacts associated with the user or the user's workgroup) 

- Whether a specific folder will be used for synchronized contacts 

#### Email Synchronization 

 For a synchronization policy that includes email synchronization, you have to decide the following: 

- Whether a specific folder will be used to store synchronized emails 

- Whether a new contact is to be created each time an employee receives an email from an unknown address 

- Whether you want to synchronize attachments 

 Related Links 

- _Record Synchronization in Acumatica ERP_ 

- _To Add a Synchronization Policy_ 

### Configuration of Synchronization with Exchange Server 

 Acumatica ERP uses delegate access to connect to an Exchange server. For each delegate mailbox on your Exchange server, you create an account in your Acumatica ERP instance on the Exchange Server Configuration (SM204015) form and specify the connection and synchronization settings. 

 The delegate must have full access to the managed mailboxes. For the server account, you also specify the synchronization and logging settings. For details on configuring delegate access in Exchange, refer to your Exchange Server documentation. For details on configuring delegate access in applications that synchronize with Microso Exchange, see the application documentation. 

 You can specify the quantity of records sent or received during each performed synchronization, limit the synchronized attachment size, and specify the synchronization policy to be used by default. Also, to speed up the connection, you can specify the URL of the mail server. 


<!-- PAGE_BREAK -->
 Synchronizing Acumatica ERP with Microso Exchange Server | 163 

 Additionally, you select which events will be recorded in the synchronization log. You can select one of the following logging levels: 

- _None_ : Nothing is recorded. 

- _Default_ : Errors and warnings are recorded. 

- _Informational_ : Errors, warnings, and basic events are recorded. 

- _Verbose_ : All events are recorded. You can access the event log from the _Exchange Synchronization Process_ (SM204030) form. To view the event log, do the following: 

- In the table, select an employee, and then click **Synchronization Status** on the table toolbar. For the detailed procedure that describes setting up an account for an Exchange server, see _To Set Up a Connection with an Exchange Server_. 

 Two-factor authentication requires an application-specific password setup for the mailboxes to be used for Exchange integration. The following article describes how to setup application-specific password for Office 365: Create an app password for Office 365. 

 Acumatica ERP does not support two-factor authentication for the primary account that is used for synchronization with Microso Exchange. We recommend that you use the primary account only to integrate Acumatica ERP with Microso Exchange. 

 Related Links 

- _To Set Up a Connection with an Exchange Server_ 

### Synchronization of User Records in Acumatica ERP with Exchange Mailboxes 

 Managing synchronization with Exchange Server includes the following basic tasks, described in this topic: 

- Selecting the employee accounts for which synchronization is to be performed 

- Scheduling synchronization 

#### Employee Account Configuration 

 You configure synchronization for an employee account by associating the employee account with the Exchange server account and assigning a synchronization policy for the employee account. For details, see To Configure Synchronization for the Employee Accounts. For more information about synchronization policies, see Synchronization Policies. 

 Aer you configure the employee account, you can perform synchronization manually to check the settings, as described in To Set Up a Connection with an Exchange Server. 

#### System Email Accounts for Synchronization with Exchange Server 

 A system email account of the Exchange type is automatically added when you enable synchronization of the employee account with an Exchange server. You can view and edit the automatically generated accounts on the Email Accounts (SM204002) form. If you disable Exchange synchronization for an employee account, the corresponding system email account is automatically deleted. 


<!-- PAGE_BREAK -->
 Synchronizing Acumatica ERP with Microso Exchange Server | 164 

#### Synchronization Schedule 

 Aer you have configured synchronization with an Exchange server, you can schedule synchronization to be performed automatically. For details, see To Set Up Automatic Synchronization with Exchange Server. 

 Related Links 

- _To Configure Synchronization for the Employee Accounts_ 

- _To Set Up Synchronization with Exchange Server_ 

- _To Set Up Automatic Synchronization with Exchange Server_ 

### Record Synchronization in Acumatica ERP 

 Aer you have set up integration with the Exchange server, synchronization of all relevant records is performed automatically in accordance with the configured schedule and applied policies. 

 In this topic, you will find information about the basic principles that users should follow to ensure seamless synchronization of records. 

#### Contact Synchronization 

 In Acumatica ERP, all contact records available for synchronization are listed on the Contacts (CR302000) form. These contacts are synchronized with the contacts stored in the mailbox on the Exchange server, as specified in the synchronization policy settings. The following synchronization scenarios are possible: 

- A new contact has been created in the system—as a result, an identical contact is added to the user mailbox     on the Exchange server. 

- An existing contact has been modified in the system—as a result, the corresponding contact from the user     mailbox on the Exchange server is updated accordingly. 

- A contact has been deleted from the system—as a result, the corresponding contact is deleted from the     specific public folder on the Exchange Server. 

- A contact has been added to the specific public folder on the Exchange Server—as a result, an identical     contact is added to the system. 

- An existing contact has been modified in the specific public folder on the Exchange Server—as a result, the     corresponding contact is updated accordingly in the system. 

- A contact has been deleted from the specific public folder on the Exchange Server—as a result, the     corresponding contact is deleted from the system. 

 If a contact record on Exchange Server has no country specified, and if, on the Exchange Synchronization Policies (SM204010) form, the Conflict Resolution Priority setting is set to System for the synchronization policy applied to contact records, then the synchronized records will be assigned the branch country specified in the configuration settings of the user's branch on the Branches (CS102000) form (or the default country, if one is specified for the branch). 

#### Email Synchronization 

 In Acumatica ERP, each contact can have associated email activities listed on the Activities tab of the Contacts (CR302000) form. These emails can be synchronized with emails from a specific email folder on the Exchange server; the name of this folder should be specified in the synchronization policy settings. Email attachments can also be synchronized. If an email contains new contacts specified as recipients, the corresponding contact records are created automatically. 


<!-- PAGE_BREAK -->
 Synchronizing Acumatica ERP with Microso Exchange Server | 165 

 Email synchronization has the following limitation: Emails with the Dra status are not included in synchronization between Microso Exchange Server and Acumatica ERP. 

#### Task Synchronization 

 Tasks listed on the Tasks (EP4040PL) form are synchronized with Exchange tasks included in a specific category that should be specified in the synchronization policy settings. New tasks assigned to a particular contact can be synchronized in both directions. Any shared task information, if updated, is also synchronized. If a task has been deleted in the system, the corresponding task is deleted on Exchange Server; likewise, if a task is deleted on Exchange Server, the corresponding task is deleted in Acumatica ERP. 

 Task statuses, which indicate the task processing stages, are mapped as shown in the table below. No synchronization is performed for any task whose status has no corresponding status. 

 System Task Status Exchange Task Status 

 Open Not Started 

 Dra N/A 

 In Process In Progress 

 Canceled Completed 

 Completed Completed 

 Approved In Progress 

 Pending Approval Waiting on Others 

 Rejected N/A 

 N/A Deferred 

#### Event Synchronization 

 Events listed on the Events (EP4041PL) form are synchronized with Exchange appointments. Appointments that correspond to canceled events are deleted from the Exchange Server. Completion of an event does not require synchronization with the corresponding appointment. Also, the following synchronization scenarios are possible: 

- A new event has been created in the system—as a result, an identical appointment is added to the initiator's     calendar on the Exchange server. 

- The list of attendees has been updated for an existing event—as a result, the list of attendees is updated     accordingly for the corresponding appointment; invitations are automatically sent to attendees. 

- An event has been deleted—as a result, the corresponding appointment is deleted from the initiator's     calendar on the Exchange server. 

- All updated event information is synchronized with appointment information, and the reverse is true as     well. 


<!-- PAGE_BREAK -->
 Synchronizing Acumatica ERP with Microso Exchange Server | 166 

 Event synchronization has the following limitation: If an employee (event owner) whose events are not synchronized with Exchange appointments creates an event in the system and invites an employee (attendee) whose events are synchronized with Exchange appointments, no corresponding appointment will appear on the attendee's calendar on the Exchange server. This happens because an appointment has to be created before an attendee is assigned to it, and if event synchronization is disabled for the event owner, no appointment is created at all. The best way to bypass this limitation is to enable event synchronization for all employees in your company. 

### To Add a Synchronization Policy 

 You use synchronization policies to specify the settings for synchronization between user accounts in Acumatica ERP and their mailboxes. You add, delete, and manage synchronization policies by using the Exchange Synchronization Policies (SM204010) form. 

 For more information about synchronization policies, see Synchronization Policies. 

#### To Add a Synchronization Policy 

1. Sign in to your Acumatica ERP instance. 

2. Open the _Exchange Synchronization Policies_ (SM204010) form. 

3. In the **Policy Name** box, type the name for the new policy. 

4. In the **Description** box, type the policy description. 

5. On the **Synchronization Settings** tab, in the **General** section, do the following:     a. In the **Category Name** box, type the name of the category that will be used for marking the synchronized        records in a user's mailbox.     b. In the **Category Color** box, select the color.     c. In the **Conflict Resolution Priority** box, select how conflicts will be resolved in the case of a bidirectional        synchronization. 

6. Specify the settings for contact synchronization. In the **Contacts** section, do the following:     a. To synchronize contacts, select the **Synchronize Contacts** check box.     b. If you want to store the synchronized contacts in a specific folder in user mailbox, select the **Use**        **Separate Folder for Contacts** check box and type the name of a folder in the **Folder Name** box.     c. If you want to avoid duplicating contact accounts in Acumatica ERP, select the **Merge Contacts by Email**        check box.     d. If you don't want to mark the exported contacts in each user's mailbox, select the **Synchronize New**        **Items without Category** check box.     e. In the **Direction** box, select the direction for synchronization.     f. In the **Filter** box, select the option that indicates which contacts are to be synchronized: all contacts, the        contacts associated with a user or the user's workgroup.     g. In the **Contact Class** box, select a contact class to be assigned to the contacts imported to Acumatica        ERP. 

7. Specify the settings for email synchronization. In the **Email** section, do the following:     a. To synchronize emails, select the **Synchronize Emails** check box.     b. In the **Folder Name** box, type the name of a folder in each user's mailbox to be used to store emails that        are exported from Acumatica ERP. 


<!-- PAGE_BREAK -->
 Synchronizing Acumatica ERP with Microso Exchange Server | 167 

 c. If you want to synchronize attachments, select the Synchronize Attachments check box. 

8. Specify the settings for task synchronization. In the **Tasks** section, do the following:     a. To synchronize tasks, select the **Synchronize Tasks** check box.     b. If you want to store the synchronized tasks in a specific folder in each user's mailbox, select the **Use**        **Separate Folder for Tasks** check box and type the name of a folder in the **Folder Name** box.     c. If you don't want to mark the exported tasks in each user's mailbox, select the **Synchronize New Items**        **without Category** check box.     d. In the **Direction** box, select the direction for synchronization. 

9. Specify the settings for event synchronization. In the **Events** section, do the following:     a. To synchronize events, select the **Synchronize Events** check box.     b. If you want to store the synchronized events in a specific folder in each user's mailbox, select the **Use**        **Separate Folder for Events** check box and type the name of a folder in the **Folder Name** box.     c. If you don't want to mark the exported contacts in each user's mailbox, select the **Synchronize New**        **Items without Category** check box.     d. In the **Direction** box, select the direction for synchronization. 10.On the form toolbar, click **Save**. 

 You can use the synchronization policy you have added to specify synchronization settings for the employees. 

### To Set Up a Connection with an Exchange Server 

 To set up a connection with an Exchange server, you add an account for the Exchange Server instance to your Acumatica ERP instance by using the Exchange Server Configuration (SM204015) form. 

#### Prerequisites 

 You have to set up a delegate mailbox to be used for synchronization between the Exchange server and the Acumatica ERP instance. The delegate must have full access to the mailboxes of the users whose accounts should be synchronized. 

#### To Add an Account for an Exchange Server 

1. Open the _Exchange Server Configuration_ (SM204015) form. 

2. In the **Account Name** box of the Summary area, type the name of the Exchange server account. 

3. In the **Login** box, enter the email account to be used for synchronization. 

4. In the **Authentication Method** box, select the _Basic Authentication_ option. 

5. In the **Password** box, enter the password of the email account to be used for synchronization. 

6. In the **Default Policy Name** box, select the synchronization policy to be used if a synchronization policy is     not selected for an employee account. 

7. Optional: In the **Mail Server (optional)** box, specify the URL of your Exchange server instance. 

8. In the **Logging Level** box, select _Default_. 

9. On the form toolbar, click **Save** to save the account. 10.On the form toolbar, click **Test Account** to test the account settings.     The green check box on the form toolbar indicates that the connection is set up. 11.Select the **Is Active** check box to allow synchronization with the Exchange server. 


<!-- PAGE_BREAK -->
 Synchronizing Acumatica ERP with Microso Exchange Server | 168 

 12.On the form toolbar, click Save to save the account. 

### To Configure Synchronization for the Employee Accounts 

 You associate the employee account with the Exchange Server account to be used for synchronization by using the Exchange Server Configuration (SM204015) form. The synchronization settings are defined by the synchronization policy you assign to the employee account. 

 Each newly created Exchange Server account must be initiated on the Exchange side before it can be synchronized with an employee account in Acumatica ERP. Also, the Send on behalf permission must be assigned to each of the mail accounts on the Exchange side. 

 For more information on Exchange Server accounts within Acumatica ERP, see Configuration of Synchronization with Exchange Server. For more information on synchronization policies, see Synchronization Policies. 

#### To Configure Synchronization for Employee Accounts 

1. Open the _Exchange Server Configuration_ (SM204015) form. 

2. In the **Account** box, select the Exchange Server account to be used for synchronization. 

3. Make sure that the account is active (the **Is Active** check box should be selected). 

4. For every employee for whom you want to configure synchronization, do the following:     a. In the table, select the **Synch Account** check box in the row with the employee.     b. In the **Policy Name** column, select a synchronization policy. 

5. On the form toolbar, click **Save**. 

### To Set Up Synchronization with Exchange Server 

 When setting up synchronization with Exchange Server, first you specify the synchronization settings, as described in To Configure Synchronization for the Employee Accounts. Then you synchronize accounts manually on the Exchange Synchronization Process (SM204030) form to check the configuration. 

#### To Synchronize Employees Accounts with Their Exchange Mailboxes Manually 

1. Open the _Exchange Synchronization Process_ (SM204030) form. 

2. In the table, select the **Selected** check box in the row of the employee whose account you want to     synchronize. 

3. On the form toolbar, click **Process**. 

 If the system performs synchronization as it should, you can schedule automatic synchronization for the employee account. 

### To Set Up Automatic Synchronization with Exchange Server 

 To set up automatic synchronization with Exchange Server, you use the Exchange Synchronization Process (SM204030) form to select the employee accounts for synchronization, and then you use the Automation Schedules 


<!-- PAGE_BREAK -->
 Synchronizing Acumatica ERP with Microso Exchange Server | 169 

 (SM205020) form to specify the schedule you want to use for automatic synchronization. For more information about automation schedules, see Automated Processing: General Information. 

#### To Schedule Synchronization with the Exchange Server for the Employee Accounts 

1. Open the _Exchange Synchronization Process_ (SM204030) form. 

2. For each employee whose account you want to synchronize, select the **Selected** check box. 

3. On the form toolbar, click **Schedules** , and then click **Add** to open the _Automation Schedules_ form as a pop-     up window. 

4. Create a new schedule for synchronization or select an existing one. 

 The selected employee accounts will be automatically synchronized according to the schedule you have set up. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP Forms on Your Website | 170 

## Integrating Acumatica ERP Forms on Your Website 

 Acumatica ERP gives you the ability to embed particular forms on a website that is used by employees of your organization in their daily work. For example, you can embed the Tasks (EP4040PL) form within your Office 365 page to view and access your Acumatica ERP task list directly in Office 365. 

 To display an Acumatica ERP form on your website, you use the URL of the Acumatica ERP form. You can include additional parameters in the URL for more convenient display and use of the form. These parameters are described in this topic. 

#### Appearance of the Embedded Acumatica ERP Form 

 When you integrate an Acumatica ERP form on your website, the form area, the main menu, and the navigation pane are displayed by default. To simplify the appearance of the form, you can hide the main menu and the navigation pane and display only the form area by using the HidePageTitle URL parameter with the true value. Example 

 To embed the Contacts (CR302000) form of the http://app.site.com/instance/ instance on a website with only the form area displayed, you use the following URL: 

 http://app.site.com/instance/CR/CR302000.aspx?HidePageTitle=true 

#### Silent Login in the URL of Acumatica ERP Forms 

 Users access an Acumatica ERP form embedded on your website by using an authentication method that you set up during the system configuration (for details, see Managing User Access ). If you have enabled single sign-on with an external identity provider, such as Microso Entra ID (formerly known as Microso Azure Active Directory), you can use the SilentLogin URL parameter to automatically redirect your users to the sign-in page of this identity provider. 

 Before you use the SilentLogin URL parameter, confirm on the Users (SM201010) form that your users have registered their external accounts with the Acumatica ERP instance. 

 The SilentLogin parameter can take the following values. 

 Parameter Identity Provider 

 None Acumatica ERP 

 Federation Microsoft Entra ID 

 Google Google 

 MicrosoftAccount Microsoft Account 

 Example 

 To give users who access the Contacts (CR302000) form on the external website the ability to authenticate themselves with Google, you use the following URL: 

 http://app.site.com/instance/CR/CR302000.aspx?silentLogon=Google 

 Related Links 

- _Managing User Access_ 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Active Directory | 171 

## Integrating Acumatica ERP with Active Directory 

 The integration of Acumatica ERP with Microso Active Directory (AD) provides centralized management of users and access. Aer integration, your domain users can use their domain usernames and passwords to sign in to Acumatica ERP. You can set up integration with AD if Acumatica ERP is installed in your organization's intranet. If your Acumatica ERP instance is deployed in the external network, you must use Active Directory Federation Services to provide access to the system for your domain users. For details, see Integration with AD FS. 

 You create, delete, and manage user accounts by using Active Directory. Users' access rights to Acumatica ERP are determined based on the mapping rules between AD groups and Acumatica ERP roles. 

 This functionality is available only if the Active Directory and Other External SSO feature is enabled on the Enable/Disable Features (CS100000) form. 

 This chapter describes the configuration and management of Acumatica ERP integration with Active Directory. 

### Integration with Active Directory 

 You integrate Acumatica ERP with Microso Active Directory (AD) to manage users and access in one place. You create, delete, and manage user accounts by using AD. During integration, you map AD groups with user roles in Acumatica ERP to determine users' access rights. 

 This functionality is available only if the Active Directory and Other External SSO feature is enabled on the Enable/Disable Features form. 

 We do not recommend using the Active Directory authentication simultaneously with the OpenID authentication. 

 Enabling integration with AD does not affect the standard authorization and authentication mechanism of Acumatica ERP. With the AD integration enabled, you still can create regular (non-AD) users in Acumatica ERP. 

#### Configuration Steps 

 To integrate an instance of Acumatica ERP with AD, you perform the following steps: 

1. Enable integration with Active Directory by modifying the web.config file of the application instance, as     described in _To Enable Active Directory Integration_. 

 When you save changes to the web.config file, the website is automatically restarted. Make sure that all users have been warned about the restart so that they can save their work in advance. 

2. Map the user roles configured in Acumatica ERP to the groups configured in the Active Directory domain by     using the _User Roles_ (SM201005) form in Acumatica ERP. For details, see _To Map Active Directory Groups to_     _Roles in Acumatica ERP_. 

 Enabling AD integration does not affect the standard authorization and authentication capabilities of Acumatica ERP. With AD integration enabled, you can still create internal users in Acumatica ERP. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Active Directory | 172 

3. Optional: If you need to override roles assigned to AD users, manually add the AD user accounts to the     system (if necessary) and specify the roles for the accounts. For details, see _To Set Up Role Assignment for_     _Domain Users_. 

#### User Accounts of Domain Users in Acumatica ERP 

 Aer you have enabled integration with the identity management system, user accounts for domain users are created automatically when the users sign in to your Acumatica ERP instance for the first time. 

 The accounts of domain users in Acumatica ERP are based on their accounts in the domain. The password of a domain user in Acumatica ERP is the same as the domain account password. The email address and the first and last name of the user are populated from the domain account as well. However, the login, password, email address, and first and last name are managed through the domain and cannot be changed in Acumatica ERP. 

- You cannot restore the passwords of domain users by using Acumatica ERP tools. You should     restore users' domain credentials by using the tools of Active Directory (AD). 

- Once the user account is created, we do not recommend renaming users on the Active     Directory or Entra ID side. Instead, we suggest that you delete the old account and create a     new one. Contact Acumatica support team to get assistance in this task. 

 To speed up the authentication of users, the information about AD groups is automatically cached by Acumatica ERP if the count of the user groups is greater than or equal to the value of the ADGroupCacheLimit parameter specified in the web.config file. To update the list of the user groups in Acumatica ERP with current information from AD, click Reload AD Groups on the toolbar of the User Roles (SM201005) form. 

 The Reload AD Groups button appears only when you have integrated the Acumatica ERP instance with AD or Microso Entra ID and when the number of user groups in AD or Entra ID is greater than or equal to the value of the ADGroupCacheLimit parameter specified in the web.config file. If the number of users and groups in AD is less than the value of the ADGroupCacheLimit parameter, Acumatica ERP retrieves the lists of users and groups directly from AD. 

#### Domain User Authentication 

 Generally, to sign in to Acumatica ERP, AD users type their domain credentials without specifying the domain name. But some employees may have both a local user account and a domain user account with the same username. In this case, Acumatica ERP will authenticate the users based on the password they specify (assuming that the local and domain passwords differ). 

 If both the usernames and the passwords are the same for a local user account and a domain user account, on the Sign-In page, the user can select the account to sign in with as follows: 

- To sign in with a local account, the user enters the username of the local account (as usual). 

- To sign in with a domain account, the user enters the login in the <Domain_Name>\<User_Name>     format, where <Domain_Name> is the NetBIOS domain name of the integrated domain and     <User_Name> is the user account name in the integrated domain. 

 If there is a local account with a name that includes a domain name and a username from this domain, such as Terra\User1, a domain user with the name User1 from domain Terra will be mapped to this local account and will inherit all permissions of this account. In this case, the passwords of a local user and a domain user may differ but they both will access the same user account. To prevent confusion, we recommend that you disable or delete the local accounts of employees who do not perform any administration or configuration tasks in Acumatica ERP. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Active Directory | 173 

#### Domain User Authorization 

 When a domain user tries to access Acumatica ERP, user authorization occurs as follows: 

1. The application instance sends an authentication request to the AD server to validate the user's credentials. 

2. When validation has completed successfully, the AD server sends Acumatica ERP the list of AD groups to     which the user is assigned. 

3. Acumatica ERP compares the list of AD groups with the internal Acumatica ERP roles, based on the mapping     rules defined on the _User Roles_ (SM201005) form. 

4. The system finds any Acumatica ERP roles that are associated with AD groups to which the domain user     account is assigned. If Acumatica ERP finds at least one role, the user is authenticated to sign in to the     Acumatica ERP instance.     The user access rights within the Acumatica ERP application instance are based on the internal list of roles. 

 For more information about authentication in Acumatica ERP, see Managing User Access. For details about roles and access rights in Acumatica ERP, see Configuring User Roles. 

#### Access Rights of Domain Users 

 Domain users inherit access rights from the AD groups that you have mapped to Acumatica ERP user roles. In addition, you can assign specific user roles to each domain user if the access rights for this user should differ from the AD group rights. 

 New domain users automatically get the rights to sign in to Acumatica ERP when they join a domain. The membership of these users in Acumatica ERP roles is then automatically updated to comply with the membership of the users in the domain groups. 

 The user type functionality, described in User Access: Linked Entities and User Types , cannot be applied to domain users. 

 Related Links 

- _To Enable Active Directory Integration_ 

- _To Map Active Directory Groups to Roles in Acumatica ERP_ 

- _To Set Up Role Assignment for Domain Users_ 

- _User Roles_ 

### To Enable Active Directory Integration 

 To integrate you Acumatica ERP instance with Active Directory (AD) you should first enable integration in Acumatica ERP, as described in this topic. For a description of all steps required for integration with AD, see Integration with Active Directory. 

 This functionality is available only if the Active Directory and Other External SSO feature is enabled on the Enable/Disable Features form. 

#### To Enable Active Directory Integration 

1. Create an AD user account that has _Read_ permissions throughout the entire AD forest. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Active Directory | 174 

 This user account must be included in the Domain Users group or have at least Read permissions to the following properties defined in the AD schema: objectSid, distinguishedName, sAMAccountName, displayName, description, lastLogon, pwdLastSet, primaryGroupID, and memberOf. 

2. Modify the web.config file as follows:     a. Open the web.config file, which is located in the folder that contains the application instance website. 

 When you save changes to the web.config file, the website is automatically restarted. Make sure that all users have been warned about the restart so that they can save their work in advance. 

 b. In the file, find the activeDirectory section within the px.core section and edit it similarly to the example shown below. 

 <activeDirectory enabled="true" path="Domain_Path" dc="Domain_Name" user="User_Name" password="User_Password" /> 

 In the code shown above: 

- _Domain_Path_ is the DNS name or the IP address of the domain controller (DC). 

- _Domain_Name_ is the domain name, such as _terra_ , _terra.com_ , or _sing.terra.com_. This setting affects the     visibility of the data of Acumatica ERP to the domain users.     Preferably, you should use the highest-level domain of the domain name. For example, in the     _sing.terra.com_ domain name, the highest level domain is _sing_ , and you would have to specify     dc="sing". For the _terra.net_ domain, the highest level domain is _terra_ and you would have to     specify dc="terra". 

- _User_Name_ is the name of the user account you created in Step 1. Depending on the AD settings, you     should use one of the following formats: _User_Name_ , _User_Name@Domain_Name_ , or _Domain_Name_     _\User_Name_. 

- _User_Password_ is the AD password of the user account you created in Step 1. c. Save the web.config file. The website restarts automatically. 

 Aer you have enabled integration with Active Directory, you need to map AD groups to Acumatica ERP roles, as described in To Map Active Directory Groups to Roles in Acumatica ERP. 

### To Map Active Directory Groups to Roles in Acumatica ERP 

 Aer you have enabled Active Directory (AD) integration, you need to map AD groups to user roles defined in Acumatica ERP by using the User Roles (SM201005) form. 

#### Before You Begin 

 Before you start configuring your system, make sure that all the domain users have email addresses configured in AD. 

#### To Map Active Directory Groups to Acumatica ERP Roles 

1. Open the _User Roles_ (SM201005) form. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Active Directory | 175 

2. In the **Summary** area, in the **Role Name** box, select the role you want to associate with an Active Directory     group (or with multiple groups). 

3. On the **Active Directory** tab, click **Add Row**. 

 The Active Directory tab appears on this form if the integration of Acumatica ERP with AD has been enabled in the web.config file, as described in To Enable Active Directory Integration. 

4. In the **Group** column of the new row, select the AD group that you want to associate with the role. 

5. On the form toolbar, click **Save**. 

6. Repeat Instructions 2 through 5 for every role that should be mapped to AD groups. 

#### To Remove the Mapping of Active Directory Groups to Roles 

1. Open the _User Roles_ (SM201005) form. 

2. In the **Summary** area, in the **Role Name** box, select the role for which you want to remove association with     an Active Directory group (or with multiple groups). 

3. Click the row that contains the AD group that you want to disassociate from the role, and click **Delete Row**     on the table toolbar. 

4. On the form toolbar, click **Save**. 

5. Repeat Instructions 2 through 4 for every role for which mapping with AD groups should be removed. 

 Aer you have mapped AD groups with user roles in Acumatica ERP you can assign specific roles for a particular domain user, as described in To Set Up Role Assignment for Domain Users. 

### To Set Up Role Assignment for Domain Users 

 When a Microso Active Directory (AD) domain user signs in to Acumatica ERP for the first time, the system adds a user account for this user and assigns roles to the new account based on the mapping between AD groups and Acumatica ERP roles. For the full integration procedure, see Integration with Active Directory. 

 You can override the automatically assigned roles of a particular domain user by selecting the required roles manually for the user on the Users (SM201010) form, for example, if you want the user to access additional Acumatica ERP forms. 

#### To Override a User's Role Assignment Based on AD Groups 

1. Open the _Users_ (SM201010) form. 

2. Optional: If the user has never signed in to Acumatica ERP with their domain credentials, add a local user     account for the domain user as follows:     a. On the form toolbar, click **Add Active Directory User** to open the **Active Directory User** dialog box. 

 The Add Active Directory User button appears only if the Active Directory and Other External SSO feature is enabled on the Enable/Disable Features (CS100000) form and your Acumatica ERP instance is integrated with Active Directory for your company. 

 b. In the Active Directory User box, select the AD user account. c. Click OK to close the dialog box and populate the form with the user's information. 

3. In the **Login** box, select the user whose default roles you want to change. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Active Directory | 176 

4. In the **Selection** area, select **Override Active Directory Roles with Local Roles**. 

5. On the **Roles** tab, select the roles you want to assign to the user. 

6. On the form toolbar, click **Save**. 

#### To Restore AD Group Role Assignment for Domain Users 

1. Open the _Users_ (SM201010) form. 

2. In the **Login** box, select the domain user for whom you want to restore the default roles. 

3. In the **Selection** area, clear **Override Active Directory Roles with Local Roles**. 

4. On the form toolbar, click **Save**. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with AD FS | 177 

## Integrating Acumatica ERP with AD FS 

 The integration of Acumatica ERP with Microso Active Directory Federation Services (AD FS) provides centralized user and access management (by using Active Directory) and single sign-on (SSO) for your domain users. You can integrate Acumatica ERP with AD FS if you use an Acumatica ERP instance that is deployed on the internet but not in the your organization's intranet. With this integration in place, users of Acumatica ERP can access the instance with their domain credentials. 

 This functionality is available only if the Active Directory and Other External SSO feature is enabled on the Enable/Disable Features form. 

 You can integrate your Acumatica ERP instance with Active Directory Federation Services (AD FS) or Microso Entra ID, but not with both. These two identity management systems are mutually exclusive because they use the same functionality to connect to Acumatica ERP. 

 This chapter provides detailed information on the integration of Acumatica ERP with AD FS. 

### Integration with AD FS 

 You integrate Acumatica ERP with Microso Active Directory Federation Services (AD FS) when you want to manage users and access rights using Active Directory (AD) and your Acumatica ERP instance is deployed on the Internet but not in your organization's intranet. 

 Integration of Acumatica ERP with AD FS also provides single sign-on for domain users between your Acumatica ERP instance and other services that use AD FS. 

 This functionality is available only if the Active Directory and Other External SSO feature is enabled on the Enable/Disable Features form. 

 We do not recommend using the AD FS authentication simultaneously with the OpenID authentication. 

#### Requirements 

 To seamlessly integrate your AD FS server and your Acumatica ERP instance, make sure that the following requirements are met. 

- The AD FS version 3.0 (included in Windows Server 2012 R2) or later. 

- AD FS is configured to provide access to external web services. 

- The domain users have preconfigured email addresses. 

#### Configuration Steps 

 You can configure integration with AD FS when you implement Acumatica ERP or at any later time. To integrate an instance of Acumatica ERP with AD FS, you perform the following steps: 

1. Configure the AD FS server. Do the following:     a. Configure AD FS Relying Party Trust to register your Acumatica ERP instance with AD FS. For details, see        _To Configure the AD FS Relying Party Trust_.     b. Configure claims for Acumatica ERP, as described in _To Configure AD FS Claims_. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with AD FS | 178 

2. Enable integration with AD FS by modifying the web.config file of the application instance, as described     in _To Enable AD FS Integration with Acumatica ERP_. 

 When you save changes to the web.config file, the website is automatically restarted. Make sure that all users have been warned about the restart so that they can save their work in advance. 

3. Map the AD FS claims to Acumatica ERP roles. This process is described in _To Map AD FS Claims to Roles in_     _Acumatica ERP_. 

4. Optional: If required, override the roles assigned to any user automatically by selecting the required roles     manually. For details, see _To Set Up Role Assignment for Domain Users_. 

5. Optional: If you want to use the AD FS service as the default identity provider, enable silent logon with AD     FS, as described in _To Enable Silent Logon_. 

#### User Accounts of Domain Users in Acumatica ERP 

 Aer you have enabled integration with the identity management system, user accounts for domain users are created automatically when the users sign in to your Acumatica ERP instance for the first time. 

 The accounts of domain users in Acumatica ERP are based on their accounts in the domain. The password of a domain user in Acumatica ERP is the same as the domain account password. The email address and the first and last name of the user are populated from the domain account as well. However, the login, password, email address, and first and last name are managed through the domain and cannot be changed in Acumatica ERP. 

- You cannot restore the passwords of domain users by using Acumatica ERP tools. You should     restore users' domain credentials by using the tools of Active Directory (AD). 

- Once the user account is created, we do not recommend renaming users on the Active     Directory or Entra ID side. Instead, we suggest that you delete the old account and create a     new one. Contact Acumatica support team to get assistance in this task. 

 To speed up the authentication of users, the information about AD groups is automatically cached by Acumatica ERP if the count of the user groups is greater than or equal to the value of the ADGroupCacheLimit parameter specified in the web.config file. To update the list of the user groups in Acumatica ERP with current information from AD, click Reload AD Groups on the toolbar of the User Roles (SM201005) form. 

 The Reload AD Groups button appears only when you have integrated the Acumatica ERP instance with AD or Microso Entra ID and when the number of user groups in AD or Entra ID is greater than or equal to the value of the ADGroupCacheLimit parameter specified in the web.config file. If the number of users and groups in AD is less than the value of the ADGroupCacheLimit parameter, Acumatica ERP retrieves the lists of users and groups directly from AD. 

#### Domain User Authentication 

 Aer integration of Acumatica ERP with AD FS users use single sign-on (SSO) with the domain to sign in to Acumatica ERP. By default, the users do the following to authenticate themselves: 

1. On the Sign-In page of your Acumatica ERP instance, the user selects the Entra ID icon ( ) to open the AD     FS sign-in page. 

2. On the sign-in page, the user enters the domain credentials in the following format:     <User_Name>@<Domain_Name>, where _<User_Name>_ is the user account name in the integrated     domain and _<Domain_Name>_ is the UPN suffix, also known as the domain name. 

 To simplify the procedure, you can configure silent logon with the AD FS server. For more information, see To Enable Silent Logon. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with AD FS | 179 

 You may have restricted the list of tenants a user can see to only the tenants to which the user has access. That is, you may have selected the Secure Tenant on the Sign-In Page check box on the Tenant Setup page of the Acumatica ERP Configuration wizard (see Managing Tenants Locally ). In this case, when users with access to multiple companies sign in to Acumatica ERP by using single signon (SSO) with an external identity provider, they will be signed in to the first company—based on the companies’ order on the Tenant List (SM203530) form—with SSO enabled. 

 You need to ensure that all users can sign in to that first company. If they cannot, they will not be able to select a different company to sign in to. 

#### Domain User Authorization 

 When a domain user tries to access Acumatica ERP, user authorization occurs as follows: 

1. The application instance sends an authentication request to the AD server to validate the user's credentials. 

2. When validation has completed successfully, the AD server sends Acumatica ERP the list of AD groups to     which the user is assigned. 

3. Acumatica ERP compares the list of AD groups with the internal Acumatica ERP roles, based on the mapping     rules defined on the _User Roles_ (SM201005) form. 

4. The system finds any Acumatica ERP roles that are associated with AD groups to which the domain user     account is assigned. If Acumatica ERP finds at least one role, the user is authenticated to sign in to the     Acumatica ERP instance.     The user access rights within the Acumatica ERP application instance are based on the internal list of roles. 

 For more information about authentication in Acumatica ERP, see Managing User Access. For details about roles and access rights in Acumatica ERP, see Configuring User Roles. 

#### Access Rights of Domain Users 

 Domain users inherit access rights from the AD groups that you have mapped to Acumatica ERP user roles. In addition, you can assign specific user roles to each domain user if the access rights for this user should differ from the AD group rights. 

 New domain users automatically get the rights to sign in to Acumatica ERP when they join a domain. The membership of these users in Acumatica ERP roles is then automatically updated to comply with the membership of the users in the domain groups. 

 The user type functionality, described in User Access: Linked Entities and User Types , cannot be applied to domain users. 

 Related Links 

- _Configuring User Roles_ 

- _Managing User Access_ 

- _To Configure the AD FS Relying Party Trust_ 

- _To Configure AD FS Claims_ 

- _To Enable AD FS Integration with Acumatica ERP_ 

- _To Map AD FS Claims to Roles in Acumatica ERP_ 

- _To Set Up Role Assignment for Domain Users_ 

- _To Enable Silent Logon_ 

- _User Roles_ 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with AD FS | 180 

### To Configure the AD FS Relying Party Trust 

 To configure communication between your Active Directory Federation Services (AD FS) server and your Acumatica ERP instance, you should add a relying party trust for your Acumatica ERP instance. For a description of all steps required for integrating Acumatica ERP with AD FS, see Integration with AD FS. 

 The procedure below illustrates this process on Microso Windows 2012 R2. 

 Note the following: 

- The procedure below covers the most common usage scenarios. If you’re implementing a     more complicated scenario and you encounter difficulties, contact Acumatica ERP technical     support. 

- The vendor of the third-party soware may change the user interface and settings. The labels     you see in the UI may differ from the ones described in the procedure. 

- The procedure will be updated to describe new common scenarios and UI changes arise. 

#### To Add a New Relying Party Trust 

1. Sign in to the AD FS server and open the AD FS Management tool. 

 To configure AD FS, you must be a member of the Domain Admins group in the domain to which the federation server belongs. 

2. In the le pane, right-click **Relying Party Trusts** , and then select **Add Relying Party Trust** (as shown in the     screenshot below). 

 Figure: AD FS Management tool 

3. On the **Welcome** page of the Relying Party Trust Wizard, which opens, click **Start** , as shown in the following     screenshot. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with AD FS | 181 

 Figure: Welcome page 

4. On the **Select Data Source** page, select **Enter data about the relying party manually** , as shown in the     screenshot below, and then click **Next**. 

 Figure: Select Data Source page 

5. On the **Specify Display Name** page, specify the display name for the relying party, as shown in the following     screenshot. The display name is the name that will be displayed in the AD FS Management Console for the     relying party. Then click **Next**. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with AD FS | 182 

 Figure: Specify Display Name page 

6. On the **Choose Profile** page, select **AD FS Profile** , as shown in the screenshot below, and then click **Next**. 

 Figure: Choose Profile page 

7. On the **Configure Certificate** page, click **Next** to skip the step of specifying a token encryption certificate. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with AD FS | 183 

 Figure: Configure Certificate page 

8. On the **Configure URL** page, select the **Enable support for the WS-Federation Passive protocol** check box,     and specify the full URL of your Acumatica ERP instance—for example, _https://app.site.net/instance_name_ —     as shown in the following screenshot. 

 Figure: Configure URL page 

9. On the **Configure Identifiers** page (shown in the screenshot below), specify the relying party trust identifier,     and then click **Next**. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with AD FS | 184 

 Figure: Configure Identifiers page 

10.On the **Configure Multi-factor Authentication Now?** page, select the option button indicating that you do not want to configure multifactor authentication at this time, and then click **Next**. (See the following screenshot.) 

 Figure: Configure Multi-factor Authentication Now? page 

11.On the **Choose Issuance Authorization Rules** page, select the **Permit all users to access this relying party** option button, as shown in the following screenshot, and then click **Next**. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with AD FS | 185 

 Figure: Choose Issuance Authorization Rules page 

 12.On the Ready to Add Trust page, review the settings, and then click Next. 13.On the Finish page, select the Open the Edit Claim Rules dialog for this relying party trust when the wizard closes check box (as shown in the screenshot below), and then click Close. 

 Figure: Finish page 

 This opens the Edit Claim Rules dialog box, which you will use to configure claim rules for the added relying party trust. For the detailed procedure, see To Configure AD FS Claims. 

### To Configure AD FS Claims 

 Aer you have added a relying party trust for your Acumatica ERP instance to the Microso Active Directory Federation Services (AD FS) server, you need to configure the necessary claims for the relying party trust. For description of all steps required for integrating Acumatica ERP with AD FS, see Integration with AD FS. 

 The procedure below provides a sample configuration of claims for AD groups. You may add other claims that are specific to your organization. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with AD FS | 186 

 Note the following: 

- The procedure below covers the most common usage scenarios. If you’re implementing a     more complicated scenario and you encounter difficulties, contact Acumatica ERP technical     support. 

- The vendor of the third-party soware may change the user interface and settings. The labels     you see in the UI may differ from the ones described in the procedure. 

- The procedure will be updated to describe new common scenarios and UI changes arise. 

#### To Configure AD FS Claims for the Relying Party Trust 

1. Sign in to the AD FS server, open the AD FS Management tool, and select the relying party trust of your     Acumatica ERP instance in **Trust Relationships > Relying Party Trusts**. 

 To configure AD FS, you must be a member of the Domain Admins group in the domain to which the federation server is joined. 

2. In the right pane, click **Edit Claim Rules**. 

3. In the **Edit Claim Rules** dialog box, add the Main Claims rule. Do the following:     a. Click **Add Rule**.     b. In the **Add Transform Claim Rule Wizard** dialog box, in the **Claim rule template** box, select _Send LDAP_        _Attributes as Claims_ , and then click **Next**.     c. In the **Claim rule name** box, type Main Claims, as shown in the screenshot below. 

 Figure: Main Claims rule 

 d. In the Attribute store box, select Active Directory. e. In the Mapping of LDAP attributes to outgoing claim types area, add the attributes specified in the following table. 

 LDAP Attribute Outgoing Claim Type Necessity 

 Surname Surname Optional 

 Given-Name Given Name Optional 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with AD FS | 187 

 LDAP Attribute Outgoing Claim Type Necessity 

 User-Principal-Name UPN Required 

 Token-Groups Qualified by Domain Name Role Required 

 E-Mail-Addresses E-Mail Address Required 

 SAM-Account-Name Name Optional 

 Display-Name Common Name Optional 

 f. Click Finish to add the rule. 

4. In the **Edit Claim Rules** dialog box, add the _SID_ rule. Do the following:     a. Click **Add Rule**.     b. In the **Add Transform Claim Rule Wizard** dialog box, in the **Claim rule template** box, select _Pass_        _Through or Filter an Incoming Claim_ , and then click **Next**.     c. In the **Claim rule name** box, type SID, as shown in the screenshot below. 

 Figure: SID rule 

 d. In the Incoming claim type box, select Primary SID. e. Select the Pass through all claim values option button. f. Click Finish to add the rule. 

 Now that you have configured the AD FS server, you have to enable integration in your Acumatica ERP instance. For details, see To Enable AD FS Integration with Acumatica ERP. 

### To Enable AD FS Integration with Acumatica ERP 

 Aer you have configured the Microso Active Directory Federation Services (AD FS) server, you should enable AD FS integration with your Acumatica ERP instance, as described in this topic. For a description of all steps required for AD FS server configuration, see Integration with AD FS. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with AD FS | 188 

 This functionality is available only if the Active Directory and Other External SSO feature is enabled on the Enable/Disable Features form. 

#### To Enable AD FS Integration with Acumatica ERP 

1. Open the web.config file, which is located in the folder that contains the application instance website. 

 When you save changes to the web.config file, the website is automatically restarted. Make sure that all users have been warned about the restart so that they can save their work in advance. 

2. In the file, find the externalAuth section within the px.core section and set the claimsAuth     attribute to True. 

3. In the audienceUris element within the system.identityModel section, specify the URL of the     Acumatica ERP instance similarly to the example shown below. 

 <audienceUris> <add value="Full_Instance_URL" /> </audienceUris> 

 In the code shown above, Full_Instance_URL is the full URL of your Acumatica ERP instance—for example, http://app.site.net/instance_name/. 

4. In the federationConfiguration element within the system.identityModel.services     section, edit its child wsFederation element similarly to the example shown below. 

 <wsFederation passiveRedirectEnabled="false" issuer="https://adfs.site.com/adfs/ls/idpinitiatedsignon.aspx" realm="Full_Instance_URL" requireHttps="false" PersistentCookiesOnPassiveRedirects="false" /> 

 In the code shown above: 

- _https://adfs.site.com/adfs/ls/idpinitiatedsignon.aspx_ is the URL of the sign-in page of your AD FS server. 

- _Full_Instance_URL_ is the full URL of the Acumatica ERP instance—for example, _[http://app.site.net/](http://app.site.net/)_     _instance_name_. 

 Automatic redirect to the AD FS sign-in page may not work if there is a slash at the end of the URL: http://app.site.net/instance_name/. To avoid this situation, you can specify the URL without this slash. 

5. Save the web.config file. The website restarts automatically. 

 Aer you have enabled AD FS integration for your Acumatica ERP instance, you need to map AD FS claims to Acumatica ERP roles, as described in To Map AD FS Claims to Roles in Acumatica ERP. 

### To Map AD FS Claims to Roles in Acumatica ERP 

 Aer you have enabled Microso Active Directory Federation Services (AD FS) integration, you need to map AD FS claims to user roles defined in Acumatica ERP by using the User Roles (SM201005) form. Claims configured in 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with AD FS | 189 

 To Configure AD FS Claims transfer domain groups to Acumatica ERP to associate them with user roles. Do the following: 

1. Open the _User Roles_ (SM201005) form. 

2. In the Summary area, in the **Role Name** box, select the Acumatica ERP user role you want to associate with     a domain group (or with multiple groups). 

3. On the **Claims** tab, click **Add Row**. 

 The Claims tab appears on this form if the integration of Acumatica ERP with AD FS has been enabled in the web.config file, as described in To Enable AD FS Integration with Acumatica ERP. 

4. In the **Group** column, type the name of the domain group that you want to associate with the role in the     following format: <Domain_Name>\<Group_Name>. 

 If you have configured claims that transfer other parameters to Acumatica ERP, you need to specify the values of these parameters in the Group column. 

5. On the form toolbar, click **Save**. 

6. Repeat Steps 2 through 5 for every role that should be mapped. 

 Aer you have mapped AD FS claims with user roles in Acumatica ERP you can assign specific roles for a particular domain user, as described in To Set Up Role Assignment for Domain Users or enable silent logon with AD FS to use the AD FS service as the default identity provider, as described in To Enable Silent Logon. 

### To Set Up Role Assignment for Domain Users 

 When a domain user signs in to Acumatica ERP for the first time, the system adds a user account for this user and assigns roles to the new account based on the mapping between Active Directory (AD) groups and Acumatica ERP roles. 

 The integration between Acumatica ERP and both AD and Active Directory Federation Services (AD FS) integrations should be configured to retrieve information about AD users and groups. For the full integration procedure, see Integration with Active Directory and Integration with AD FS. 

 If necessary, you can override the automatically assigned roles of a particular domain user by selecting the required roles manually for the user on the Users (SM201010) form. 

#### To Override a User's Role Assignment Based on AD Groups 

1. Open the _Users_ (SM201010) form. 

2. Optional: If the user has never signed in to Acumatica ERP with their domain credentials, add a local user     account for the domain user as follows:     a. On the form toolbar, click **Add Active Directory User** to open the **Active Directory User** dialog box. 

 The Add Active Directory User button appears only if the Active Directory and Other External SSO feature is enabled on the Enable/Disable Features (CS100000) form and your Acumatica ERP instance is integrated with Active Directory for your company. 

 b. In the Active Directory User box, select the AD user account. c. Click OK to close the dialog box and populate the form with the user's information. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with AD FS | 190 

3. In the **Login** box, select the user whose default roles you want to change. 

4. In the **Selection** area, select **Override Active Directory Roles with Local Roles**. 

5. On the **Roles** tab, select the roles you want to assign to the user. 

6. On the form toolbar, click **Save**. 

#### To Restore AD Group Role Assignment for Domain Users 

1. Open the _Users_ (SM201010) form. 

2. In the **Login** box, select the domain user for whom you want to restore the default roles. 

3. In the **Selection** area, clear **Override Active Directory Roles with Local Roles**. 

4. On the form toolbar, click **Save**. 

### To Enable Silent Logon 

 To make your users authenticate themselves with a selected identity provider, you enable the silent logon capability and select the identity provider to be used by default. This topic describes how to enable silent logon for Microso Entra ID or Active Directory Federation Services. 

#### Before You Proceed 

 Before you enable silent logon, you need to configure your Acumatica ERP instance to use the external identity provider with which you want to set up silent logon. 

#### To Enable Silent Logon 

1. Open the web.config file for the site instance. 

 Usually the file is located in %Program Files%\Acumatica ERP\<instance name> , where <instance name> is the name of the application instance website. 

 When you save changes to the web.config file, the website is automatically restarted. Make sure that all users have been warned about the restart so that they can save their work in advance. 

2. Add the Silentlogin parameter to the <externalAuth> section, as shown below. 

 <externalAuth returnUrl="Main.aspx" authUrl="Frames/AuthDock.ashx" silentLogin="Federation" /> 

3. Save your changes to web.config. 

#### To Disable Silent Logon 

1. Open the web.config file for the site instance. 

 Usually the file is located in %Program Files%\Acumatica ERP\<instance name> , where <instance name> is the name of the application instance website. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with AD FS | 191 

 When you save changes to the web.config file, the website is automatically restarted. Make sure that all users have been warned about the restart so that they can save their work in advance. 

2. Specify the none value for the Silentlogin parameter in the <externalAuth> section, as shown     below. 

 <externalAuth returnUrl="Main.aspx" authUrl="Frames/AuthDock.ashx" silentLogin="none" /> 

3. Save your changes to web.config. 

#### To Override Silent Logon Settings with URL Parameters 

 You can specify a different external identity provider or disable silent logon by using the SilentLogin URL parameter with a corresponding value in the URL of your Acumatica ERP instance or a particular form. It overrides the value of the SilentLogin parameter specified in the web.config file. 

 The SilentLogin URL parameter can take the following values. 

 Parameter Identity Provider 

 None Acumatica ERP 

 Federation Microsoft Entra ID or Active Directory Federation Services 

 Example 

 To sign in to an Acumatica ERP instance by using silent logon for Microso Entra ID account, you use the following URL: 

 http://app.site.com/instance/Login.aspx?SilentLogin=Federation. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Entra ID | 192 

## Integrating Acumatica ERP with Microso Entra ID 

 The integration of Acumatica ERP with Microso Entra ID (formerly known as Microso Azure Active Directory) provides single sign-on (SSO) and centralized user and access management. You can use an instance of Microso Entra ID, which is a cloud version of the Active Directory service, if your organization is signed up for a Microso cloud service, such as Azure or Office 365. 

 With such integration in place, users of your Acumatica ERP instance will use their Entra ID domain credentials for authorization in Acumatica ERP. 

 This functionality is available only if the Active Directory and Other External SSO feature is enabled on the Enable/Disable Features (CS100000) form. 

 You can integrate your Acumatica ERP instance with Active Directory Federation Services (AD FS) or Microso Entra ID, but not with both. These two identity management systems are mutually exclusive because they use the same functionality to connect to Acumatica ERP. 

 This chapter describes how to integrate Acumatica ERP with Microso Entra ID. 

### Integration with Microso Entra ID 

 You integrate Acumatica ERP with Microso Entra ID (formerly known as Microso Azure Active Directory) to manage users and access in one place and to provide single sign-on. You create, delete, and manage user accounts by using Microso Entra ID. During integration, you map Entra ID groups with user roles in Acumatica ERP to determine users' access rights. 

 This functionality is available only if the Active Directory and Other External SSO feature is enabled on the Enable/Disable Features form. 

 We do not recommend using the Microso Entra ID authentication simultaneously with the OpenID authentication. 

#### Requirements 

 Before you integrate Acumatica ERP with Microso Entra ID, your company must be signed up for a Microso cloud service, such as Azure or Office 365, with the Entra ID instance configured. For more information, see Microsoft Entra ID on the Microso Azure Portal. 

#### Configuration Steps 

 You can configure integration with Microso Entra ID when you implement Acumatica ERP or at any later time. To integrate an instance of Acumatica ERP with Microso Entra ID, you will perform the following general steps: 

1. You perform the needed configuration actions on the Microso Entra ID instance. That is, you register your     Acumatica ERP instance with the Entra ID instance and you obtain the needed credentials, as described in     _To Configure Microsoft Entra ID for Integration with Your Acumatica ERP Instance_. 

2. You perform the required configuration actions in the web.config file of the application instance, as     described in _To Configure the Web.Config File for Integration with Microsoft Entra ID_. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Entra ID | 193 

 When you save changes to the web.config file, the website is automatically restarted. Make sure that all users have been warned about the restart so that they can save their work in advance. 

3. You map the Microso Entra ID groups to Acumatica ERP roles, as described in _To Map Microsoft Entra ID_     _Groups to Roles in Acumatica ERP_. 

4. Optional: If required, you override the roles assigned to any user automatically by manually selecting the     required roles. For details, see _To Set Up Role Assignment for Domain Users_. 

5. Optional: If you want to use the Microso Entra ID service as the default identity provider, you enable silent     logon with Microso Entra ID, as described in _To Enable Silent Logon_. 

#### User Accounts of Domain Users in Acumatica ERP 

 Aer you have enabled integration with the identity management system, user accounts for domain users are created automatically when the users sign in to your Acumatica ERP instance for the first time. 

 The accounts of domain users in Acumatica ERP are based on their accounts in the domain. The password of a domain user in Acumatica ERP is the same as the domain account password. The email address and the first and last name of the user are populated from the domain account as well. However, the login, password, email address, and first and last name are managed through the domain and cannot be changed in Acumatica ERP. 

- You cannot restore the passwords of domain users by using Acumatica ERP tools. You should     restore users' domain credentials by using the tools of Active Directory (AD). 

- Once the user account is created, we do not recommend renaming users on the Active     Directory or Entra ID side. Instead, we suggest that you delete the old account and create a     new one. Contact Acumatica support team to get assistance in this task. 

 To speed up the authentication of users, the information about AD groups is automatically cached by Acumatica ERP if the count of the user groups is greater than or equal to the value of the ADGroupCacheLimit parameter specified in the web.config file. To update the list of the user groups in Acumatica ERP with current information from AD, click Reload AD Groups on the toolbar of the User Roles (SM201005) form. 

 The Reload AD Groups button appears only when you have integrated the Acumatica ERP instance with AD or Microso Entra ID and when the number of user groups in AD or Entra ID is greater than or equal to the value of the ADGroupCacheLimit parameter specified in the web.config file. If the number of users and groups in AD is less than the value of the ADGroupCacheLimit parameter, Acumatica ERP retrieves the lists of users and groups directly from AD. 

#### Domain User Authentication 

 Aer the integration of Acumatica ERP with Microso Entra ID has been set up, users use single sign-on (SSO) with the domain to sign in to Acumatica ERP. By default, each user performs the following steps: 

1. On the Sign-In page of your Acumatica ERP instance, the user selects the Microso Entra ID icon ( ) to     open the Microso Entra ID sign-in page. 

2. On the sign-in page, the user enters the domain credentials in the following format:     <User_Name>@<Domain_Name>, where _<User_Name>_ is the user account name in the integrated     domain and _<Domain_Name>_ is the UPN suffix, also known as the domain name. 

 To simplify the procedure, you can configure silent logon with Microso Entra ID server. For more information, see To Enable Silent Logon. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Entra ID | 194 

 You may have restricted the list of tenants a user can see to only the tenants to which the user has access. That is, you may have selected the Secure Tenant on the Sign-In Page check box on the Tenant Setup page of the Acumatica ERP Configuration wizard (see Managing Tenants Locally ). In this case, when users with access to multiple companies sign in to Acumatica ERP by using single signon (SSO) with an external identity provider, they will be signed in to the first company—based on the companies’ order on the Tenant List (SM203530) form—with SSO enabled. 

 You need to ensure that all users can sign in to that first company. If they cannot, they will not be able to select a different company to sign in to. 

#### Domain User Authorization 

 When a domain user tries to access Acumatica ERP, user authorization occurs as follows: 

1. The application instance sends an authentication request to the AD server to validate the user's credentials. 

2. When validation has completed successfully, the AD server sends Acumatica ERP the list of AD groups to     which the user is assigned. 

3. Acumatica ERP compares the list of AD groups with the internal Acumatica ERP roles, based on the mapping     rules defined on the _User Roles_ (SM201005) form. 

4. The system finds any Acumatica ERP roles that are associated with AD groups to which the domain user     account is assigned. If Acumatica ERP finds at least one role, the user is authenticated to sign in to the     Acumatica ERP instance.     The user access rights within the Acumatica ERP application instance are based on the internal list of roles. 

 For more information about authentication in Acumatica ERP, see Managing User Access. For details about roles and access rights in Acumatica ERP, see Configuring User Roles. 

#### Access Rights of Domain Users 

 Domain users inherit access rights from the AD groups that you have mapped to Acumatica ERP user roles. In addition, you can assign specific user roles to each domain user if the access rights for this user should differ from the AD group rights. 

 New domain users automatically get the rights to sign in to Acumatica ERP when they join a domain. The membership of these users in Acumatica ERP roles is then automatically updated to comply with the membership of the users in the domain groups. 

 The user type functionality, described in User Access: Linked Entities and User Types , cannot be applied to domain users. 

 Related Links 

- _Managing Tenants Locally_ 

- _Managing Tenants by Using the Web Interface_ 

- _Configuring User Roles_ 

- _Managing User Access_ 

- _To Configure Microsoft Entra ID for Integration with Your Acumatica ERP Instance_ 

- _To Configure the Web.Config File for Integration with Microsoft Entra ID_ 

- _To Map Microsoft Entra ID Groups to Roles in Acumatica ERP_ 

- _To Set Up Role Assignment for Domain Users_ 

- _To Enable Silent Logon_ 

- _User Roles_ 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Entra ID | 195 

### To Configure Microso Entra ID for Integration with Your Acumatica ERP Instance 

 To configure Microso Entra ID for integration with your Acumatica ERP instance, you perform the following actions in Microso Azure, each of which is described in a section of this topic: 

1. Registering your Acumatica ERP instance, and copying the registration parameters for further use in the     web.config file 

2. Obtaining the client secret, and copying it, too, for further use in the web.config file 

3. Configuring API permissions 

4. Specifying your Acumatica ERP instance ID URI 

5. Specifying your Acumatica ERP instance redirect URI 

 Note the following: 

- The procedure below covers the most common usage scenarios. If you’re implementing a     more complicated scenario and you encounter difficulties, contact Acumatica ERP technical     support. 

- The vendor of the third-party soware may change the user interface and settings. The labels     you see in the UI may differ from the ones described in the procedure. 

- The procedure will be updated to describe new common scenarios and UI changes arise. 

#### Before You Begin 

- Ensure that your company has an Microso Entra ID instance configured. For more information, see     _Microsoft Entra ID_ on the Microso Azure Portal. 

- Make sure that your company has a Microso Azure subscription to register your Acumatica ERP instance in     Microso Entra ID. 

 We recommend that you use the latest version of Microso Edge to work with Microso Azure because it was optimized to work in this browser. If you use other browsers, the web interface of Microso Azure may work incorrectly. For a list of the recommended browsers, see Supported devices in the Microso Azure documentation. 

#### Step 1: To Register Your Application 

 To register your application on Microso Azure, perform the following instructions: 

1. Sign in to the _Microsoft Azure portal_. 

2. On the le menu, click the Microso Entra ID icon. If you have one Microso Entra ID instance, it will be     opened automatically. If you have multiple instances, click the Microso Entra ID instance where you want     to register the application. 

3. In the le pane, expand the **Manage** node and click **App registrations**. You will see a list of applications or     an empty list (as shown in the following screenshot), depending on whether any applications have been     registered previously. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Entra ID | 196 

 Figure: Microso Azure: No registered applications in Microso Entra ID 

4. On the pane toolbar, click **New registration**. 

5. In the **Register an application** pane (which is shown in the following screenshot), do the following: 

 a. In the Name box, type a name for your Acumatica ERP instance. This name will be displayed in the application list. b. In the Supported account types section, select the Accounts in this organizational directory only (<Your_Entra_ID_Instance_Name> only Single tenant) option button. c. In the Redirect URI section, select Web in the first box. d. Click Register. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Entra ID | 197 

**_Figure: Microso Azure: Registration of an application_** 

Now your Acumatica ERP instance is registered with Microso Entra ID, and an **Application (Client) ID** value is generated (see the following screenshot). 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Entra ID | 198 

 Figure: Microso Azure: Application registered with Microso Entra ID 

6. Copy the value in the **Application (Client) ID** column. 

7. Switch to your Microso Entra ID instance by clicking its name in the navigation bar in upper le corner of     the screen. 

8. Click **Overview** in the le menu, and copy the following parameter values for further use in your     web.config file (see the following screenshot): 

- The tenant identifier of your Azure instance 

- The domain name in Microso Entra ID 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Entra ID | 199 

 Figure: Microso Azure: Example of the tenant ID and path to the Microso Entra ID instance 

#### Step 2: To Obtain the Client Secret 

 To obtain the client secret for further use in the web.config file, perform the following instructions: 

1. In the le pane, click **App registrations** , and select the needed application. 

2. In the le pane, expand the **Manage** node, and click **Certificates & secrets**. 

3. On the **Client secrets** tab , click **New client secret** in the bottom part of the screen (see the following     screenshot). 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Entra ID | 200 

 Figure: Microso Azure: New client secret 

4. In the **Description** box of the **Add a client secret** pane, type a description of the client secret. 

5. In the **Expires** box, select the secret’s duration (see the following screenshot). 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Entra ID | 201 

 Figure: Microso Azure: Client secret generation 

6. Click **Add**. 

7. Copy the value of the client secret, which appears in the **Value** column of the **Client secrets** pane (see the     screenshot below), to use it as a client secret in Acumatica ERP. 

 You must copy the client secret value right aer clicking Add and before you leave the page. If you leave the page and return to it, the value will be hidden and will not be shown anymore. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Entra ID | 202 

 Figure: Microso Azure: Client secret 

 You have obtained the client secret for further use in the web.config file. 

#### Step 3: To Specify API Permissions 

 To specify API permissions, perform the following instructions: 

1. In the le pane, expand the **Manage** node, and click **API permissions**. 

2. In the **API permissions** pane, click **Add a permission** (see the following screenshot). 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Entra ID | 203 

 Figure: Microso Azure: New API permissions 

3. In the **API permissions** pane, select the **Microso Graph** API, as shown in the following screenshot. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Entra ID | 204 

 Figure: Microso Azure: API selected 

4. In the **Request API permissions** pane, click **Application permissions** , as shown in the following     screenshot. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Entra ID | 205 

 Figure: Microso Azure: API permissions selected 

5. In the **Domain** group, select the **Domain.Read.All** check box to add this permission. 

6. Click **Add permissions** , as shown in the following screenshot. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Entra ID | 206 

 Figure: Microso Azure: API permission added 

7. Repeat Instructions 2 through 6 to add the following permissions: 

- **User.Read.All** 

- **GroupMember.Read.All** 

 If you use the hidden members in Active Directory and would like these members to have access to Acumatica ERP, add the Member.Read.Hidden permission as well. 

8. Click **Grant admin consent for <Azure_Instance_Name>**. 

 You should have administrative access rights to grant consent. If you do not, ask the instance administrator to grant this consent. 

9. Confirm your action by clicking **Yes**. Notice that the status of the permissions has been changed to _Granted_     _for <Azure_Instance_Name>_ (see the **Status** column in the following screenshot). 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Entra ID | 207 

 Figure: Microso Azure: API permission granted 

 You have configured API permissions. 

#### Step 4: To Specify Your Application ID URI 

 To specify the application ID URI of your Acumatica ERP instance, you perform the following instructions: 

1. Switch to your Microso Entra ID instance by clicking its name in the navigation bar in upper le corner of     the screen. 

2. In the le pane, expand the **Manage** node, and click **App registrations**. 

3. In the **App registrations** list, click the application name that you have registered. 

4. In the le pane, click **Overview** (see the following screenshot). 

5. In the right pane, click _Add an Application ID URI_. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Entra ID | 208 

 Figure: Microso Azure: Addition of an application ID URI 

6. In the **Expose an API** pane, which opens, click _Add_ next to **Application ID URI** (see the following     screenshot). 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Entra ID | 209 

 Figure: Microso Azure: Setting an application ID URI 

7. In the **Edit application ID URI** dialog box, confirm the suggested URI of your Acumatica ERP URI or specify a     new one.     In further instructions, the application ID URI will be referred to as Full_Acumatica_Instance_URL.     For example, it could have the [http://app.site.net/instance_name,](http://app.site.net/instance_name,) [http://localhost/](http://localhost/)     Acumatica192000078, or api://<Application_Client_ID> format. 

 For single-tenant applications, Microso Entra ID validates that the domain in the URI is in the verified domain list in the Entra ID tenant. If the specified domain is not verified, you should use the default scheme (api://<Application_Client_ID>) suggested by Microso Entra ID. 

8. Click **Save**.     You have specified your Acumatica ERP instance ID URI. 

#### Step 5: To Specify the Redirect URI of Your Application 

 Aer Microso Entra ID successfully authenticates users, it uses the redirect URI as the destination when it returns authentication responses (tokens). To specify the redirect URI, you perform the following instructions: 

1. In the le pane, click **Overview** (see the following screenshot). 

2. In the right pane, click _Add a Redirect URI_. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Entra ID | 210 

 Figure: Microso Azure: Addition of a redirect URI 

3. In the **Authentication** pane, click **Add a platform** in the **Platform configurations** section. 

4. In the **Configure platforms** pane, click **Web** (see the following screenshot). 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Entra ID | 211 

 Figure: Microso Azure: Selection of the web platform 

5. In the **Configure Web** pane, under the **Redirect URIs** section, type the URI of your Acumatica ERP     instance—that is, Full_Acumatica_Instance_URL. For example, it could have the [http://](http://)     app.site.net/instance_name, [http://localhost/Acumatica192000078,](http://localhost/Acumatica192000078,) or api://     <Application_Client_ID> format. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Entra ID | 212 

 Figure: Microso Azure: Redirect URI configuration 

6. Click **Configure** , as shown in the previous screenshot. 

 You have specified the redirect URI of your Acumatica ERP instance. The configuration of your Azure instance for integration with your Acumatica ERP instance is complete. 

 Now you can enable integration with Microso Entra ID for your Acumatica ERP instance, as described in To Configure the Web.Config File for Integration with Microsoft Entra ID. 

### To Configure the Web.Config File for Integration with Microso Entra ID 

 Aer you have registered your Acumatica ERP instance with Microso Entra and obtained the necessary credentials, you should enable the integration with Microso Entra ID for your Acumatica ERP instance. 

#### Before You Begin 

- Register your Acumatica ERP instance on the Microso Entra ID portal, as described in _To Configure Microsoft_     _Entra ID for Integration with Your Acumatica ERP Instance_. 

- Be sure that you have a plain-text editor for editing the web.config file. 

#### To Enable Microso Entra ID for the Acumatica ERP Instance 

1. Open the web.config file, which is located in the folder that contains the application instance website. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Entra ID | 213 

 When you save changes to the web.config file, the website is automatically restarted. Make sure that all users have been warned about the restart so that they can save their work in advance. 

2. In the file, find the activeDirectory section within the system.web section, and modify it to be     similar to the following example. 

 <activeDirectory enabled="true" protocol="MicrosoftGraph" path="Azure_Instance_Tenant_ID" dc="Azure_Domain_Name" user="ApplicationClientID" password="ClientSecret" /> 

 Note the following about the code shown above: 

- Azure_Instance_Tenant_ID is the identifier of the Azure ID instance where your application is     registered. 

- Azure_Domain_Name is the Active Directory primary domain name—for example, _ad.domain_. This     value is specified in Active Directory by an administrator. 

- ApplicationClientID is the client ID that you obtained and copied when you registered your     Acumatica ERP application on the Azure instance. 

- ClientSecret is the client secret that you obtained and copied when you configured your Azure     instance for integration with your Acumatica ERP instance. The following example shows the code you would use with sample parameter values. 

 <activeDirectory enabled="true" protocol="MicrosoftGraph" path="6b780bc5-ae33-4d54-80c0-8a6c4da1bf86" dc="acumqahotmail.onmicrosoft.com" user="b3f59ed5-70af-41de-94a7-13fe296a79cb" password="AR97Q~tLWmFLUxUjkZe33yEGGWRAnctTOz0uh" /> 

3. In the audienceUris element within the system.identityModel section, specify the URL of your     Acumatica ERP instance, as shown in the following example. 

 <audienceUris> <add value="Full_Acumatica_Instance_URL" /> </audienceUris> 

 In the code shown above, Full_Acumatica_Instance_URL is the full URL of your Acumatica ERP instance—for example, https://app.site.net/instance_name , http://localhost/Acumatica192000078 ,or api:// <Application_Client_ID>. 

 The value of the audienceUris element should be the same as the Application ID URI that you have specified on the Microso Azure Portal. 

4. In the federationConfiguration element within the system.identityModel.services     section, modify its child wsFederation element to be similar to the following example. 

 <federationConfiguration> <wsFederation passiveRedirectEnabled="false" issuer="https://login.windows.net/Azure_Instance_Tenant_ID/wsfed" realm="Full_Acumatica_Instance_URL" 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Entra ID | 214 

 requireHttps="false" PersistentCookiesOnPassiveRedirects="false"/> </federationConfiguration> 

 In the code shown above, Full_Acumatica_Instance_URL is the full URL of your Acumatica ERP instance—for example, https://app.site.net/instance_name , http://localhost/Acumatica192000078 ,or api:// <Application_Client_ID>. 

 During the configuration of the application ID URI, you may have used the default scheme provided by Microso Entra ID, with the value of Full_Acumatica_Instance_URL having the api://<Application_Client_ID> format. In this case, you should also add the following line to the wsFederation element: reply="Acumatica_Redirect_URI", where Acumatica_Redirect_URI is the redirect URI that you have specified in the Microso Azure Portal. 

5. Save the web.config file. The website restarts automatically. 

 Aer you have enabled integration with Microso Entra ID, you need to map its groups to Acumatica ERP roles, as described in To Map Microsoft Entra ID Groups to Roles in Acumatica ERP. 

### To Map Microso Entra ID Groups to Roles in Acumatica ERP 

 Aer you have enabled integration with Microso Entra ID, you need to map Microso Entra ID groups to the user roles defined in Acumatica ERP by using the User Roles (SM201005) form. 

 The Active Directory tab appears on the form if the integration of Acumatica ERP with Microso Entra ID has been enabled in the web.config file, as described in To Configure the Web.Config File for Integration with Microsoft Entra ID. 

#### Before You Begin 

 Before you start configuring your system, make sure that all the domain users have email addresses configured in Microso Entra ID. 

#### To Map Active Directory Groups to Acumatica ERP Roles 

1. Open the _User Roles_ (SM201005) form. 

2. In the **Summary** area, in the **Role Name** box, select the role you want to associate with an Active Directory     group (or with multiple groups). 

3. On the **Active Directory** tab, click **Add Row**. 

 The Active Directory tab appears on this form if the integration of Acumatica ERP with AD has been enabled in the web.config file, as described in To Enable Active Directory Integration. 

4. In the **Group** column of the new row, select the AD group that you want to associate with the role. 

5. On the form toolbar, click **Save**. 

6. Repeat Instructions 2 through 5 for every role that should be mapped to AD groups. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Entra ID | 215 

#### To Remove the Mapping of Active Directory Groups to Roles 

1. Open the _User Roles_ (SM201005) form. 

2. In the **Summary** area, in the **Role Name** box, select the role for which you want to remove association with     an Active Directory group (or with multiple groups). 

3. Click the row that contains the AD group that you want to disassociate from the role, and click **Delete Row**     on the table toolbar. 

4. On the form toolbar, click **Save**. 

5. Repeat Instructions 2 through 4 for every role for which mapping with AD groups should be removed. 

 Aer you have mapped Microso Entra ID groups with user roles in Acumatica ERP, you can assign specific roles for a particular domain user, as described in To Set Up Role Assignment for Domain Users or enable silent logon with Microso Entra ID to use this service as the default identity provider, as described in To Enable Silent Logon. 

### To Set Up Role Assignment for Domain Users 

 When a domain user signs in to Acumatica ERP for the first time, the system adds a user account for this user and assigns roles to the new account based on the mapping between Active Directory (AD) groups and Acumatica ERP roles. For the full integration procedure, see Integration with Microsoft Entra ID. 

 If necessary, you can override the automatically assigned roles by selecting the required roles manually for each domain user on the Users (SM201010) form. 

#### To Override a User's Role Assignment Based on AD Groups 

1. Open the _Users_ (SM201010) form. 

2. Optional: If the user has never signed in to Acumatica ERP with their domain credentials, add a local user     account for the domain user as follows:     a. On the form toolbar, click **Add Active Directory User** to open the **Active Directory User** dialog box. 

 The Add Active Directory User button appears only if the Active Directory and Other External SSO feature is enabled on the Enable/Disable Features (CS100000) form and your Acumatica ERP instance is integrated with Active Directory for your company. 

 b. In the Active Directory User box, select the AD user account. c. Click OK to close the dialog box and populate the form with the user's information. 

3. In the **Login** box, select the user whose default roles you want to change. 

4. In the **Selection** area, select **Override Active Directory Roles with Local Roles**. 

5. On the **Roles** tab, select the roles you want to assign to the user. 

6. On the form toolbar, click **Save**. 

#### To Restore AD Group Role Assignment for Domain Users 

1. Open the _Users_ (SM201010) form. 

2. In the **Login** box, select the domain user for whom you want to restore the default roles. 

3. In the **Selection** area, clear **Override Active Directory Roles with Local Roles**. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Entra ID | 216 

4. On the form toolbar, click **Save**. 

### To Enable Silent Logon 

 To make your users authenticate themselves with a selected identity provider, you enable the silent logon capability and select the identity provider to be used by default. This topic describes how to enable silent logon for Microso Entra ID or Active Directory Federation Services. 

#### Before You Proceed 

 Before you enable silent logon, you need to configure your Acumatica ERP instance to use the external identity provider with which you want to set up silent logon. 

#### To Enable Silent Logon 

1. Open the web.config file for the site instance. 

 Usually the file is located in %Program Files%\Acumatica ERP\<instance name> , where <instance name> is the name of the application instance website. 

 When you save changes to the web.config file, the website is automatically restarted. Make sure that all users have been warned about the restart so that they can save their work in advance. 

2. Add the Silentlogin parameter to the <externalAuth> section, as shown below. 

 <externalAuth returnUrl="Main.aspx" authUrl="Frames/AuthDock.ashx" silentLogin="Federation" /> 

3. Save your changes to web.config. 

#### To Disable Silent Logon 

1. Open the web.config file for the site instance. 

 Usually the file is located in %Program Files%\Acumatica ERP\<instance name> , where <instance name> is the name of the application instance website. 

 When you save changes to the web.config file, the website is automatically restarted. Make sure that all users have been warned about the restart so that they can save their work in advance. 

2. Specify the none value for the Silentlogin parameter in the <externalAuth> section, as shown     below. 

 <externalAuth returnUrl="Main.aspx" authUrl="Frames/AuthDock.ashx" silentLogin="none" /> 

3. Save your changes to web.config. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Entra ID | 217 

#### To Override Silent Logon Settings with URL Parameters 

 You can specify a different external identity provider or disable silent logon by using the SilentLogin URL parameter with a corresponding value in the URL of your Acumatica ERP instance or a particular form. It overrides the value of the SilentLogin parameter specified in the web.config file. 

 The SilentLogin URL parameter can take the following values. 

 Parameter Identity Provider 

 None Acumatica ERP 

 Federation Microsoft Entra ID or Active Directory Federation Services 

 Example 

 To sign in to an Acumatica ERP instance by using silent logon for Microso Entra ID account, you use the following URL: 

 http://app.site.com/instance/Login.aspx?SilentLogin=Federation. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Teams | 218 

## Integrating Acumatica ERP with Microso Teams 

 Microso Teams is a collaboration platform that provides chat, conferencing, and file sharing in one tool. If you set up integration with Microso Teams, users can do the following in Acumatica ERP: 

- Start a Teams chat 

- Start a Teams call 

- Import files from Teams to Acumatica ERP 

- Share Acumatica ERP records with a contact or channel in Teams 

- Send automatic messages in Teams about events occurring on a record This chapter describes how to integrate Acumatica ERP with Microso Teams. 

### Integration with Microso Teams 

 You integrate Microso Teams with Acumatica ERP to enable user collaboration within a single platform and to eliminate the need for users to switch between multiple applications. 

 This functionality is available only if the Teams Integration feature is enabled on the Enable/Disable Features (CS100000) form. 

#### Requirements 

 Before you integrate Microso Teams with Acumatica ERP, your company must be signed up for a Microso cloud service, such as Azure or Office 365, with the Microso Entra ID instance configured. For more information, see Microsoft Entra ID on the Microso Azure Portal and Integration with Microsoft Entra ID. 

 You need to have a Microso Teams account, as well as the Teams desktop application or the ability to use Teams on the web. Also, appropriate Microso roles need to be assigned to you and to everyone involved in or using the integration. These roles include Global Administrator , Application Administrator , and Teams Administrator. (For details on roles, see Azure RBAC documentation .) 

 To configure the Microso Teams integration in Acumatica ERP, you must be signed in to a user account with one of the following roles Acumatica Support , Administrator , CR Sales & Marketing Admin , or CR Support Admin. (For details on Acumatica ERP roles, see Configuring User Roles .) Also, Acumatica ERP administrators must be assigned both the Teams Administrator role and the Global Administrator role. 

#### Configuration Steps 

 You can configure integration with Teams when you implement Acumatica ERP or at any later time. To integrate an instance of Acumatica ERP with Teams, you perform the following general steps: 

1. You perform the needed configuration actions on the Microso Entra ID instance. That is, you register your     Acumatica ERP instance with the Microso Entra ID instance, and you obtain the needed credentials, as     described in _To Configure Microsoft Azure for Teams Integration_. 

2. You configure your Acumatica ERP instance and Teams application, as described in _To Configure Acumatica_     _ERP for Teams Integration_. 

#### Sharing of Records 

 Before you can share Acumatica ERP records through Teams, you need to add a new activity type on the Activity Types (CR102000) form. A user selects this activity type to send a link to a record to a Teams channel or a Teams 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Teams | 219 

member. The menu commands that correspond to the created activity type then appear on the appropriate parts of the forms as follows: 

- For forms that have the **Activities** tab: The **Create Teams** command on the **Create Activity** menu (see the     following screenshot). 

 Figure: The Create Teams Message command on the Create Activity tab 

- For forms that do not have the **Activities** tab: The **Teams** command on the **Add Activity** menu of the **Tasks**     **& Activities** dialog box (see the following screenshot). This dialog box opens when you click **Activities** on     the form title bar. 

 Figure: The Teams Message command on the Create Activity menu 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Teams | 220 

#### Channel Synchronization 

 To be able to receive messages from Acumatica ERP in Microso Teams channels, you need to configure each of the channels to which you want to send messages. As a system administrator, you perform this activity once for the entire company. 

 Before you start the configuration of the channels, you need to synchronize them. You perform the synchronization of channels and members on the Teams Channels (SM305000) form. During this process, the system also maps the contacts in Acumatica ERP with the members of the Teams channels. The system does that by comparing the email addresses in the Teams accounts with users' email addresses specified on the Contact Info section of the General tab of the Employees (EP203000) form and in the Contact section of the General tab of the Contacts (CR302000) form. If an email address on one of these forms is the same as the email address in a Teams account, the system maps the user in Teams with the employee or contact in Acumatica ERP. 

 We recommend that users enter their employee or contact email addresses before the synchronization. Alternatively, a user can enter their email address in the Override Teams ID box on the Teams Settings tab of the User Profile (SM203010) form. 

 If for a Teams member, no employee or contact has been found in Acumatica ERP, you can specify it manually on the Teams Members (SM305030) form. On this form, you can also run the mapping again by clicking Map Contacts & Employees on the form toolbar. (You might need to do this if the email addresses of any users have changed.) 

 For each Teams channel to which you want to send messages, you need to add a webhook. To generate the webhook URL, you create a flow by using Microsoft Power Automate. You then specify the generated URL on the Channels pane of the Teams Channels form. 

#### Status of Teams Contacts 

 If a contact or employee that is selected in one of the applicable boxes on a supported form is a member of a Teams channel, Acumatica ERP displays the Teams icon to the right of this box. The following screenshot shows the Cases (CR306000) form with the Teams icons to the right of the Contact box (see Item 1 in the screenshot) and the Owner box (Item 2). 

 Figure: The Teams icons on the Cases form 

 The Teams icon contains a dot of one of the following colors that indicates the status of the user as follows: 

- Green: _Available_ 

- Yellow: _Away_ 

- Red: _Busy_ , _In a call_ , or _In a meeting_ 

- Gray: _Unavailable_ The following table lists the forms and boxes on these forms for which the Teams icons are displayed. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Teams | 221 

 Form Location Box 

 Cases (CR306000) Summary area Contact (a contact of the customer) 

 Owner (an employee of the company who owns the case) 

 Leads (CR301000) Summary area Contact (a contact that the lead is associated with) 

 Owner (an employee of the company who owns the lead) 

 Opportunities (CR304000) 

 Summary area Contact (a representative to be contacted about the opportunity) 

 Owner (an employee assigned to the opportunity) 

 Summary area Owner (a person assigned to work with the business account) 

 Business Accounts (CR303000) 

 General > Primary Contact Name (the full name of the primary contact associated with the business account) 

 Contacts (CR302000) 

 Summary area Owner (an owner of the contact) 

 Contact ID (the unique identifier of the contact) 

 Customers (AR303000) 

 General > Primary Contact Name (the full name of the primary contact associated with the customer) 

 Vendors (AP303000) 

 General > Primary Contact Name (the full name of the primary contact associated with the vendor) 

### To Configure Microso Azure for Teams Integration 

 To configure Microso Azure for the integration of Microso Teams with your Acumatica ERP instance, you perform the following actions in the Microso Azure portal: 

1. Registering your Acumatica ERP instance, and copying the registration parameters for further use. 

2. Obtaining the client secret and copying it. 

3. Configuring API permissions. 

4. Specifying your Acumatica ERP instance redirect URI. 

 Each of which is described in a section of this topic. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Teams | 222 

 Note the following: 

- The procedure below covers the most common usage scenarios. If you’re implementing a     more complicated scenario and you encounter difficulties, contact Acumatica ERP technical     support. 

- The vendor of the third-party soware may change the user interface and settings. The labels     you see in the UI may differ from the ones described in the procedure. 

- The procedure will be updated to describe new common scenarios and UI changes arise. 

#### Before You Proceed 

 Before you begin, make sure that the following conditions are met: 

- You have created Microso Teams users and Teams Administrator users. 

- Your company has a Microso Entra ID instance configured. For more information, see _Integration with_     _Microsoft Entra ID_. 

- Your company has a Microso Azure subscription so that you can register your Acumatica ERP instance in     Microso Entra ID. 

#### Step 1: To Register the Graph Application 

 To register your application on the Microso Azure portal, perform the following instructions: 

1. Sign in to the _Microsoft Azure portal_. 

2. In the **Azure services** section, click **App registrations**. 

3. On the pane toolbar, click **New registration**. 

4. On the **Register an application** page, which is opened (see the following screenshot), specify the name of     your application in the **Name** box, and click **Register**. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Teams | 223 

**_Figure: The name of the application on the Azure portal_** 

A page opens with the name you entered for the application, which indicates that your Acumatica ERP instance is registered with Microso Entra ID. Notice that the **Application (Client) ID** and **Directory (tenant) ID** values have been generated, as shown in the following screenshot. 

**_Figure: The generated Application and Directory IDs on the Azure portal_** 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Teams | 224 

5. Copy the **Application (Client) ID** , **Object ID** , and **Directory (tenant) ID** values. 

#### Step 2: To Create the Client Secret 

 To create the client secret on Microso Azure portal, while you are still in the page with the name of your application, perform the following instructions: 

1. In the le pane, click **Certificates & secrets**. 

2. On the **Client secrets** tab, click **New client secret** (see the following screenshot). 

 Figure: Creation of a client secret on the Azure portal 

3. In the **Description** box of the **Add a client secret** pane, type the description of the client secret. 

4. In the **Expires** box, select the appropriate option for the secret's duration (see the following screenshot). 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Teams | 225 

 Figure: The settings of the client secret 

5. Click **Add** to create a secret and close the pane. 

6. Immediately copy the value of the client secret, which appears in the **Value** column of the **Client secrets**     pane (see the following screenshot), to use it as a client secret in Acumatica ERP. 

 You must copy the client secret value right aer clicking Add and before you leave the page. The value will be hidden aer you leave the page and will not be shown anymore. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Teams | 226 

 Figure: The generated client secret 

 You have obtained the client secret for further use in your application. Now you can specify API permissions. 

#### Step 3: To Add the Graph API Permissions 

 To add graph API permissions for your application, do the following: 

1. On the le pane, click **API permissions**. 

2. On the **API permissions** pane, click **Add a permission** (see the following screenshot). 

 Figure: The addition of an application permission 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Teams | 227 

3. On the Request API Permissions pane, click **Microso Graph > Delegated Permissions**. 

4. In the **Channel** group, select the _Channel.ReadBasic.All_ permission (see the following screenshot). At the     bottom of the page, click **Add permissions**. 

 Figure: Selection of permissions 

5. By repeating the previous instruction, add the following permissions for your application: 

- _ChannelMessage.Send_ 

- _Chat.Create_ 

- _ChatMessage.Send_ 

- _Files.Read.All_ 

- _GroupMember.Read.All_ 

- _offline_access_ 

- _Presence.Read.All_ 

- _Team.ReadBasic.All_ 

- _User.ReadBasic.All_ 

6. Click **Grant admin consent for <Application_Name>**. 

 To grant consent, you must have administrative access rights. Otherwise, you need to ask the instance administrator to grant this consent. 

7. Confirm your action by clicking **Yes**. The status of the permission has been changed to _Granted for_     _<Azure_Instance_Name>_ (see the **Status** column in the following screenshot). 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Teams | 228 

 Figure: Granted permissions 

 You have configured API permissions. Now you can specify your application ID URI. 

#### Step 4: To Add the Redirect URI 

 The redirect URI is used as the destination when authentication responses (tokens) are returned aer Microso Azure successfully authenticates users. To specify the redirect URI for your application, do the following: 

1. On the le pane, click **Authentication**. 

2. In the **Platform configuration** section, click **Add a platform**. 

3. On the **Configure platforms** pane, click **Web**. 

4. In the **Redirect URIs** box, type the URI of your Acumatica ERP instance with _/_     _OAuthAuthenticationHandlerTeams_ added at the end—that is, Full_Acumatica_Instance_URL/     OAuthAuthenticationHandlerTeams (see the following screenshot). For example, it could be     [http://localhost/Acumatica192000078/OAuthAuthenticationHandlerTeams.](http://localhost/Acumatica192000078/OAuthAuthenticationHandlerTeams.) 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Teams | 229 

 Figure: The specification of the redirect URI 

5. Click **Configure**. 

 It can take several minutes for the system to add the redirect URI. 

 You have specified the redirect URI of your Acumatica ERP instance. 

### To Configure Acumatica ERP for Teams Integration 

 Aer you configure Microsoft Azure for Teams Integration , you need to specify the required settings in your Acumatica ERP instance. You also need to configure webhooks in Microsoft Power Automate. The following sections provide detailed instructions to perform this configuration. 

 These instructions are performed by the system administrator who sets up the functionality. 

#### Before You Proceed 

 Before you begin, make sure that the following conditions are met: 

- You have configured Microso Azure for Teams integration, as described in _To Configure Microsoft Azure for_     _Teams Integration_. 

- You have enabled the _Teams Integration_ feature on the _Enable/Disable Features_ (CS100000) form. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Teams | 230 

#### Step 1: To Configure Teams Preferences 

 On the Teams Preferences (SM220000) form, do the following: 

1. In the **Tenant ID** box, enter the **Directory (tenant) ID** value that you have generated in Step 1 of _To_     _Configure Microsoft Azure for Teams Integration_. 

2. In the **Client ID** box, enter the **Application (client) ID** value that you have generated in Step 1 of _To_     _Configure Microsoft Azure for Teams Integration_. 

3. In the **Client Secret** box, enter the client secret that you generated in Step 2 of _To Configure Microsoft Azure_     _for Teams Integration_ —which was shown in the **Value** column of the **Client secrets** pane. 

4. On the table toolbar, click **Add Permissions**.     The system adds to the table the permissions that you have specified in Step 3 of _To Configure Microsoft_     _Azure for Teams Integration_ (see the following screenshot). 

 Figure: The added permissions on the Teams Preferences form 

5. On the form toolbar, click **Save**. 

#### Step 2: To Add a New Activity Type 

 To add a new activity type, do the following: 

1. On the form toolbar of the _Activity Types_ (CR102000) form, click **Add New Record** , and specify the following     settings in the added row: 

- **Type ID** : TM 

- **Description** : Teams Message 

- **Active** : Selected 

- **Originated By** : _ERP Users_ (inserted automatically) 

- **Image** : _main@success_ 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Teams | 231 

2. On the form toolbar, click **Save**. 

3. On the More menu of the _Apply Updates_ (SM203510) form, click **Reset Caches**.     The system resets the caches, and is now ready for Teams channel synchronization. 

#### Step 3: To Configure an Incoming Webhook 

 To configure an incoming webhook for a Teams channel, you need to create a connection and a flow by using Microsoft Power Automate. Do the following: 

1. Download the _PostToChannelWhenWebhookReceived.zip_ file that you will use to configure the     flow. 

2. Open the _Microsoft Power Automate_ page and on the More menu on the le pane, click **Connections**. 

3. On the **Connections in <Company_Name>** page, which opens, click **Create a connection**. 

4. On the **New connection** page, which opens, locate the **Microso Teams** connector and click **Create**. 

5. In the dialog box that opens, click **Create**.     The connector is added to the **Connections in <Company_Name>** page. 

6. On the le pane, click **My flows** and on the page toolbar of the **Flows** page, which opens, click **Import >**     **Import Package**. 

7. On the **Import package** page, which opens, click **Upload** , and select the     _PostToChannelWhenWebhookReceived.zip_ file that you have downloaded. 

8. In the **Related resources** table, click the _Select during import_ link. 

9. On the **Import setup** side panel, which opens, click the connection to Teams that you have created, and     click **Save**. 10.On the **Import package** page, click **Import** , and wait for the process to complete. 11.In the confirmation message that appears when the import is completed, click the **Open Flow** link. 12.In the diagram with the flow, which opens, click the **Post message in a chat or channel** box. 13.In the **Team** and **Channel** boxes on the side panel that opens, remove the default values and select the team     and its channel, respectively, to which you want to send notifications. 14.In the diagram with the flow, click the **When a Teams webhook request is received** box and on the side     panel that opens, copy the link in the **HTTP URL** box. 15.On the page toolbar, click **Save** , and then click **Back** to return to the **My flows** page. 16.On the page toolbar of the **My flows** page, click **Turn On**. 

#### Step 4: To Sign In to the Teams Account 

 Do the following to sign in to the Teams account: 

 This step needs to be performed by each user on the Acumatica ERP account they will be using. 

1. In the User menu, click **My Profile**.     The _User Profile_ (SM203010) form opens. 

2. In the **Teams User Type** box of the **Teams Settings** tab ( **Authentication Token** ), select the user type with     which you want to sign in ( _Administrator_ or _Member_ ), and click **Sign In**.     The system signs you in to the Teams account. 

3. In the **Authentication Token** section, click **Test Connection**. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Teams | 232 

4. In the pop-up window that opens, enter your Teams credentials, and click **Sign In**. 

5. On the form toolbar, click **Save**. 

#### Step 5: To Specify Additional Teams Settings 

 To specify additional Teams settings for your account, do the following on the Teams Settings tab of the User Profile (SM203010) form: 

 The settings in this step, which are optional, can be specified for the specific user who will be using Teams integration. 

1. In the **Override Teams ID** box of the **Teams Preferences** section, enter the email address that the system     should use to find the Teams identifier of the user instead of the email address specified in the **Contact Info**     section of the **General** tab on the _Employees_ (EP203000) form, or in the **Contact** section of the **General** tab     on the _Contacts_ (CR302000) form. 

2. In the **Teams Client** box, select the Teams client you want to use ( _Desktop_ or _Web_ ). 

3. On the form toolbar, click **Save**. 

#### Step 6: To Synchronize Teams Channels and Members 

 To synchronize your Teams channels and members, do the following on the Teams Channels (SM305000) form: 

1. On the form toolbar, click **Synchronize** , and wait for the operation to complete.     The system adds the Teams channels to the table on the form (see the following screenshot). 

 Figure: The synchronized Teams channels 

2. On the **Teams** pane, click the team that contain the channel to which you want to send messages. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Teams | 233 

3. On the Channels pane, click the needed channel. 

4. In the **Incoming Webhook URL** column, enter the URL you have copied in Step 3 (see the following     screenshot). 

 Figure: The incoming webhook URL 

5. On the form toolbar, click **Save**. 

6. On the pane toolbar of the **Channels** pane, click **Test Notification** to send a test message to the channel in     Teams (see the following screenshot). 

 Figure: The Test Notification button 

7. In the channel in Teams, make sure that the message is displayed (see the following screenshot). 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Teams | 234 

 Figure: The received message in the Teams channel 

#### Step 7: Mapping the Contacts or Employees 

 To map the contacts in the Teams channel with the contacts or employees in Acumatica ERP, do the following: 

1. In Acumatica ERP, open the _Teams Members_ (SM305030) form. 

2. On the form toolbar, click **Map Contacts & Employees**.     Wait for the system to complete the mapping. 

3. If for a team member, the system has not specified an Acumatica ERP contact or employee, click the     magnifier icon in the **Acumatica ERP Contact/Employee** column, and select the needed contact or     employee. 

4. On the form toolbar, click **Save**. 

### To Use Teams Integration 

 Aer all the settings required for Teams integration have been configured, you can start communication through Teams from Acumatica ERP forms. The following sections describe in general terms how you can send a message in Teams, start a call, schedule a Teams meeting, share a record, upload files that have been shared with you in Teams, or send messages to a Teams channel. 

#### Before You Proceed 

 Before you begin, make sure you have configured the required settings, as described in To Configure Acumatica ERP for Teams Integration. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Teams | 235 

#### To Communicate with a Teams User 

 To start communication with a Teams user from Acumatica ERP, you perform the following general actions: 

1. You open a form on which the Teams icons are displayed (see _Integration with Microsoft Teams_ for the list of     forms). 

2. You locate the box with the contact, owner, or name of the Teams user that you want to communicate with,     and click the Teams icon to the right of the box. 

3. In the **Teams Contact** dialog box, which is opened, you click any of the following buttons, depending on the     action that you want to perform: 

- **Open Contact Chat** : To send a message to the Teams user 

- **Open Contact Call** : To start a call with the Teams user 

- **Open Contact Meeting** : To schedule a meeting with the Teams user When you click any of these buttons, the system opens the appropriate Teams page or Teams dialog box. 

#### To Share a Record with a Teams Channel or a Member 

 You can share with a Teams channel or a Teams member any records created on data entry forms. To share a record, you perform the following general actions: 

1. On this form, you open the record you want to share. 

2. Depending on whether the form has an **Activities** tab, do one of the following: 

- On the **Activities** tab, you click **Create Activity > Create Teams**. 

- If the form does not have the **Activities** tab, you click **Activities** on the form title bar. In the **Tasks &**     **Activities** dialog box, which is opened, you click **Add Activity > Teams** 

3. On the _Teams Activity_ (CR306040) form, which opens, you select the Teams channel (in the **Channel** box)     or the Teams member (in the **Member** box) with which you want to share the record. You then enter the     message text on the **Message** tab. 

 If you want to share a record in a channel and with a particular member of that channel, you can specify values in both the Channel and Member boxes. 

4. On the form toolbar, you click **Send**.     The system sends the message, and a message with the link to the record appears in the specified Teams     channel, or in the chat with the specified Teams user. 

#### To Import Files Shared in Teams 

 To import to Acumatica ERP files that have been shared with you in Teams, you perform the following general actions: 

1. You open the form to which you want to import the files. 

2. On the form title bar, you click **Files**. 

3. In the **Files** dialog box, which is opened, you click **Upload From Teams**.     The **Upload From Teams** dialog box opens, which contains the files that have been shared with you in     Teams. 

4. In the dialog box, you select the check boxes in the rows with the files you want to add, and click **Upload &**     **Close**. 

5. In the **Files** dialog box, to which you return, you click **Upload**. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Microso Teams | 236 

 The system uploads to the form the files that you have specified. 

#### To Configure the Sending of Automatic Messages to a Teams Channel 

 To configure a message that the system should send to a Teams channel, you perform the following general actions: 

1. On the _Teams Notifications_ (SM204006) form, you click **Add New Record** on the form toolbar. 

2. In the Summary area, you fill in the **Screen** , **Description** , and **Subject** boxes. 

3. In the **Channel** box, you select the Teams channel to which you want to send messages. 

4. On the **Message** tab, you type the message that will be sent to the channel. 

5. You save your changes. 

6. On the table toolbar of the **Send by Events** tab, which appears on the form, you click **Create Business**     **Event**. 

 Alternatively, you can click Add Row and select an existing business event. 

7. In the **Create Business Event** dialog box, which is opened, you specify the name of the business event, and     click **OK**. 

8. On the _Business Events_ (SM302050) form, which is opened, you specify values in the **Event ID** , **Screen**     **Name** , **Type** , **Raise Event** , and **Description** boxes, and specify triggering conditions on the **Trigger**     **Conditions** tab. 

9. On the **Subscribers** tab, you add as a subscriber the Teams notification that you have created. 10.You save your changes. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with OpenID Identity Providers | 237 

## Integrating Acumatica ERP with OpenID Identity Providers 

 In Acumatica ERP, you can configure integration with multiple OpenID providers for a System tenant or multiple tenants. 

 The configuration of this integration is available if the OpenID Connect feature is enabled on the Enable/Disable Features (CS100000) form. 

 This chapter describes how to integrate Acumatica ERP with OpenID identity providers. 

### Configuration of an OpenID Identity Provider 

 OpenID Connect is a simple identity layer on top of the OAuth 2.0 protocol. There are multiple public OpenID identity providers that you can use for authorizing users, such as Microso and Google identity platforms, OneLogin, and Okta. 

 In a multitenant instance, you configure OpenID providers for each tenant, if needed. Different tenants may have different sets of providers configured (or no providers). 

#### Registering with an OpenID Provider 

 To configure integration with an OpenID provider, you need to register with the provider and to obtain public and private keys (Client ID and Client Secret, respectively) to be used in your authorization requests. For the registration, you will need to provide the corresponding redirect URI of the Acumatica ERP tenant for which you are configuring the integration. 

 To find this URI, on the OpenID Providers (SM303020) form, you click View Redirect URI on the form toolbar. The system opens the Redirect URI dialog box, where you can copy the URI. 

 For more information, see To Register an Acumatica ERP Instance with Google and To Configure Microsoft Entra ID for Integration with Your Acumatica ERP Instance. 

#### Configuring an OpenID Provider 

 You use the OpenID Providers (SM303020) form to configure each provider in the system and specify its integration settings. You enter the provider's name in the Display Name box, specify its identifier in the Issuer Identifier box, and enter the public and private keys you have obtained in the Client ID and Client Secret boxes, respectively. 

 If the OpenID provider supports discovery requests, you can click the Autoconfiguration button on the Authentication Settings tab, and the system will request the configuration metadata by using the identifier specified in the Issuer Identifier box. The system will parse the document it receives and fill in the authentication settings on the tab automatically. 

 Alternatively, you can receive the OpenID provider's configuration metadata by clicking the View Provider Metadata button on the form toolbar. The system displays the Provider Metadata dialog box (see the following screenshot, which shows this metadata for a Google OpenID provider), which shows configuration metadata that you can use to manually specify settings on the Authentication Settings tab. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with OpenID Identity Providers | 238 

 Figure: The configuration metadata of a Google OpenID provider 

 Aer you have filled in the authentication settings either manually by using the metadata document or automatically, you can validate the configuration by clicking the Validate command on the More menu. 

 If the OpenID provider does not support discovery requests, you should obtain the authentication settings from the provider and fill in the settings manually. You cannot validate your configuration by using Validate in this case. 

 Aer specifying the authentication settings, you upload the icon to be used for the OpenID provider by using the buttons in the Icon section of the Summary area. On the Sign-In page, the system will display a button with the name specified in the Display Name box and the icon you upload. 

 If at a later time, you want to change the display name that is initially specified for the provider, you use the Change Name command on the More menu; the new provider name will then be displayed on the Sign-In page. 

#### Configuring User Identification 

 When a user signs in to Acumatica ERP with an OpenID provider for the first time, the system will send an authorization request to the provider's server; this request is generated by using the provider's settings on the OpenID Providers (SM303020) form. If the user has been authorized successfully, the provider's server returns a corresponding ID token with the user information. Then the system asks the user to enter their Acumatica ERP credentials to identify the user profile in the system. The system uses information from the ID token to bind the external account of the user with the Acumatica ERP user profile and enable single sign-on (SSO) functionality for the user. The next time the user signs in with the OpenID provider, the system will use information from the ID token to find the bound Acumatica ERP user profile and will not request Acumatica ERP credentials if the account has been found. 

 The user information inside an ID token is organized in claims. Claims are name–value pairs that contain information about the user and the OpenID Connect service. You can find the list of supported claims in the metadata document in the claims_supported section, as the following screenshot shows for a Google OpenID provider. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with OpenID Identity Providers | 239 

 Figure: The list of claims supported by a Google OpenID provider 

 For an OpenID provider, you can select a claim ( sub or oid ) to be used by the system for user profile identification in the Claim Type for User Identity box of the OpenID Providers form. 

 In most cases, the sub claim is used for user identification. We recommend using the configuration guidelines of the OpenID provider of your choice. 

 The set of claims to be returned in an ID token is defined with the scope parameter in an authorization request. A scope is a logical grouping of claims. A common example is the standard OpenID Connect scope profile. If you use this scope in an request, you will get an ID token that includes the following claims: name, family_name, given_name, middle_name, nickname, preferred_username, profile_picture, website, gender, birthdate, zone_info, locale, and updated_at. 

 The system requests the openid scope by default. You can add to the request two more scopes (email and profile) by selecting the corresponding options in the Scope for User Identity box. 

 If you are working with the Microso OpenID solution, Microso recommends using the oid claim along with the profile scope. 

#### Configuring Automatic User Binding 

 When a user signs in to the system by using an OpenID provider for the first time, the system prompts the user to enter their Acumatica ERP credentials, so it can find a corresponding user profile in the system to bind with the external user profile. You can configure the system to search for a user profile by using the information received in an ID token from an OpenID provider. If the system finds a corresponding user profile in the system, it will bind the profiles automatically without prompting the user to enter their Acumatica ERP credentials. 

 OpenID integration can only bind the native Acumatica ERP and Open ID user profiles. It could not bind users authorized via Active Directory, Microso Entra ID, or other external identity providers. 

 On the User Binding Rules tab of the OpenID Providers form, for the OpenID provider, you configure a set of conditions for the identification of each user profile and select the Automatically Bind Users check box. 

 A condition is a mapping of a user setting in Acumatica ERP and the claim received in an ID token from the provider. You can configure multiple mappings, group them into logical groups by using brackets, and join them with logical operators. (The following screenshot shows the conditions that make up a user binding rule.) 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with OpenID Identity Providers | 240 

 Figure: A user binding rule configured on the User Binding Rules tab 

 To create a condition, you select a user setting in the User Field column, which can be any of the following: Email , First Name , Last Name , Login , and Phone. Then in the Claim Type column, from the list of supported by provider claims, you select a corresponding claim to be returned in the ID token. The system automatically fills in a value in the Scope column based on the selected claim. If you want the system to bind the external user profile with the Acumatica ERP user profile only if the email address or phone number of the external user is verified, you can select the Verified check box for the email or phone_number claim type. 

 With automatic binding enabled, when a user signs in the system by using an OpenID provider for the first time, the system will search for a user account by comparing the values of user settings with the values of the claims mapped to the settings. If the system does not find a user account whose settings comply with the configured rule, the system will prompt the user to enter their Acumatica ERP credentials. 

#### Configuring Automatic User Creation 

 To perform binding of an Acumatica ERP user profile and an external user account of an OpenID provider, both of these accounts should exist in the corresponding systems. So if a user does not have any of the accounts, it needs to be created either manually or automatically if automatic user creation has been set up. 

 If automatic user creation is not set up, when the system cannot find a corresponding user profile for a user who is trying to sign in with an OpenID provider, it prompts the user to enter their Acumatica ERP credentials. If the user cannot provide the correct credentials, they need to contact the system administrator to resolve the issue. 

 You can configure the system to automatically create a user account in Acumatica ERP if it does not find a corresponding user account based on the information returned in the ID token. (In this case, the system will not prompt the user to enter their Acumatica ERP credentials.) To perform this configuration, on the User Creation Rules tab of the OpenID Providers form, for the OpendID provider, you configure the set of rules for filling in user account settings and select the Automatically Add Users check box (see the screenshot below). 

 To create a rule, you select a user setting in the User Field column, which can be any of the following: Email , First Name , Last Name , Login , and Phone. Then in the Claim Type column, from the list of claims supported by this provider, you select the claim to be returned in the ID token. Based on the selected claim, the system automatically fills in a value in the Scope column. If you want the system to create an Acumatica ERP user profile only if the email address or phone number of the external user is verified, you can select the Verified check box for the email or phone_number claim type. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with OpenID Identity Providers | 241 

 For a user account to be created on the Users (SM201010) form, Acumatica ERP requires only the user's login and email address. Therefore, for successful user creation, at minimum, you must configure rules for the Login and Email user fields. 

 Figure: The user creation rule configured on the User Creation Rules tab 

 If role assignment has not been set up, the system does not assign any access roles to the newly created user account. You need to assign roles manually so that the user can perform job responsibilities. 

 You can automate the assignment of a set of roles to the users created automatically by creating a user type on the User Types (EP202500) form; on the Roles tab, you specify the roles to be assigned to each automatically created user that has signed in by using the OpenID provider. Then on the User Creation Rules tab of the OpenID Providers form for the provider, you specify the created user type in the User Type box. 

 With the automatic user creation enabled, during the first time a user signs in by using this OpenID provider, if the system cannot find a corresponding user account, it creates a new user profile in the tenant the user selected and binds it to the external account. For the new user, based on the user creation rules and the information received in the ID token, the system fills in the settings on the Users (SM201010) form as follows: 

- In the **User Type** box, the user type that is specified on the **User Creation Rules** tab of the _OpenID Providers_     form for the OpenID provider. The system assigns to the user account the roles specified for the user type on     the **Roles** tab of the _User Types_ form. 

- The **Login** , **First Name** , **Last Name** , **Email** , and **Phone** boxes are filled with the appropriate data according     to the user creation rules. 

- The status of the user account is set to _Active_. 

- The **Forbid Login with Password** check box is selected. As an alternative to assigning roles, you can configure the system to assign roles to the newly created user account based on the rules configured for the provider on the **Role Mapping Rules** tab of the _OpenID Providers_ form, as described in the following section. 

#### Configuring Role Mapping 

 You can use an OpenID provider for managing user access by directly configuring the mapping of external roles to the roles defined in Acumatica ERP and allowing the system to override user roles with provider settings. 

 To configure the mapping, on the provider side, you need to configure a claim or a scope that will return external roles in the ID token for a user. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with OpenID Identity Providers | 242 

 Then on the Role Mapping Rules tab of the OpenID Providers form, you specify the claim and scope you configured on the provider side in the Claim Type and Scope boxes, respectively. In each row of the table of the tab, you configure the mapping of a value returned in the claim to an Acumatica ERP role. 

 On the tab, you select the Use Roles from Provider Settings to activate the use of role mapping based on the rules specified on the tab. 

 With the role mapping rules activated, the system will deal with the role assignment in accordance with the restrictions specified for the user on the Users (SM201010) form. 

 Suppose a user account is bound to an external account, and for this user the Forbid Login with Password and Use Roles from Provider Settings check boxes are selected on the Users form. In this case, when the user signs in to Acumatica ERP, the system will override the user's access roles and assign roles according to the role mapping rules. 

 Suppose a user has an account in Acumatica ERP and signs in for the first time with their OpenID provider credentials. For this user, the Forbid Login with Password and Use Roles from Provider Settings check boxes are selected on the Users form. In this case, when the user signs in to Acumatica ERP, the system will override the user's access roles according to the role mapping rules. 

 If an automatic creation of user accounts is configured for an OpenID provider and a user who has no account in Acumatica ERP signs in for the first time with the credentials of the OpenID provider. If a user type is specified in the User Type box on the User Creation Rules tab of the OpenID Providers form, the system selects the Use Roles from Provider Settings check box for the user on the Users form and assigns the user only those roles that are listed for the user type and that comply with the role mapping roles. If a user type is not specified, the system selects the Use Roles from Provider Settings check box and assigns the user roles according to the role mapping rules. 

#### Configuring User Restrictions 

 If your company prefers to use the OpenID providers for the authentication and authorization of users, you can forbid any of the users to sign in with Acumatica ERP credentials. 

 For a user, on the Users (SM201010) form, you select the Forbid Login with Password check box. With the check box selected, the system makes the Allow Password Recovery , Allow Password Changes , Password Never Expires , and Force User to Change Password on Next Login check boxes unavailable and makes the Use Roles from Provider Settings check box available (see the following screenshot). If the user does not have any other sign-in options, the system displays a warning message, so that you do not define a user with no way to sign in. 

 Figure: The selected Forbid Login with Password check box on the Users form 

 If the Forbid Login with Password check box is selected on the Users form for a particular user, the following UI elements become unavailable in the user profile on the General Info tab on the User Profile (SM203010) form: 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with OpenID Identity Providers | 243 

- The **Password** box 

- The **Password Recovery Question** box 

- The **Change Password** button 

- The **Change Answer** button Users can view information about an external identity linked to their Acumatica ERP accounts on the **External Identities** tab of the _User Profile_ (SM203010) form. A system administrator can review this information for each user on the **External Identities** tab of the _Users_ form. On the tab, in the **Provider Name** column, the system displays the display name of the OpenID provider. The check box in the **OIDC** column is selected for the active OpenID Provider and cannot be edited. 

#### Configuring Automated Sign-Out 

 Usually, when a user signs in to Acumatica ERP with an OpenID provider, the user remains signed in with the identity provider even aer signing out from the system. In some cases—for example, to comply with legal requirements—it might be necessary to terminate a session with the identity provider when a user signs out of Acumatica ERP. 

 To configure automated sign-out from the identity provider, you use settings in the Logout Settings section on the Authentication Settings tab of the OpenID Providers (SM303020) form (see the following screenshot). With these settings specified, when a user signs out of Acumatica ERP, the system redirects the user to the sign-out page of the OpenID provider that was used to sign in to Acumatica ERP. The system also sends a sign-out request to the provider to automatically sign the user out. Aer successful signing out, the system redirects the user back to the Acumatica ERP sign-in page. 

 Figure: The settings to configure automated sign-in from an OpenID provider 

 To configure this behavior, you select the Perform Logout From Provider check box, and the system makes the Logout Endpoint box required. In this box, you specify the sign-out endpoint for the OpenID provider. Alternatively, if the OpenID provider supports discovery requests, you can click the Autoconfiguration button on the tab, and the system will automatically fill in the value. 

 Then you clicks View Redirect URIs on the form toolbar, and the system opens the Redirect URIs dialog box. In the dialog box, you copy the value from the Post Logout Redirect URI box. In the configuration settings for Acumatica 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with OpenID Identity Providers | 244 

 ERP on the OpenID provider platform, you paste the value to make the OpenID provider redirect a user back to the Acumatica ERP sign-in page. (The place to paste the link may differ, depending on the OpenID provider.) 

 In some cases, a user should not be redirected back to the Acumatica ERP sign-in page aer they sign out from the OpenID provider. To support this system behavior, you select the Do Not Redirect Back Aer Logout check box in the Logout Settings section on the Authentication Settings tab of the OpenID Providers form. In this case, you do not need to specify a corresponding redirect URI in the configuration settings for Acumatica ERP on the OpenID provider platform. 

### Sign-In with OpenID Identity Providers 

 When general and authentication settings are specified, a system user can select a sign-in option on the Sign-In page. 

 In this topic, you will learn how the sign-in process looks in a multitenant instance depending on whether access to tenants is restricted. The process of signing in to a single-tenant instance is not different from the process of signing in to an unrestricted multitenant instance, except for a user has no ability to select a tenant. 

#### Signing In to an Unrestricted Multitenant Instance 

 In a multitenant instance, the system displays the list of available sign-in options for the selected tenant on the Sign-In page. If the user selects another tenant, the system will display the list of any sign-in options available for the newly selected tenant. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with OpenID Identity Providers | 245 

 Figure: Sign-In page with the tenant's sign-in options 

#### Signing In to a Restricted Multitenant Instance 

 A system administrator may restrict the list of tenants a user can see to only the tenants the user has access to by selecting the Secure Tenant on the Sign-In Page check box on the Tenant Setup page of the Acumatica ERP Configuration Wizard. In this case, the Tenant box does not appear on the Sign-In page (see the following screenshot). To sign in, a user should authenticate themselves by entering their Acumatica ERP credentials. 

 Then if the configuration of the sign-in provider is the same across all tenants added to the instance, the user will be signed in to the first tenant that is available for them. In this case, the instance will automatically handle all the user-related operations, such as user creation, user association, and user binding. 

 If at least one of the tenants has a different provider configuration, the user needs to click More sign-in options for tenant , type the needed tenant name, and view the sign-in options that are available for the specified tenant. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with OpenID Identity Providers | 246 

**_Figure: Sign-In page with restricted access to tenants_** 

If a user has permitted a browser to save information about the tenant to which a user signed in most recently, the system will display the tenant name and sign-in options available for the tenant, as shown in the following screenshot. The user may remove the tenant selection and specify another tenant aer either signing in with Acumatica ERP credentials or clicking the **More sign-in options for tenant** button. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with OpenID Identity Providers | 247 

 Figure: Sign-In page with restricted access to tenants and saved tenant information 

### Direct Sign-In Through an OpenID Identity Provider 

 You can set up a single sign-in connection to Acumatica ERP from an OpenID identity provider—such as OneLogin or OKTA—that serve as central hubs for multiple applications, including Acumatica ERP. With this configuration, a user who is signed in to an OpenID provider can sign in to Acumatica ERP with just one click on the Acumatica ERP icon, bypassing the Acumatica ERP Sign-In page. 

 In this topic, you will learn how to set up direct sign-in access to Acumatica ERP from an OpenID provider. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with OpenID Identity Providers | 248 

#### Configuring the Direct Sign-In Settings 

 To set up direct sign-in access to Acumatica ERP from an OpenID provider without entering credentials on the Acumatica ERP Sign-In page, first you need to register Acumatica ERP on the OpenID provider platform your company uses. 

 Then on the OpenID Providers (SM303020) form of Acumatica ERP, you have to register an OpenID provider (as described in Configuration of an OpenID Identity Provider ). Once the provider is registered and saved, Acumatica ERP generates the unique sign-in link and displays it in the Initiate Login URI box in the Summary area of the OpenID Providers form, as shown in the following screenshot. 

 Figure: The Initiate Login URI box 

 You need to copy this link by clicking Copy next to the Initiate Login URI box and pasting it in the configuration settings for Acumatica ERP on the OpenID provider platform. (The place to paste the link may differ, depending on the OpenID provider.) Aer the link is specified and the Acumatica ERP icon is added, users can access Acumatica ERP without having to enter their credentials on the Acumatica ERP Sign-In page.. To access Acumatica ERP, they need to sign in to the OpenID provider and click the Acumatica ERP icon. 

### To Register an Acumatica ERP Instance with Google 

 For your users to be able to sign in with their Google accounts, you first have to register your Acumatica ERP instance with Google and obtain credentials for configuring the OpenID provider. This is a necessary step in configuring single sign-on (SSO) for your Acumatica ERP instance. For more information about registering applications in Google, see Google Developers Console Help. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with OpenID Identity Providers | 249 

#### Before You Begin 

 You should have a Google account that you will use to register your Acumatica ERP instance. 

 Note the following: 

- The procedure below covers the most common usage scenarios. If you’re implementing a     more complicated scenario and you encounter difficulties, contact Acumatica ERP technical     support. 

- The vendor of the third-party soware may change the user interface and settings. The labels     you see in the UI may differ from the ones described in the procedure. 

- The procedure will be updated to describe new common scenarios and UI changes arise. 

#### To Register an Acumatica ERP Instance with Google 

 Perform the following steps: 

1. Sign in to the _Google Developers Console_. 

2. Optional: If you have not created any projects yet and you see the **Manage resources** page of the Google     Developers Console, as shown in the screenshot below, click **Create project**. 

 Figure: Active projects 

3. In the **New Project** box that appears, type the project name and click **Create**. 

4. On the **API & Services** page that opens, click the **Select from** drop-down list at the top of the page. In the     **Select from** box that appears, select the project. 

5. On the **API & Services** page, configure the settings of the consent screen as follows:     a. In the sidebar on the le, click **OAuth consent screen** tab.     b. Select the user type ( **Internal** or **External** ) based on your needs, and click **Create**.     c. Enter at least the following settings, as shown in the screenshot below: 

- **App name** shown to users 

- **User support email** 

- **Developer contact information** 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with OpenID Identity Providers | 250 

 Figure: Consent screen configuration 

 d. Click Save and Continue. 

6. Add credentials for the project as follows: 

 a. In the sidebar on the le, click Credentials ,and then navigate to Create credentials > OAuth client ID , as shown in the screenshot below. 

 Figure: Credentials creation 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with OpenID Identity Providers | 251 

b. On the **Create OAuth client ID** page, shown in the screenshot below, enter the information as follows, and then click **Create** : 

- **Application type** : Select _Web application_. 

- **Name** : Type your application name. 

- **Authorized JavaScript origins** : Type the root domain of your application site—for example, _https://_     _app.site.net_. 

- **Authorized redirect URIs** : Type the redirect URL of your instance. 

 The box is case-sensitive. 

 This is the full URL of your instance with /oidc-login/redirect appended onto the end—for example, https://app.site.net/instance_name/oidc-login/redirect 

 To get this URL, in your Acumatica ERP instance open the OpenID Providers (SM303020) form and on the form toolbar, click View Redirect URI. In the Redirect URI dialog box that opens click Copy. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with OpenID Identity Providers | 252 

 Figure: Create Client ID page 

7. In the dialog box that opens, copy the client ID and the client secret for later retrieval (see the screenshot     below). You have to register these credentials in your Acumatica ERP instance. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with OpenID Identity Providers | 253 

 Figure: OAuth 2.0 credentials of the selected project 

Aer you have registered your Acumatica ERP instance with Google and obtained credentials, you have to configure OpenID provider in your Acumatica ERP instance using these credentials, as described in _Configuration of an OpenID Identity Provider_. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with SendGrid | 254 

## Integrating Acumatica ERP with SendGrid 

 In Acumatica ERP, you can configure integration with the SendGrid email platform. With this integration configured, a user can send emails by using the SendGrid account and can track the following: 

- The status of email delivery 

- An email bouncing and an email being marked as spam 

- The opening of each email and the clicking of links within it A user can view the tracking details by using the SendGrid portal or within Acumatica ERP. 

### Configuration of Integration with SendGrid 

 To start using the service provided by the SendGrid platform, your company should set up an account with SendGrid and obtain API keys for the email accounts to be configured. 

 Using the SendGrid portal, for each API key, you should configure full access to the following API capabilities: Mail Send , Scheduled Sends , and Event Notification. 

 To make the integration functionality available in Acumatica ERP, you enable the SendGrid Integration feature on the Enable/Disable Features (CS100000) form. 

#### Configuration of a SendGrid Email Account 

 Your company may use multiple email addresses for sending emails with SendGrid. For each email address you can configure a corresponding email account in Acumatica ERP using the same API key. 

 On the Email Accounts (SM204002) form, you create an email account and select SendGrid in the Email Service Plug-In box (see Item 1 in the following screenshot). With the plug-in selected, the system changes the layout of the form to display the settings that are relevant to the SendGrid integration only. At minimum, the administrator needs to specify an API key in the APIKey row on the Plug-In tab of the form to start sending emails with the SendGrid account (Item 2). 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with SendGrid | 255 

 Figure: Configuration of a SendGrid email account 

 Also, you can specify several settings that will be used by default for every email sent from this email account (the settings can be overridden for a particular email). The following parameters (Item 3 in the screenshot above) are available: 

- _Categories_ : The list of SendGrid email categories (with a comma used as the separator) to be used for     reporting purposes in your SendGrid portal. 

- _TrackEmailOpens_ : A check box that indicates (if selected) that a system will include a single-pixel image in     the body of email to track whether a recipient opened the email. 

- _TrackClicksInEmail_ : A check box that indicates (if selected) that SendGrid will collect information about     navigation to all URLs included in the body of email. With this configuration, users of Acumatica ERP can send emails by using the email account and review tracking results by using the SendGrid portal. 

 To enable support of the SendGrid Reply-to functionality for the email account, you select the Add Tags for the Incoming Processing check box on the Incoming Mail Processing tab of the Email Accounts form. 

#### Configuration of Receiving Tracking Results for an Email 

 For the results of email tracking to be displayed in Acumatica ERP, the system needs to receive the corresponding information from SendGrid. This connection is implemented by using webhooks. For webhooks to be used, an Acumatica ERP instance should be accessible through the web, or a proxy server should be configured. 

 On the Email Accounts (SM204002) form, for the corresponding system email account, you enable the receipt of information from SendGrid by selecting the check box in the EnableWebhooks row on the Plug-In tab of the form (see Item 1 the following screenshot). 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with SendGrid | 256 

 With this check box selected, the system automatically creates a webhook that is associated with the API key specified for the email account. On the Plug-In tab of the form, the system inserts the identifier of the created webhook in the WebhookID row and the webhook's URL in the WebhookURL row (also shown in Item 1). You can manually select another webhook or specify the webhook's URL for an email account. 

 You can review the details of a webhook or configure a new one manually on the Webhooks (SM304000) form. 

 Additionally, you can configure what tracking information should be sent to Acumatica ERP by selecting or clearing the check boxes in the corresponding rows on the Plug-In tab of the form (Item 2). 

 Figure: The settings of a system email account related to tracking results 

### Mail Processing by Using SendGrid 

 Aer the integration with SendGrid has been configured, you can start processing emails and track activities related to a specific email account. 

#### Sending and Tracking of an Email 

 On the Email Activity (CR306015) form, you create a new email. In the From box (see Item 1 in the following screenshot), you select an email account of the Email Service Plug-In type (Item 2). With an account of this type selected, the system displays the SendGrid section (Item 3) on the Details tab of the form. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with SendGrid | 257 

 Figure: The SendGrid settings available for an email 

 In the section, you can edit the list of categories and override the default tracking settings. Additionally, by selecting the Bypass Suppression Checks check box, you can specify whether the system should send the email to the specified addresses even if these addresses are in the Suppressions list of SendGrid. The Suppressions list includes email addresses that have unsubscribed, email addresses that have marked the email as spam, and email addresses to which the system failed to deliver emails (because they bounced, are blocked, or are invalid). 

 Aer the email has been sent, you can review the tracking results in the SendGrid portal. If receipt of the tracking results was configured for the email account on the Email Accounts (SM204002) form, you can review the tracking results of a particular email on the Tracking tab of the Email Activity (CR306015) form. 

#### Tracking Activities for an Email Account 

 For tracking activities related to a specific email account of the Email Service Plug-In type, you can use the Email Summary dashboard and the Email Tracking inquiry located on the side panel of the Email Accounts (SM204002) form (see the following screenshot). 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with SendGrid | 258 

 Figure: The dashboard with information related to an email account of the Email Service Plug-In type 

#### Scheduling of an Email Delivery 

 On the Email Activity (CR306015) form, you create an email to be sent from the email account that is connected to SendGrid and click Send At on the More menu. The system opens the Send At dialog box, where you specify the date and time of delayed email delivery, as the following screenshot shows. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with SendGrid | 259 

 Figure: The Send At dialog box 

 The system sends the data to SendGrid for processing, and upon receiving a confirmation, the system changes the email's status to Scheduled and displays the scheduled date and time in the Send At box on the Details tab. 

 For the email activities with the Scheduled status, the Cancel Sending command is available on the More menu of the form. If you cancel the sending of a scheduled email, the system clears the value of the Send At box and changes the email's status to Dra. 

#### Import of SendGrid Designs 

 To enable importing of SendGrid designs, you enable the SendGrid Integration and Import of SendGrid Designs (Experimental) features on the Enable/Disable Features (CS100000) form. With the features enabled the Import SendGrid Design button is displayed on the toolbar of the Email Templates (SM204003) form. 

 You select an email account that has been configured for integration with the SendGrid email service in the From box for an email template and the Import SendGrid Design button becomes available, as the following screenshot shows. 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with SendGrid | 260 

**_Figure: The new Import SendGrid Design button_** 

You click **Import SendGrid Design** , and the system opens the **Import SendGrid Design** dialog box, where you selects a design to be imported by searching the list of the available templates (if any have been created in SendGrid). The following screenshot shows the **Import SendGrid Design** dialog box with the preview of the selected design loaded. 

**_Figure: The Import SendGrid Design dialog box_** 

Then you click **Import** in the dialog box, and the system replaces the content in the **Subject** box of the Summary area and on the **Message** tab of the form. You can edit the imported content then. 


<!-- PAGE_BREAK -->
 Integrating with LLM Providers | 261 

## Integrating with LLM Providers 

 In this chapter, you will learn how to connect to an external LLM (large language model) and use it to automate your daily tasks. 

### Integration with LLM Providers: General Information 

 Employees in your company oen need to repeat the same set of tasks every day. This could be adding descriptions for stock and non-stock items, assigning opportunities to workgroups, or writing closure notes for cases. 

 If you’ve deployed an LLM through a provider, you can configure it to generate the text in Acumatica ERP. With AI Studio , your organization can connect its large language model (LLM) to Acumatica ERP without separate security validation. The LLM can then generate helpful, task-specific content right in the system. 

 Setting up AI Studio is quick and easy. You'll create a connection to your LLM, create a prompt definition with instructions for what you want it to do, and test everything before you go live. With the integration in place, AI Studio adds a new command to the More menu, a user clicks it, and the LLM takes care of the rest. 

 This functionality is available only in the Modern UI and only if the AI Studio feature is enabled on the Enable/Disable Features (CS100000) form. This feature is subject to licensing; please consult the Acumatica ERP sales policy for details. 

#### Learning Objectives 

 In this chapter, you will learn how to do the following: 

- Create a connection to the LLM and test this connection 

- Create a prompt definition with the instructions for the model 

- Test the prompt definition 

- Test the generated command 

#### Applicable Scenarios 

 You configure the connection to an LLM provider in the following cases: 

- You are a system administrator responsible for integration with external systems. 

- You are a customizer who works on simple customizations. 

#### Preparation for the Integration 

 Before you begin creating prompt definition for the LLM, make sure that the following is true: 

- You've enabled the _AI Studio_ feature on the _Enable/Disable Features_ (CS100000) form. 

- You have an account with an LLM provider. 

- You've deployed an LLM on this provider's website. 

 AI Studio sends potentially sensitive data to your chosen LLM provider. The provider processes this data but does not store it. Ensure that this aligns with your company's data handling policies before using this functionality. 


<!-- PAGE_BREAK -->
 Integrating with LLM Providers | 262 

 Acumatica ERP supports the following LLM providers: 

- Azure 

- Amazon Bedrock (AWS) 

- OpenAI 

- Anthropic 

 You cannot create a connection by using your ChatGPT account. You need to use OpenAI API. 

#### Creation of an LLM Connection 

 You start the setup process by configuring the connection between the LLM and the system on the LLM Connections (ML201000) form, which is shown below. This includes specifying the following settings: 

- **Connection ID** : A unique identifier of your connection. 

- **Connection Name** : The display name of the LLM, which you can use to identify your connection. (You can     use the name specified on the LLM provider's website.) 

- **LLM Provider** : The name of the LLM provider that you are going to use. 

 You click Refresh to the right of this box to load the up-to-date list of available providers. 

- **Connection Parameters** : The parameters that are used to connect to the LLM. The list of parameters     depends on the provider and the model that you're using. You copy the needed values from the model’s     page on your provider's website. 


<!-- PAGE_BREAK -->
 Integrating with LLM Providers | 263 

**_Figure: The LLM Connections form_** 

To make sure the connection works, you click **Test Connection** on the form toolbar. The system sends a request to the LLM provider, which verifies the connection data. 

Once the system verifies the connection and its status becomes _Active_ (shown below), you proceed to the next step. 

**_Figure: Successful connection_** 


<!-- PAGE_BREAK -->
 Integrating with LLM Providers | 264 

 If you have previously created a connection by using the Azure OpenAI provider, change it to Azure in the LLM Provider box. 

#### Creation of Prompt Definitions 

 You create prompt definition on the LLM Prompts (ML202000) form, which is shown below. A prompt definition establishes the full structure of a prompt—including instructions, input data, and output formatting. The system uses this definition to generate actual prompts when users click a command or run a test. 

 The form has two panes: You use the le pane for specifying the settings and the right one for testing the prompt definition. 

 Figure: The LLM Prompts form 

 On the le pane, you specify the following settings: 

- **Prompt ID** : The internal identifier of the prompt definition. 

- **Active** : The check box that you select to create the command on the source form. 

- **Prompt Name** : The prompt definition’s display name. This name is also used for the command (and button)     if the **Button Name** box is le blank. 

- **LLM Connection** : The name of the connection that you've created in the previous step. You can create a     prompt definition without a connection; however, you need a connection to test this definition and use it. 

 The lookup table in the LLM Connection box displays only connections that have been tested —that is, connections with the Active status. 

- **Source Form** : The data entry form for which the button and command will be created. 

- **Button Name** (optional): The name of the command on the More menu that the model will generate. If a     user marks the command as a favorite, the system also adds it to the form toolbar as a button.     If you leave this box empty, the system will use the prompt name as the command and button name. 

#### Adding of Instructions for the Model 

 In the prompt definition, you specify how the LLM should process data and what data it should return. 

 A prompt defines what the model is expected to do. It may consist of an instruction, a question, a task description, or a combination of these. Prompts guide the model’s behavior, influence its output, and align the response with the user’s intent. A prompt might also include context, constraints, and examples. 


<!-- PAGE_BREAK -->
 Integrating with LLM Providers | 265 

On the **Instructions** tab of the _LLM Prompts_ (ML202000), which is shown below, you enter instructions for the LLM, providing as much relevant detail as possible. By default, the tab contains three sections—which you should preserve for best results: 

- **Context Instructions** : You enter general instructions for the model. These could include the business     context, the role for which the prompt is executed (for example, _write like a sales manager_ ), or the tone and     style of the output text. 

 Context instructions affects the results and the correct execution of the prompt. Avoid removing these instructions; instead, edit them to fit your task. 

- **Instructions with Input Data** : You describe what the model should do and what data it should use. As input     data, you can use the fields from only the source form. 

- **Output Data Field** : You specify which fields the model should fill in, how it should fill them in, and what     limitations apply to the task. You can specify fields from only the source form. 

 If the instructions do not contain output fields, the system displays an error when you try to generate an example or test the prompt. 

**_Figure: Instructions for the model_** 

You can also add your own sections to refine the instructions, modify existing sections, or remove them. You can optionally precede the name of each new section with the ## notation or any other notation. 


<!-- PAGE_BREAK -->
 Integrating with LLM Providers | 266 

 Click Insert on the formatting toolbar to select an input or output field. 

#### Specifying of the Output Format 

 On the Output Format tab of the LLM Prompts (ML202000) form, which is shown below, you specify how the data that the model returns should be formatted in the following sections: 

- **Output Format Example** : An example of the data the model should return. 

- **Important Note** : Information about how the returned data should be formatted. 

 Avoid removing this section. It provides guidance on what data the model should return and how this data should be formatted, which significantly improves the quality of the results. 

 Figure: The output format for the model 

 To see an example of the returned data, you click Generate Example on the formatting toolbar. The system generates an output example for the model (see below) by using the output fields specified on the Instructions tab. The system uses randomly chosen values for these fields from the database. You can edit the example to refine it, if needed. 

 If the system cannot find values for an output field in the database, it does not add this field to the example. If the number of output fields in the instructions and in the returned data differs, you need to manually add to the example the output field that is specified in the instructions but that was not added to the example. 


<!-- PAGE_BREAK -->
 Integrating with LLM Providers | 267 

 Figure: The generated output example 

#### Testing of the Prompt Definition 

 Aer you specify all the needed settings, you need to test the prompt definition on the data from your instance. You use the right pane of the LLM Prompts (ML202000) form for the testing as follows: 

1. You select a record in the **Example Record** box in the **Prompt Testing** section.     The system adds the full prompt to the **Prompt** tab. (This prompt is the combination of the data from the     **Instructions** and **Output Format** tabs.) It replaces placeholder fields with real values. For example, notice     that the system replaces the Item.InventoryCD input field (Item 1 below) with the ID of the record that     you’ve selected in the **Example Record** box (Items 2 and 3). 


<!-- PAGE_BREAK -->
 Integrating with LLM Providers | 268 

 Figure: Testing the prompt 

2. You click **Test Prompt**. 

 The system sends the instructions to the LLM. The Response tab displays the returned data in JSON format (shown below). 

 Figure: The response from the model 

3. You review the **Preview** tab to see how this data will be displayed on the corresponding form (see below). 


<!-- PAGE_BREAK -->
 Integrating with LLM Providers | 269 

 Figure: The preview of the generated description 

 If you are not satisfied with the results, you can modify the definition and test it again. 

4. To go live, you select the **Active** check box in the Summary area and save your changes. Selecting this check     box adds the LLM command to the source form. 

#### Testing of the LLM Command 

 Aer you select the Active check box and save your changes on the LLM Prompts (ML202000) form, the system adds the new command (Item 1 below) to the More menu of the corresponding form—the Non-Stock Items (IN202000) form in this example. Before you click this command, the Description box (Item 2) and the Description tab (Item 3) may contain some text, or they can be empty. 


<!-- PAGE_BREAK -->
 Integrating with LLM Providers | 270 

**_Figure: The LLM command_** 

 You can mark the new command as favorite to add it to the form toolbar for your user account. 

You then click the command on the More menu or the button on the form toolbar. The system updates the text in the **Description** box and adds a detailed description to the tab (shown below). 

**_Figure: Generated descriptions_** 

If you are not satisfied with the generated descriptions, you can click the button again to cause the system to generate new text. (Alternatively, you can edit the generated text.) 


<!-- PAGE_BREAK -->
 Integrating with LLM Providers | 271 

 The underlying action for the added command can be customized as any other action of the form. For details, see Actions on Forms: General Information , Action Configuration: General Information , and Workflow Actions: General Information. 

#### Built-In Prompt Definitions 

 The following three prompt definitions are available in an out-of-the-box system: 

- _Closure Notes_ : Creates comprehensive closure notes that summarize the outcome of the case for knowledge     management and auditing. It uses related case records and logged activities to add text to the **Closure**     **Notes** tab of the _Cases_ (CR306000) form. 

- _Stock Item Desc_ : Uses inventory details to generate clear and professional product descriptions for the     **Description** box and **Description** tab of the _Stock Items_ (IN202500) form. 

- _Refine Reply_ : Uses an entire thread on the _Email Activity_ (CR306015) form and generates a reply to the most     recent email. It can generate a reply from scratch or refine an existing dra. 

 The respective command is added to the Email Activity (CR306015) form, which you open by clicking Create Email on the Activities tab of the Cases (CR306000) form. 

 To use a built-in prompt definition, you do the following: 

1. Create an LLM connection on the _LLM Connections_ (ML201000) form 

2. Specify this connection in the **LLM Connection** box on the _LLM Prompts_ (ML202000) form 

3. Test the definition 

4. Mark it as _Active_ 

#### Prompt Example 

 Below is an example of a prompt definition. 

 Table: Generation of the item description 

 Section Instructions 

 Context Instructions 

 You are an AI assistant working in Acumatica ERP. Act as a marketing manager who works with products and services. 

 Task Description 

 Create a clear, professional product summary from the inventory information from the sections listed below. 

 Instructions with Input Data 

 Use the following fields in the description: 

- Inventory Code: ((Item.InventoryCD)) 

- Description: ((Item.Descr)) 

- Inventory Class: ((Item.ItemClassID)) 

- Current detailed description: ((Item.Body)) 


<!-- PAGE_BREAK -->
 Integrating with LLM Providers | 272 

 Section Instructions 

 Output Data Field 

 Generate both a short summary and a detailed HTML description with proper formatting and customer-relevant details: 

1. @((Item.Descr))(string): A full HTML version with appropri-     ate structure (headings, paragraphs, lists), limited to 800px     width. Include expanded, useful details for customer deci-     sion-making. 

2. @((Item.Body))(string): An expanded HTML version with clean     formatting (headings, paragraphs, lists) and a width limit of     800px. The HTML should elaborate on the short version with cus-     tomer-relevant information. 

By using the command related to this prompt, users can take 15 seconds to generate consistent, professional product descriptions—a process that previously took 15 minutes. 

- Only the (( )) and @(( )) notations are supported in the prompt definition. 

- The generated command can modify only the output fields that you can edit manually on the     form. 


<!-- PAGE_BREAK -->
 Configuring Multifactor Authentication | 273 

## Configuring Multifactor Authentication 

 Acumatica ERP provides mechanisms to support multifactor authentication to prevent unauthorized system access. Security-conscious businesses require multifactor authentication to verify users' identities before allowing them to access sensitive ERP data. 

### General Purpose and Types of Multifactor Authentication 

 In most cases, multifactor authentication involves two authentication mechanisms. By combining two authentication mechanisms, businesses can achieve two-factor authentication. Most two-factor mechanisms require something you know (such as a password) plus either something you have (a token, mobile phone, or USB) or something that identifies who you are (fingerprint or other biometric information). 

#### Authentication Mechanisms 

 The following list contains examples of existing authentication mechanisms that can be combined to achieve multifactor authentication: 

- Username and password: The most basic authentication mechanism requires users to enter a username     and password. Additional options such as IP address validation and strong password requirements can     provide additional security. 

- Token or key fob: The token displays a code that is regularly updated. The user types the code into the ERP     system, which verifies the code. RSA SecurID tokens are an example of this mechanism. 

- Mobile devices: An ERP system sends a text message to the user’s mobile device. The user types the received     code to verify the sign-in directly on the phone or by entering an access code in the application on the     device that is used to access the ERP system. Another option is to install a secure application on the phone     that behaves like a token. 

- Email: During sign-in, the system sends a code to the user’s email address. The user enters a code in the     email to authenticate themselves. 

- Smart card or USB device: Hardware issued by the organization can be configured to grant access when a     card is swiped or a USB device or chip is inserted. 

- Fingerprint reader or biometric device: Biometric devices work like smart cards. They require an initial setup     but cannot be lost or stolen. 

- Virtual private networks (VPNs): A VPN has its own authentication mechanism, which provides a layer     of security at the communication level. VPNs can be authenticated by using passwords, tokens, MAC     addresses, and other methods. Acumatica ERP offers the ability to configure two-factor authentication without setting up integration with multifactor authentication providers. If the two-factor authentication is enabled, every user will need to present to the system additional evidence (the second factor) of authentication in addition to the user credentials. The second factor is either an access code or sign-in approval sent from the user's mobile device. An access code can be generated by using the web application or mobile device, or it can be sent by email and SMS. For details, see _Two- Factor Authentication: General Information_. 

#### Adaptive (Smart) Multifactor Authentication 

 Oen there is a trade-off between security and usability. The additional security associated with multifactor authentication comes at the price of users logging in two times instead of one. 

 To improve usability, some multifactor systems have been configured to select multiple authentication mechanisms only when the risk profile of system entry is high. The risk profile can be set based on the information 


<!-- PAGE_BREAK -->
 Configuring Multifactor Authentication | 274 

 gathered about the user’s environment, such as the machine MAC address, the IP address, browser cookies, the time of day, and other patterns. 

 Examples of risk profiles include the following: 

- Low risk: Sign-in from an office IP address at 9 AM on weekdays by using a browser with a stored cookie 

- Medium risk: Sign-in from an unfamiliar IP address or unknown device 

- High risk: Sign-in from an unfamiliar IP address aer hours by using an unfamiliar device Based on the risk level, multifactor authentication may not be required. Machine learning can be utilized to analyze failed sign-ins and adjust risk levels. 

### Multifactor Authentication in Acumatica ERP 

 This topic describes possible strategies to use multifactor authentication in Acumatica ERP. 

#### Single Sign-On 

 The best way to implement multifactor authentication in Acumatica ERP is to take advantage of Acumatica’s single sign-on (SSO) capabilities. Currently, Acumatica ERP supports SSO with the following multifactor authentication providers: 

- **Microso** : Azure multifactor authentication supports phone calls, text messages, mobile app notification,     and third-party tokens. 

- **Google** : Google offers two-factor authentication via mobile phone or USB security key. For more     information, see _Google 2_Step Verification_. 

- **OneLogin** : A customization project is required for the use of OneLogin. Free and paid two-factor     authentication options include a one-time password app, Duo Security, RSA SecurID, and mobile options.     For more information, see _OneLogin MultiFactor Authentication_. With the use of one of these multifactor authentication providers, users sign in to a provider by using multiple authentication options. The user is then seamlessly signed into Acumatica ERP by using the SSO functionality (see the following screenshot). 

 Figure: User sign-in model 

#### Virtual Private Network (VPN) 

 An alternate strategy involves setting up a virtual private network (VPN). The VPN serves as the first layer of authentication, while the Acumatica ERP username and password act as the second layer. 

### To Implement Multifactor Authentication 

 Implementing multifactor authentication in Acumatica ERP involves several steps, as this topic describes. 


<!-- PAGE_BREAK -->
 Configuring Multifactor Authentication | 275 

#### To Implement Multifactor Authentication 

1. Obtain a Multifactor Authentication Provider Account.     Get an account for each user who will login to Acumatica ERP. The account must include single sign-on     capabilities as well as the multifactor authentication mechanism that you will utilize. 

2. Implement single sign-on.     Single sign on capabilities must be implemented at the authentication provider and inside Acumatica ERP.     First you need to enable SSO for the Authentication Provider. Obtain information from the Authentication     Provider on how to set this up.     Next you establish a secure mechanism to hand-off the authenticated users to Acumatica ERP. To provide a     secure hand off, you must implement an HTTPS connection between the two systems. Microso and Google     utilize OAuth 2.0, while OneLogin uses SAML 2.0 to communicate over the HTTPS connection. For more     information, see _Authorizing Client Applications to Work with Acumatica ERP_.     As a part of establishing a secure hand-off, each system will provide a certificate that can be entered into     the other system. On Acumatica ERP _Security Preferences_ (SM201060) form you can enter the certificate     provided by the external providers.     Single sign on setup usually involves changes to the web.config and other system files. SaaS     deployments will require assistance from you support provider. 

3. Modify the login page.     To prevent people from bypassing the multifactor authentication mechanism, remove the username and     password option from the login page. 

4. Link External Accounts to Acumatica ERP Accounts.     When an identity is passed from an external Authentication Provider, Acumatica ERP needs to know which     Acumatica ERP user this identity is associated with.     This linkage can be configured on the _Users_ (201010) form on the **External Identities** tab. 


<!-- PAGE_BREAK -->
 Managing Integration with External Applications | 276 

## Managing Integration with External Applications 

 In Acumatica ERP, you can build external applications into the product. For example, you can build Microso Power BI reports into Acumatica ERP so that users of your Acumatica ERP instance have these reports at hand when they work in Acumatica ERP. 

 Acumatica ERP supports integration with Microso Power BI. For more information, see Managing Power BI Integration. 

 Related Links 

- _Integration with External Applications_ 

- _To Integrate an External Application_ 

- _To Add an Integrated External Application Resource to Acumatica Site Map_ 


<!-- PAGE_BREAK -->
 Preparing Data for Import and Export by Using Scenarios | 277 

## Preparing Data for Import and Export by Using Scenarios 

 Before you import data to or export data from Acumatica ERP, you must define to the Acumatica ERP system the format of the data in the external system or file. For this purpose, you use data providers in the system. 

 In this chapter, you will find detailed information on data providers and will learn how to create data providers for the external data. 

### Import and Export Scenarios 

 To upload data to and from Acumatica ERP, you can use import scenarios and export scenarios , which define data import and data export instructions for the system. An import or export scenario is a sequence of actions to be executed for a data record as if the record is being manipulated by user through an Acumatica ERP form. When you enter data into the system manually, you perform a sequence of actions. You open the needed data entry form and start entering data. To add a new record, you use the UI elements one by one—that is, you type text, select values from combo boxes, clear or select check boxes, and click buttons. In the corresponding scenario, you compose exactly the same sequence of actions—you specify a command for each user action that would be performed on the form. Because you cannot perform multiple actions simultaneously on the form, the scenario executes commands successively. To construct the scenario, you reflect the actions you make on the form in the sequence of commands for the scenario. 

 In these scenarios, you either save data to an external system or file, or upload data from an external system or file to Acumatica ERP. Thus, you must define the format of the external system or file to the Acumatica ERP system. For this purpose, you set up a data provider in the system. A data provider is an entity that defines the structure of the external data source; Acumatica ERP then uses the data provider to transfer data from and to the external system or file. 

 Therefore, to use an integration scenario, you have to define the data provider and the needed import or export scenario, as illustrated in the following diagram. An integration scenario works as if the data is being manually processed on an Acumatica ERP form. 


<!-- PAGE_BREAK -->
 Preparing Data for Import and Export by Using Scenarios | 278 

When you are creating an integration scenario, you first create the needed data provider, which defines the type and schema of the data source. For example, the type can be an Excel file, and the schema of an Excel data source consists of the names of spreadsheets that should be used for data import or export and the list of columns on the spreadsheets. If the external data source has changed (for example, if a new column has been added to an Excel spreadsheet), you have to update the data provider in Acumatica ERP to be able to use the new column in scenarios for which the data provider is specified. 

Aer you have prepared the data provider, the second step is to define the scenario, including the scenario mapping. You can construct a scenario for any data entry form. In the scenario, you use internal fields, which are the fields of Acumatica ERP, and external fields, which are defined in the specified data provider. In the scenario, you map internal fields to external fields and specify commands. Integration scenarios are specific to the Acumatica ERP form and the external data schema. 

Aer the scenario is ready, you can run the import or export for the scenario to get the result. You can also schedule scenarios to be run, so that you can import and export data on a regular basis. 

You can find examples of integration scenarios in the I100 Integration Scenarios training course. 


<!-- PAGE_BREAK -->
 Preparing Data for Import and Export by Using Scenarios | 279 

### Data Providers 

 You create data providers on the Data Providers (SM206015) form. To create a provider, you specify its name and type, the access parameters to the source, and the data schema. 

#### Data Provider Types 

 Excel spreadsheets or files in CSV format are generally used for data exchange between different ERP products, because most ERP products support exporting and importing data in these formats. Besides using files in an external format as a data source, you can import data from or export data to an external application directly. For example, you can connect to a Microso SQL Server and download data from it or upload data to it. 

 Acumatica ERP provides a number of built-in types of data providers through which the application can efficiently import data from external files or third-party soware to Acumatica ERP, or export data from Acumatica ERP to external destinations. These types of data providers, which you use when you configure a provider on the Data Providers form, are listed below: 

- File providers that you use to access data in external files: 

- _CSV Provider_ (PX.DataSync.CSVSYProvider): For import from and export to files in CSV format 

- _Excel Provider_ (PX.DataSync.ExcelSYProvider): For import from and export to Excel     spreadsheets 

- _Excel Provider with Data Types_ (PX.DataSync.ExcelDependsDataTypesSYProvider): For     export to Excel spreadsheets of data of different formats 

- _XML Provider_ (PX.DataSync.XMLSYProvider): For import from and export to files in XML format 

- Providers that are preconfigured for importing data from and exporting data to external systems: 

- _Salesforce Provider_ (PX.DataSync.SFSYProvider): For import from and export to SalesForce CRM     by using the Simple Object Access Protocol (SOAP). 

- _Salesforce Sync Provider_ (PX.Salesforce.SalesforceProvider): For real-time synchronization     of data between Acumatica ERP and Salesforce. For details, see _Setting Up Synchronization with_     _Salesforce_. 

- _MS SQL Provider_ (PX.DataSync.MSSqlSYProvider): For import from and export to Microso SQL     Server. 

- _HubSpot Provider_ (PX.DataSync.HubSpot.HSSYProvider): For exporting leads to HubSpot     for nurturing and importing leads to Acumatica ERP for processing. You can find more information in     _Integration with HubSpot: General Information_. 

- _HubSpot Enhanced_ (PX.DataSync.HubSpot.HubSpotProvider): For synchronization of data     between Acumatica ERP and HubSpot. This data provider supports the use of the OAuth protocol for     authorization in HubSpot. For details, see _Integration with HubSpot: Enhanced HubSpot Data Provider_. 

- Providers for exporting payment data to external payment systems: 

- _ACH Provider_ (PX.DataSync.ACHProvider): For exporting data for processing in the Automated     Clearing House (ACH) system. You can find more information in _Processing ACH Payments_. 

- _ACH Download Provider_ (PX.DataSync.ACHPDownloadrovider): For exporting data for processing     in the Automated Clearing House (ACH) system, with the ability to create prenotes. 

- _Giro Payment Provider_ (PX.DataSync.Banks.GIROPaymentProvider): For exporting data for     processing in giro-based payment systems. 

- _CPA 005 Provider_ (PX.Objects.Localizations.CA.DataSync.CPA005ExportProvider):     For exporting data for processing in the Electronic Funds Transfer (EFT) system (used in the Canadian     localization). 

- _Business Process Provider_ (PX.DataSync.BusinessProcessSYProvider): For business process     monitoring in Acumatica ERP. You generally do not create data providers of this type manually. The system 


<!-- PAGE_BREAK -->
 Preparing Data for Import and Export by Using Scenarios | 280 

 creates providers of this type automatically when you click Create Subscriber > Import Scenario on the table toolbar of the Subscribers tab of the Business Events (SM302050) form. For details, see Business Events: Subscribers. 

- Provider for importing data from generic inquiries:     PX.DataSync.GenericInquirySYDataProvider: The data provider type to use Generic inquiry as     data provider for import scenario. 

 The Tax Provider , Tax Provider CSV , and Tax Zip Provider built-in types are obsolete. They were used to import data from the Avalara data files, but Avalara no longer supplies these files. Integration with Avalara is done through the Avalara AvaTax SOAP API. 

 To import data from other sources, you need to create a custom data provider by using the API provided by Acumatica ERP. 

#### Provider Parameters 

 To define a particular data source to be used for import or export, you define the parameters of the data provider on the Data Providers (SM206015) form. The set of parameters depends on the data provider type, as described below: 

- **Parameters of file providers:** File providers generally have a simple set of parameters that specify the file     properties necessary for accessing data in the file. Each of the file providers has the _FileName_ parameter,     which specifies the path to the file that should be used for data import or export. The path to the file     is set automatically aer you have uploaded an external file to the provider. The _FileName_ parameter     displays the path to the uploaded file in the internal format: Data Providers (<Data Provider     Name>)\<File Name>, where <Data Provider Name> and <File Name> are replaced with the     corresponding values.     Other parameters of a file provider depend on the provider type. You should specify these parameters so the     system can correctly open the file and process the contents of the file. 

- **Parameters of providers that connect to external data systems:** For providers that connect to external     data systems, such as SalesForce or MS SQL provider, you specify a set of parameters for connecting     Acumatica ERP to the external system. Each of these providers has a parameter that you use to specify the     location of the remote resource. This parameter is either the URL of a remote service or the path to a local     server.     Other parameters are specific to each provider type. These parameters are necessary for authentication on     the remote resource. 

#### External Data Schema 

 Data that you are going to transfer between an external data source and Acumatica ERP usually has a table structure. That is, the data includes a number of data records, and each record has a list of parameters specified. 

 You specify the structure of an external data source for a data provider by defining the external data schema—that is, you specify the objects and fields of the data source. The object is usually the whole data source or a part of the data source that corresponds to a complete data table. For example, for an Excel file, objects correspond to spreadsheets. For the source objects that should be used for import or export, you should select the Active check box in the Source Objects table on the Schema tab of the Data Providers (SM206015) form. 

 Source fields are defined by the list of attributes that are specified for each record. For an Excel file, source fields correspond to columns on a spreadsheet. For each field you want to use the field in a scenario, you should select the Active check box in the Source Fields table on the Schema tab of the Data Providers form. 


<!-- PAGE_BREAK -->
 Preparing Data for Import and Export by Using Scenarios | 281 

#### Data Provider Creation 

 You create data providers on the Data Providers form. The process of creating a data provider consists of the following general steps: 

1. **Reviewing the structure of external data**     Before you create the data provider, you review the external source to identify the needed provider type and     the external data schema. If you are going to import data to Acumatica ERP, you review the source data to     determine the needed provider type, to check that the data meets the requirements, and to see the external     data schema. If you are going to export data from Acumatica ERP, you review the data schema in the target     file or application to which you want to export the Acumatica ERP data, or create a file to hold the data to be     exported and provide field names matching the intended use of the data. 

2. **Creating a provider and setting its type**     On the _Data Providers_ form, you create the data provider. You specify the name of the provider, which     usually describes the data you will transfer by using this provider. You also select the needed type of the     provider. You can use built-in provider types or develop a custom data provider type. 

3. **Specifying the provider parameters**     On the **Parameters** tab of the _Data Providers_ form, you specify the particular data source. You attach a file or     specify the location of the remote source. You also specify the source-dependent parameters, if necessary. 

4. **Filling in the source objects and fields of the provider**     On the **Schema** tab of the _Data Providers_ form, you fill in objects and fields from the attached file or remote     resource to the data provider. 

 Aer that, the data provider is ready and can be edited as needed. For a file provider, you can upload the new version of an attached file and then update source objects and fields. For a provider connected to a remote system, you can reload the data schema from the server if you make any changes. 

 Related Links 

- _Integration with HubSpot_ 

- _To Create a CSV Data Provider_ 

- _To Create an Excel Data Provider_ 

- _To Create an XML Data Provider_ 

- _To Create a Microsoft SQL Data Provider_ 

- _To Modify a File Data Provider_ 

- _To Link a File Data Provider to an Existing File_ 

- _To Configure the Salesforce Data Provider_ 

### To Create a CSV Data Provider 

 You use the Data Providers (SM206015) form to create a data provider that defines the structure of external data for Acumatica ERP during data import or data export. 

 This procedure describes how to create a data provider that works with the records in a CSV file. 

#### Before You Proceed 

 Make sure the file for which you are going to create a data provider satisfies the following requirements: 

- The first row in the file must contain column headers, and the first row is not imported. 

- The field delimiter in the file cannot be used within values. For example, if you use a comma as the delimiter,     you cannot import values that contain commas, because they will not be recognized properly. 


<!-- PAGE_BREAK -->
 Preparing Data for Import and Export by Using Scenarios | 282 

 If you export to a CSV file records that contain a symbol that is used as a delimiter, then in the exported file, the system will enclose these records in quotation marks. 

- The names of source fields can contain letters, numbers, spaces, and underscore (_) symbols. Do not use     periods in the names of source fields because the period is a reserved symbol for formulas in import and     export scenarios. Thus, _Invoice Reference Number_ is a valid name of a source field, but _Invoice Ref. Number_ is     invalid. 

- The order of the columns in the source file is not important. It affects only the order of the fields in the     **Source Fields** pane on the **Schema** tab of the _Data Providers_ (SM206015) form. 

#### To Create a CSV Data Provider 

1. Review the file for which you need to create the data provider to identify the needed provider parameters     (the delimiter that is used in the file and file encoding) and external data schema. 

2. On the _Data Providers_ (SM206015) form, create a provider and specify the following settings: 

- **Name** : The name of the provider, which usually describes the data you will transfer by using this     provider, such as Import/Export Customers 

- **Data Type** : _CSV Provider_ (PX.DataSync.CSVSYProvider) 

3. On the form toolbar, click **Save**. You need to save the provider before you upload the file. 

4. Drag the file to the form, and refresh the form in your browser. The file is uploaded to the form. 

 As an alternative to this step, to upload the source file to the form, on the title bar, click Files. In the Files dialog box, which opens, click Browse to locate the source file. Select the file, and click Open. In the dialog box, click Upload to upload the file to the website; then close the dialog box. 

5. On the **Parameters** tab, do the following to specify the parameters of the data provider: 

- Check that the value of the _FileName_ parameter is correct; it was filled in automatically when you     uploaded the file. 

- As the value of the _Encoding_ parameter, specify the encoding of the source file by selecting the proper     encoding value from the drop-down list in the **Value** column of the table. 

- As the value of the _Delimiter_ parameter, specify the delimiter that is used in the CSV file. 

6. Open the **Schema** tab. In the **Source Objects** pane, select the **Active** check box for the only available object     of the CSV provider to make the object available in integration scenarios. 

 If you don't see an object on the Source Objects pane, click Fill Schema Objects on the toolbar of the pane. 

7. On the toolbar of the **Source Fields** pane, click **Fill Schema Fields**. The system displays the field names     available in the file in this pane. Make sure the **Active** check box is selected for all the fields of the file for     which data will be imported or exported. 

8. On the form toolbar, click **Save**. 

 You have created a CSV data provider that you can use in an import or export scenario. 

 Related Links 

- _Data Providers_ 


<!-- PAGE_BREAK -->
 Preparing Data for Import and Export by Using Scenarios | 283 

### To Create an Excel Data Provider 

 You use the Data Providers (SM206015) form to create a data provider that defines the structure of external data for Acumatica ERP during data import or data export. 

 This procedure describes how to create a data provider that works with the records in an Excel file. 

#### Before You Proceed 

 Make sure the file for which you are going to create a data provider satisfies the following requirements: 

- The file must be in XLSX format. XLS files are not supported. 

- Column headers must be specified in the first row of the file. 

- The names of source fields can contain letters, numbers, spaces, and underscore (_) symbols. Do not use     periods in these names because a period is a reserved symbol for formulas in import and export scenarios.     Thus, _Invoice Reference Number_ is a valid name of a source field, but _Invoice Ref. Number_ is invalid. 

- The order of the columns in the source file is not important. It affects only the order of the fields in the     **Source Fields** pane on the **Schema** tab of the Data Providers form (SM206015). In Acumatica ERP you can import values from calculated fields, such as =C2+D2. (For details on calculated fields, see _Using functions and nested functions in Excel formulas_ .) However, the examples in _Use Cases_ do not use these values. To import calculated fields, you can also use formulas when you create import scenarios. Another way to import calculated fields is to add a column with values copied from a calculated column next to the column with the formula. 

#### To Create an Excel Data Provider 

1. Review the data file for which you need to create the data provider to identify the external data schema.     Open the file and review the available columns. Make sure that you understand how the names of the     columns match the contents. 

2. On the _Data Providers_ (SM206015) form, create a provider with the following settings: 

- **Name** : The name of the provider, which usually describes the data you will transfer by using this     provider, such as Import/Export AR Invoices 

- **Data Type** : _Excel Provider_ (PX.DataSync.ExcelSYProvider) The list of provider parameters becomes available on the **Parameters** tab, which contains one parameter: _FileName_. 

3. On the form toolbar, click **Save**. You need to save the provider before you upload the file. 

4. Drag the file to the form, and refresh the form in your browser. The file is uploaded to the form. 

 As an alternative to this step, to upload the source file to the form, on the title bar, click Files. In the Files dialog box, which opens, click Browse to locate the source file. Select the file, and click Open. In the dialog box, click Upload to upload the file to the website; then close the dialog box. 

5. On the toolbar of the **Source Objects** pane of the **Schema** tab, select the **Active** check box for the needed     object (which corresponds to a spreadsheet) to make the object available in integration scenarios. 

6. On the toolbar of the **Source Fields** pane, click **Fill Schema Fields**. The system displays the field names     available in the file in this pane. Make sure the **Active** check box is selected for all the fields of the file for     which data will be imported or exported. 


<!-- PAGE_BREAK -->
 Preparing Data for Import and Export by Using Scenarios | 284 

7. Repeat the previous two steps for all the objects (spreadsheets) and fields (columns) that you want to use     for data import and export. 

8. On the form toolbar, click **Save**. 

 You have created an Excel data provider that you can use in an import or export scenario. 

 Related Links 

- _Data Providers_ 

### To Create an XML Data Provider 

 You use the Data Providers (SM206015) form to create a data provider, which defines the structure of external data and is used by Acumatica ERP during data import or data export. 

 The characters that are forbidden in XML are omitted during the data export to XML files. 

 This procedure describes how to create a data provider that works with the records in an XML file. 

#### Before You Proceed 

 Make sure the XML file for which you are going to create a data provider has one of the following formats: 

- Tree format, in which the values of the source fields are placed in the tags of the source XML file. The     structure must be similar to that shown in the following code. 

 <?xml version="1.0" encoding="us-ascii"?> <Root> <Columns> <Column>Type</Column> <Column>ReferenceNbr</Column> <Column>Status</Column> <Column>LineNumber</Column> <Column>InventoryID</Column> <Column>UnitPrice</Column> <Column>Quantity</Column> ... </Columns> <Rows> <Row> <Item>SO</Item> <Item>000001</Item> <Item>On Hold</Item> <Item>1</Item> <Item>Battery</Item> <Item>3.00</Item> <Item>15</Item> ... </Row> </Rows> </Root> 

- Flat format, in which the values of the source fields are placed in attributes of tags in the source XML file.     The structure must be similar to that shown in the following code. 

 <?xml version="1.0" encoding="us-ascii"?> 


<!-- PAGE_BREAK -->
 Preparing Data for Import and Export by Using Scenarios | 285 

 <Root> <Columns> <Column Name="Type"/> <Column Name="ReferenceNbr"/> <Column Name="Status"/> <Column Name="LineNumber"/> <Column Name="InventoryID"/> <Column Name="UnitPrice"/> <Column Name="Quantity"/> </Columns> <Rows> <Row Type="SO" ReferenceNbr="000001" Status="On Hold" LineNumber="1" InventoryID="Battery" UnitPrice="3.00" Quantity="15"/> </Rows> </Root> 

 If you need to use another XML format, you should develop a custom data provider by using the API provided by Acumatica ERP or use the contract-based API to import or export the data. For details about the contract-based API, see Configuring the REST API. 

#### To Create an XML Data Provider 

1. Review the file for which you need to create the data provider to identify the needed parameters of the     provider (the file format and file encoding) and the external data schema. 

2. On the _Data Providers_ (SM206015) form, create a provider, and specify the following settings: 

- **Name** : The name of the provider, which usually alludes to the data you will transfer by using this     provider, such as Import/Export Customers 

- **Data Type** : _XML Provider_ (PX.DataSync.XMLSYProvider) 

3. On the form toolbar, click **Save**. You need to save the provider before you upload the file. 

4. Drag the file to the form, and refresh the form in your browser. The file is uploaded to the form. 

 As an alternative to this step, to upload the source file to the form, on the title bar, click Files. In the Files dialog box, which opens, click Browse to locate the source file. Select the file, and click Open. In the dialog box, click Upload to upload the file to the website; then close the dialog box. 

5. On the **Parameters** tab, do the following to specify the parameters of the data provider: 

- Make sure that the value of the _FileName_ parameter is correct; it was filled in automatically when you     uploaded the file. 

- As the value of the _Encoding_ parameter, specify the encoding of the source file by selecting the     appropriate encoding value from the drop-down list in the **Value** column of the table. 

- As the value of the _Format_ parameter, specify the format of the XML file. 

6. On the **Schema** tab, in the **Source Objects** pane, select the **Active** check box for the only available object of     the XML provider, to make the object available in integration scenarios. 

 If you don't see an object on the Source Objects pane, click Fill Schema Objects on the toolbar of the pane. 

7. On the toolbar of the **Source Fields** pane, click **Fill Schema Fields**. The system displays the field names     available in the file in this pane. Make sure the **Active** check box is selected for all the fields of the file for     which data will be imported or exported. 

8. On the form toolbar, click **Save**. 


<!-- PAGE_BREAK -->
 Preparing Data for Import and Export by Using Scenarios | 286 

 You have created an XML data provider that you can use in an import or export scenario. 

 Related Links 

- _Data Providers_ 

### To Create a Microso SQL Data Provider 

 You use the Data Providers (SM206015) form to create a data provider that defines the structure of external data for Acumatica ERP during data import or data export. 

 This procedure describes how to create a Microso SQL data provider that is used to transfer data between Acumatica ERP and a table of a Microso SQL Server database. 

#### To Create a Microso SQL Data Provider 

1. Review the columns of the database table for which you need to create the data provider to identify the     external data schema. 

2. On the _Data Providers_ (SM206015) form, create a provider, and specify the following settings for it:     a. **Name** : The name of the provider, which usually describes the data you will transfer by using this        provider, such as Import Purchase Orders     b. **Data Type** : _MS SQL Provider_ (PX.DataSync.MSSqlSYProvider) 

3. On the **Parameters** tab, do the following:     a. As the value of the _Server_ parameter, specify one of the following: 

- The name of the computer where the Microso SQL Server instance is installed if you use the default     instance of Microso SQL Server (for example, MyServer) 

- The name of the computer and the name of the Microso SQL Server instance if you use a named     instance (for example, MyServer\MyInstance) b. Specify the database name as the value of the _Database_ parameter. c. Specify the login and password for accessing the SQL Server instance and the type of authentication that is used by the SQL Server instance (either _SQL_ or _Windows_ ). 

4. On the toolbar in the **Source Objects** pane of the **Schema** tab, click **Fill Schema Objects**. The system     connects to the database, pulls the list of tables and views from it, and populates the **Source Objects** tab     with the schema objects that correspond to tables and views. 

 If you don't see Fill Schema Objects on the toolbar, click , which displays any buttons that do not fit on the toolbar. 

5. Select the **Active** check box for the needed object. On the toolbar of the **Source Fields** pane, click **Fill**     **Schema Fields**. The system displays the column headers available in the source database table. Make sure     the **Active** check box is selected for all needed fields. 

6. Repeat the previous step for all objects (SQL tables and views) that you want to import data to and export     data from. 

7. Click **Save**. 

 You have created a Microso SQL data provider that you can use in an import or export scenario. 

 Related Links 

- _Data Providers_ 


<!-- PAGE_BREAK -->
 Preparing Data for Import and Export by Using Scenarios | 287 

### To Modify a File Data Provider 

 You can use the Data Providers (SM206015) form to modify existing data providers. 

 If the data source has changed—for example, if you have added a column to the Excel file—you have to update the data provider. To update the data provider, you have to replace the file attached to the provider on the Data Providers (SM206015) form and update the provider schema. 

#### To Modify a File Data Provider 

1. On the _Data Providers_ (SM206015) form, select the provider that you want to modify, and on the form title     bar, click **Files**. 

2. In the **Files** dialog box, click **Edit** to the right of the file name.     Clicking **Edit** opens the _File Maintenance_ form (SM202510), which displays the details of the file attachment. 

3. On the form toolbar, click **Check Out** to make the file unavailable to other users for editing while you are     updating it. You may skip this step if no other users can work with this file simultaneously. 

4. Click **Get Latest Version** on the form toolbar, and download the file. Open the file and modify it. Save the     edited version to your computer. 

 You do not necessarily have to download the file first; you can just upload a new version and skip this step. 

5. On the form toolbar of the _File Maintenance_ form, click **Upload New Version** to open the **File Upload** dialog     box, and upload the edited version of the file into the system. If you checked the file out, select the **Check In**     check box to make the file available for editing to other users.     On the **Versions** tab, notice the list of available file versions. If necessary, you could download or restore the     needed file version. To download a file version, select the needed version and click **View Selected Version**     on the table toolbar. Then you can upload the file as a new version. To delete a file version, click **Delete Row**     on the table toolbar. 

6. Close the _File Maintenance_ form and the **Files** dialog box to resume work on the _Data Providers_ (SM206015)     form. 

7. On the **Schema** tab, on the toolbar of the **Source Fields** pane, click **Fill Schema Objects**. The system     updates the list of available objects. Make sure the **Active** check box is selected for all objects that you need     to use for data import or data export. 

8. For each active source object, select the object on the **Source Fields** pane and click **Fill Schema Fields** on     the toolbar of the **Source Fields** pane. The system updates the list of available fields. Make sure the **Active**     check box is selected for all fields that you need to use for data import or data export. 

9. Click **Save** on the form toolbar. 

 Related Links 

- _Data Providers_ 

### To Link a File Data Provider to an Existing File 

 The file that should be used for creating the data provider may be already uploaded to Acumatica ERP. In this case, you perform the steps described below. You use the Search in Files (SM202520) form to get the link of the file you 


<!-- PAGE_BREAK -->
 Preparing Data for Import and Export by Using Scenarios | 288 

 need to link to a file provider. You then use the Data Providers (SM206015) form to create a provider and specify the copied link on that form. 

#### To Link a File Data Provider to an Existing File 

1. On _Search in Files_ (SM202520) form, in the **File Name Contains** box, type the name of the file that you need     to link to a file provider and press Enter. The table in the lower right pane contains the list of files matching     the specified criteria. 

2. For the needed file that appeared in the search results, click **Get File Link** , and copy the internal link to the     file from the **Attached File Link** dialog box. 

3. On the **System** tab, click **Integration**. In the navigation pane, navigate to **Manage > Data Providers**. 

4. Create a data provider, and specify its name and type in the **Name** and **Data Type** boxes. 

5. On the **Parameters** tab, set the _FileName_ parameter value to the copied link, such as [{up}Data     Providers (Export Leads)\Leads.xlsx]. 

6. On the **Schema** tab in the **Source Objects** pane, click **Fill Schema Objects**. The source objects appear on     the tab. Select the **Active** check box for the needed object. In the **Source Fields** pane, click **Fill Schema**     **Fields**. The fields have been retrieved from the file and appear on the tab. Make sure all fields are active. 

7. Save the provider. 

 You have created a file provider and linked it to a file that was uploaded to the system earlier. This provider can be used for importing or exporting records. 

 Related Links 

- _Data Providers_ 


<!-- PAGE_BREAK -->
 Configuring Import Scenarios | 289 

## Configuring Import Scenarios 

 You create import scenarios on the Import Scenarios (SM206025) form. To create an import scenario, you should specify its name, the Acumatica ERP form that should be used for importing data, the data provider that defines the structure of the imported data, and the data provider object; you should also configure the mapping of the scenario. 

### Import Scenario Creation 

 You create import scenarios on the Import Scenarios (SM206025) form. 

 The creation of the import scenario consists of the following general steps: 

1. **Analyzing the sequence of actions on the form**     Before you start creating an import scenario on the _Import Scenarios_ form, you should create a data     provider, as described in _Data Providers_ , and learn how a data record is entered on the target Acumatica ERP     form.     When reviewing the Acumatica ERP form for which you will compose the import scenario, pay attention to     the required fields on the form. All these fields must be filled in when you create a new record. Some fields     on the form can get default values, which can also be used during import. For example, you can configure     customer classes before you import customer records so that when these records are imported, the system     gets most of settings from the customer class specified for the customer. You can provide the values of the     fields that have default values during import and override these default values. Make sure all required data     fields either are included in the imported data or are filled with default values.     Before you start creating a scenario, we strongly recommend that you manually enter one record of the     imported data (or a test record) on the target Acumatica ERP form. (If you enter a record of the imported     data, during import, you can exclude this record from processing to avoid duplication of records in the     system.)     As you manually enter the record, make a note of the sequence of actions you perform: the order in which     you specify values in the fields on the form, and the actions you perform for the entered record, such as     adding a new row and saving your changes. 

2. **Specifying scenario parameters**     The parameters of an import scenario define the name of the scenario, the Acumatica ERP form to which     data will be imported, and the data provider and source object, which together specify the data source. You     can also set other import scenario parameters that define the mode of import and the properties of the data     being imported. 

3. **Creating mapping of the scenario**     Mapping is the process of creating one-way relations between the fields of an external data source and the     fields of an Acumatica ERP form. To provide mapping for a particular field on an Acumatica ERP form, you     perform the following steps on the **Mapping** tab of the _Import Scenarios_ (SM206025) form:     a. Add a row for the field you want to map.     b. In the **Field or Action** column, select the internal field or action that is located in the needed target        object. A target object represents a group of fields on an Acumatica ERP form, such as a Summary area or        a detail tab.     c. In the **Source Field or Value** column, select the matching external field, internal field, or combination        of internal and external fields, functions, and constants. An external field is a field of the object from the        data provider specified in the scenario.     When you are mapping fields, you should first map the key fields: the fields that the system uses to     distinguish records that belong to different documents. For example, on the _Invoices and Memos_ (AR301000) 


<!-- PAGE_BREAK -->
 Configuring Import Scenarios | 290 

 form, there are two key fields: Type and Reference Nbr. You should map these fields before you map the other fields, because you fill in these fields first on the form when you manually enter an invoice. Aer you have mapped key fields, you should map other fields in the order in which you would fill them in on the form. You can deactivate some rows of the scenario mapping by clearing the Active check box for corresponding rows. This will exclude the corresponding instruction from the scenario mapping, and this instruction will not be executed during the import process. At the end of the mapping of the scenario that imports or updates data in the system, to save the imported record to the database, you have to insert a row with the <Action: Save> action. 

4. **Configuring source and target restrictions**     To import only some records from the data source or update only the records that satisfy some condition,     you can configure source and target restrictions for an import scenario on the _Import Scenarios_ (SM206025)     form.     You can find detailed descriptions and examples of the use of source and target restrictions in the following     topics: 

- _Source Restrictions in Import Scenarios_ 

- _Target Restrictions in Import Scenarios_ 

 Aer these steps have been performed, the scenario is ready, and you can use it for data processing. 

### Import Scenario Parameters 

 When you begin creating an import scenario by using the Import Scenarios (SM206025) form, you specify the following required parameters: 

- **Name** : In this box, you specify a name that reflects the functionality of the import scenario. You have to use     unique names between import and export scenarios. 

- **Screen Name** : In this box, you select the Acumatica ERP form that should be used for data import. 

- **Provider** and **Provider Object** : In these boxes, you select one of the previously created data providers and     its object that should be used for data import. If you select a file data provider, Acumatica ERP automatically     attaches to the scenario on the _Import Scenarios_ form the file used for file data provider creation. This file is     shared between the data provider and the import scenario that uses it for data import—that is, it is attached     to both the _Data Providers_ (SM206015) form for the provider and the _Import Scenarios_ form for the scenario.     You can view and modify the attached file on the _File Maintenance_ (SM202510) form; to open the form, while     you are viewing the import scenario, click **Files** on the title bar. The newly created scenario has the **Active** check box selected by default. This check box must be selected so that you can use the scenario for processing records on the _Import by Scenario_ form. 

 Aer you specify the required parameters, you can set optional parameters, which affect processing of the import scenario by the system and the availability of the import scenario in the user interface of Acumatica ERP. For details on the optional parameters, see the description of the Import Scenarios form. 

### Target Objects and Fields in Import Scenarios 

 When you are performing mapping on the Mapping tab of the Import Scenarios (SM206025) form, you need to select the target object and field. 


<!-- PAGE_BREAK -->
 Configuring Import Scenarios | 291 

#### Target Objects and Fields 

 In the scenario mapping, you need to select the object of the Acumatica ERP form into which you want to insert the value. You do this by clicking the magnifier button in the Field or Action column. In the Select Field or Action dialog box, which opens, target objects are represented as expandable nodes that contain fields and actions. In the Search box of this dialog box , you type the name of the needed UI element (see below). You’ll see all the matching elements, grouped by their location on the form. You then double-click the needed element to select it for mapping. 

 Figure: Searching for the element to be mapped 

 For example, the Statement Cycle ID field is located in the Financial Settings section on the Financial tab of the Customers (AR303000) form. (Items 1 and 2 in the following screenshot show these elements, respectively.) To select it in the mapping, you need to locate the Financial Settings element of the Financial node. 

 Each field or action on an Acumatica ERP form (such as a text box, combo box, table column, or button) is associated with a particular target object. The field name usually has the same name as the corresponding box on the form, such as Statement Cycle ID, as the following screenshot shows. Custom UI elements that you add to the system by means of customization are also available for mapping in the same way as the original ones. 


<!-- PAGE_BREAK -->
 Configuring Import Scenarios | 292 

 Figure: Target object and field 

 Multiple objects support the functionality of each Acumatica ERP form: a Summary object, detail objects, and related objects. These types of objects are described in the following sections. 

#### Verifying the Element with the Element Inspector 

 If you have doubts about which element to select in the mapping on the Import Scenarios (SM206025) or Import by Scenario (SM206036) form, you can use the Element Inspector tool to verify the element. 

 Suppose that you want to create an import scenario for the Customers (AR303000) form. You need to map the imported customer class to the Customer Class box. To verify which element you’ll select for this box in the scenario, you do the following on the Customers (AR303000) form: 

1. Click the Settings button on the form title bar and click **Inspect Element** (see below). 

 Figure: Inspect Element command 

2. Click the **Customer Class** box on the form. 

3. In the **Element Properties** dialog box, notice the data field and view name: _CustomerClassID_ and _BAccount_     (see below). 


<!-- PAGE_BREAK -->
 Configuring Import Scenarios | 293 

 Figure: The data field and view name in Element Inspector 

 Now on the Import Scenarios form, you search for Customer Class in the Select Field or Action dialog box and select the item that has CustomerClassID and BAccount in its description (shown below). 

 Figure: The data field and view name in the dialog box 

 You can use the Element Inspector tool if you have one of the following: 

- The _Customizer_ , _Administrator_ , or _ReportDesigner_ role 

- At least _View Only_ access to the _Generic Inquiry_ (SM208000) or _Import Scenarios_ form 

#### Summary Object 

 The Summary object is the main object on the form; it contains the keys that identify the record in the system. 

 You can use the fields of the Summary object to do the following: 

- Set the values of the corresponding fields on the form. 


<!-- PAGE_BREAK -->
 Configuring Import Scenarios | 294 

- Search for a record in the system.     That is, you can use these fields as custom keys to search for a particular record. For example, you can find     a needed customer record in the system by using the value of the **Account Name** field on the _Customers_     (AR303000) form. 

- Filter imported records by these fields by using target restrictions.     For example, you can select for processing only the customer records that have the _Inactive_ status in the     **Customer Status** field on the _Customers_ form. 

Generally, you can identify the fields that belong to the Summary object on the form as the fields of the Summary area of the form. More precisely, these are the data fields of the data access class (DAC) underlying the Summary object. (In Acumatica Framework, this DAC is called the main DAC of the primary data view.) To use the Summary object in scenario mapping, in the **Field or Action** column on the **Mapping** tab of the _Import Scenarios_ (SM206025) form, you select the object from the node with the same name as the name of the Summary object. 

For example, the Summary object on the _Customers_ form is Customer Summary (see Item 1 in the following screenshot). It includes the key **Customer ID** field (Item 2). 

**_Figure: Summary object and key field_** 

The Summary object on the _Invoices and Memos_ (AR301000) form is Invoice Summary (see Item 1 in the following screenshot). It includes two key fields, **Type** and **Reference Nbr.** (Item 2). 


<!-- PAGE_BREAK -->
 Configuring Import Scenarios | 295 

 Figure: Summary object and key fields 

#### Detail Objects 

 Detail objects correspond to the tabs that include lists of detail records. The fields of a detail object correspond to the columns of the detail tab. 

 You can use the fields of the detail object to do the following: 

- Set the values of corresponding fields of a detail line. 

- Search for a detail line in the document.     That is, you can use these fields as custom keys to search for a particular detail line in the document. For     example, on the _Invoices and Memos_ (AR301000) form, you can find the needed detail line of an accounts     receivable invoice by using the value in the **Transaction Descr.** column. To use the detail object in the scenario mapping, in the **Field or Action** column on the **Mapping** tab of the _Import Scenarios_ (SM206025) form, you select the object from the node with the same name as the name of the detail tab. 

 For example, the Customers (AR303000) form has the Contacts tab, which includes a list of contacts (see the following screenshot). The corresponding detail object has the Contacts name. 

 Figure: Detail object on the Customers form 


<!-- PAGE_BREAK -->
 Configuring Import Scenarios | 296 

 On the Invoices and Memos form, the Document Details object contains a list of invoice lines (see the following screenshot). 

 Figure: Detail object on the Invoices and Memos form 

#### Related Objects 

 Related objects support the functionality of other tabs and sections on the form. 

 You can use the fields of these objects only to set the values of the corresponding fields on the form. You cannot use the fields of these objects to search for records by using custom keys or to filter imported records by using target restrictions. For example, on the Customers (AR303000) form, you cannot search for the needed customer record by using the value of the Account Email field of the Additional Account Info section of the General tab as a custom key, and you cannot filter records by using the Country field of the Account Address section of the General tab by using target restrictions. 

 To use a related object in the scenario mapping, in the Field or Action column on the Mapping tab of the Import Scenarios (SM206025) form, you select the object from the node with the name as the name of the corresponding tab or section on the form. The related objects that correspond to tabs on the form have the names of the tabs. The related objects that correspond to sections on the form have names in one of the following formats: 

- Summary Name -> Section Name 

- Tab Name -> Section Name For example, on the _Customers_ form, the **Account Information** (Item 1 in the following screenshot) and **Account Address** (Item 2) sections on the **General** tab are represented by related objects. These objects are listed in the **Select - Field or Action** dialog box under the General -> Additional Account Info and General -> Account Address nodes, respectively. 


<!-- PAGE_BREAK -->
 Configuring Import Scenarios | 297 

 Figure: Related objects 

 Related Links 

- _Configuring Scenario Mapping_ 

### Source Fields in Import Scenarios 

 When you are performing mapping on the Mapping tab of the Import Scenarios (SM206025) form, you have to select in the Source Field or Value column the source field from which the system takes the value to be inserted into the target field. You can use the following as source fields: 

- The fields defined in the data provider 

- The fields of an Acumatica ERP form, from which we can take the value that already exists in the system or     the default value 

- Any combination of the fields defined in the data provider, the fields of an Acumatica ERP form, constants,     and functions 

#### Relationships Between Source Fields and Target Objects and Fields 

 Source data includes a set of master records, such as customer account records. Each master record has a set of fields that are mapped to the fields of the summary object and related objects. For customer accounts, these fields can include Customer ID and Email. There may be only one value of such field for each summary object or related object. 

 A master record can have a set of detail lines that are mapped to the fields of detail objects. For example, a customer account can have multiple contact details. There may be many detail lines for each detail object. 


<!-- PAGE_BREAK -->
 Configuring Import Scenarios | 298 

 Therefore, for these detail lines to be imported to Acumatica ERP, external data should include the identifier of the master record for each detail line. That is, each detail line should have the key fields of the summary object specified. 

 For example, suppose that you have a customer account with two contact details. In this case, the external data that you are going to import to Acumatica ERP should include two records—one record with the customer ID and contact information for each contact detail. Such records should include a key field that the system uses to distinguish lines that belong to different records. The relationships between the external data and Acumatica ERP objects on the Customers (AR303000) form are shown in the following screenshot. 

 Figure: Relationships Between External Data and Acumatica ERP Objects 

 Related Links 

- _Configuring Scenario Mapping_ 

### Source Restrictions in Import Scenarios 

 You can use source restrictions to filter the data that you want to extract from the source for processing by the import scenario. For example, some customer ID values in the source have CUST prefixes. You can specify a source restriction that selects only the records from the source that have the CUST prefix in the customer ID field. 

 To configure restrictions on the data that will be extracted from the source during the import, you specify conditions for the fields of the source file on the Source Restrictions tab of the Import Scenarios (SM206025) form. If you specify source restrictions, when the system prepares records for import, it selects only the records that conform to the specified condition or conditions from the source and imports only these records. 

 For example, suppose that you want to import only the customer records that have the CUST prefix in the customer ID. In this case, you can add the condition to the source restrictions that the external customer ID field should start with the CUST prefix. The system will import only the records for which the customer ID has the specified prefix. 

 Source restrictions are ignored when importing scenarios via automation schedules. To specify the restrictions in this case, use generic inquiry filters or trigger conditions of business events. 

### Target Restrictions in Import Scenarios 

 You can specify target restrictions that apply to records aer they have been processed by the import scenario. For example, suppose that you have imported customer records to Acumatica ERP and then manually changed the 


<!-- PAGE_BREAK -->
 Configuring Import Scenarios | 299 

 status of some of these records to Inactive on the Customers (AR303000) form, and now you want to update only imported customer records that have the Inactive status. Because you do not have the status in the source file, you cannot use source restrictions to select needed records. You can, however, specify a target restriction that makes the system save the results of import for only the records that have Inactive status on the form. 

 To configure restrictions that apply to records aer they have been processed by the import scenario, you specify conditions for the target fields on the Target Restrictions tab of the Import Scenarios (SM206025) form. If you have specified target restrictions, aer a record is imported, the system checks the conditions for the imported record. If a record satisfies the conditions, the system saves the result of processing the record during import. If a record violates the target restrictions, the resulting record is not saved; by default, the system stops processing records and displays an error. To make the system skip errors for the records that do not meet the restrictions and proceed with processing other records, you should set the system to not break on an incorrect target. In this case, the system will continue to process subsequent records aer an error has occurred for a record. 

 For example, suppose that you want to delete customer records that have an Inactive status on the Customers form. To do this, you can add to the target restrictions the condition that the imported customer records should have the Inactive status. During import, the system will check whether each imported record has the Inactive status, and delete the record only if it has this status. 

 To determine target restrictions, you can use only the fields of the summary object. For example, on the Customers form, you can filter records by the Customer ID , Customer Name , and Status fields. You cannot use columns of Select dialog boxes, fields of related objects, and fields of detail objects to filter records. For example, for this form, you can filter customer records neither by the value of the Country field of the Main Contact group on the General Info tab, nor by the Country column of the Selector dialog box of the Customer ID field. 

### Use Cases 

 This chapter describes various examples of importing records into Acumatica ERP. 

### Importing Records with Multiple-Value Attributes (Leads) 

 This topic describes how to import records with an attribute for which a user can specify multiple values at the same time. 

#### Task Description 

 Suppose that you want to import information about the required products for certain leads. The REQPROD attribute, for which you want to import the data, is of the Multi Select Combo type, which means that multiple values can be selected for the attribute at the same time. 

 The information about the required products is available in the IS__Leads_Multiple_Attributes file. The Attribute ID column of the file contains the IDs of the attribute values as they are used by the system. The Value column contains the values that are displayed on the Attributes tab of the Leads (CR301000) form for the attribute in the row, as the following screenshot shows. 


<!-- PAGE_BREAK -->
 Configuring Import Scenarios | 300 

**_Figure: Attributes tab of the Leads form_** 

The following screenshot shows the value IDs of the **REQPROD** attribute and their descriptions on the _Attributes_ (CS205000) form. 

**_Figure: Multiple values of an attribute_** 


<!-- PAGE_BREAK -->
 Configuring Import Scenarios | 301 

 Notice in the Excel file that all the values of the REQPROD attribute for a lead are added to a single cell. The values are separated by commas and do not contain spaces aer the commas. 

#### Implementation 

 To import leads with multi-value attributes, perform the following steps: 

1. _Creating a New Data Provider_ 

2. _Creating an Import Scenario_ 

3. _Running the Scenario_ 

4. _Reviewing the Imported Records_ 

#### 1. Creating a New Data Provider 

 On the Data Providers (SM206015) form, create an Excel data provider for the Leads Multiple Attributes.xlsx file with the name Import Leads Multiple , as shown in the following screenshot. 

 Figure: The Import Leads Multiple data provider 

#### 2. Creating an Import Scenario 

 On the Import Scenarios (SM206025) form, create an import scenario that uses the data provider you have created in the previous step. The mapping of the scenario is shown in the following screenshot. 


<!-- PAGE_BREAK -->
 Configuring Import Scenarios | 302 

 Figure: The Import Leads Multiple import scenario 

#### 3. Running the Scenario 

 On the Import by Scenario (SM206036) form, select the Import Leads Multiple scenario in the Summary area, and click Prepare & Import on the form toolbar. The records from the Excel file are imported into the system. 

#### 4. Reviewing the Imported Records 

 Review the results of the import on the Leads (CR301000) form. Select Woodrow, Harrison in the Summary area; then on the Attributes tab, make sure the Required products attribute has multiple values selected, as the following screenshot shows. 


<!-- PAGE_BREAK -->
 Configuring Import Scenarios | 303 

 Figure: Required products attribute with multiple values selected 

#### Summary 

 To import attributes that have multiple values, you use the Excel file, which contains the IDs of the attribute values (not their descriptions). The value IDs for a lead are added to a single cell and are separated by commas without spaces. In the scenario, you map the Attribute ID column of the source file to the Attribute ID field of the Attributes tab on the Leads (CR301000) form. You do not need to specify each of the values from the Value column of the Excel file. The system parses the values automatically. 

#### Examples 

 For an example on how to import leads with attributes, see Lesson 2.6, Example 2.6.1 of the I100 Integration Scenarios Training Guide. 

#### Related Concepts 

 Attributes 

 Types of Target Fields in Import Scenarios 

 Key Fields and Search in Import Scenarios 

### Importing Records with Automatic Numbering (Vendors) 

 This topic describes how to import new records and assign each record an ID according to the numbering system currently used by the system. 

#### Task Description 

 Suppose that you want to import into Acumatica ERP vendor records from the IS__Import_Vendors.xlsx file. Vendor accounts in the system, which are created and maintained on the Vendors (AP303000) form, have IDs that range from V000000001 to V000000092. (The vendor IDs are entered in the Vendor ID box.) Vendor accounts in the Excel file have IDs that use a different naming system. You want to assign new IDs that start with V000000093 to the records that you are importing. 


<!-- PAGE_BREAK -->
 Configuring Import Scenarios | 304 

 In the import scenario, you will map the IDs from the Vendor ID column of the Excel file (that is, the old IDs) to the Ext. Ref. Nbr. field so that the applicable ID appears in the Ext. Ref. Nbr. box of the Vendors form, which is shown in the following screenshot. 

 Figure: The Vendors form 

#### Implementation 

 To import vendor accounts and assign them new IDs while maintaining the old IDs as external identifiers, perform the following steps, which are described in detail below: 

1. _Configuring Auto-Numbering of Records in the System_ 

2. _Creating a New Data Provider_ 

3. _Creating an Import Scenario_ 

4. _Running the Scenario_ 

5. _Reviewing the Imported Records_ 

#### 1. Configuring Auto-Numbering of Records in the System 

 Perform the following steps to configure the auto-numbering of records: 

1. On the _Numbering Sequences_ (CS201010) form, create the _VENDOR_ numbering sequence and clear the     **Manual Numbering** field for it, as shown in the following screenshot. 


<!-- PAGE_BREAK -->
 Configuring Import Scenarios | 305 

 Figure: VENDOR numbering sequence 

2. Make sure that the settings on the _Segmented Keys_ (CS202000) form for the _VENDOR_ segmented key are as     shown in the following screenshot. 

 Figure: VENDOR segmented key 

#### 2. Creating a New Data Provider 

 On the Data Providers (SM206015) form, create an Excel data provider for the Import_Vendors.xlsx file with the name Import Vendors , as the following screenshot shows. 


<!-- PAGE_BREAK -->
 Configuring Import Scenarios | 306 

 Figure: The Import Vendors data provider 

#### 3. Creating an Import Scenario 

 On the Import Scenarios (SM206025) form, create an import scenario that uses the data provider you have created in the previous step. The mapping of the scenario is shown in the following screenshot. 

 Figure: The Import Vendors import scenario 


<!-- PAGE_BREAK -->
 Configuring Import Scenarios | 307 

#### 4. Running the Scenario 

 On the Import by Scenario (SM206036) form, select the Import Vendors scenario in the Summary area, and click Prepare & Import on the form toolbar. The records from the Excel file are imported into the system. 

#### 5. Reviewing the Imported Records 

 Review the results of the import on the Vendors (AP303000) form. You can see that the last vendor account now has the V000000108 vendor ID. You can also see that the previous vendor ID is now displayed in the Ext. Ref. Nbr. field, as the following screenshot shows. 

 Figure: An imported record on the Vendors form 

#### Summary 

 To import new vendor accounts with external IDs, you have first configured the numbering system for vendors. Then in the import scenario, you have mapped the external vendor IDs to the Ext. Ref. Nbr. field. 

#### Related Concepts 

 Vendors: Implementation Activity 

 Types of Target Fields in Import Scenarios 

 Key Fields and Search in Import Scenarios 


<!-- PAGE_BREAK -->
 Configuring Import Scenarios | 308 

### Importing Payment Instructions (Vendors) 

 This topic describes how to update payment instructions for a vendor. 

#### Task Description 

 Suppose that you want to update information about payment instructions for the vendor with the ID V000000109 and import new data from an Excel file. You can see the payment instructions in the Default Payment Settings section on the Payment tab of the Vendors (AP303000) form, as the following screenshot shows. 

 Figure: The Payment Settings tab 

 The instructions in this use case apply to the FEDWIRE payment method. For details on how to modify a payment method, see Cash Management: To Modify a Payment Method. 

 The data for the update is available in the IS__Vendor_Payment_Instructions.xlsx file. For the import scenario, you need the IDs of the payment method details, which you can find on the Settings for Use in AP tab of the Payment Methods (CA204000) form, as shown in the screenshot below. You will map these IDs to the columns in the source file. 


<!-- PAGE_BREAK -->
 Configuring Import Scenarios | 309 

 Figure: The Payment Method Details table 

#### Implementation 

 To import payment instructions, perform the following steps: 

1. _Creating a New Data Provider_ 

2. _Creating an Import Scenario_ 

3. _Running the Scenario_ 

4. _Reviewing the Imported Records_ 

#### 1. Creating a New Data Provider 

 On the Data Providers (SM206015) form, create an Excel data provider for the Vendor Payment Instructions.xlsx file with the name Vendor Payment Instructions , as the following screenshot shows. 

 Figure: The Vendor Payment Instructions data provider 


<!-- PAGE_BREAK -->
 Configuring Import Scenarios | 310 

#### 2. Creating an Import Scenario 

 On the Import Scenarios (SM206025) form, create an import scenario that uses the data provider you have created in the previous step. The mapping of the scenario is shown in the following screenshot. 

 Figure: The Vendor Payment Instructions scenario 

 In the mapping, you have specified the custom key @@DetailID, which refers to the detail line of the payment method, and you have specified the value for the key for each of the detail lines (see item 1 in the screenshot above). You have also selected the Commit check box for these commands. 

 You have deactivated the line with the <Line Number>=-1 command (item 2). You need to update the existing detail records and do not need to insert new rows for them. 

#### 3. Running the Scenario 

 On the Import by Scenario (SM206036) form, select the Vendor Payment Instructions scenario in the Summary area, and click Prepare & Import on the form toolbar. The records from the Excel file are imported into the system. 

#### 4. Reviewing the Imported Records 

 Review the results of the import on the Payment Settings tab of Vendors (AP303000) form. You can see that the payment instructions have been updated, as the following screenshot shows. 


<!-- PAGE_BREAK -->
 Configuring Import Scenarios | 311 

 Figure: The Payment Settings tab with updated data 

#### Summary 

 To update payment instructions for a vendor, in the import scenario, you have specified @@DetailID as a custom key and mapped it to the ID of the payment method. Directly aer this command, you have assigned the custom key the value that is displayed in the Description column of the Payment Method Details table. You did this for each of the four detail lines of the payment method. 

#### Related Concepts 

 Payment Methods 

 Vendors 

 Types of Target Fields in Import Scenarios 

 Key Fields and Search in Import Scenarios 

 Service Commands in Import and Export Scenarios 

### Importing Documents (Vendors) 

 This topic describes how to import vendor documents (bills, adjustments, or prepayments). 

#### Task Description 

 Suppose that you want import vendor documents from the IS__Vendor_Details.xlsx file. The file contains several bills for vendors with IDs V000000103 , V000000107 , and V000000108. The IDs of the documents in the Reference Nbr. column are the external IDs used by the vendor. The Vendor Invoice Nbr./Payment Nbr. column contains invoice IDs specified by the vendor. You will use values from the Vendor ID column to identify vendors in the system. 

 You can see the documents of a vendor on the Vendor Details (AP402000) form, as the following screenshot shows. 


<!-- PAGE_BREAK -->
 Configuring Import Scenarios | 312 

 Figure: The Vendor Details form 

 To import documents for several vendors, you will use the Bills and Adjustments (AP301000) form. 

 During import, Acumatica ERP automatically assigns each document an ID according to the numbering system currently used in the system. 

 If you want to use external numbering system, disable Auto-numbering for the bills and adjustments on the Numbering Sequences (CS201010) form. 

#### Implementation 

 To import vendor documents, perform the following steps, which are described in detail below: 

1. _Configuring Auto-Numbering of Records in the System_ 

2. _Creating a Data Provider_ 

3. _Creating an Import Scenario_ 

4. _Running the Scenario_ 

5. _Reviewing the Imported Records_ 

#### 1. Configuring Auto-Numbering of Records in the System 

 On the Numbering Sequences (CS201010) form, create the APBILL numbering sequence and clear the Manual Numbering field for it, as shown in the following screenshot. 

 Figure: Numbering Sequence for bills and adjustments 

#### 2. Creating a Data Provider 

 On the Data Providers (SM206015) form, create an Excel data provider for the Vendor Details.xlsx file with the name Import Vendor Documents , as the following screenshot shows. 


<!-- PAGE_BREAK -->
 Configuring Import Scenarios | 313 

 Figure: The Import Vendor Documents data provider 

#### 3. Creating an Import Scenario 

 On the Import Scenarios (SM206025) form, create an import scenario that uses the data provider you have created in the previous step. The mapping of the scenario is shown in the following screenshot. 

 Figure: The Import Vendor Documents import scenario 

#### 4. Running the Scenario 

 On the Import by Scenario (SM206036) form, select the Vendor Documents scenario in the Summary area, and click Prepare & Import on the form toolbar. The records from the Excel file are imported into the system. 


<!-- PAGE_BREAK -->
 Configuring Import Scenarios | 314 

#### 5. Reviewing the Imported Records 

 Review the result of the importing on the Bills and Adjustments (AP301000) form. You can see that five records have been added to the system. They have been assigned IDs according to the numbering sequence used by the system, as shown in the screenshot below. Each record has been added for the appropriate vendor as specified in the source file. The status of the imported records has been changed to On Hold. 

 Figure: The imported records on the Bills and Adjustments form 

#### Summary 

 To import vendor documents, you enable the auto-numbering of records to assign the documents the IDs according to the numbering sequence currently in use. 

 In the import scenario, you map the external reference number to the Reference Nbr. field on the Bills and Adjustments (AP301000) form. You also map vendor ID from the source file to the Vendor ID field on this form. 

#### Related Concepts 

 Vendors: Implementation Activity 


<!-- PAGE_BREAK -->
 Configuring Export Scenarios | 315 

## Configuring Export Scenarios 

 You create export scenarios on the Export Scenarios (SM207025) form. To create an export scenario, you specify its name, the Acumatica ERP form to be used for export, the data provider that defines the structure of the target data, and the data provider object; you also configure scenario mapping. 

 Aer you have created an export scenario, you can export data by using this scenario. You export data on the Export by Scenario (SM207036) form. The system executes the export scenario when you click Prepare on this form. This processing differs from the processing of an import scenario in that the import scenario is executed only when you click the Import button aer you have prepared data. When you invoke the preparation process for the export scenario, the system executes the mapping instructions for each record in the system that satisfies the conditions of the export scenario, and then lists the processed records on the Prepared Data tab. To upload the processed records to the external data source, you then click Export. 

 In the mapping of an export scenario, you can use actions, the <Dialog Answer> command, and service commands, just as you can use in import scenarios. 

### Export Scenario Creation 

 You create export scenarios on the Export Scenarios (SM207025) form. 

 The creation of the export scenario consists of the following general steps: 

1. **Analyzing the sequence of actions on the form for data export**     Before you start creating an export scenario on the _Export Scenarios_ form, you create a data provider and     learn how to retrieve the needed data records from the corresponding Acumatica ERP form. You can find     more information on data providers in _Data Providers_.     If needed, you could use the same data provider for import and export of data in the same format. However,     a data provider and the scenarios that use this provider share the same external data source. Therefore, if     you do not want to confuse the input and output data sources, you should create separate data providers     for importing and exporting data.     Before you start creating a scenario, we strongly recommend that you open a record of the exported data on     the source form by selecting the values of the key fields (which gives you an understanding of how a record     is retrieved on the form and which fields you need to export). As you open the record on the form, make a     note of the sequence of actions you perform: the order in which you specify the values in the key field (or     fields) on the form, the actions you perform, and the list of fields you need to export. 

2. **Specifying scenario parameters**     You specify the following parameters of an export scenario: the name of the scenario, the Acumatica ERP     form that should be used for export, and the data provider and the object, which together specify the target     data source. You can also specify other export scenario parameters that define the mode of export and the     properties of the data resulting from the export. 

3. **Creating scenario mapping**     Mapping is the process of creating one-way relations between the fields of the Acumatica ERP form and the     fields of the external data source. To provide mapping for a particular field on an Acumatica ERP form, you     perform the following steps on the **Mapping** tab of the _Export Scenarios_ form:     a. In the **Source Object** box, you specify the Acumatica ERP object that includes the source field. An object        represents a group of fields on an Acumatica ERP form, such as a summary area or a detail tab. (These        are the same objects that are used in import scenario mapping. You can find the description of these        objects in _Target Objects and Fields in Import Scenarios_ .)     b. In the **Field or Action Name** column, you select the appropriate internal field or action. An internal field        is a field of the Acumatica ERP object selected in the **Source Object** box. (These are the same internal 


<!-- PAGE_BREAK -->
 Configuring Export Scenarios | 316 

 fields that are used in import scenario mapping. You can find the description of these fields in Target Objects and Fields in Import Scenarios .) c. In the Target Field or Value column, you select the matching external field or type a formula the system will use to determine the value. An external field is a field of the object from the data provider specified in the scenario. You first map the key fields that identify the records you want to export. Aer you have mapped the key fields, you should map the other needed fields. You can deactivate some steps of a scenario by clearing the Active check box for the corresponding rows. 

4. **Configuring source restrictions**     To export only some records from the Acumatica ERP database, you can configure source restrictions for an     export scenario on the _Export Scenarios_ form.     You can find a detailed description of source restrictions and an example of their use in _Source Restrictions in_     _Export Scenarios_. 

 Aer these steps have been performed, the scenario is ready and can be used for data processing. 

### Export Scenario Parameters 

 When you create an export scenario on the Export Scenarios (SM207025) form, you first specify the required parameters. 

 The required parameters are as follows: 

- **Name** : In this box, you specify a name for the export scenario that reflects its functionality. You have to use     unique names between import and export scenarios. (That is, you cannot use the same name for both an     import scenario and an export scenario.) 

- **Screen Name** : In this box, you select the Acumatica ERP form from which you want to export data. 

- **Provider** and **Provider Object** : In this box, you select one of the existing data providers and its object that     should be used for data export. If you select a file data provider, Acumatica ERP automatically attaches     to the scenario on the _Export Scenarios_ form the file used for file data provider creation. This file is shared     between the data provider and the export scenario that uses it for data export (that is, it is attached to both     the _Data Providers_ (SM206015) form for the provider and the _Export Scenarios_ form for the scenario). You can     view and modify the attached file by using the _File Maintenance_ (SM202510) form. To open the form, while     you are viewing the export scenario, click **Files** on the title bar. The newly created scenario has the **Active** check box selected, which indicates that the scenario can be used for processing. 

 Aer you specify the required parameters, you can set optional parameters, which affect processing of the export scenario by the system and the availability of the export scenario in the user interface of Acumatica ERP. For details on the optional parameters, see the description of the Export Scenarios form. 

### Source Restrictions in Export Scenarios 

 You use source restrictions in an export scenario for the data available in the Acumatica ERP database. For example, you can configure the system to export only the records that have a particular status. 

 To specify restrictions on the data being exported, you specify conditions for the Acumatica ERP fields on the Source Restrictions tab of the Export Scenarios (SM207025) form. In this case, when it prepares records for export, the system selects only the records that meet the specified condition (or conditions) and imports only these records. 


<!-- PAGE_BREAK -->
 Configuring Export Scenarios | 317 

For example, suppose that you want to export from the _Customers_ (AR303000) form only the customer records that have _Active_ status. In this case, you can add to the source restrictions the condition that the **Status** field should be equal to _Active_. During the preparation process (when you click **Prepare** on the _Export Scenarios_ form and the system prepares the data for export), the system processes the records that match the source restrictions of the scenario and prepares only the records with the _Active_ status. 

In source restrictions, you can use only the fields of the summary object or detail objects of the form from which you are exporting data. You cannot use columns of **Select** dialog boxes and fields of related objects to filter records or detail lines. 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 318 

## Configuring Scenario Mapping 

 You perform the mapping of an import scenario on the Mapping tab of the Import Scenarios (SM206025) form, and you perform the mapping of an export scenario on the Mapping tab of the Export Scenarios (SM207025) form. You use similar principles when configuring the mapping of either type of scenario. 

 In this chapter, you can find the main ideas that apply to scenario mapping. Most of the ideas are described in examples of import scenarios. However, you can configure the mapping of an export scenario similarly. The topics of this chapter also describe information that is specific to mappings of export scenarios. 

 You can find examples of scenario mapping in the I100 Integration Scenarios training course. 

### General Recommendations and Limitations of Data Import 

 In this topic, you will find general recommendations for data import, including its limitations. 

#### General Recommendations for Importing Accounts and Subaccounts 

 When you import accounts and subaccounts to Acumatica ERP, consider the following general recommendations: 

- In your new Acumatica ERP implementation, the chart of accounts may differ from the chart of accounts     in the legacy application from which you are going to import the data. When the company switches to     newer soware, the length of the account identifier is usually extended to include more characters; in many     cases, several zeros are added in the middle of or at the end of the account identifier. In such a simple case,     consider inserting these additional characters during the import process by using a formula. 

- In Acumatica ERP, subaccount identifiers are segmented, but the separator characters are not part of     the subaccount identifier as it is saved in the database. If subaccount identifiers in the external file have     segments separated by a character, use a formula such as the following to remove this character from the     external data during import. 

 replace([Sales Subaccount],'-','') 

- If you import subaccounts from your subsidiary or parent company, consider the differences in their     segment structures. You may need to add a segment when you're importing from a subsidiary or remove a     segment when you're importing from a parent company. 

#### General Recommendations for Importing Vendor and Customer Data 

 Here are some general recommendations for importing vendor and customer data to Acumatica ERP: 

- In Acumatica ERP, vendor and customer IDs may be segmented. You can create a formula to insert any     missing segments into the imported IDs. 

- If the external file contains fields with vendor or customer data that is not tracked in Acumatica ERP in     built-in fields, you can create and use attributes to store this vendor or customer data in Acumatica ERP.     Attributes are created for vendor or customer classes, and then can be entered and tracked for individual     vendors and customers. For details, see _Managing Attributes and User-Defined Fields_. 

- If customer and vendor records have numerical IDs in the source and you want to retain these IDs in the new     implementation, perform the following steps: 

- On the _Segmented Keys_ (CS202000) form, configure the _VENDOR_ and _CUSTOMER_ segmented keys as     alphanumeric one-segment keys. 

- Import the records with their IDs unchanged. 

- On the _Numbering Sequences_ (CS201010) form, assign appropriate numbering sequences to the _VENDOR_     and _CUSTOMER_ segmented keys with the appropriately adjusted last-used numbers (equal to the largest 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 319 

 number used in the imported data for vendors and customers, respectively) to assign numeric IDs to new customers and vendors. When an Acumatica ERP user creates a new vendor or customer account in the standard way, by filling out the Vendors (AP303000) or Customers (AR303000) form, some fields are populated automatically with values provided by the default vendor or customer class or the vendor or customer class the user has selected instead. 

 To use the functionality of classes while you are importing vendor or customer data, before import, analyze the source data and create as many classes as there are groups of customers or vendors in the source (or source file) that would need accounts, subaccounts, and other common information you can specify among the class settings. When you create classes, take one of the following approaches: 

- If one group of settings can fit all customers or vendors, use just one default class. To use default values     from the default vendor or customer class, you don't even need to do anything specific, such as mapping     the **Vendor Class** field or **Customer Class** field to any data. 

- To use default values from a particular class, in the **Field or Action** box of the _Import Scenarios_ (SM206025)     form, you can assign the class to the **Vendor Class** field (when you are importing vendor records) or to     the **Customer Class** field (when you are importing customer records) directly as a literal or assign a class     conditionally, by using appropriate formulas that are based on customer or vendor properties. Filling in the     class ID field requires a commit to the database and a form refresh. 

#### General Recommendations for Importing Documents and Batches 

 When you're importing batches, Accounts Payable documents, or Accounts Receivable documents, consider the following recommendations regarding the mapping: 

- **Batch or Document IDs** : By default, Acumatica ERP automatically generates identifiers for General Ledger     batches and Accounts Payable and Accounts Receivable documents. For example, when importing batches     to the _Journal Transactions_ (GL301000) form, even if you map the **Batch Number** field to an external field     holding batch IDs, when the record is saved, the original batch ID will be overwritten by an automatically     generated ID. If you plan to update the imported batches later, you will not be able to recognize the     imported records by their new IDs. To make updating of the imported records possible, you need to save     the original ID to another field to be able to recognize the previously imported records. You can use the     **Description** field for this purpose. As an alternative to this approach, you can configure manual numbering     of batches or documents on the _Numbering Sequences_ (CS201010) form, import them with their IDs defined     in the source, and then configure the system to use auto-numbering again. 

- **Batch Control Totals** : When importing batches to the _Journal Transactions_ form, if you are mapping the     **Control Total** field, take into account whether the **Validate Batch Control Totals on Entry** check box is     selected on the _General Ledger Preferences_ (GL102000) form. If it is selected and you map the **Control Total**     field to the source field, during data import until all batch entries are imported, the system will display     the error, indicating that the control total does not match the credit total or debit total. In this case, on the     _Import Scenarios_ form, select the **Ignore Error** check box for the row that maps the **Control Total** field to     force the system to ignore such errors during the import process. 

- **Document Amounts** : When importing documents to the _Bills and Adjustments_ (AP301000) or the _Invoices_     _and Memos_ (AR301000) form, if you are mapping the **Amount** field, take into account whether the **Validate**     **Document Totals on Entry** check box is selected on the _Accounts Payable Preferences_ (AP101000) or     _Accounts Receivable Preferences_ (AR101000) form. If it is selected and you map the **Amount** field to the     source field, during data import until all document details are imported, the system will display the error,     indicating that the document is out of balance. In this case, on the _Import Scenarios_ form, select the **Ignore**     **Error** check box for the row that maps the **Amount** field to force the system to ignore such errors during the     import process. 

- **Mapping Statuses** : The possible batch and document statuses in the source may be different from those in     Acumatica ERP. To manage this discrepancy, you might want to exclude the **Status** field of the applicable     form from mapping. In this case, the imported batch or document will get one of the following statuses: 

- _On Hold_ , if the **Hold Batches on Entry** check box is selected on the _General Ledger Preferences_ form or     the **Hold Documents on Entry** selected is selected on the _Accounts Receivable Preferences_ or _Accounts_     _Payable Preferences_ form 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 320 

- _Open_ , if the **Hold Batches on Entry** or **Hold Documents on Entry** check box is not selected on the     appropriate form 

#### General Recommendations for Importing Attributes 

 Attributes in Acumatica ERP make it possible for users to specify additional properties (those not already defined on the applicable Acumatica ERP form) of entities, such as stock items, leads, opportunities, customers. The list of attributes is specified for an entity class, so that entities assigned to different classes may have different sets of attributes. To import data with attributes, you have to create a scenario for each class if the applicable classes have different sets of attributes. In the mapping of the scenario created to import entities of a particular class on the Import Scenarios (SM206025) form, you should specify the name of the attribute as the source field for the Attribute target field and the value of this attribute as the source field for the Value target field. 

#### General Recommendations for Importing Project Budgets 

 For the Project Budget (PM309000) form, the system allows to import records by the project budget compound key, which is the project identifier, project task identifier, inventory identifier, and account group identifier. Aer records are imported to the Project Budget form, to restructure budget records according to the revenue budget level of projects, you should run the validation process on the Recalculate Project Balances (PM504000) form. 

#### Limitations of Data Import 

 By using import scenarios, you can perform the same commands on the form as you do during manual input, with the following exceptions: 

- For the _Bills and Adjustments_ (AP301000) form, <Action: Auto Apply> (which corresponds to     the **Auto-Apply** button on the **Applications** tab) does not work because Acumatica ERP does not load     applications during data import. 

- The system does not validate the values specified for the attributes, such as the values of attributes with     _Combo_ control type. To verify a value of an attribute, you can define a validation formula in the scenario     mapping. For details on formulas, see _The Use of Formulas_. 

### Types of Target Fields in Import Scenarios 

 You perform mapping of an import scenario on the Mapping tab of the Import Scenarios (SM206025) form. For each target field on an Acumatica ERP form, you need to know the type of the target field and be sure the source field values have the appropriate format for the type, so that the system can insert the value of the field correctly. The type of the target field depends on the type of UI element that represents it on the form to which you are importing data. This type can be a text box of several types, a date selection, a check box, a drop-down list, a radio button, or an command on the More menu or on the toolbar. Also, the target field might be in a dialog box rather than on the form itself. 

 In most cases, it is clear which format of the value you need for the mapping. However, if you are not sure which format of the value you need, you can create one record manually in Acumatica ERP, specify the needed value of a field of this record, compose an export scenario, and export the value of this field. Make sure that the export scenario has output the value in the appropriate format. For more information on export scenarios, see Configuring Export Scenarios. 

#### Text Box with Text 

 The target field on the Acumatica ERP form can be a text box into which a user types text. For example, the Email box on the General tab of the Customers (AR303000) form is a text box in which the user types an email address. 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 321 

 A text box can have a mask, which is denoted by the underscore symbol ( _ ). If the text box has a mask, you cannot insert the underscore symbol because this symbol is reserved for masked input in the system. If the text box has no mask, you can insert any characters into the box, including any letters and symbols. The length of the string that you insert into a text box should not exceed the maximum length of the underlying target element. (To check the maximum length, find the maximum string that can be manually inserted into the box on the form. For details, see Managing Segmented Keys ) 

 For some text boxes, you can type text in multiple languages. (For the list of these text boxes, see Boxes That Have Multilanguage Support .) To import the values of a text box in multiple languages, you should specify a string in JSON format that contains values in the needed languages. For details, see Multilanguage Fields in Import and Export Scenarios. 

#### Text Box with Currency Amount 

 The target field on the Acumatica ERP form can be a text box that holds a currency amount. For example, the Amount box in the Summary area of the Invoices and Memos (AR301000) form is a text box with a currency amount. 

 You have to provide currency amounts in the format that you specified for the import scenario in the Format Locale box in the Summary area of the Import Scenarios (SM206025) form. For example, if you specified the English (United States) locale for an import scenario, you have to provide amounts where the decimal part is separated by a decimal point: 12.34. 

 By default, Acumatica ERP imports currency amounts with a decimal precision of 2, which is specified in the Decimal Precision box on the Branches (CS102000) form. When you import the currency amounts of Account Payable or Account Receivable documents, make sure that the sum of imported lines is equal the imported document total, taking into account the rounding accuracy as follows: 

- The decimal precision of line amounts must be equal to the decimal precision of document total. 

- The decimal precision of all amounts must be less than or equal to the decimal precision that is specified in     Acumatica ERP. For example, if the decimal precision in Acumatica ERP is 2 and you import an amount with     a decimal precision of 3, such as _10.345_ , the imported value will be rounded by arithmetical rules to _10.35_. If you import data from an Excel file, you can use the _Round(x,y)_ function to round the amounts, and then you can copy the values to a column from which you will import data. 

#### Text Box with a Key Value 

 The target field on the Acumatica ERP form can be a text box that holds a key value. Two examples of key fields are Customer ID on the Customers (AR303000) form, and Reference Nbr on the Invoices and Memos (AR301000) form. 

 The way you specify the value for key fields depends on your goal and the auto-numbering settings of the records that you are importing. For more information and examples of mapping key fields, see Key Fields and Search in Import Scenarios. 

#### Date Selection 

 The target field on the Acumatica ERP form can be a date selection menu that is used to select the date. For example, the Date element in the Summary area of the Invoices and Memos form is a date selection menu. 

 The date values in a source file must be in the same format that is specified for the import scenario in the Format Locale box of the Import Scenarios (SM206025) form. If no format locale is set in the source file, the system treats the dates in this file as having an invariant (that is, independent) locale, which is based on the English (United States) locale. If you do not set the format and the locale-dependent data in the file has a format other than English (United States) , the system may read the data incorrectly. Therefore, you need to set the format locale so that the dates are read correctly. For example, if you specify the English (United States) locale for the import scenario, you need to provide dates in the MM/DD/YYYY format. Thus, September 1, 2025 will be 09/01/2025. 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 322 

#### Check Boxes 

 The target field on the Acumatica ERP form can be a check box the user can select or clear. For example, the Pay by Line element in the Summary area of the Invoices and Memos (AR301000) form is a check box. To select a check box, map the corresponding target field to the value True. To clear a check box, map the target field to the value False. 

#### Drop-Down List 

 The target field on the Acumatica ERP form may be a drop-down list from which the user selects an option. For example, the Type element in the Summary area of the Invoices and Memos form is a drop-down list. 

 To insert a value into a drop-down list, you have to specify the value as it is displayed in the list. For example, on the Invoices and Memos form, you can insert the value Invoice into the Type field. If you specify a value that is not supported in the list, the system displays an error during import. 

#### Option Buttons 

 The target field on the Acumatica ERP form may be a group of option buttons. For example, a group of option buttons is in the Additional Processing group of the Settings for Use in AP tab of the Payment Methods (CA204000) form. 

 In the system, a group of option buttons is treated as one field, which can have as the values the names of the option buttons. Therefore, to select an option button by using an import scenario, you should select the name of the group that contains the option button in the Field or Action column of the Import Scenarios form (SM206025), and specify the name of the radio button in the Source Field or Value column. For example, to select the Print Checks option button in the Additional Processing section of the Settings for Use in AP tab of the Payment Methods form, you should select the Settings for Use in AP target object and the APAdditionalProcessing field, and specify the source value as ='Print Checks'. 

#### Buttons and Commands 

 The target field on the Acumatica ERP form can be a button on the form toolbar or a command on the More menu (under a category). Such buttons and commands are associated with actions in code. For example, the More menu of the Invoices and Memos (AR301000) form contains the Release command (under Actions ) and the form toolbar contains the Release button, which correspond to the same action. 

 To reflect a user clicking a button or a command in the scenario mapping, you need to insert the corresponding action in the proper position in the mapping, and you don't have to map the action to any value. For more information and examples, see Actions in Import Scenarios. 

#### Dialog Boxes 

 The target field can be on a dialog box invoked by a user action on the Acumatica ERP form. Dialog boxes usually appear on a form to request confirmation from the user. For example, when you update the Customer Class value on the Customers (AR303000) form for an existing customer, the system displays a Warning dialog box. The Add Sales Order dialog box appears when you click Add Order on the table toolbar of the Details tab of the Shipments (SO302000) form. 

 In a similar way as you specify values for fields on forms and invoke actions, you can specify values and click buttons in pop-up panels that users can invoke. 

 For more information on handling dialog boxes in import scenarios, see Dialog Boxes in Import Scenarios. 

 Related Links 

- _Configuring Import Scenarios_ 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 323 

- _The Use of Formulas_ 

### Fields with Commit in Import and Export Scenarios 

 There are two types of fields on Acumatica ERP forms: fields with commit, and fields without commit. A commit is an action initiated by the form that, when triggered, sends the data to the server. On the server, the commit causes all data on the form to be updated, including the insertion of default values and the recalculation of appropriate fields on the form. 

 A commit is a costly operation that causes the browser to make requests to the server and takes server time. As such, a commit is invoked for only a limited number of fields: mainly the key fields and the fields on which the other fields depend. On the Mapping tab of the Import Scenarios (SM206025) form or the Export Scenarios (SM207025) form, if you select a field for which the system performs a commit, the system automatically selects the Commit check box. 

 If the Commit check box is cleared on this tab, the field is filled in with data, but no update of the form is invoked. If the Commit check box is selected, aer the field is filled in, the commit is invoked on the server and the form is updated. 

 For example, when you select a customer on the Invoices and Memos (AR301000) form, the system assigns values to fields related to customer settings, such as the customer terms, due date, and cash discount date. When you create an import scenario for this form, for fields such as Customer , the system automatically selects the Commit check box on the Mapping tab of the Import Scenarios form. 

 In most cases, when you compose the mapping of an import or export scenario, you can use the Commit check boxes as they are set by default. However, you may need to force the system to invoke a commit to the server—for example, when you need to commit the value of one field before entering another field value, or to indicate the beginning and the end of a record if you enter records without specifying the key field value. In such cases, you should manually select the Commit check box for the field or action. For more information on the situations when the Commit check box should be selected in export scenarios, see Data Modification During Export: Use of Commit and Actions. 

 The Commit check box is read-only for the <Action: Save> command. 

### Service Commands in Import and Export Scenarios 

 For key fields and the first field that has a commit among the fields of a detail table, the system adds service commands on the Mapping tab of the scenario you are creating on the Import Scenarios (SM206025) form or the Export Scenarios (SM207025) form. Service commands are commands that invoke hidden actions in the system, such as searching for the record by the key field, refreshing the form, and adding a new line to the detail table. The system automatically adds service commands to the scenario immediately before the commands that invoke them. 

 For example, suppose that on the Import Scenarios form, you are mapping the Type field of the Invoices and Memos (AR301000) form. The system automatically inserts a set of service commands before the mapping of the Type field: The <Key: DocType> and <Key: RefNbr> commands invoke search by the key fields, and the <Action: Cancel> command restores the default settings for the selected document type. 

 On the table toolbar of the Mapping tab of the Import Scenarios form or the Export Scenarios form, by default, the Show All Commands option is selected in the drop-down list, which means that you can view the service commands that the system automatically adds to the import scenario. 

 You can replace service commands with your own commands to change the default behavior of the system. For example, if you map the first field that has a commit among the fields of a detail table, the system adds the <Line Number>=-New service command. That means that a new row is added for each new detail line. You can specify 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 324 

 the needed line number in the <Line Number> command to modify the value of the previously imported detail line. Line numbering starts with 0. 

 If you search for a detail line by a custom key, you need to deactivate the instruction that sets the <Line Number> to New from the mapping so that the system does not add a new detail line but instead searches for a detail line. 

### Dialog Boxes in Import Scenarios 

 When you update specific fields on some forms under certain circumstances, the system displays dialog boxes where you need to specify an answer (by clicking a button) to a question in order to proceed. For example, when you update the Customer Class value on the Customers (AR303000) form for an existing customer, the system displays a Warning dialog box with the Yes and No buttons and the following text: Please confirm if you want to update current customer settings with the customer class defaults. Otherwise, original settings will be preserved. You click Yes to proceed with changing the customer class. 

#### Confirmation Dialog Boxes 

 In the import scenario mapping, when you need to specify an answer to a question that appears in a dialog box if the data is entered manually, you use the <Dialog Answer> dialog answer command of the Summary object. You must insert this command directly before you map the field that causes the appearance of the dialog box. For the dialog answer, you select the proper answer from the options available in the Source Field or Value column on the Mapping tab of the Import Scenarios (SM206025) form. The system selects the Commit check box for the dialog answer command automatically. 

 You can use the Summary object as the target object of the dialog answer command, because the dialog answer is shared between all objects of an Acumatica ERP form. You may need to use another object as the target object of the dialog answer command, if you want to overwrite the answer that is specified by the dialog answer command of the Summary object. 

 Below are the settings in the two rows you enter on the Mapping tab to update the customer class of an existing customer record. The first row contains the instruction to click Yes in the confirmation dialog box. 

 Field or Action Node (Target Object) Source Field or Value 

 <Dialog Answer> Customer Summary ='Yes' 

 Customer Class General Info -> Financial Settings CUSTOMER CLASS 

### Actions in Import Scenarios 

 When you need to reflect a button or menu command being clicked on a form, you map the corresponding action. Actions are available for all buttons on a form, as well as for all commands on the More menu or any other menu. 

 To add an action to the import scenario mapping, you use the Actions node of the Select Field or Action dialog box, which appears when you click the magnifier button in the Field or Action column. You can find the needed action by typing its name in the Search box. Action names have the Action: prefix and are surrounded with angle brackets—for example, <Action: Save> or <Action: Delete>. 

 All action use the Summary object as the target object. 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 325 

 For an action, you do not select any external field in the Source Field or Value column of the Mapping tab of the Import Scenarios (SM206025) form. 

#### Mapping of Actions with Dialog Boxes 

 If an action displays a dialog box, you may need to specify certain values for the fields whose elements are shown in this dialog box. In an import scenario, you map each field whose default value you want to change, and then you add a row that maps the action itself. You map a field by doing the following: 

1. Selecting the name of the field as the **Field or Action** 

2. Specifying the needed value of the field as the **Source Field or Value** 

 You map the check boxes in the same way. Suppose that you are importing invoices to the Invoices and Memos (AR301000) form. Further suppose that in the Recalculate Prices dialog box, you need to select the Override Manual Prices check box and clear the Recalculate Discounts check box. To reflect these actions, you add the following rows to the scenario mapping. 

 Field or Action Node (Target Object) Commit Source Field or Value 

 Execute Action 

 OverrideManualPrices Recalculate Prices Selected ='True' 

 RecalcDiscounts Recalculate Prices Selected ='False' 

 <Action: Recalculate Prices> 

 Actions Cleared Once, for Last Detail Line 

 Notice that the row that maps the Recalculate Prices action is added aer the rows that map the selection and clearing of check boxes in the Recalculate Prices dialog box. 

#### Importing of Documents with Detail Lines 

 When you import documents (such as invoice and shipments) with detail lines, by default, the system executes all instructions in the mapping of the scenario, including actions, for each detail line of each document. In most cases, certain actions should be executed only once for a document. 

 To ensure that the documents are processed correctly during import, you can specify how the system should execute a particular action by using the Execute Action column on the Mapping tab of the Import Scenarios (SM206025) form. The following options are available: 

- _For Each Record_ 

- _Once, for First Detail Line_ 

- _Once, for Last Detail Line_ Suppose that you want to update existing invoices by importing prices from a file. During the import, for each of the invoices, the system should put the invoice on hold, update its detail lines by using the data from the file, and then remove the invoice from hold. The screenshot below shows the mapping of a scenario on the _Import Scenarios_ form that imports accounts receivable invoices. The instructions in the mapping indicate that the system should perform the actions as follows: 

- _<Action: Cancel>_ (system action): For every row in the file—that is, for each detail line of each invoice (see     Item 1 in the screenshot).     This is a service command that the system adds for the key fields. 

 You do not need to add this command manually or edit it in any of the import scenarios. 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 326 

- _<Action: Hold> (PutOnHold)_ : For only the first detail line of each invoice (Item 2).     The system puts the invoice on hold (once). 

- _<Action: Remove Hold> (ReleaseFromHold)_ : For only the last detail line of each invoice (Item 3).     The system removes the invoice from hold aer all its detail line have been updated (also once). 

 Figure: The mapping with the types of action execution 

 By default, for each row that contains an action, the value in the Execute Action column is For Each Record. For the <Action: Save> command, the default value in this column is Once, for Last Detail Line. 

### Workflow Actions in Import and Export Scenarios 

 A workflow is a depiction of the ways the state of a record created on a particular Acumatica ERP form changes as a result of specific user interactions on the form and other events. A workflow action changes the state of an entity. For example, the status of an opportunity can be changed based on the actions a user has performed on this opportunity. For an Acumatica ERP form, a predefined workflow or a custom workflow can be defined in the system. For more information about workflows and workflow actions, see Action Configuration: General Information. 

 To specify the particular state of a record by using an import or export scenario, you need to use workflow actions in the scenarios. In this topic, you can find information about the use of workflow actions in import and export scenarios. 

 Simple import scenarios cannot use workflow actions. For details about simple import scenarios, see Simple Scenarios for Data Import. 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 327 

#### Workflow Actions in a Mapping 

 To specify a workflow action in a mapping on the Import Scenarios (SM206025), you click the magnifier button in the Field or Action column. In the Search box of the Select Field or Action dialog box, which opens, you type the name of the action. This is the standard way to call actions in import and export scenarios. 

 Alternatively, you can type <Action: Transition> in the Search box and specify the type of transition that corresponds to the workflow action in the Source Field or Value column. With this approach, you can use a formula to specify the type of transition. 

 To specify a workflow action in a mapping on the Export Scenarios (SM207025) form, you can use one of the following approaches: 

- Select the Summary object as the source object, and specify the action name in the **Field or Action** column.     This is the standard way to call actions in export scenarios. For details, see _Actions in Import Scenarios_. 

- Select the Summary object as the source object, select the <Action: Transition> action in the **Field**     **or Action** column, and specify the type of transition that corresponds to the workflow action in the **Target**     **Field or Value** column. With this approach, you can use a formula to specify the type of transition. 

#### Conditional Workflow Actions 

 To implement conditions in workflow actions, you use the <Action: Transition> action in the Field or Action column and a formula in the Source Field or Value column (for an import scenario). 

 Suppose that you want to import an invoice that has the On Hold status and that has multiple detail lines. Further suppose that when you create an invoice on an Acumatica ERP form, the status of this invoice is Open. That is, on the Accounts Receivable Preferences (AR101000) form, the Hold Documents on Entry check box is cleared. 

 You enter the settings in the two rows on the Mapping tab of the Import Scenarios (SM206025) form, as described in the following table. 

 Field or Action Node (Target Object) Source Field or Value 

 Status Invoice Summary =[Document.Status] 

 <Action: Transition> Invoice Summary =IIf([Document.Status]='H', '','PutOnHold') 

 To change the status of the invoice to On Hold , you need to invoke the PutOnHold action. If the invoice contains multiple detail lines, the system imports these lines one by one. If you invoke the PutOnHold action for the first detail line and then try to invoke this action for the second line, the system displays an error that the action is disabled (because the invoice is already on hold). 

 To continue importing the detail lines, you specify the formula (see the table above) to invoke the PutOnHold action only once for the invoice, when the status of this invoice is not yet On Hold. The formula makes the system check the status of the invoice, and if the status is not On Hold , the system changes it to On Hold. 

#### Workflow Actions with Dialog Boxes 

 If a workflow action displays a workflow dialog box with the parameters of the action, you can specify these parameters by using the Transition Parameters object as the target object in an import scenario. The parameters must be specified before the workflow action. 

 The Transition Parameters object is not available in export scenarios. 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 328 

 For example, to execute the Accept action on the Leads (CR301000) form for a qualified lead, you enter the settings shown in the following table in the two rows on the Mapping tab of the Import Scenarios (SM206025) form. The first row specifies the value in the Details dialog box, which opens when a user clicks Accept. 

 Field or Action Node (Target Object) Source Field or Value 

 Reason Transition Parameters ='Qualified by Marketing' 

 <Action: Transition> Lead Summary ='Accept' 

 Related Links 

- _Workflow Creation: General Information_ 

- _Action Configuration: General Information_ 

### Key Fields and Search in Import Scenarios 

 In the mapping of an import scenario, you have to map the key fields first, mapping the target key fields in the system to the source key fields. (Key fields are the fields whose values uniquely identify a particular record and are used to find the record within the database.) The system uses the following keys: Customer ID for customers on the Customers (AR303000) form, and Type and Reference Nbr. for documents on multiple forms, such as the Invoices and Memos (AR301000) form. The order of key fields is important for mapping, so you should follow the order of key fields as they are displayed on Acumatica ERP forms. In particular, for documents, you have to assign first the Type field and then the Reference Nbr. field. 

#### Auto-Numbering of Records 

 You can import records with their key values from the source, and the records will have the same key values in the system and the source. For example, suppose you are importing records to the Customers form. If you have the customer CUST000001 in the Excel file, you can import this customer to the system so that the customer record will have the same ID: CUST000001. Later, you can update customer records by mapping the Excel column with the ID to the Customer ID field in the system. 

 As an alternative to importing records with their key values from the source, you can import records and have the system automatically assign IDs. For example, you can import the customer records so that aer the import, the customer will have an automatically assigned ID in the system that was not in the Excel file, such as C000000001. You can import master records with automatically assigned IDs in one of the following ways: 

- You can enable auto-numbering of records in the system and map the key fields to unique identifiers of     records in the source. 

- If there is just one line for each unique record in the data source, you can enable auto-numbering of     records in the system and import each line from the source file as an unique record in the system with an     automatically assigned ID. With this way of mapping, you do not map key fields in the import scenario and     add the <Action: Insert> instruction at the beginning of the mapping. 

- You can map the key field to a formula that produces unique identifiers for each imported record in the     needed format. For details on creating formulas, see _The Use of Formulas_. Auto-numbering of master records is configured in the corresponding segmented keys on the _Segmented Keys_ (CS202000) form. Documents are usually automatically assigned a reference number in the system. During the initial implementation, you can disable auto-numbering of documents in the system, import the documents with their IDs, and then turn on auto-numbering starting from the last imported ID. Auto-numbering of documents is configured in the numbering sequences that are specified for the corresponding document types on the preferences form of a functional area. For example, the _ARINVOICE_ sequence is specified for the auto-numbering of invoices on the _Accounts Receivable Preferences_ (AR101000) form. 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 329 

 You can update records imported with automatically generated IDs by searching for them in the system by using their unique fields available in the source. For example, you can identify customers by email addresses or phone numbers in the Excel file. To search for a record, you have to declare a custom key or use a column of a lookup table. Both of these methods are described in the following sections. 

#### Custom Key 

 To specify a custom key, you select the check box in the Search column on the Mapping tab of the Import Scenarios (SM206025) form for the field. (This column is hidden by default.) 

 The screenshot below shows the mapping of an import scenario that updates account receivable invoices. To add a custom key to the mapping, you do the following: 

1. Add the field that you want to use as a custom key on the **Mapping** tab of the _Import Scenarios_ (SM206025)     form 

2. Open the Column Configuration dialog box for the table, and select the check box for the **Search** column to     make it visible. 

3. Select the **Search** check box for the added field (Item 1 below).     Notice that the system automatically selects the **Search** check box for the _Type_ and _Reference Nbr._ key fields     (Item 2). For key fields, this check box is always selected and read-only.     Also notice that system selects the **Commit** check box for the custom key. 

 Figure: The new Search column 

 You select this check box for any field that you want to designate as a custom key. You can use the fields of the Summary object or unique fields of the detail objects. 

 You can specify custom keys to search for a record or a detail line. You can use the fields of the Summary object and the detail objects as custom key fields, but you cannot use the fields of related objects. For example, you can find the needed customer record in the system by using the Customer Name field of the Customers form as the custom key, but you cannot find the record by using the Email field of the Main Contact group of the General Info tab as the custom key. 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 330 

#### Lookup Table 

 Lookup tables on an Acumatica ERP form appear when a user clicks the magnifier button of a key field of the form to open the Select dialog box. When you are creating a mapping for an import scenario, you can use any columns of a lookup table that are available on the form for the key field. To use a column of a lookup table for a search in an import scenario, you have to map this column to the matching external field. Column names start with the key field name, followed by -> and then the name of the column on the form, such as Customer ID -> Email. 

 The following table shows the instruction that maps the Email column of the lookup table of the Customer ID field on the Customers (AR303000) form to the EMAIL field available in the source. 

 Field or Action Node (Target Object) Source Field or Value 

 Customer ID -> Email Customer Summary EMAIL 

 Certain records in the system are visible in a lookup table of a box on a form only if a particular branch or company is selected on the Company and Branch Selection menu. To make these records available for selection during import, you need to ensure that the mapping of the import scenario includes the selection of the needed branch or company on this menu. 

 You can do this by adding a row with the <Set: Branch> command to the import scenario on the Import Scenarios (SM206025) form. In the row, you specify the settings as shown in the following table. 

 Field or Action Node (Target Object) Source Field or Value 

 <Set: Branch> The Summary object of the record 

 The name of the branch or company, or a formula that calculates the branch or company to be used 

 The row with the <Set: Branch> command must be the first row in the mapping. 

 The following screenshot shows the use of this command in a scenario that imports AR invoices. If customer visibility is restricted to a specific branch or company group, the branch determines whether customers are shown in the lookup table of the Customer box and which set of customers is shown. As a result, you must select an appropriate branch when importing records by using the scenario. 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 331 

 Figure: The branch selection in the scenario mapping 

 The user who runs the import scenario must have access to the branch or company specified in the mapping. 

### Export of All Records: Use of Every 

 If you want to export every record of a specific type, on the Mapping tab of the Export Scenarios (SM207025) form, you map the key field to the =Every system action. (The Commit check box is selected automatically for this field.) This action ensures that every record of the specific type will be processed during export. 

 For example, if you want to export all customer records available in the system, you should map the Customer ID field to =Every. The Commit check box is selected automatically for this field. If you need the value of the Customer ID field in the output destination, you should also map this field to the appropriate external field. The example below shows the mapping that makes the system export all customer records available in the system and export the Customer ID field to the target CUSTOMER ID field. 

 Table: Usage of the =Every Instruction 

 Source Object Field or Action Target Field or Value 

 Customer Summary Customer ID =Every 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 332 

 Source Object Field or Action Target Field or Value 

 Customer Summary Customer ID CUSTOMER ID 

### Data Modification During Export: Use of Commit and Actions 

 You can change the values of some fields or apply an action to a record during export. For example, you can change a description field of a record or delete a record as you are exporting it. 

#### Changing the Value of a Field 

 If you need to change the values of some fields during export, you must perform a commit of these fields to the server. That is, on the Mapping tab of the Export Scenarios (SM207025) form, you must select the Commit check box for each internal field whose data is modified. If you change the values of some fields during export, you also need to insert the <Action: Save> command at the end of the scenario to save the changes to Acumatica ERP. 

 If you specified specific field values on the form during export only in order to select the data for exporting, however, you don't need to insert the <Action: Save> command at the end of the scenario. 

 If you configured the scenario to change the values of some fields in Acumatica ERP, the system prepares the specified records in the source and tries to apply modifications to them during the preparation process. (If modification of the specified field is not allowed in the system, the field remains unchanged.) Then the system exports all prepared records to the external system. 

 For example, suppose that you create a scenario that exports AR invoices from the Invoices and Memos (AR301000) form and adds the string Exported on 18.05.2015 to their descriptions in Acumatica ERP. As a result of the processing of this scenario, all invoices are exported, and only the invoices with the Balanced and On Hold statuses are modified. Modification of documents with other statuses is not allowed in the system, so these documents are exported without any change to their descriptions in Acumatica ERP. 

#### Applying an Action 

 As you perform mapping for an export scenario, when you need to reflect the clicking of a button on a form, you should use the corresponding action. You can use the same actions in export scenarios as in import scenarios. For more information, see Actions in Import Scenarios. 

 If you are going to delete records or apply another action to records by using an export scenario, you have to specify precise source restrictions that select only those records that can be processed; otherwise, no records will be processed. 

 For example, suppose that you want to delete Accounts Receivable invoices that have X as the value of the Project element on the Invoices and Memos form. To select only invoices that can be deleted, in the source restrictions of the export scenario, you have to specify not only the condition Project = X but also the condition Status = On Hold or Status = Balanced. If you do not specify filtering by status and there are invoices with the Open status in the system, no records will be deleted. 

### Multilanguage Fields in Import and Export Scenarios 

 For some text boxes on Acumatica ERP forms, users can type values in multiple languages if multiple locales are configured in Acumatica ERP. For example, if your Acumatica ERP instance has the English and French locales activated and multilingual user input configured, you can specify the value of the Description box on the Stock Items (IN202500) form in English or French. 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 333 

#### Import of Localized Field Values 

 As you perform mapping for an import scenario on the Import Scenarios (SM206025) form, when you need to import localized values of a field, you map this field to a source field that contains a string in JSON format with the localized values. In this string, you use the two-letter ISO code of the language with which the value should be associated. 

 In the example that is mentioned at the beginning of the topic, if you need to import the values in English and French to the Description element of stock item records on the Stock Items form, you map the Description field to a source field that contains data in the following format: [{en:English description},{fr:French description}]. The mapping example below presumes that the DescriptionsInJSONFormat source field contains a string in JSON format. 

 Field or Action Target Object Source Field or Value 

 Description Stock Item Summary DescriptionsInJSONFormat 

 In the string, you should specify the actual values of the field in all languages that are configured for multilingual user input. If you specify the values of the field in particular languages, the values of the field in other languages configured for multilingual user input become empty. For example, suppose that in your instance of Acumatica ERP, multilingual fields can have values in English and French. If you pass the value of a field in the following format [{en:English description}], the French value of the field becomes empty. 

 If a source field that you map to a multilanguage field contains plain text, this text is saved as the value of the field in the current language of Acumatica ERP (that is, the language that you selected on the Sign-In page of Acumatica ERP). 

#### Export of Localized Field Values 

 Each text field that supports multiple input languages has a corresponding field with the suffix Translations in its native name. This corresponding field contains all localized values of the text field. For example, the Description box on the Stock Items form corresponds to the field with native name Descr. The Descr field has the DescrTranslations corresponding field, which contains the localized descriptions of a stock item. 

 If you want to export localized values of a text box, on the Mapping tab of the Export Scenarios (SM207025) form, you map the needed Translations field, which contains localized values, to a target field. The Translations fields are not available in the list of fields in the Field or Action column on the Mapping tab; you should type the needed name manually. 

 For example, suppose that you need to export the localized values of the Description element of the Stock Items form. You should find out the native name of the Description field, which is Descr , and map the DescrTranslations field to the target field, as shown in the following mapping example. 

 To find out the native name of a field, on the title bar of the target Acumatica ERP form, click Customization > Inspect Element , and then click the target element on the form. In the Element Properties dialog box, which opens, find the value of the Data Field element, which is the native name of the field. 

 Source Object Field or Action Target Field or Value 

 Stock Item Summary DescrTranslations DESCRIPTION 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 334 

 As a result of the export of localized field values, the target field contains a string in JSON format with the available localized values of the field. The language to which the value belongs is identified by the two-letter ISO code of the language. For example, suppose that the Description element of the Stock Items form has value Item in English and Pièce in French. In this case, the target field contains the following string: [{en:Item},{fr:Pièce}]. 

 Related Links 

- _Locales and Languages_ 

- _Boxes That Have Multilanguage Support_ 

### The Use of Formulas 

 You can specify formulas on multiple forms. For example, to convert data into a different format during data import or export, you can map an internal field to a formula by using the Import Scenarios (SM206025) or Export Scenarios (SM207025) form. 

#### Components of a Formula 

 A formula can include the following components: 

- **Digital and text literals** : Literals are constants within the formula that you do not want to be modified: 

- Type digital literals as they are, such as 2, 8.25, or 13.84. 

- Enclose text literals within single quotation marks—for example, _'DEF_CLASS'_ and _'FOB'_. 

- **Operators** : The following types of operators are available: 

- Arithmetic operators use numerical values and return a numerical value. 

- Logical operators evaluate one or two Boolean expressions and return a Boolean result. 

- Comparison operators compare two expressions and return a Boolean value that represents the result. 

- **Functions** : Functions, which perform specific tasks and return results, include the following types: 

- Text functions perform operations on text strings. 

- Math functions perform calculations. 

- Conversion functions convert data from one type to another. 

- Date and time functions perform operations related to the date, the time, or both. 

- **Fields** : External or internal fields (elements) can be used in a formula as operands or function arguments.     The list of internal fields includes user-defined fields added to the source form. 

#### Assigning a Formula 

 To assign a formula to a field, do the following on the form with a formula box or column: 

1. Double-click in the formula box or column, and then click the Edit button, which appears. This invokes the     Formula Editor dialog box, which you use to create the needed formula. 

 The name of the dialog box corresponds to the name of the box or column from which you open it. 

2. Click any of the types in the Component Types pane (see Item 1 below) to open the list of related     components in the Component Selection pane (Item 2). 

3. Double-click a component from the list of components. Note that all components are added to the right of     the formula text. 

4. Repeat the two previous steps to add all the needed components. 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 335 

5. In the Formula Text pane (Item 3), manually edit the text to construct a correct formula: Move the function     argument or arguments within a function's parentheses, correctly arrange operands and operations, and     add any needed brackets to ensure the proper order of operations. 

6. Click **Validate** to check the syntax of the formula and make necessary corrections if required. 

7. Click **OK** to save the formula. 

 Figure: Formula Editor dialog box 

 Once it is inserted, a formula is preceded by an equal sign (=). 

 See Formula Editor Dialog Box for details on using the dialog box, as well as descriptions of components. 

#### Formulas in Export Scenarios 

 When you map the data in Acumatica ERP to the external fields, you usually need field-to-field mapping. In some cases, however, you may need to transform or convert the data before export. This can involve adding values from multiple internal fields to one external field and extracting only a part of the internal field's value. 

 If you map an internal field to a formula instead of an external field, the resulting value will be assigned back to the Acumatica ERP field. This functionality can be used, for example, to set criteria on inquiry forms to export only filtered data or to mark records as exported. 

#### Formulas in Import Scenarios 

 When you map Acumatica ERP fields to the external data, you usually need field-to-field mapping. In some cases, however, you may need to transform or convert the data before import. This can involve adding values from multiple external fields to one internal field and extracting a part of the external field's value. 

 During mapping, the system checks the functionality of the mapped field. If necessary, it adds a line that contains the system action required for this field, such as a refresh of the form or a commit to the database. 

 The formulas that contain locale-specific data are calculated according to the locale specified in the Format Locale box, which is located in the Summary area of the Import Scenarios (SM206025) form for the import scenario. If no locale is specified, the default English (United States) locale is used. 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 336 

#### Formula Examples 

 The following examples illustrate how formulas work. 

 Formula Description 

 ClassID ='Imported Vendors' 

 Assigns the Imported Vendors literal value to ClassID. 

 VendorID = 'X'+[VendID] Sets VendorID to a concatenated string formed by X and the VendID value. 

 IsAddressSameAsMain = true 

 Sets the IsAddressSameAsMain check box to true. 

 CountryID =iif(trim[Country]='','US',[Country]) 

 Assigns US to CountryID if the Country field is blank; otherwise, assigns the Country value. 

 You can use such a formula to make sure that a required internal field is not blank. 

 Customer ID = Left( trim(UCase([Name])),10) 

 Generates Customer ID by doing the following: 

1. Trimming any leading or trailing spaces from the customer's name     (Name) with the Trim(arg) function 

2. Converting the name to uppercase with the UCase(arg) function 

3. Truncating the name to a maximum of 10 characters with the     Left(arg) function 

 You can use this formula to generate new customer IDs if the values from the source cannot be used in your implementation. (In the example, customer IDs are short versions of customer names converted to uppercase.) 

 You can find more information on the operators and functions that can be used in formulas in the mapping in the following topics: 

- _Operators_ 

- _Functions_ 

 Related Links 

- _Formula Editor Dialog Box_ 

- _Configuring Import Scenarios_ 

- _Configuring Export Scenarios_ 

### Operators 

 Operators are used in formulas that you create on the Formula Editor Dialog Box , which is called from the Import Scenarios (SM206025) and Export Scenarios (SM207025) forms. 

 To add operators to the formula, you can enter them directly in the Formula Text pane of the dialog box or select them from the list of formula components available within the dialog box. (Select an operator type to view the list of operators of the type, and then select an operator.) To specify the operands for operators, you can type them in 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 337 

 the Formula Text pane or select them from the list of external or internal fields provided within the Formula Editor dialog box. 

 This article describes and provides examples of the operators you can use in formulas, broken down by operator type. 

#### Overview of Operators 

 There are two types of operators: unary and binary. Unary operators are applicable to only one operand, while binary operators require two operands. 

 In general, expressions are evaluated from le to right with the following order of precedence: 

- Logical Operators: Not, And, Or 

- Comparison Operators: =, <>, , <=, >= 

- Arithmetic Operators: -, *, /, Mod, +, - 

#### Arithmetic Operators 

 Arithmetic operators, which are listed below, take numerical values as their operands and return a single numerical value. 

 Operator Description and Example 

 + Adds the two operands and returns the result. If at least one operand is a string, this operator returns a concatenated string. 

 Example: =[Amount]+[Tax Amount] 

 In this example, the [Amount] and [Tax Amount] values are used as operands. 

- Subtracts the second operand from the first. 

 Example: =[Amount]-[Cash Discount] 

 In this example, the [Amount] and [Cash Discount] values act as operands. 

 * Multiplies the two operands. 

 Example: =[Chargeable Amount]*0.03 

 In this example, the [Chargeable Amount] value and the number 0.03 serve as operands. 

 / Yields the quotient of the operands, which is the first operand divided by the second. 

 Example: =[Amount]/[Rate Reciprocal] 

 In this example, the [Amount] and [Rate Reciprocal] values are the first and second operands. 

 Mod (Modulus) 

 Divides the first integer operand by the second integer operand and returns the remainder, rounded to the nearest integer. 

 Example: =[Volume] Mod [Conversion Factor] 

 In this example, the [Volume] and [Conversion Factor] values are used as operands. 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 338 

#### Logical operators 

 Logical operators evaluate one or two Boolean expressions and return a Boolean result (True or False). Because these operators evaluate only Boolean expressions, you must use elements whose only values are True and False (typically check boxes and radio buttons). The logical operators are listed below. 

 Operator Description and Example 

 And Performs logical conjunction on two Boolean expressions: returns True if and only if both expressions evaluate to True; in other cases, returns False. 

 Example: =[Hold] And [Validate Control Totals on Entry] 

 In this example, the [Hold] and [Validate Control Totals on Entry] check boxes are used as operands. 

 Or Performs logical disjunction on two Boolean expressions: returns True if at least one expression evaluates to True; returns False if neither expression evaluates to True. 

 Example: =[Hold] Or [Validate Control Totals on Entry] In this example, the [Hold] and [Validate Control Totals on Entry] check boxes act as operands. 

 Not Performs logical negation on a Boolean expression: returns True if and only if the operand is False. Logical negation is an unary operator. 

 Example: =Not [Hold Documents on Entry] 

 In this example, the [Hold Documents on Entry] check box is used as the single operand. 

#### Comparison Operators 

 Comparison operators compare two expressions and return a Boolean value (True or False) that represents the result of the comparison. This group of operators includes the following operators. 

 Operator Description and Example 

 = Returns True if operands are equal. 

 Example: =([Credit Total] = [Control Total]) 

 In this example, the [Credit Total] and [Control Total] values are used as operands. 

 <> Returns True if operands are not equal. 

 Example: =([Credit Total] <> [Debit Total]) 

 In this example, the [Credit Total] and [Debit Total] values act as operands. 

 < Returns True if the first operand is less than the second one. 

 Example: =([DocDate] < [DueDate]) 

 In this example, the [DocDate] and [DueDate] values act as operands. 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 339 

 Operator Description and Example 

 > Returns True if the first operand is greater than the second one. 

 Example: =([CrLmt] > 1000]) 

 In this example, the [CrLmt] value is used as the first operand, and the number 1000 acts as the second operand. 

 <= Returns True if the first operand is less than or equal to the second operand. 

 Example: =(([DueDate]-[CashDiscountDate]) <= [LeadTime]) 

 In this example, [DueDate] [CashDiscountDate] is the first operand, and the [LeadTime] value is used as the second operand. 

 >= Returns True if the first operand is greater than or equal to the second operand. 

 Example: =([Balance] => [Amount]) 

 In this example, the [Balance] and [Amount] values are used as operands. 

#### Other Operators 

 This miscellaneous group of operators includes the following operators and constants. 

 Operator Description and Example 

 In An operator that returns True if the second operand (a string) contains the first operand (which is also a string). 

 Example: =('Inc.' In [Vendor Name]) 

 In this example, the [Vendor Name] value is used as an operand, and the formula returns True if the name of the vendor contains Inc. 

 True A binary constant used as an operand in logical expressions. 

 Example: =True 

 False A binary constant used as an operand in logical expressions. 

 Example: =False 

 Null A special value used as an operand in logical expressions; designates an undefined value. 

 Example: =Null 

 Related Links 

- _Functions_ 

- _Formula Editor Dialog Box_ 

- _Import Scenarios_ 

- _Export Scenarios_ 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 340 

### Functions 

 Functions are used in formulas that you create on the Formula Editor Dialog Box , which you can invoke from the Import Scenarios (SM206025) and Export Scenarios (SM207025) forms. 

 To add functions to a formula, you can type them in the Formula Text pane of the dialog box or select them from the list of formula components available within the dialog box. (Select a function type to view the list of functions of the type, and then select a function.) 

 This topic describes and provides examples of the functions you can use in formulas, broken down by type. 

#### Conversion Functions 

 The available conversion functions, which are used to convert data from one data type to another, are listed below. 

 Function Description and Example 

 CBool(x) Converts the expression used as the function argument into a Boolean expression. Returns False if the Boolean value is 0 ; otherwise, returns True. The return type is Boolean. 

 Example: =CBool([CashDiscountAmount] 

 Here [CashDiscountAmount] is used as the function argument. 

 CDate(x) Converts the expression used as the function argument into a value of the Date type. The argument should be a valid date expression according to the locale selected for the import or export scenario. The return type is DateTime. 

 Example: =CDate('24/12/2011') 

 Here a string is used as the function argument. 

 CStr(x) Converts the expression used as the function argument into a string. If the argument is Null , the function returns a run-time error; otherwise, it returns a string. The return type is String. 

 Example: ='(' +CStr([AreaCode])+')'+CStr([Phone]) 

 Here [AreaCode] and [Phone] are used in the function argument. 

 CDbl(x) Converts the expression defined in the function argument into a value of the Double type. The return type is Double. 

 Example: =CDbl(1.0/[ExchangeRate]) 

 Here [ExchangeRate] is used in the function argument. 

 CSng(x) Converts the expression used as the function argument into a value of the Single type. If the expression has a value outside the acceptable range for the Single type, this function returns an error. The return type is Float. 

 Example: =CSng([CashDiscountAmount]/[DocAmount]) 

 Here [CashDiscountAmount] and [DocAmount] are used in the function argument. 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 341 

 Function Description and Example 

 CDec(x) Converts the expression used as the function argument into a value of the Decimal type. The return type is Decimal. 

 Example: =CDec([DocAmount]*0.015) 

 Here [DocAmount] is used in the function argument. 

 CInt(x) Converts the expression used as the function argument into a value of the Integer type. The return type is Int32. 

 Example: =CInt('2012')-Year([DocDate]) 

 Here [DocDate] is used in the function argument. 

 CShort(x) Converts a numeric value to a value of the Short type. The return type is Int16. 

 Example: =CShort([CashDiscountAmount]) 

 Here [CashDiscountAmount] is used as the function argument. 

 CLong(x) Converts a numeric value to a value of the Long type. The return type is Int64. 

 Example: =CLong([CashDiscountAmount]) 

 Here [CashDiscountAmount] is used as the function argument. 

#### Text Functions 

 Text functions are used to perform operations on text strings. The group of text functions includes the functions described below. 

 Function Description and Example 

 LTrim(string) Removes all leading spaces or parsing characters from the specified string, or all leading 0 bytes from the specified binary expression. The return type is String. 

 Example: =LTrim(CStr([Phone])) 

 Here [Phone] is used as the function argument. 

 RTrim(string) Removes all trailing spaces or parsing characters from the specified character expression, or all trailing 0 bytes from the specified binary expression. The return type is String. 

 Example: =RTrim(CStr([AreaCode])) 

 Here [AreaCode] is used as the function argument. 

 Trim(string) Removes all leading and trailing spaces or parsing characters from the specified character expression, or all leading and trailing 0 bytes from the specified binary expression. The return type is String. 

 Example: =Iif(Trim([Country]) 

 Here [Country] is used in the function argument. 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 342 

**Function Description and Example** 

Format(format, argument(s)) 

 Replaces the format item in a specified formatting string ( format ) with the text equivalent of the arguments ( arguments ). The return type is String. 

 Example: =Format('Currency:........ {0:C}; Account:........ {1:N}', [Currency], [AccountBalance]) 

 Here [Currency] and [AccountBalance] are used in the function argument; 0 and 1 are the specifiers indicating where the arguments will be inserted, C is the currency format specifier, and N is the number format specifier. 

UCase(string) Returns a string that has been converted to uppercase. The _string_ argument can be any valid string expression. The return type is String. If _string_ contains _Null_ , _Null_ is returned. 

 Example: =UCase([CustomerName]) 

 Here [CustomerName] is used as the function argument. 

LCase(string) Returns a string that has been converted to lowercase. The _string_ argument can be any valid string expression. The return type is String. If _string_ contains _Null_ , _Null_ is returned. 

 Example: =LCase(CStr([CustomerID]) 

 Here [CustomerID] is used in the function argument. 

InStr(string, findString) 

 Returns the position of the first occurrence of one string ( findString ) within another ( string ).The return type is String. 

 Example: =InStr([CustomerName], 'Inc') 

 Here [CustomerName] is used in the function argument. 

Substring(string, startIndex, length) 

 Returns a string containing the specified number of characters ( length ) starting from the specified position ( startIndex ). The first character has the 0 index. The return type is String. 

 Example: =Substring( [Name], 3, 8) 

 Here [Name] is used in the function argument. 

InStrRev(string, findString) 

 Returns the position of the last occurrence of one string ( findString ) within another ( string ). The return type is String. 

 Example: =InStrRev([CustomerName], 'Inc') 

 Here [CustomerName] is used in the function argument. 

Len(string) Returns an integer containing either the number of characters in the string or the nominal number of bytes required to store a variable. The return type is Int32. 

 Example: =Len([CustomerName]) 

 Here [CustomerName] is used as the function argument. 

Left(string, length) 

 Returns a string containing the specified number of characters from the le side of a string. The return type is String. If string contains Null , Null is returned. 

 Example: =Left(Trim([VendorName]), 10) 

 Here [VendorName] is used in the function argument. 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 343 

 Function Description and Example 

 Right(string, length) 

 Returns a string containing a specified number of characters from the right side of a string. The return type is String. If string contains Null , Null is returned. 

 Example: =Right(CustomerName, 3) 

 Here [CustomerName] is used in the function argument. 

 Replace(string, oldValue, newValue) 

 Returns a string in which the specified substring ( oldValue ) has been replaced with another substring ( newValue ). The return type is String. 

 Example: =Replace([Description], 'rur', 'eur') 

 Here [Description] is used in the function argument. 

 PadLeft(string, width, paddingChar) 

 Right-aligns the characters in a specified string ( string ), padding with the specified character ( paddingChar ) on the le up to the specified total width ( width ). If the actual length of the string is less than the specified width , returns the original string. The return type is String. 

 Example: =PadLeft(CStr(Phone), 12, '_') 

 Here [Phone] is used in the function argument. If the actual length of the string is less than the specified width , returns the original string. 

 PadRight(string, width, paddingChar) 

 Le-aligns the characters in a specified string ( string ), padding with the specified character ( paddingChar ) on the right up to the specified total width ( width ). The return type is String. 

 Example: =PadRight(CStr([City]), 25, '_') 

 Here [City] is used in the function argument. If the actual length of the string is less than the specified width , returns the original string. 

#### Math Functions 

 Mathematical functions, which are listed and described below, perform calculations, usually based on input values provided as arguments, and return numeric values. 

 Function Description and Example 

 Abs(x) Returns the absolute value of the number. 

 Example: =Abs([TotalDebit]-[TotalCredit]) 

 Here [TotalDebit] and [TotalCredit] are used in the function argument. 

 Floor(x) Returns the largest integer that is not greater than the argument. 

 Example: =Floor([Price]/([Cost]) 

 Here [Price] and [Cost] are used in the function argument. 

 Ceiling(x) Returns the smallest integer that is not less than the argument. 

 Example: =Ceiling([Price]/[Cost]) 

 Here [Cost] and [Price] are used in the function argument. 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 344 

 Function Description and Example 

 Round(x, decimals) 

 Returns a numeric expression, rounded to the specified precision ( decimals ). 

 Example: =Round(([Price]-[Cost])/[Cost], 2) 

 Here [Cost] and [Price] are used in a function argument, and 2 is the number of decimal places. 

 Min(x, y) Returns the smaller of the two values. 

 Example: =Min([Price],[Cost]) 

 Here [Cost] and [Price] are used in the function argument. 

 Max(x, y) Returns the greater of the two values. 

 Example: =Max({StandardCost],[AvrCost]) 

 Here [StandardCost] and [AvrCost] are used in the function argument. 

 Pow(x, power) 

 Computes the value of x raised to the specified power ( power ). 

 Example: =Pow(([Markup], 2)) 

 Here [Markup] is used in the function argument; the function returns the markup value squared (or to the second power). 

#### Date and Time Functions 

 The date and time functions, described below, perform operations on input values and return values of the following types: string, numeric, or date and time. 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 345 

**Function Description and Example** 

DateAdd(date, interval, number) 

 Returns a new date, which is calculated by adding the specified number ( number ) of time intervals ( interval ) to the date ( date ). The interval argument specifies the type of time interval and can be one of the following options: 

- _y_ , _yy_ , _yyyy_ , or _year_ : The specified number ( _number_ ) of years will be added to the speci-     fied date ( _date_ ). 

- _m_ , _mm_ , or _month_ : The specified number ( _number_ ) of months will be added to the     specified date ( _date_ ). 

- _d_ , _dd_ , or _day_ : The specified number ( _number_ ) of days will be added to the specified     date ( _date_ ). 

- _h_ , _hh_ , or _hour_ : The specified number ( _number_ ) of hours will be added to the specified     date ( _date_ ). 

- _n_ , _mi_ , or _minute_ : The specified number ( _number_ ) of minutes will be added to the spec-     ified date ( _date_ ). 

- _s_ , _ss_ , or _second_ : The specified number ( _number_ ) of seconds will be added to the speci-     fied date ( _date_ ). 

- _w_ , _ww_ , _wk_ , or _week_ : The specified number ( _number_ ) of weeks will be added to the     specified date ( _date_ ). 

- _q_ , _qq_ , or _quarter_ : The specified number ( _number_ ) of quarters will be added to the     specified date ( _date_ ). The return type is DateTime. 

 Examples: 

- =DateAdd([StartPeriod], 'm', 12) 

- =DateAdd([CashDiscountDate], 'd', -2) In these examples, [CashDiscountDate] and [StartPeriod] are the fields that are used as the function arguments. 

DateDiff(interval, date1, date2) 

 Returns the count (as a signed integer value) of the specified interval boundaries that are crossed between the specified date1 and date2. The interval argument, which specifies the type of time interval, can be one of the following options: 

- _y_ , _yy_ , _yyyy_ , or _year_ : The time interval is specified in years. 

- _m_ , _mm_ , or _month_ : The time interval is specified in months. 

- _d_ , _dd_ , or _day_ : The time interval is specified in days. 

- _h_ , _hh_ , or _hour_ : The time interval is specified in hours. 

- _n_ , _mi_ , or _minute_ : The time interval is specified in minutes. 

- _s_ , _ss_ , or _second_ : The time interval is specified in seconds. 

- _w_ , _ww_ , _wk_ , or _week_ : The time interval is specified in weeks. 

- _q_ , _qq_ , or _quarter_ : The time interval is specified in quarters. The return type is Double. 

 Example: =DateDiff('d', CDate('3/12/2018'), CDate('4/12/2018')) 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 346 

**Function Description and Example** 

Day(date) Returns the day (as an integer) extracted from the specified date (date). The return type is Int32. 

 Example: =Iif(Day([DueDate]-[LeadTime])=0, True, False 

 Here [DueDate] and [LeadTime] are used in the function argument. 

DayOfWeek(date) 

 Returns the day of the week associated with the specified date (date) as an integer. The return type is Int32. 

 Example: =DayOfWeek([StartPeriod]) 

 Here [StartPeriod] is used as the function argument. 

DayOfYear(date) 

 Returns the day of the year calculated for the specified date (date). The return type is Int32. 

 Example: =DayOfYear([StartPeriod]) 

 Here [StartPeriod] is used as the function argument. 

DayOrdinal(day) 

 Converts the specified integer value ( day ) to a string that contains the ordinal number in the current locale. For example, for the English locale, the string contains the short form of the ordinal number, such as 1st or 2nd. For numbers that are less than 1 or greater than 31, the function returns an empty string. 

 The return type is String. 

 Example: =DayOrdinal(1) 

Hour(date) Returns the hours extracted from the specified date (date). The return type is Int32. 

 Example: =Hour([StartPeriod]) 

 Here [StartPeriod] is used as the function argument. 

Minute(date) Returns the number of minutes extracted from the specified date (date). The return type is Int32. 

 Example: =Minute([StartPeriod]) 

 Here [StartPeriod] is used as the function argument. 

Month(date) Returns the month, as an integer, extracted from the specified date (date). The return type is Int32. 

 Example: =Month([StartPeriod]) 

 Here [StartPeriod] is used as the function argument. 

MonthName(date) 

 Returns a string that contains the name of the month extracted from the specified date ( date ) in the current locale. 

 The return type is String. 

 Example: =MonthName(CDate('3/12/2022')) 

Now() Returns the business date and time according to the system date and time on the local computer. The return type is DateTime. 

 Example: =Now() 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 347 

 Function Description and Example 

 NowUTC() Returns the business date and time in the user's time zone. The system extracts the user's time zone from one of the following sources, which are ordered by priority from the highest to the lowest: 

1. The time zone specified for the user in the **Time Zone** box ( **General Info** tab) of the     _User Profile_ (SP203010) form. 

2. The employee calendar selected for the user in the **Calendar** box of the **General In-**     **fo** tab of the _Employees_ (EP203000) form. The time zone of the calendar is specified in     the Summary area of the _Work Calendar_ (CS209000) form. 

3. The time zone specified for the site in the **Login Time Zone** box on the _Site Prefer-_     _ences_ (SM200505) form. 

 The return type is DateTime. 

 Example: =NowUTC() 

 Second(date) Returns the seconds extracted from the specified date (date) as an integer. The return type is Int32. 

 Example: =Second([StartPeriod]) 

 Here [StartPeriod] is used as the function argument. 

 Today() Returns the business date according to the system date and time on the local computer. The return type is DateTime. 

 Example: =Today() 

 TodayUTC() Returns the business date in the user's time zone. The system extracts the user's time zone from one of the following sources, which are ordered by priority from the highest to the lowest: 

1. The time zone specified for the user in the **Time Zone** box ( **General Info** tab) of the     _User Profile_ (SP203010) form. 

2. The employee calendar selected for the user in the **Calendar** box ( **General Info** tab)     of the _Employees_ (EP203000) form. The time zone of the calendar is specified in the     Summary area of the _Work Calendar_ (CS209000) form. 

3. The time zone in the site preferences, which are specified in the **Login Time Zone** box     on the _Site Preferences_ (SM200505) form. 

 The return type is DateTime. 

 Example: =TodayUTC() 

 Year(date) Returns the year, as an integer, extracted from the specified date (date). The return type is Int32. 

 Example: =Year([StartPeriod]) 

 Here [StartPeriod] is used as the function argument. 

#### Other Functions 

 This miscellaneous group of functions includes the following functions. 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 348 

**Function Description and Example** 

IIf(expression, truePart, falsePart) 

 Returns one of two values, depending on the evaluation of the expression: If the expression evaluates to True, the function returns the truePart value; otherwise, it returns the falsePart value. 

 The return type is determined by the value that the function returns. 

 Example: =IIf(([CurrencyID]='', 'USD', [CurrencyID]) 

 Here [CurrencyID] is used in the function argument. 

 You can also use this function to set a field value to Null. 

 Example: =IIf([Document.OrderType]='QT', 'FEDEX', NULL) 

IsNull(value, nullValue) 

 Returns nullValue if value is NULL; otherwise, returns value. 

 The return type is determined by the value that the function returns. 

 Example: =IsNull([CustomerID],'NULL value') Here, [CustomerID] is used in the function argument. 

NullIf(value1, value2) Returns NULL if _value1_ is equal to _value2_. 

Provider.CalculateHash( string) 

 Calculates the hash string for the specified string. 

 Example: =Provider.CalculateHash([CUSTOMER ID] + [INVOICE REF NBR] + [LINE NBR]) 

 In this example, the hash string is calculated for the string that contains concatenated values of the [CUSTOMER ID], [INVOICE REF NBR], and [LINE NBR] fields. 

Provider.CalculateHashCode( string) 

 Calculates the hash code (which is an Integer value) for the specified string. 

 Example: =Provider.CalculateHash([CUSTOMER ID] + [INVOICE REF NBR] + [LINE NBR]) 

 In this example, the hash code is calculated for the string that contains concatenated values of the [CUSTOMER ID], [INVOICE REF NBR], and [LINE NBR] fields. 

SubstituteAll(sourceField, substitutionList) 

 Replaces all values of the sourceField field with the values from the substitutionList substitution list. If no substitution value is defined for a particular value of the field, the system displays an error. 

 Example: =SubstituteListed([COUNTRY], 'Country') 

 In this example, [COUNTRY] is a field defined in the data provider of the scenario, and 'Country' is a substitution list defined on the Substitution Lists (SM206026) form. 

 For details about how to create substitution lists, see To Substitute Values During Data Import or Data Export. 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 349 

**Function Description and Example** 

SubstituteListed(sourceField, substitutionList) 

 Replaces the values of the sourceField field with the values from the substitutionList substitution list if a substitution value is defined for a particular value of the field. 

 Example: =SubstituteListed([COUNTRY], 'Country') 

 In this example, [COUNTRY] is a field defined in the data provider of the scenario, and 'Country' is a substitution list defined on the Substitution Lists (SM206026) form. 

 For details about how to create substitution lists, see To Substitute Values During Data Import or Data Export. 

MultiselectSubstituteAll( sourceField, substitutionList, externalDelimiter ) 

 Replaces all values of the sourceField field with the values from the substitutionList substitution list, and uses externalDelimiter as a delimiter. 

 You use this function to import or export records for which attributes of the Multiselect Combo type are specified. The function has the following parameters: 

- sourceField: The name of the Acumatica ERP field for export scenarios.     For import scenarios, this is the name of the field from which the values are     imported (for example, the name of the column in an Excel file). 

- substitutionList: The name of the substitution list that is used for     the attributes. 

- externalDelimiter: The external delimiter. For export scenarios, this     is the delimiter in the downloaded file or in the external system. For import     scenarios, this is the delimiter in the file for import or in the external sys-     tem. In an export scenario, the function works as follows: 

1. Parses the values from the source fields by using comma as a delimiter. 

2. Replaces every found value according to the substitution list.     If the system cannot find at least one value for a record, the system does     not process this record (that is, it does not substitute any values for it) and     displays an error. 

3. Exports the results to a file. The system uses the delimiter specified as the     externalDelimiter parameter. 

 In an import scenario, the function works as follows: 

1. Parses the values from the source file with the delimiter specified as the     externalDelimiter parameter. 

2. Replaces every found value according to the substitution list.     If the system cannot find at least one value for a record, the system does     not process this record (that is, it does not substitute any values for it) and     displays an error. 

3. Imports the records by using comma as a delimiter. 

 Before you use the function, you need to copy the list of attribute values to a substitution list. You can do this by clicking Export to Excel on the table toolbar of the Attributes (CS205000) form for the needed attribute, and then 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 350 

**Function Description and Example** 

 clicking Load Records from File on the table toolbar of the Substitution Lists (SM206026) form. 

 The function is available in the Formula Editor on multiple forms but is supported for only import and export scenarios. 

MultiselectSubstituteListed( sourceField, substitutionList, externalDelimiter ) 

 Replaces the values of the sourceField field with the values from the substitutionList substitution list if a substitution value is defined for a particular value of the field, and uses externalDelimiter as a delimiter. 

 You use this function to import or export records for which attributes of the Multiselect Combo type are specified. The function has the following parameters: 

- sourceField: The name of the Acumatica ERP field for export scenarios.     For import scenarios, this is the name of the field from which the values are     imported (for example, the name of the column in an Excel file). 

- substitutionList: The name of the substitution list that is used for     the attributes. 

- externalDelimiter: The external delimiter. For export scenarios, this     is the delimiter in the downloaded file or in the external system. For import     scenarios, this is the delimiter in the file for import or in the external sys-     tem. In an export scenario, the function works as follows: 

1. Parses the values from the source fields by using comma as a delimiter. 

2. Replaces every found value according to the substitution list.     The system replaces only the values that it has found. If a value is not     found, the system does not replace it. No error is displayed in this case. 

3. Exports the results to a file. The system uses the delimiter specified as the     externalDelimiter parameter. 

 In an import scenario, the function works as follows: 

1. Parses the values from the source file with the delimiter specified as the     externalDelimiter parameter. 

2. Replaces every found value according to the substitution list.     The system replaces only the values that it has found. If a value is not     found, the system does not replace this value. No error is displayed in this     case. 

3. Imports the records by using comma as a delimiter. 

 The function is available in the Formula Editor on multiple forms but is supported for only import and export scenarios. 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 351 

 Function Description and Example 

 Switch( expression_1, value_1, expression_2, value_2, ...) 

 Returns the value ( value_n ) that corresponds to the first expression ( expression_n ) that evaluates to True. For example, expression_1 and expression_2 are Boolean expressions. 

 The return type is determined by the value that the function returns. 

 Example: =Switch(([DocAmount]<100), 'small', (([DocAmount]>=100) And ([DocAmount]<500)), 'medium',(([DocAmount]>=500) And ([DocAmount]<1000)),'large') 

 Here [DocAmount] is used in the function argument. 

 Related Links 

- _Operators_ 

- _Formula Editor Dialog Box_ 

### To Substitute Values During Data Import or Data Export 

 The data to be imported to Acumatica ERP or exported from Acumatica ERP may contain values that cannot be inserted into the database of Acumatica ERP or the external system as they are. These values require a simple modification before they can be inserted into the respective database. For example, suppose that the data for import contains country codes that are different from the country codes registered in Acumatica ERP. The country codes in the data must be replaced with the country codes registered in Acumatica ERP before the data import. 

 To handle such data, you define substitution lists, which consist of pairs of source values and their corresponding substitution values, on the Substitution Lists (SM206026) form. You then use these substitution lists in formulas in the mappings of import or export scenarios on the Import Scenarios (SM206025) or Export Scenarios (SM207025) form, respectively. 

#### To Substitute Values by Using a Formula 

1. On the _Import Scenarios_ (SM206025) or _Export Scenarios_ (SM207025) form, select a scenario in which you     want to substitute values. 

2. On the table toolbar of the **Mapping** tab, click **Substitution Lists**. 

3. On the _Substitution Lists_ (SM206026) form, which opens, do the following:     a. In the **Substitution List** box, type the name of the list, such as Countries for import.     b. On the table toolbar, click **Add Row**.     c. For each value that you want to replace with a new value, do the following:        a. In the **Original Value** box, type the value that you want to replace in the data prepared for import or           export.        b. In the **Substitution Value** box, type the value that will replace the value specified in the **Original**           **Value** box.           For example, the country code of the United States of America in Acumatica ERP is US. Suppose that           in the data that you want to import to Acumatica ERP, the United States code is USA. In this case, you           will type USA in **Original Value** column and US in **Substitution Value** column.     d. On the form toolbar, click **Save & Close**. 


<!-- PAGE_BREAK -->
 Configuring Scenario Mapping | 352 

4. On the **Mapping** tab of the _Import Scenarios_ or _Export Scenarios_ form, double-click the **Source Field or**     **Value** (for an import scenario) or **Target Field or Action** (for an export scenario) column in the row for which     you want to substitute values and click the Edit button. The _Formula Editor Dialog Box_ opens. 

5. In the dialog box, do the following:     a. Click _Other_ in the _Functions_ node, and double-click one of the following items in the list of available        functions: 

- _SubstituteListed (sourceField, substitutionList)_ : The function replaces the values of the sourceField     field with the values from the substitutionList substitution list if a substitution value is defined     for a particular value of the field. 

- _SubstituteAll (sourceField, substitutionList)_ : The function replaces all values of the sourceField     field with the values from the substitutionList substitution list. If no substitution value is     defined for a particular value of the field, the system displays an error. The function is added to the Formula Text pane of the dialog box. b. Modify the function as follows: a. Replace _sourceField_ with the name of the field whose value you want to replace. You can search for the needed field in _Fields > External_ if you are configuring the mapping for an import scenario, or in _Fields > Internal_ if you are configuring the mapping for an export scenario. b. Replace _substitutionList_ with the name of the substitution list that you have created in Step 3 above. You can search for the name of the needed substitution list in _Substitution Lists_ in the Formula Editor. c. Click **OK**. 

6. On the form toolbar, click **Save** to save your changes to the scenario mapping. 

During the data import or the preparation of the data for export, the system will search for the original values from the substitution list and replace them with the corresponding substitution values according to the formula. 

**Related Links** 

- _Functions_ 


<!-- PAGE_BREAK -->
 Importing and Exporting Records by Using Scenarios | 353 

## Importing and Exporting Records by Using Scenarios 

 Aer you have created an integration scenario, you can use it to transfer data between Acumatica ERP and the external system or file. You import records on the Import by Scenario (SM206036) form by using the import scenario you have created. Similarly, you export records on the Export by Scenario (SM207036) form by using the export scenario you have created. 

 In this chapter, you can find a description of standard data import, simplified data import, and data export. 

### Data Import 

 Aer you have created an import scenario, you should test it on one record. If the scenario is not working as you expected, the first way to troubleshoot the scenario is to reproduce the mapping instructions manually on the form to which you want to import the data. In most cases, this troubleshooting step helps you quickly identify the reason the scenario is not working, so that you can fix the scenario and continue. 

 Aer you have tested an import scenario, you can use it to import data on the Import by Scenario (SM206036) form. To import external data to Acumatica ERP by using a scenario that has already been created, you should perform the steps that are described in this topic. 

#### Selection of an Import Scenario 

 On the Import by Scenario form, you first select the name of the scenario that has been created for data import. 

 You can select a scenario from only the scenarios that work with forms on which you can enter data. If you do not have the access rights to enter data on a particular form, you cannot use a scenario that imports data to this form either. If you do not have access rights to a particular form, you will not see any scenarios for this form listed among the other scenarios. You can view the access rights to particular forms on the Access Rights by Screen (SM201020) form. 

#### Uploading of a New File Version 

 If you are not using a file for importing data, skip this step. 

 If you are importing data from a file, decide whether you need to upload a new version of the file. The file that is used for data import is attached to the form; you can click Files on the title bar to view the file. This file is attached to each of the following forms: Data Providers (SM206015), Import Scenarios (SM206025), and Import by Scenario (SM206036). 

 If you need to use a new version of the file when importing data, you can upload the new file to the Import by Scenario form by clicking Upload File Version on the form toolbar. The schema of the uploaded file must match the schema defined in the data provider and used in the import scenario. If you have changed the file structure, you have to update the data provider and the import scenario; only then can you use the new file to import the data. 

 If there is no file attached to the Import by Scenario form, you have to upload the file either by dragging the file to the form or by using the Files menu. Do not use the Upload File Version button to upload the file. Aer the file is uploaded to the form, you can update the version of the file by clicking Upload File Version. 


<!-- PAGE_BREAK -->
 Importing and Exporting Records by Using Scenarios | 354 

#### Preparation of the Data for Import 

 You prepare records by uploading them on the Import by Scenario (SM206036) form. To prepare the data for import, you click the Prepare button on the form toolbar. The data is displayed on the Prepared Data tab; no data is yet imported into the system. 

#### Import of the Prepared Data 

 To import data to the system, you click the Import button on the form toolbar of the Import by Scenario (SM206036) form. The system tries to import the records with the Active check box selected one by one. Aer a record has been successfully processed, the system selects the Processed check box for this record. If an error occurs during the processing of a record, the process stops on the record that caused the error. 

#### Correction of Errors 

 If an error has occurred during the import process, you have to review the error. You then do one of the following: correct the record that caused the error, exclude the problematic record from import, or modify the import scenario. Then you have to run the import process again to process the remaining records. 

 You can correct the records directly on the Prepare Data tab. If you need to replace the values of particular fields with other values, you can click the Replace button on the form toolbar of the Prepared Data tab and specify the replacement value in the dialog box that opens. You can exclude any incorrect record by clearing the Active check box for it. Aer you have made all needed corrections, on the form toolbar, you click Save and click Import again. 

 If you need to correct a large number of records or all records and it is too difficult to make these modifications on the Prepare Data tab, you can correct the records in the source, upload a new file version if you are importing data from a file, and prepare and import the data again. 

 If you need to correct the import scenario itself, make changes to the scenario on the Import Scenarios (SM206025) form, and prepare and import the data again on the Import by Scenario (SM206036) form. You can clear both the prepared data and the history of scenario execution by clicking Clear Data on toolbar of the Import by Scenario form. The Clear Data action doesn't reverse records that have already been imported. 

#### Summary of Data Import 

 Aer you have imported data, open the destination form and make sure that the imported records appear among the records. 

 The following diagram shows the process of importing records to Acumatica ERP by using an import scenario. 


<!-- PAGE_BREAK -->
 Importing and Exporting Records by Using Scenarios | 355 

**_Figure: Data import process_** 

**Related Links** 

- _Configuring Import Scenarios_ 


<!-- PAGE_BREAK -->
 Importing and Exporting Records by Using Scenarios | 356 

### Simple Scenarios for Data Import 

 With simple scenarios, you skip the step of creating the data provider before you create the import scenario. You compose the mapping directly on the Import by Scenario (SM206036) form and then you immediately run the import procedure on the form. 

 Simple scenarios are appropriate for one-time import, such as during data migration. For data migration, you can prepare all data in the source file in the format needed for import and use a straightforward mapping of the source fields to the target fields. If you need to compose a complex scenario—which might involve using custom keys, searching for records, and modifying service commands—you have to use regular import scenarios that you compose by creating the data provider and then defining the mapping on the Import Scenarios (SM206025) form. 

 To import data by using a simple scenario, you have to complete the following steps: 

1. **Upload the file**     You first upload the file with data that you want to import to the _Import by Scenario_ form. You can upload an     Excel, CSV, or XML file. The following criteria should be met for the source files for a simple scenario: 

- Only the data from the first sheet of an Excel file is imported. 

- A CSV file should use a comma (,) as the delimiter and have US-ASCII encoding. These default parameters     are used for data provider creation. 

- An XML file should have US-ASCII encoding and a tree structure. These default parameters are used for     data provider creation. 

2. **Specify the parameters of the import scenario**     Also on the _Import by Scenario_ (SM206036) form, you specify the Acumatica ERP form to which you want to     import data. The system suggests the scenario name depending on the selected form, but you can change     the name. The system automatically detects the type of the data provider based on the extension of the     uploaded file. When you click **Save** , the system automatically creates an import scenario (with default     parameters and the specified name) and a data provider of the specified type for the simplified import     procedure. 

3. **Configure mapping**     You configure mapping between the fields of the external file and the fields of the Acumatica ERP form on     the **Mapping** tab of the _Import by Scenario_ form. You should select the source field and the corresponding     target object and field. You use the same target objects and fields that are used in regular import scenarios     that you create on the _Import Scenarios_ (SM206025) form. However, in simple scenarios, you cannot use     service commands and actions.     You should select the **Key** check box for the fields that should be used as key fields to distinguish records     that belong to different documents. You can use as keys only the fields that are mapped to the fields of the     summary object.     You can map the fields of the source file in any order. Aer you have saved the mapping, the system places     the fields in the correct order and creates the import scenario mapping. The system adds all actions     (including <Action: Save>) and service commands to the import scenario automatically. 

4. **Prepare and import data**     Aer you have specified the scenario mapping, you can prepare and import data in the same way as you do     with regular import scenarios. 

 Simple scenarios are not available for editing on the Import Scenarios (SM206025) form, and you cannot edit the data provider that was automatically created for the simple import scenario. If the simple scenario is not working, you should convert the simple scenario to a regular scenario by clicking Convert to Manual Scenario on the Import by Scenario (SM206036) form. 


<!-- PAGE_BREAK -->
 Importing and Exporting Records by Using Scenarios | 357 

 Related Links 

- _Configuring Import Scenarios_ 

### Data Export 

 You use the Export by Scenario (SM207036) form for data export. To export data from Acumatica ERP to an external source, you perform the steps, which are described in this topic. 

#### Selection of an Export Scenario 

 On the Export by Scenario form, you select the name of the scenario created for data export. 

#### Preparation of the Data for Export 

 You prepare records by uploading them on the Export by Scenario form. The system performs all modifications defined by the scenario and uploads the modified data on the form. To prepare the data for export, you click the Prepare button on the form toolbar. You can view the data on the Prepared Data tab of this form. 

#### Export of Prepared Data 

 To run the export process, you should click Export on the form toolbar of the Export by Scenario form. The system tries to export the records that have the Active check box selected. 

 The characters that are forbidden in XML are omitted during the data export to XML files. 

#### Correct of Errors 

 Make sure each record has the check box in the Processed column on the Prepared Data tab of the Export by Scenario form selected, which means that this record has been successfully exported. The result of export may include errors, which are indicated by the icon on the form toolbar. 

#### Downloading of the Results of the Export 

 If you are exporting data to a file, during export, the system creates a new version of the file attached to the Export by Scenario form. This file has the same structure as the file that was used for data provider creation. You can download the result of export by clicking the Get Latest Version button on the form toolbar. 

 Internal data is exported to the external data source in a table form. That means that the values of the fields of detail objects are translated to multiple rows of this table. The number of rows is equal to the number of detail lines of the source record. Each of these rows has the values of the fields of the summary object and related objects specified. 

 For example, suppose that on the Invoices and Memos (AR301000) form, an AR invoice has three detail lines. If you export this AR invoice with the detail lines, the data prepared for export will include three records for this invoice— one record for each detail line. These records will include identical values of the fields of the invoice summary, such as type and reference number, and different values of the detail line fields. 

#### Summary of Data Export 

 The following diagram shows the process of exporting records from Acumatica ERP by using an export scenario. 


<!-- PAGE_BREAK -->
 Importing and Exporting Records by Using Scenarios | 358 

 Figure: Data export process 

### Troubleshooting Performance in Import and Export Scenarios 

 When you are importing or exporting a large number of records by using an import scenario, data processing can take a rather long time. You can use the ways described in this topic to speed up the processing of import and export scenarios. 


<!-- PAGE_BREAK -->
 Importing and Exporting Records by Using Scenarios | 359 

#### Parallel Processing of Import Scenarios 

 In Acumatica ERP, data import by using an import scenario can be sped up if you enable parallel execution of the scenario. The parallel processing of an import scenario by the system can be especially useful for data migration during the initial implementation of the system. 

 To enable parallel processing of an import scenario, you select the Parallel Processing check box in the Summary area of the Import Scenarios (SM206025) form. 

 If parallel processing is enabled for an import scenario, during the execution of the scenario, the system divides the whole list of records to process into batches of records. The lines of a particular document (that is, the records that have the same key fields specified) are always included in the same batch. The system executes the import scenario for these batches in parallel threads. 

 The Break on Error and Break on Incorrect Target check boxes become unavailable if the Parallel Processing check box is selected. 

#### Removal of Unnecessary Commits in Import Scenarios 

 When the system imports records to Acumatica ERP, it performs a commit to the server for all fields with the Commit check box selected on the Mapping tab of the Import Scenarios (SM206025) form; these commits take excessive server time. When you create the mapping of an import scenario, the system selects the Commit check box automatically for the key fields and the fields other fields depend on. 

 To optimize the performance of an import scenario, you can clear the Commit check box for some of these fields. You can perform the following steps when you are optimizing the performance of an import scenario by removing unnecessary commits: 

1. Create an import scenario in which you leave the default settings for the **Commit** check box for all fields.     Test the scenario, make sure it works correctly, and note the processing time. If you need to decrease the     time, proceed to the next step. 

2. Try to clear the **Commit** check box for each appropriate field of the scenario (using the following     guidelines), one by one, testing the scenario aer each change and reviewing the processing time. However,     do not clear the **Commit** check box for any of the following fields: 

- Key fields. For example, **Type** and **Reference Nbr.** fields are key fields on the _Invoices and Memos_     (AR301000) form. 

- The last field of a detail line. Suppose that you are importing the values of the **Transaction Descr.** , **Ext.**     **Price** , **Account** , and **Subaccount** columns on the **Details** tab of the _Invoices and Memos_ form. You should     not clear the **Commit** check box for the **Subaccount** field, because it is the last field in the row that you     specify. 

- The **Value** field of an attribute. 

- All fields whose values must be entered to make certain elements available. For example, on the     _Purchase Orders_ (PO301000) form, you need to specify the value of the **Vendor** element to make the **Add**     **Row** button on the table toolbar of the **Details** tab available. You can clear the **Commit** check box for the fields that cause other fields on the form to be updated; in this case, the system will perform an update of these fields when it saves the imported record. 

#### Ways to Speed Export Scenarios 

 To speed data export, you can perform the following steps, which are listed in the order in which we recommend you try them: 


<!-- PAGE_BREAK -->
 Importing and Exporting Records by Using Scenarios | 360 

1. On the **Mapping** tab of the _Export Scenarios_ (SM207025) form for the export scenario, make sure the     **Commit** check box is selected for the minimum number of fields.     The **Commit** check box must be selected for the key fields that specify the records that should be exported     (for example, the key fields that are mapped to the _=Every_ instruction) and for the fields that you modify     during export. In some other situations, the system selects the **Commit** check box automatically (for     example, for the _<Dialog Answer>_ command); leave these check boxes selected. For fields whose values you     do not need to modify during the export, you do not need to select the **Commit** check box. 

2. Remove the _=Every_ instruction from the mapping of the export scenario if this scenario satisfies all of the     following requirements: 

- You are exporting summary data and data from the related objects, and you are not exporting data from     detail objects. 

- You are not modifying the values of any fields during data export. 

- You are not applying actions to the records during data export. If you remove the _=Every_ instruction from the scenario, during data export, the system generates a generic inquiry internally that retrieves the data being exported from the system in one request instead of retrieving information for each record one by one, which significantly increases the speed of data export. 

3. Configure a generic inquiry that retrieves the data that you need to export, create a scenario that exports     data from this generic inquiry, and export data by using this scenario. 

 You can find information on how to create a generic inquiry in the S130 Data Retrieval and Analysis training course. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 361 

## Using the Acumatica Add-In for Outlook 

 By using the Acumatica add-in for Outlook, you can manage contacts and related cases and opportunities right from your mailbox. 

### Overview of the Acumatica Add-In for Outlook 

 The Acumatica add-in for Outlook processes the incoming and outgoing mail in your Outlook mailbox and searches for records, such as leads and contacts, in Acumatica ERP that correspond to the sender and recipient addresses in the emails. 

 If you use the add-in with the Modern UI, you can: 

- Link an email to a selected record and create an email activity associated with that record. For details,     see _Acumatica Add-In for Outlook: Email Activity Management_ and _Acumatica Add-In for Outlook: Project_     _Management_. 

- Submit PDF attachments for recognition so that AP documents can be created automatically based on those     attachments. (For more information, see _Acumatica Add-In for Outlook: Incoming Document Management_ .) 

- Create a new record of one of the following types based on the selected email address: 

- Contact. For details, see _Acumatica Add-In for Outlook: Contact Management_. 

- Business account. For details, see _Acumatica Add-In for Outlook: Business Account Management_. 

- Lead. For details, see _Acumatica Add-In for Outlook: Lead Management_. 

- Opportunity. For details, see _Acumatica Add-In for Outlook: Opportunity Management_. 

- Case. For details, see _Acumatica Add-In for Outlook: Case Management_ 

- Request for information. For details, see _Acumatica Add-In for Outlook: Requests for Information_     _Management_. 

- Project Issue. For details, see _Acumatica Add-In for Outlook: Project Issue Management_. If you use the add-in with the Classic UI, you can: 

- View details on lead, contact, and employee records that already exist in Acumatica ERP. (For details, see     _Review of Record Details_ .) 

- Create new records of the same types as in the Modern UI, except for business accounts. (For more     information, see _Record Entry_ .) 

- Log your communication activities. (For details, see _Logging of Communication Activities_ .) 

- Submit PDF attachments for recognition so that AP documents can be created automatically based on those     attachments. (For more information, see _Submitting Documents for Recognition_ .) You can also customize the appearance of the Acumatica ribbon button in Outlook in accordance with your company's branding. 

#### Limitation 

 The Acumatica add-in for Outlook does not support shared mailboxes. 

### Add-In for Outlook: Classic UI 

 By using the Acumatica add-in for Outlook for the Classic UI, you can manage contacts, cases, and opportunities right from your mailbox. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 362 

### Installing and Updating the Acumatica Add-In for the AcumaticaClassic UI 

 To install the Acumatica add-in, you must use a manifest file that contains deployment instructions. The system generates a manifest file individually for each user. Before you start the installation, you need to make sure that you have performed all necessary preparatory steps. 

 This chapter describes how you install and, if needed, update the add-in. 

#### In This Chapter 

- _Requirements and Prerequisites_ 

- _Preparatory Steps_ 

- _To Install the Acumatica Add-In_ 

- _Acumatica Add-In for Outlook: To Update the Acumatica Add-In_ 

### Requirements and Prerequisites 

#### Soware Requirements 

 You must have a Microso 365 or Exchange account to be able to use the Acumatica add-in for Outlook. 

 Other soware requirements are listed in the table below. 

 Software Requirements 

 Outlook client Outlook 2016 or Outlook 2019 with a retail license, Outlook 2021 and Outlook for Microsoft 365 with any type of license, Outlook on the Web 

 The Acumatica add-in for Outlook may be used with the new Outlook for Windows if users and system administrators perform the additional steps described in Additional Prerequisites with the New Outlook for Windows. However, while the new Outlook remains in preview for commercial customers, we cannot guarantee that the add-in will function correctly with it. 

 Operating system Windows 7 or later, Windows Server 2016 or later, Mac OS 

 Browser Safari 9 or later, latest version of Google Chrome, latest version of Mozilla Firefox, latest version of Microsoft Edge 

#### Prerequisites 

 The Acumatica add-in for Outlook works only if the Outlook Integration feature is enabled on the Enable/Disable Features (CS100000) form. 

 If you're using Exchange Server on-premises, you can install the add-in without enabling any additional features. 

 With a Microso 365 account, the Acumatica add-in for Outlook has these additional requirements: 

- The _OpenID Connect_ feature must be enabled on the _Enable/Disable Features_ form. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 363 

- Your Acumatica ERP instance must be registered in Microso Entra. For detailed guidelines, see _To Register_     _an Acumatica ERP Instance in Microsoft Entra_. 

- An OpenID provider must be configured in Acumatica ERP for use with the Acumatica add-in for Outlook. For     an example, see _To Create an OpenID Provider_. For the add-in to function correctly, the following prerequisites must be completed: 

- Pop-ups must be enabled in your browser. 

- You must be granted sufficient access rights to view the Outlook Add-In (OU201000) form, which is located     in the _Hidden_ folder of the site map. By default, the add-in provides basic functionality, and you can use it to create and view contacts from an email, log email activities, and attach logged activities to contacts. If you want to use additional capabilities of the add-in, the following conditions must be met: 

- The _Customer Management_ feature must be enabled and the customer relationship functionality must be     configured—that is, all necessary settings should be specified and saved on the _Customer Management_     _Preferences_ (CR101000) form and access to necessary entry forms should be granted to users—so that users     can create and view leads and opportunities from a mailbox and attach communication activities to the     related leads and opportunities. 

- The _Case Management_ feature must be enabled so that users can create and view cases and attach logged     activities to the related cases. 

- The _Projects_ feature must be enabled and the projects functionality must be configured so that users can     attach logged activities to the related projects. 

- The _Construction Project Management_ feature must be enabled and the construction functionality must be     configured so that users can create and view project issues and requests for information and attach logged     activities to the related project issues and requests for information. 

- The _Document Recognition Service_ feature must be enabled and the accounts payable functionality must     be configured so that users can submit PDF attachments to the recognition service and view documents     processed by the recognition service. The Acumatica add-in for Outlook requires that your Acumatica ERP instance is hosted over HTTPS. For more information, see _Preparation for the Acumatica ERP Installation: System Environment_. 

#### Additional Prerequisites with the New Outlook for Windows 

 The Acumatica add-in for Outlook may be used with the new Outlook for Windows if the following additional steps have been performed: 

- By end users: The **Turn on optional connected experiences** check box has been selected in the new     Outlook app settings at the following path: **Settings** > **General** > **Privacy and Data** > **Privacy settings** >     **Turn on optional connected experiences**. 

- By system administrators: Settings in the web.config file, which is located in the application instance folder,     have been modified as described below. 

 Instructions below are applicable to an application server only with .NET Framework Version 4.7.2 and later. 

 The line numbers in these instructions refer to the lines of the web.config file prior to any modifications. 

 When an administrator saves changes to the web.config file, the website is automatically restarted. All users must be warned about the restart beforehand so that they can save their work. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 364 

 a. In line 97, the text in bold has been added to the <formsAuth> tag of the <px.core> section. 

 <formsAuth loginUrl="Frames/Login.aspx" timeout="60" requireSSL="true" /> 

 b. In line 155, the text in bold has been added to the <sessionState> tag of the <system.web> section. 

 <sessionState cookieSameSite="None" cookieless="UseCookies" mode="Custom" customProvider="PXSessionStateStore" timeout="60" sessionIDManagerType="PX.Owin.SessionIdManager, PX.Owin"> 

 c. In line 216, in the <system.web> section, the following line has been added: 

 <httpCookies sameSite="None" requireSSL="true" /> 

 When inserting the line, pay attention to the following: 

- The first two occurrences of <system.web> (in line 64 and 103) located within the     <location> tag are not the needed sections. 

- The new line must be added before the <compilation> tag. 

- The line must not be duplicated; otherwise, a compilation error may occur when the site     is restarted. 

### To Register an Acumatica ERP Instance in Microso Entra 

 You can sign in to the Acumatica add-in for Outlook using secure, modern OpenID Connect authentication, which requires that you first register your Acumatica ERP instance in Microso Entra. 

 The Acumatica add-in for Outlook uses Microso Entra access tokens to securely retrieve email body content, attachments, and metadata. 

 Note the following: 

- The procedure below covers the most common usage scenarios. If you’re implementing a     more complicated scenario and you encounter difficulties, contact Acumatica ERP technical     support. 

- The vendor of the third-party soware may change the user interface and settings. The labels     you see in the UI may differ from the ones described in the procedure. 

- The procedure will be updated to describe new common scenarios and UI changes arise. 

#### To Register an Instance in Microso Entra 

1. Sign in to _Microsoft Entra_ with an account that has sufficient permissions to manage app registrations and     grant admin consent for application permissions. 

2. In the le navigation pane, go to **Identity > Applications** and select **App registrations**. 

3. On the **App registrations** page, click **New registration**. 

4. On the **Register an application** page that opens, do the following:     a. Enter the application name (for example, Acumatica ERP).     b. In the **Redirect URI** section, select _Web_ in the drop-down list.     c. Open the _OpenID Providers_ (SM303020) form of Acumatica ERP in a separate browser tab. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 365 

 a. On the form, click View Redirect URIs. b. In the Redirect URIs dialog that opens, copy the value of the Redirect URI box. d. Go back to the browser tab with the Entra app registration page and paste the copied URI into the text box in the Redirect URI section. 

5. Click **Register** at the bottom of the page. 

6. On the app page that opens, click **Clients & secrets** in the navigation pane. 

7. On the **Clients & secrets** page, go to the **Client secret** tab and click **New client secret** above the table. 

8. In the right panel that opens, type in the new secret name, select the expiration period, and click **Add**     button at the panel bottom. As a result, a row with the new secret should appear in the table. 

9. Copy the value in the **Value** column of the new secret and save it somewhere. You will need it later when     configuring an OpenID provider in Acumatica ERP, as described in _To Create an OpenID Provider_. 

10.In the app navigation pane, click **Expose an API**. 

11.On the **Expose an API** page, click **Add** near the **Application ID URI** box at the top of the page. 

12.In the right panel that opens, edit the application ID URI so that it includes the fully qualified domain name (FQDN) of the Acumatica ERP instance before the app-id (which is a GUID): api://<fully-qualified-domain-name>/<app-id> For example, if your Acumatica ERP instance is https://erp.example.com/instance, then the FQDN is erp.example.com. In this case, the result will be api://erp.example.com/<app-id>, where <app-id> is a GUID that you should not edit. When finished, click **Save** at the bottom of the panel. 

13.On the **Expose an API** page, click **Add a scope**. 

14.In the **Add a scope** panel that opens on the right: 

 a. Type access_as_user in the Scope name box. b. Select Admins and users in the Who can consent? box. c. In the Admin consent display name box, specify either your own display name or the following: Access Outlook data as the current user. d. In the Admin consent description box, specify either your own description or the following: Access Outlook data via Office APIs as the current user. e. In the User consent display name box, specify either your own display name or the following: Access your Outlook data. f. In the User consent description box, specify either your own description or the following: Access your Outlook data, including email and email attachments. g. Ensure that the State switch is enabled. h. Click Add scope at the bottom of the panel. 

15.On the **Expose an API** page, click **Add a client application**. 

16.In the right panel that opens, enter ea5a67f6-b6f3-4338-b240-c655ddc3cc8e in the **Client ID** box. 

17.Select the check box against the _access_as_user_ scope in the **Authorized scopes** section. 

18.Click **Add application** at the bottom of the panel. 

19.In the app navigation pane, click **API Permissions**. 

20.On the **API permissions** page that opens, click **Add a permission**. 

21.In the right panel that opens, click the **Microso Graph** tile and then the **Delegated permissions** tile. 

22.Select the check boxes against the permissions listed below. You can use the search box in the **Select permissions** section to find them (or browse through the tree). 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 366 

- openid 

- profile 23.Click **Add permissions** at the panel bottom. 24.In the app navigation pane, click **Manifest**. 25.In the manifest that opens, find the requiredResourceAccess section. Aer the section opening square brackets ([), paste the following: 

 { "resourceAppId": "00000002-0000-0ff1-ce00-000000000000", "resourceAccess": [ { "id": "3b5f3d61-589b-4a3c-a359-5dd4b5ee5bd5", "type": "Scope" } ] }, 

 Notice the comma at the end, separating the pasted element from the existing elements in the section. 

 26.In the manifest, find the requestedAccessTokenVersion element in the api section and change its value aer the colon to 2. 27.Click Save on the manifest toolbar. 28.In the app navigation pane, click API Permissions again. Notice the new EWS.AccessAsUser.All permission has been added to the Office 365 Exchange Online group. 29.Click Grant admin consent for .... 

 This is a required step! The delegated permissions you have added above tell Entra that the users of the application do not need to provide their consent for the application to access their data—administrators have granted consent for them. 

### To Create an OpenID Provider 

 To create an OpenID provider that will be used for authentication in the Acumatica add-in for Outlook with Microso 365, perform the steps below. 

 Only one provider within a tenant can be set up for use with the Acumatica add-in for Outlook. 

1. Open the _OpenID Providers_ (SM303020) form and add a new record. 

2. In the **Display Name** box, type a name for the new provider (for example, Add-in for Outlook). 

3. In Microso Entra, open the app you configured as described in _To Register an Acumatica ERP Instance in_     _Microsoft Entra_ , and do the following:     a. In the app navigation pane, click **Overview**.     b. On the app overview page, copy the value of the **Directory (tenant) ID** box. 

4. Go back to the _OpenID Providers_ form in Acumatica ERP. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 367 

5. In the **Issuer Identifier** box, enter the following value, replacing <tenant-id> with the value copied on     the Microso Entra app overview page: 

 https://login.microsoftonline.com/<tenant-id>/v2.0 

6. In Microso Entra, open the app you configured as described in _To Register an Acumatica ERP Instance in_     _Microsoft Entra_ , and do the following:     a. In the app navigation pane, click **Overview**.     b. On the app overview page, copy the value of the **Application (client) ID** box. 

7. Go back to the _OpenID Providers_ form in Acumatica ERP. 

8. Paste the copied value in the **Client ID** box. 

9. Paste the value saved in Step 9 of _To Register an Acumatica ERP Instance in Microsoft Entra_ in the **Client**     **Secret** box. 10.Select the **Use Provider for Sign-In to Acumatica Add-In for Outlook** check box. 11.On the **Authentication Settings** tab, click **Autoconfiguration**. 12.Click **Save** on the form toolbar. 

### Preparatory Steps 

 To install the Acumatica add-in, you must use a manifest file that contains all deployment instructions. The system generates a manifest file individually for each user. Before you begin installing the add-in, you need to sign in to your Acumatica ERP instance and on the Email Settings tab of the User Profile (SM203010) form, click the correct link to download the add-in manifest file: 

- _Get Outlook Add-In Manifest for Exchange Server On-Premises_ : Use this link if you're using Exchange Server     on-premises. 

- _Get Outlook Add-In Manifest for Microso 365_ : Use this link if you're using a Microso 365 subscription.     When you download the Microso 365 manifest, it comes prefilled with all the necessary Microso Entra     identifiers—no extra configuration needed. 

 The Get Outlook Add-In Manifest for Exchange Server On-Premises link is available only if the Outlook Integration feature is enabled on the Enable/Disable Features (CS100000) form. 

 The Get Outlook Add-In Manifest for Microso 365 link is available if all of the following conditions are met: 

- The _Outlook Integration_ and _OpenID Connect_ features are enabled on the _Enable/Disable_     _Features_ form. 

- The **Use Provider for Sign-In to Acumatica Add-In for Outlook** check box is selected for an     OpenID provider on the _OpenID Providers_ (SM303020) form. 

 Aer that, if you want to customize the ribbon button that will appear on your Outlook client, edit the values of the following parameters in the manifest file: 

- DisplayName: The company name to be displayed 

- Description: The description for the company to be displayed 

- SupportUrl: An external link to an image file with the company logo 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 368 

 You can modify the manifest file at any time aer the add-in has been installed, but you will have to update the add-in for the changes to take effect. For details on how to update the add-in, see Acumatica Add-In for Outlook: To Update the Acumatica Add-In. 

### To Install the Acumatica Add-In 

 To install the add-in, you need to sign in to your mailbox at Outlook on the Web and upload the add-in manifest. Do the following: 

1. Click _this link_ to open the **Add-Ins for Outlook** dialog box. 

2. Select **My add-ins**. 

3. In the **Custom Addins** section, select **Add a custom add-in** , and then click **Add from File**. 

4. Specify the location of the add-in manifest file, and then click **Open** to confirm the selection. 

5. Click **Install** to install the add-in. 

 When the add-in is installed, the Acumatica ribbon button is created in Outlook. (The button is available both in the desktop client and in Outlook on the Web.) You use this button to activate the add-in. 

### Acumatica Add-In for Outlook: To Update the Acumatica Add-In 

 If you modify the manifest file due to any reason, you need to uninstall the add-in and install it again by using the updated manifest file for the changes to take effect. In Outlook on the Web, do the following: 

1. Click **Settings > Manage add-ins**. 

2. On the **Category** menu, select **My add-ins**. 

3. Click **Uninstall** in the row with the Acumatica add-in. 

4. Use the updated manifest file to install the add-in as described in _To Install the Acumatica Add-In_. 

### Getting Started 

 To be able to use the Acumatica add-in, you have to sign in to your Acumatica ERP instance by using your assigned username and password. During your first sign-in, you are redirected to the first-time user experience screen, which introduces you to the basic functionality of the add-in. If you need to sign in to a different company or as a different user as you are working, you have to sign out of the Acumatica ERP instance first. 

 This chapter describes how you run the add-in and how you sign in to your Acumatica ERP instance by using the add-in. 

#### In This Chapter 

- _First-Time User Experience_ 

- _To Sign In_ 

- _To Sign Out_ 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 369 

### First-Time User Experience 

 During the very first run of the Acumatica add-in on your device, you are redirected to the first-time user experience screen. This screen may appear in both Outlook on the Web and Outlook Client. 

 If you use Outlook on the Web, the first-time user experience screen may appear again aer you clear your browser's cookies. It may also appear in Outlook Client for Windows aer you clear all cookies in your Internet Explorer. 

 The first-time user experience screen briefly introduces you to the add-in functionality and offers you to select one of the following two options: 

- To sign in to your Acumatica ERP instance, which you click if you already have an Acumatica account (for     details, see _To Sign In_ ) 

- To learn more about how you can get an Acumatica account, which redirects you to the Acumatica website 

### To Sign In 

 To attest your identity when using the Acumatica add-in, you provide your credentials (that is, the username and password of your Acumatica ERP account) to sign in to your Acumatica ERP instance. On the Sign-In page that appears when you activate the add-in, do the following: 

1. In the **My Username** and **My Password** boxes, type your username and password, respectively. 

2. In the **Company** box, select the company to which you want to sign in.     Note that this box is available only if multiple companies are registered in your Acumatica ERP instance. 

3. Click **Sign In**. 

 This grants the add-in access to your Acumatica ERP instance. You do not have to enter your credentials during each subsequent run of the add-in unless you previously signed out. 

 The incorrect configuration of Exchange Server may cause an error during your sign-in attempt if the system receives an empty identity token from Exchange. If this is the case, your system administrator should update the Exchange Server OAuth configuration so that a valid certificate is used in the process. 

### To Sign Out 

 If you want to sign in to the Acumatica ERP instance as a different user or to a different company, you need to sign out first. 

 To sign out of the Acumatica ERP instance, click Sign Out in the top right corner of the add-in form; this redirects you to the Acumatica Sign-In page, which opens within the add-in. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 370 

### Handling Acumatica ERP Entities 

 Once you have installed the Acumatica add-in for Outlook, you can start handling various Acumatica ERP entities, such as contacts, business accounts, cases, and opportunities; you can create new entities linked to particular emails and log your communication activities in Acumatica ERP. 

#### In This Chapter 

- _Record Entry_ 

- _Review of Record Details_ 

- _Logging of Communication Activities_ 

- _Submitting Documents for Recognition_ 

### Record Entry 

 Based on the information included in an email, you can create new leads, contacts, opportunities, cases, requests for information, and project issues right from the Acumatica add-in. 

#### Leads and Contacts 

 For any particular email in your Outlook mailbox, you can run the Acumatica add-in, which searches for a lead or contact in Acumatica ERP that matches the email sender (for an incoming email) or recipient (for an outgoing email). 

 For an outgoing email with multiple recipients specified, you use the Email Recipient box on the addin form to select the particular recipient for which the search will be performed. 

 If no matching records are found in the system, the Create Lead and Create Contact buttons appear on the add-in form, so that you can create a lead or contact record based on the details of the selected email recipient or sender. (For details, see To Create a Lead by Using the Acumatica Add-In and To Create a Contact by Using the Acumatica Add-In .) 

#### Cases and Opportunities 

 Suppose that you receive an email whose sender is already registered in Acumatica ERP as a contact. Depending on the information included in the email, you may want to create a case or an opportunity that will be associated with the contact. For detailed information, see To Create a Case by Using the Acumatica Add-In and To Create an Opportunity by Using the Acumatica Add-In. 

#### Requests for Information and Project Issues 

 Based on a single email, you can create as many requests for information and project issues as needed. For more information, see To Create a Request for Information by Using the Acumatica Add-In and To Create a Project Issue by Using the Acumatica Add-In. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 371 

### To Create a Lead by Using the Acumatica Add-In 

 If you want to create a new lead by using the Acumatica add-in, do the following: 

1. Open Outlook and select an email from the lead. 

 You can select any email from your incoming mail. 

2. Click the Acumatica button. 

3. On the Acumatica add-in for Outlook form, which opens, click **Create Lead**. 

4. In the **Info** section, which appears on the add-in for Outlook form, notice that the values in the **First Name** ,     **Last Name** , and **Email** boxes have been populated with the information from the email. 

5. If needed, specify the following information:     a. In the **Position** box, type the lead's job title or position.     b. In the **Account** box, select the business account that will be associated with the lead. 

 We recommend that you specify a business account of the customer type for a new lead. If you do not do so, then aerward you may be unable to create a case associated with this lead because the case class you specify for the case may require a customer. 

 c. In the Account Name box, type the business name of the lead’s company. d. In the Source box, select the source of the lead, which can be one of the following: Web , Phone Inquiry , Referral , Purchased List , Campaign , Organic Search or Other. e. In the Country box, select the country of the lead. 

6. Click **Create Lead** to submit the specified information. 

 As a result, a new lead is created in Acumatica ERP; the first and last name and the email address of the email sender or recipient are transferred to the created record. If your user account is associated with an employee record, this employee is assigned as an owner to the newly created lead. On the add-in form, you can review basic information about the created lead, such as the lead's position and company name. 

### To Create a Contact by Using the Acumatica Add-In 

 If you want to create a new contact by using the Acumatica add-in, do the following: 

1. Click **Create Contact**.     The **Contact Information** group of elements appears on the form. 

2. Optional: In the **Position** box, type the contact's job title or position. 

3. Optional: In the **Account** box, select the business account that will be associated with the contact. 

 We recommend that you specify a business account of the customer type for any new contact. If you do not do so, then aerward you may be unable to create a case associated with this contact because the case class you specify for the case may require a customer. 

4. Optional: In the **Company Name** box, type the business name of the contact’s company. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 372 

5. Optional: In the **Source** box, select the source of the contact, which can be one of the following: _Web_ , _Phone_     _Inquiry_ , _Referral_ , _Purchased List_ , or _Other_. 

6. In the **Country** box, select the country of the contact. 

7. Click **Create Contact** to submit the specified information. 

 As a result, a new contact is created in Acumatica ERP; the first and last name and the email address of the email sender or recipient are transferred to the created record. If your user account is associated with an employee record, this employee is assigned as an owner to the newly created contact. On the add-in form, you can review basic information about the created contact, such as the contact's position and company name. 

### To Create a Case by Using the Acumatica Add-In 

 To create a new case associated with the selected contact, do the following: 

1. On the add-in form with the contact information displayed, click **Create Case**.     The **New Case Details** group of elements appears on the form. 

2. In the **Class ID** box, select the case class to which the case will belong. By default, the case class specified     in the **Default Case Class** box on the **General Settings** tab of the _Customer Management Preferences_     (CR101000) form (if any) is selected. 

 If the selected case class requires that a customer be specified for cases of the class, make sure that a business account of the Customer type is specified for the contact record; otherwise, you will not be able to create the case. 

3. If you want to associate the case with a contract (or if a contract is required by the selected case class),     select a contract in the **Contract** box. 

4. In the **Severity** box, select the severity level of the case. The following options are available: _Low_ , _Medium_     (the default setting), and _High_. 

5. In the **Subject** box, type a short description of the case. By default, the email's subject is specified in this     box. 

6. In the **Encoding** box, select the encoding used for the selected email so that the email message will be     correctly stored in Acumatica ERP. 

7. Click **Create Case**. 

 As a result, a new case record is created in Acumatica ERP, and the email is attached to this record as a related email activity. The case is associated with the selected contact, and you can review the basic information about the case, such as the case identifier and description, on the add-in form. 

 If you create multiple cases based on the same email, the information about the most recently created case is displayed on the add-in form for the contact. 

### To Create an Opportunity by Using the Acumatica Add-In 

 If you want to create an opportunity associated with an existing contact, do the following: 

1. Open Outlook and select any email. 

2. Click the Acumatica button.     The Acumatica add-in for Outlook form opens. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 373 

3. In the **Person** box of the Acumatica add-in for Outlook form, select a lead, contact, or business account for     which you want to create an opportunity. 

4. In the bottom of the Acumatica add-in form, click **Create Opportunity**.     The **New Opportunity Details** group of elements appears on the form. 

5. In the **Class ID** box, select the opportunity class to which the opportunity will belong. 

6. In the **Subject** box, type a short description of the opportunity. By default, the email subject is specified in     this box. 

7. In the **Stage** box, select the current stage of the opportunity. 

8. In the **Est. Close Date** box, specify the estimated date of the deal closure. 

9. In the **Amount** boxes, type the estimated amount of the deal and select the currency of the deal. 10.In the **Branch** box, specify the branch to which the opportunity is related. 11.Click **Create Opportunity**. 

#### Notes 

 References to the instruction: 

- In the **Class ID** box, the opportunity class specified in the **Default Opportunity Class** box on the **General**     **Settings** tab of the _Customer Management Preferences_ (CR101000) form (if any) is selected by default. 

- The currently opened email is attached to the newly created opportunity record as a related email activity.     The opportunity is associated with the selected contact, and you can review the basic information about the     opportunity, such as the opportunity identifier and description, on the add-in form. 

- If you create multiple opportunities based on the same email, the information about the most recently     created opportunity is displayed on the add-in form for the contact. 

### To Create a Request for Information by Using the Acumatica Add-In 

 To create a new request for information based on an email, do the following: 

1. On the add-in form with the contact information displayed, click **Create Request for Information**.     The **New Request for Information** group of elements appears on the form. 

2. In the **Summary** box, enter a brief description of the request for information or leave the subject of the     email, which the system inserts by default. 

3. In the **Project** box, select the project to which the request for information is related. 

4. In the **Contact** box, select a contact on the customer side if you are creating an outgoing request for     information or an external contact who can provide the requested information if you are creating an     incoming request for information. 

5. Select the **Incoming** check box if you are creating an incoming request for information. For an outgoing     request for information, leave the check box cleared. 

6. In the **Class ID** box, select the project management class that the project issue belongs to.     As a result, the **Priority** and **Answer Date** boxes are populated based on the class default values. 

7. Review the default values in the **Priority** , **Owner** , and **Answer Date** boxes and change them, if needed.     If you clear the values in these boxes, the system will use the class default values for **Priority** and **Answer**     **Date** and your username as the issue owner when creating the request for information. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 374 

8. Select the **Schedule Impact (Days)** check box if this request for information is to cause the project schedule     to change; then in the **Schedule Impact (Days)** box, which appears, enter the number of days by which the     project schedule is to be delayed. 

9. Select the **Cost Impact** check box if this request for information is to affect the cost of the project; then in     the **Cost Impact** box, which appears, enter the amount by which the project budget is to be increased as a     result. 10.Select the **Design Change** check box if this request for information is to affect the project design. 11.Click **Create Request for Information**. 

 As a result, a new request for information is created in Acumatica ERP. The email is attached to this record as a related email activity and the body of the email is also copied to the Message text box in the Question area on the Details tab of the Request for Information (PJ301000) form. The request for information is associated with the selected project, and you can review the basic information about the request for information, such as the request for information identifier and summary, on the add-in form. 

 If you create multiple requests for information based on the same email, the information about the most recently created request for information is displayed on the add-in form for the email. 

### To Create a Project Issue by Using the Acumatica Add-In 

 To create a new project issue based on an email, do the following: 

1. On the add-in form with the contact information displayed, click **Create Project Issue**.     The **New Project Issue** group of elements appears on the form. 

2. In the **Summary** box, enter a brief description of the project issue or leave the subject of the email, which     the system inserts by default. 

3. In the **Project** box, select the project to which the project issue is related. 

4. In the **Class ID** box, select the project management class that the project issue belongs to.     As a result, the **Priority** and **Due Date** boxes are populated based on the class default values. 

5. Review the default values in the **Priority** , **Owner** , and **Due Date** boxes and change them, if needed.     If you clear the values in these boxes, the system will use the class default values for **Priority** and **Due Date**     and your username as the issue owner when creating the project issue. 

6. Click **Create Project Issue**. 

 As a result, a new project issue is created in Acumatica ERP. The email is attached to this record as a related email activity and the body of the email is also copied to the Message text box on the Details tab of the Project Issue (PJ302000) form. The project issue is associated with the selected project, and you can review the basic information about the project issue, such as the project issue identifier and summary, on the add-in form. 

 If you create multiple project issues based on the same email, the information about the most recently created project issue is displayed on the add-in form for the email. 

### Review of Record Details 

 When reviewing the information about a contact or lead on the add-in form, you may want to view or adjust the details of the contact or lead record or linked entities (if any). You can do any of the following: 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 375 

- If you want to view or modify the details of the contact or lead, click **View Contact** or **View Lead** ,     respectively, on the add-in form. This opens the _Contacts_ (CR302000) or _Leads_ (CR301000) form populated     with the details of the corresponding record. 

- If you want to view or modify the details of the employee that is associated with the email address specified     for the selected contact, click **View Employee** on the add-in form. This opens the _Employees_ (EP203000)     form populated with the details of the employee record. 

- If you want to view or modify the details of the business account, case, or opportunity that is associated     with the contact, click **View Account** , **View Case** , or **View Opportunity** , respectively, on the add-in form.     This opens the corresponding entry form in Acumatica ERP populated with the details of the corresponding     record. 

 Depending on which type of record has been most recently created for the contact, you may view either a case or an opportunity. 

- If you want to view or modify the details of the request for information or project issue that is associated     with the email, click **View Request for Information** or **View Project Issue** on the add-in form. This opens     the corresponding entry form in Acumatica ERP populated with the details of the corresponding record. 

 Depending on which type of record has been most recently created for the email, you may view either a request for information or a project issue. 

### Logging of Communication Activities 

 To preserve your communication history, you may want to associate an email with the corresponding contact and store it as an email activity in Acumatica ERP. (For details, see To Log an Email Activity .) 

 Enabling the following features on the Enable/Disable Features (CS100000) form gives users the capability to attach logged activities to various related entities, if applicable: 

- _Customer Management_ : The logged activity may be attached to the corresponding lead or opportunity. 

- _Case Management_ : The logged activity may be attached to the related case. 

- _Projects_ : The logged activity may be attached to the related project. 

- _Construction Project Management_ : The logged activity may be attached to the corresponding project issue     or request for information. Also, you can create a reply to an email that has already been stored in Acumatica ERP, and the reply will also be stored as a related communication activity. If the selected email has already been stored in Acumatica ERP as an email activity associated with the contact or with a related case or opportunity, you can initiate a reply to this email, which you will create and send by using the _Email Activity_ (CR306015) form. To do this, click **Reply** on the add-in form with the contact information displayed; this will open the _Email Activity_ form with the recipient and email subject populated automatically, and with the original email message inserted in the email body. Once you have sent the reply, the created email activity also becomes associated with the entity with which the original email is associated. 

### To Log an Email Activity 

 To associate an email with the corresponding record and store it as an email activity in Acumatica ERP, do the following: 

1. On the add-in form with the contact information displayed, click **Log Activity**.     The **Log Activity** group of elements appears on the form. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 376 

2. In the **Subject** box, specify the subject of your communication with the contact. By default, the subject of     the selected email is specified in this box. 

3. Select the record that you want to associate your email activity with, as follows: 

- Select the **Contact** check box if you want the email activity that will be created based on the selected     email to be associated with a contact, and then select the needed contact in the **Person** box. By default,     the contact associated with the email sender is specified in this box. 

- Select the **Case** check box if you want the email activity to be associated with a case, and then select the     needed case in the **Entity** box.     You can associate an email with a case only if the system finds an existing case that has been associated     with a contact or a business account of a contact. If no cases have been found, the **Case** check box is     unavailable.     The **Case** check box appears on the add-in form only if the _Case Management_ feature is enabled on the     _Enable/Disable Features_ (CS100000) form. 

- Select the **Opportunity** check box if you want the email activity to be associated with an opportunity,     and then select the needed opportunity in the **Entity** box.     You can associate an email with an opportunity only if the system finds an existing opportunity that has     been associated with a contact or a business account of a contact. If no opportunities have been found,     the **Opportunity** check box is unavailable. 

- Select the **Project** check box if you want the email activity to be associated with a project, and then     select the needed project in the **Entity** box.     The **Project** check box appears only if the _Projects_ feature is enabled on the _Enable/Disable Features_     form. 

- Select the **Request for Information** check box if you want the email activity to be associated with a     request for information, and then select the needed request for information in the **Entity** box.     The **Request for Information** check box appears only if the _Construction Project Management_ feature is     enabled on the _Enable/Disable Features_ form. 

- Select the **Project Issue** check box if you want the email activity to be associated with a project issue,     and then select the needed project issue in the **Entity** box.     The **Project Issue** check box appears only if the _Construction Project Management_ feature is enabled on     the _Enable/Disable Features_ form. 

4. In the **Encoding** box, select the encoding used for the selected email, so that the email message will be     correctly stored in Acumatica ERP. 

5. Click **Create**. 

 As a result, an email activity is created in Acumatica ERP based on the selected email; this activity is associated with the entity that you have specified. 

### Submitting Documents for Recognition 

 If the AP Document Recognition Service feature is enabled on the Enable/Disable Features (CS100000) form, the Create AP Document button appears on the add-in form for emails with PDF attachments. 

 If you click the Create AP Document button for an email that has only one PDF file attached, the attachment is uploaded to the system and processed by the document recognition service. If you click the Create AP Document button for an email with multiple PDF attachments, a list of the attached documents is displayed so that you select a check box for each document that should be submitted for recognition and then click Continue ; as a result, the selected attachments are uploaded to the system and processed by the document recognition service. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 377 

 If the list of documents that the system displays aer you have clicked the Create AP Document button includes a document that has already been recognized, the unlabeled check box for this document is cleared and non-editable. 

 Aer a document has been recognized, the View Document button appears on the add-in form for the processed email. 

 By clicking the View Document button for an email that has only one PDF file attached, you can open the recognized document on the Incoming Documents (AP301100) form. If you click the View Document button for an email that has multiple PDF attachments, the system displays a list of the attachments so that you select the unlabeled check box for the document that you want to review and then click Continue ; as a result, the recognized document opens on the Incoming Documents form. 

 If the list of documents that the system displays aer you have clicked the View Document button includes a document that has not yet been recognized, the unlabeled check box for this document is cleared and non-editable. 

 For more information about AP document recognition, see Recognizing AP Documents from PDFs. 

### Add-In for Outlook: Modern UI 

 By using the Acumatica add-in for Outlook for the Modern UI, you can link emails to the existing records, and create new records such as contacts, business accounts, opportunities, cases, and requests for information based on the email. 

### Acumatica Add-In for Outlook: System Requirements for the Add-In Installation 

 This topic describes the soware, configuration, and feature requirements for installing and using the Acumatica add-in for Outlook. 

#### Soware Requirements 

 You must have a Microso 365 or Exchange account to use the Acumatica add-in for Outlook. 

 Other soware requirements are listed in the following table. 

 Software Requirements 

 Outlook client Outlook 2016 or Outlook 2019 with a retail license; Outlook 2021 or Outlook for Microsoft 365 with any type of license; Outlook on the web 

 You can use the add-in with the new Outlook for Windows if users and system administrators perform the additional steps described in. However, while the new Outlook is still in preview for commercial customers, full functionality can't be guaranteed. 

 Operating system Windows 7 or later; Windows Server 2016 or later; Mac OS 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 378 

 Software Requirements 

 Browser Safari 9 or later; the latest version of Google Chrome; the latest version of Mozilla Firefox; the latest version of Microsoft Edge 

#### Prerequisites 

 The Acumatica add-in for Outlook works only if the Outlook Integration feature is enabled on the Enable/Disable Features (CS100000) form. 

 If you're using Exchange Server on-premises, you can install the add-in without enabling any additional features. 

 For a Microso 365 account, these additional requirements apply: 

- The _OpenID Connect_ feature must be enabled. 

- Your Acumatica ERP instance must be registered in Microso Entra, as described in _To Register an Acumatica_     _ERP Instance in Microsoft Entra_. 

- An OpenID provider must be configured in Acumatica ERP for use with the Acumatica add-in for Outlook. For     an example of this setup, see _To Create an OpenID Provider_. 

- Pop-ups must be enabled in your browser. By default, the add-in lets you create and view contacts from an email, log email activities, and attach logged activities to contacts. If you want to use additional capabilities of the add-in, you need to enable the following features, set up the related functionality, and make sure users can access the needed forms: 

- _Customer Management_ : Lets users create and view leads and opportunities from a mailbox and attach     communication activities to the related leads and opportunities. 

- _Case Management_ : Gives users the ability to create and view cases and attach logged activities to the related     cases. 

- _Projects_ : Makes it possible for users to attach logged activities to the related projects. 

- _Construction Project Management_ : Allows users to create and view project issues and requests for     information (RFIs), as well as attach logged activities to the related project issues and RFIs. 

- _Document Recognition Service_ : Gives users the ability to submit PDF attachments to the recognition service     and view documents processed by the recognition service. The add-in also requires your Acumatica ERP instance to be hosted over HTTPS. For more information, see _Preparation for the Acumatica ERP Installation: System Environment_. 

#### Additional Prerequisites with the New Outlook for Windows 

 The Acumatica add-in for Outlook can be used with the new Outlook for Windows only if both end users and administrators have performed additional steps. 

 Users need to select the Turn on optional connected experiences check box in the new Outlook app settings: Settings > General > Privacy and Data > Privacy settings > Turn on optional connected experiences. 

 System administrators need to modify the settings in the web.config file, which is located in the application instance folder, as described below. 

- These instructions apply only to application servers running .NET Framework Version 4.7.2 or     later. 

- The line numbers in these instructions refer to the lines of the web.config file before     modifications. 

- When the administrator saves changes to the web.config file, the website is automatically     restarted. All users must be warned about the restart beforehand so they can save their work. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 379 

1. In line 97, add the text in bold to the <formsAuth> tag of the <px.core> section. 

 <formsAuth loginUrl="Frames/Login.aspx" timeout="60" requireSSL="true" /> 

2. In line 155, add the text in bold to the <sessionState> tag of the <system.web> section. 

 <sessionState cookieSameSite="None" cookieless="UseCookies" mode="Custom" customProvider="PXSessionStateStore" timeout="60" sessionIDManagerType="PX.Owin.SessionIdManager, PX.Owin"> 

3. In line 216 (<system.web>) section, add the following line before the <compilation> tag. 

 <httpCookies sameSite="None" requireSSL="true" /> 

 When inserting the line: 

- The first two occurrences of <system.web> (in lines 64 and 103) within the     <location> tag are not the sections you need. 

- Insert the line only once; otherwise, a compilation error may occur when the site is     restarted. 

### Acumatica Add-In for Outlook: To Register an Acumatica ERP Instance in Microso 

### Entra 

 You can sign in to the Acumatica add-in for Outlook by using secure, modern OpenID Connect authentication. First, you need to register your Acumatica ERP instance in Microso Entra. The add-in uses Microso Entra access tokens to securely retrieve email body content, attachments, and metadata. 

 Note the following: 

- The procedure below covers the most common usage scenarios. If you’re implementing a     more complicated scenario and you encounter difficulties, contact Acumatica ERP technical     support. 

- The vendor of the third-party soware may change the user interface and settings. The labels     you see in the UI may differ from the ones described in the procedure. 

- The procedure will be updated to describe new common scenarios and UI changes arise. 

#### To Register an Instance in Microso Entra 

1. Sign in to _Microsoft Entra_ with an account that has sufficient permissions to manage app registrations and     grant admin consent for application permissions. 

2. In the le navigation pane, go to **Identity > Applications** and select **App registrations**. 

3. On the **App registrations** page, click **New registration**. 

4. On the **Register an application** page, do the following:     a. Enter the application name (for example, Acumatica ERP).     b. In the **Redirect URI** section, select _Web_ in the drop-down list.     c. In a separate browser tab, open the _OpenID Providers_ (SM303020) form of Acumatica ERP and do the        following:        a. On the form toolbar, click **View Redirect URIs**. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 380 

 b. In the Redirect URIs dialog box, copy the value in the Redirect URI box. d. Go back to the browser tab with the Entra app registration page and paste the copied URI into the text box in the Redirect URI section. 

5. Click **Register** at the bottom of the page. 

6. On the app page that opens, click **Clients & secrets** in the navigation pane. 

7. On the **Clients & secrets** page, go to the **Client secret** tab and click **New client secret** above the table. 

8. In the right panel that opens, type in the new secret name, select the expiration period, and click **Add** at the     bottom of the panel. As a result, a row with the new secret should appear in the table. 

9. Copy the value of the new secret and save it securely. You will need it later when configuring an OpenID     provider in Acumatica ERP, as described in _Acumatica Add-In for Outlook: To Create an OpenID Provider_. 

10.In the app navigation pane, click **Expose an API**. 

11.On the **Expose an API** page, click **Add** near the **Application ID URI** box at the top of the page. 

12.In the right panel, edit the application ID URI so that it includes the fully qualified domain name (FQDN) of the Acumatica ERP instance before <app-id>, which is a globally unique identifier (GUID) that you should not edit. api://<fully-qualified-domain-name>/<app-id> For example, if your Acumatica ERP instance is https://erp.example.com/instance, then the FQDN is erp.example.com. In this case, the result will be api://erp.example.com/<app-id>. 

13.Click **Save** at the bottom of the panel. 

14.On the **Expose an API** page, click **Add a scope**. 

15.In the **Add a scope** panel, which opens on the right: 

 a. Type access_as_user in the Scope name box. b. Select Admins and users in the Who can consent? box. c. In the Admin consent display name box, specify either your own display name or the following: Access Outlook data as the current user. d. In the Admin consent description box, specify either your own description or the following: Access Outlook data via Office APIs as the current user. e. In the User consent display name box, specify either your own display name or the following: Access your Outlook data. f. In the User consent description box, specify either your own description or the following: Access your Outlook data, including email and email attachments. g. Ensure that the State switch is turned on. h. Click Add scope at the bottom of the panel. 

16.On the **Expose an API** page, click **Add a client application**. 

17.In the right panel, enter ea5a67f6-b6f3-4338-b240-c655ddc3cc8e in the **Client ID** box. 

18.Select the check box against the _access_as_user_ scope in the **Authorized scopes** section. 

19.Click **Add application** at the bottom of the panel. 

20.In the app navigation pane, click **API Permissions**. 

21.On the **API permissions** page, click **Add a permission**. 

22.In the right panel, click the **Microso Graph** tile and then the **Delegated permissions** tile. 

23.Select the check boxes against the permissions listed below. You can use the search box in the **Select permissions** section to find them (or browse through the tree). 

- openid 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 381 

- profile 24.Click **Add permissions** at the bottom of the panel. 25.In the app’s navigation pane, click **Manifest**. 26.In the manifest that opens, find the requiredResourceAccess section. Aer the opening square bracket ([), paste the following block. 

 { "resourceAppId": "00000002-0000-0ff1-ce00-000000000000", "resourceAccess": [ { "id": "3b5f3d61-589b-4a3c-a359-5dd4b5ee5bd5", "type": "Scope" } ] }, 

 Notice the comma at the end, which separates the pasted element from the existing elements in the section. 

 27.In the manifest, find the requestedAccessTokenVersion element in the api section and change its value aer the colon to 2. 28.Click Save on the manifest toolbar. 29.In the app’s navigation pane, click API Permissions again. Notice that the new EWS.AccessAsUser.All permission has been added to the Office 365 Exchange Online group. 30.Click Grant admin consent for .... 

 This instruction is required. The delegated permissions you’ve added above tell Entra that the users of the application don’t need to provide their consent for the application to access their data—administrators have granted this consent for them. 

### Acumatica Add-In for Outlook: To Create an OpenID Provider 

 You need to create an OpenID provider that will be used for authentication in the Acumatica add-in for Outlook with Microso 365. 

 Only one provider per tenant can be set up for use with the add-in. 

 Do the following instructions: 

1. Open the _OpenID Providers_ (SM303020) form and add a new record. 

2. In the **Display Name** box, type a name for the new provider (for example, Add-in for Outlook). 

3. In Microso Entra, open the app you configured (as described in _Acumatica Add-In for Outlook: To Register an_     _Acumatica ERP Instance in Microsoft Entra_ ) and do the following:     a. In the navigation pane, click **Overview**.     b. On the Overview page, copy the value of the **Directory (tenant) ID** box. 

4. Go back to the _OpenID Providers_ form in Acumatica ERP. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 382 

5. In the **Issuer Identifier** box, enter the following, replacing <tenant-id> with the value you copied. 

 https://login.microsoftonline.com/<tenant-id>/v2.0 

 If your Entra tenant belongs to Microso Cloud for Government, enter the following: 

 https://login.microsoftonline.us/<tenant-id>/v2.0 

6. In Microso Entra, open the app you configured and do the following:     a. In the navigation pane, click **Overview**.     b. On the Overview page, copy the value of the **Application (client) ID** box. 

7. Go back to the _OpenID Providers_ form in Acumatica ERP. 

8. Paste the copied value in the **Client ID** box. 

9. Paste the value saved in Instruction 9 of _Acumatica Add-In for Outlook: To Register an Acumatica ERP Instance_     _in Microsoft Entra_ in the **Client Secret** box. 10.Select the **Use Provider for Sign-In to Acumatica Add-In for Outlook** check box. 11.On the **Authentication Settings** tab, click **Autoconfiguration**. 12.Click **Save** on the form toolbar. 

### Acumatica Add-In for Outlook: Add-In Installation 

 To install the Acumatica add-in for Outlook, you must use a manifest file that contains all deployment instructions. The system generates this file individually for each user. 

#### Prerequisite Settings 

 The system generates a manifest file based on the interface of the Acumatica add-in, which is specified on the Site Preferences (SM200505) form. In the Outlook Add-In UI box, one of the following options is inserted by default (you can change it): 

- Modern UI: Selected if the system has just been installed and _Modern_ is selected in the **Default UI** box of the     _Site Preferences_ form. 

- Classic UI: Selected if one of the following conditions is met: 

- The system has just been upgraded from Acumatica ERP 2025 R2 or an earlier version. 

- The system has just been installed, and _Classic_ is selected in the **Default UI** box of the _Site Preferences_     form. 

#### Downloading of the Manifest File 

 Before you begin installing the add-in, sign in to your Acumatica ERP instance. Then on the Email Settings tab of the User Profile (SM203010) form, click the link (see below) to download the needed add-in manifest file: 

- _Get Outlook Add-In Manifest for Exchange Server On-Premises_ : Use this link if you use Exchange Server on-     premises. 

- _Get Outlook Add-In Manifest for Microso 365_ : Use this link if you use a Microso 365 subscription. The     Microso 365 manifest comes prefilled with all the necessary Microso Entra identifiers—no extra     configuration needed. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 383 

 Figure: Download links for manifest files 

 The Get Outlook Add-In Manifest for Exchange Server On-Premises link appears only if the Outlook Integration feature is enabled on the Enable/Disable Features (CS100000) form. 

 The Get Outlook Add-In Manifest for Microso 365 link appears if all of the following conditions are met: 

- The _Outlook Integration_ and _OpenID Connect_ features are enabled on the _Enable/Disable_     _Features_ form. 

- The **Use Provider for Sign-In to Acumatica Add-In for Outlook** check box is selected for the     OpenID provider on the _OpenID Providers_ (SM303020) form. 

 The system names the downloaded manifest file based on the add-in interface specified on the Site Preferences (SM200505) form: 

- If you click the _Get Outlook Add-In Manifest for Exchange Server On-Premises_ link:     OutlookAddinManifestModernUI or OutlookAddinManifest (for the Classic UI) 

- If you click the _Get Outlook Add-In Manifest for Microso 365_ link:     OutlookAddinManifestMicrosoft365ModernUI or OutlookAddinManifestMicrosoft365     (for the Classic UI) 

#### Customization of the Manifest File 

 To customize the ribbon button that will appear on your Outlook client, you can edit the values of the following parameters in the downloaded manifest file: 

- DisplayName: The company name to be displayed. By default, _Acumatica_ is displayed. 

- Description: The description for the company to be displayed. By default, the following description is     displayed. 

 Figure: The description of the manifest file 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 384 

- SupportUrl: An external link to an image file with the company logo. By default, the _https://_     _[http://www.acumatica.com/support](http://www.acumatica.com/support)_ link is used. 

 You can modify the manifest file at any time aer the add-in has been installed, but you’ll have to update the add-in for the changes to take effect. For details on how to update the add-in, see Acumatica Add-In for Outlook: To Update the Acumatica Add-In. 

### Acumatica Add-In for Outlook: To Install the Acumatica Add-In 

 The instructions below describe how you install the Acumatica add-in and prepare it for use. 

#### To Install the Add-In 

 To install the add-in, you need to sign in to your mailbox in Outlook on the web and upload the add-in manifest. Do the following: 

1. Click _this link_ to open the **Add-Ins for Outlook** dialog box. 

2. In a navigation pane, select **My add-ins**. 

3. In the **Custom Add-ins** section, select **Add a custom add-in** , and then click **Add from File**. 

4. Specify the location of the add-in manifest file, and then click **Open** to confirm the selection. 

5. In the warning dialog box, click **Install** to install the add-in. 

6. Close the **Add-Ins for Outlook** dialog box. 

#### To Prepare the Add-In 

 Aer installing the add-in, do the following to prepare it for first use: 

1. Refresh the browser page and clear your cookies; for example, press Ctrl and click the **Reload this page**     button in your browser. If you’re using the desktop version of Outlook, close all its windows and open it     again. 

2. Open any email and click the More Apps icon on the ribbon toolbar or in the upper-right corner of the email.     In the list of apps, you’ll see the Acumatica button (as shown below). 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 385 

 Figure: The Acumatica button 

 The button is available both in the desktop client and in Outlook on the web. 

3. Pin the button to the toolbar by right-clicking it and selecting **Pin** from the drop-down menu. 

4. Click this button to run the add-in. The Acumatica add-in panel opens. For details, see _Acumatica Add-In for_     _Outlook: Getting Started with the Add-In_. 

### Acumatica Add-In for Outlook: To Update the Acumatica Add-In 

 If you modify the manifest file for the Acumatica add-in, you need to uninstall the add-in and install it again by using the updated manifest file. In Outlook on the web, do the following: 

1. Click _this link_ to open the **Add-Ins for Outlook** dialog box. 

2. In a navigation pane, select **My add-ins**. 

3. In the **Custom Add-ins** section, click the More menu ( ) in the le bottom corner of the Acumatica add-in. 

 Alternatively, you can click the Acumatica add-in tile to open it. 

4. Select **Remove**. 

5. Aer the add-in has been removed, use the updated manifest file to install the add-in, as described in     _Acumatica Add-In for Outlook: To Install the Acumatica Add-In_. 

### Acumatica Add-In for Outlook: Getting Started with the Add-In 

 When you run the Acumatica add-in for Outlook on your device for the first time, the Acumatica add-in panel opens on the right side of the screen and displays the introductory form (see below). 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 386 

 Figure: The introductory form of the Acumatica add-in 

 This form appears in both Outlook on the Web and Outlook Client for Windows. If you use Outlook on the Web, the introductory form appears again aer you clear your browser's cookies. In the Outlook Client for Windows, the introductory form also reappears if you remove and then install again the add-in. 

 This introductory form provides a brief overview of the add-in’s functionality. Click Next to continue. On the sign-in form, which opens, you sign in by using your Acumatica ERP credentials. 

#### Signing In 

 To confirm your identity when using the Acumatica add-in, you provide your Acumatica ERP credentials to sign in to your Acumatica ERP instance. On the Sign-In page, which opens when you run the add-in, do the following: 

1. In the **Select a tenant** box, select the company to which you want to sign in.     Note that this box is available only if multiple companies are registered in your Acumatica ERP instance. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 387 

2. In the **Username** and **Password** boxes, type your credentials, respectively. 

3. Click **Sign In**.     This grants the add-in access to your Acumatica ERP instance. You don’t have to enter your credentials     during each subsequent run of the add-in unless you previously signed out. 

 The incorrect configuration of Exchange Server may cause an error during your sign-in attempt if the system receives an empty identity token from Exchange. If this happens, your system administrator should update the Exchange Server OAuth configuration so that a valid certificate is used in the process. 

### Acumatica Add-In for Outlook: General Information 

 The Acumatica add-in for Outlook works with open incoming and sent email in your Outlook mailbox. It searches Acumatica ERP for leads, contacts, and business accounts that correspond to the sender and recipient addresses in the emails. It also searches for documents and profiles to which the email has been linked. 

 You start using the Acumatica add-in by opening an email and clicking the Acumatica button on the toolbar to open the add-in panel. (For details about how to pin the button, see Acumatica Add-In for Outlook: To Install the Acumatica Add-In .) 

 Depending on whether the email has already been linked to a record in Acumatica ERP, one of the following forms will be shown first on the add-in panel: 

- Linked Records: Shows records (profiles and documents) linked to the email or its attachments. You see this     form first if the email has already been linked to a record in Acumatica ERP. 

- Related Records: Displays records that contain the same email address as the opened email sender or one     of the recipients. You see this form first if the email hasn't already been linked to a record in Acumatica ERP. 

#### Viewing Linked Records 

 The Linked Records form shows the records in Acumatica ERP to which the opened email has already been linked. If you click the link to the record in the Email Attached To section, the system opens it in your browser. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 388 

**_Figure: The Linked Records form_** 

If the **Email Attached To** section shows no linked records or you want to link the email to other records, click **Link Email to ERP Records** to go to the Related Records form and select records to which the email will be linked. 

In the **Incoming Documents** section (shown below), you can see the attached documents that have already been submitted to Acumatica ERP for recognition. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 389 

 Figure: The Incoming Documents section 

 The section is available if the AP Document Recognition Service feature is enabled on the Enable/Disable Features (CS100000) form and the attached document is in a recognizable format, such as PDF. 

 For details, see Acumatica Add-In for Outlook: Incoming Document Management. 

#### Working with Related Records 

 You can use the Related Records form to review and create records in Acumatica ERP that are related to the current email. You can also select records to which you want to link the email. 

 Record Groups 

 On the form, records are grouped by type (see below). 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 390 

**_Figure: Grouped records on the Related Records form_** 

**Filtering, Searching, and Sorting Records** 

At the top of the form, use the Filter box to select the email address to match (see below). By default, the _From_ address is selected. The system shows any records in Acumatica ERP with this email address. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 391 

**_Figure: The filter options_** 

If you select _Do Not Filter_ , all Acumatica ERP records will be shown in each group of records (see below). 

 The Do Not Filter option can be useful if you want to link the email to a project or another record that doesn’t contain any email address from the open email. 

To find a particular record, use the Search box. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 392 

**_Figure: The Filter and Search boxes_** 

You can also use sorting options to work with records more easily. Click **Sort** (shown below) to select one of the available sorting options. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 393 

**_Figure: The sorting options_** 

**Creation and Linking of Records** 

You can create a new record based on the selected email address or the content of the message. To do this, click the corresponding button, such as **Add Opportunity** or **Add Contact** , in the groups of records (see below). 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 394 

**_Figure: Buttons for creating new records_** 

To link the email to a record or multiple records, first select the unlabeled check box for each needed record. Then click **Link Email to Selected Records** at the bottom of the form (see below). The system opens the Email Activity form in the add-in panel. For details, see _Acumatica Add-In for Outlook: Email Activity Management_. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 395 

 Figure: Selection of records to link to the email 

 You can also use the Related Records form as a starting point to modify records. Click a record's link and the system opens that record on the corresponding data entry form in Acumatica ERP. 

#### Access Rights 

 The following user roles have the Delete and Read access rights to the Related Records and Linked Records forms. 

 User Role Access Rights 

 AcumaticaSupport 

 Administrator 

 AP Admin 

 AP Clerk 

 AR Admin 

 AP Clerk 

 CR Marketing Manager 

 Delete 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 396 

 User Role Access Rights 

 CR Sales & Marketing Admin 

 CR Sales Representative 

 CR Support Admin 

 CR Support Representative 

 Customer Data Manager 

 PO Admin 

 PO Buyer 

 PO Clerk 

 PO Manager 

 Project Accountant 

 SO Admin 

 SO Clerk 

 SO Manager 

 Vendor Data Manager 

 AP Viewer 

 AR Viewer 

 CR Viewer 

 PO Viewer 

 SO Viewer 

 Read 

### Acumatica Add-In for Outlook: Email Activity Management 

 Keeping all communication with customers or partners in one place helps keep your work organized and transparent. The Acumatica add-in for Outlook lets you easily store email correspondence along with the relevant records in Acumatica ERP. 

 While viewing an email in Outlook, you click the Acumatica on the toolbar to open the add-in panel. From there, you can link the email to one or more records on the Related Records form. The same email can be saved multiple times, if needed. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 397 

#### Linking an Email to Records 

 You use the Related Records form of the Acumatica add-in panel to link the email you're viewing to records. On this form, select one or more records and click Link Email to Selected Records ; the Email Activity form opens. 

 If the Linked Records form is initially displayed on the add-in panel, click Link Email to ERP Records to open the Related Records form. Then you can link the email, as shown below. 

 Figure: Linking an email to a record 

 You can select only one record of each type in the Profiles group and only one record from any other group of records at a time. 

#### Finishing Email Activity Creation 

 To finish the process of linking records to the email, you finish creating the email activity on the Email Activity form (see below). Depending on the type of record you selected on the Related Records form, the following boxes of the email activity may be filled in automatically: 

- **Subject** : The email message's subject. 

- **Related Account** : The business account name if a business account was selected in the **Profiles** group of     records. 

- **Related Contact** : The contact name if a contact was selected in the **Profiles** group of records. 

- **Related Entity Type** : The type of entity to which the email will be linked. If both a contact record and a     business account record were selected in the **Profiles** group of records, the _Contact_ entity type is selected     by default. If both a record from the **Profiles** group and a record from another group were selected, the type     of record from the other group will be used. 

- **Related Entity** : The entity (record) of the selected type to which the email will be linked. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 398 

- **Status** : _Open_ if the **Track Time and Costs** check box is selected; otherwise, it's _Completed_. 

 The Track Time and Costs check box is now available only for outgoing emails. 

**_Figure: The Email Activity form_** 

Aer you save the email activity, the add-in automatically returns you to the Linked Records form. All records to which the email has been linked are displayed in the **Email Attached To** section (see below). 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 399 

**_Figure: The records linked to the email_** 

In Acumatica ERP, the saved email activity appears on the **Activities** tab of the data entry form for the record selected in the **Related Entity** box, as shown below. Any email attachments are saved as files and linked to the email activity. The activity’s status is changed to _Completed_ , and **Completed On** is populated with the current date and time. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 400 

 Figure: The saved email activity 

#### Access Rights 

 Internal employees with the following user roles have the Delete access rights to the Email Activity form: 

- _AcumaticaSupport_ 

- _Administrator_ 

- _CR Marketing Manager_ 

- _CR Sales & Marketing Admin_ 

- _CR Sales Representative_ 

- _CR Support Admin_ 

- _CR Support Representative_ 

### Acumatica Add-In for Outlook: Contact Management 

 With the Acumatica add-in for Outlook, you can easily find any related contacts in Acumatica ERP and create new ones related to an email you’re viewing. 

 If the add-in isn’t already open, click the Acumatica button on the toolbar to open the add-in panel. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 401 

 When you open an email with the Acumatica add-in running, it tries to find related contacts on the Contacts (CR302000) form. That is, it searches for contacts whose email addresses match the one selected in the Filter box on the Related Records form of the Acumatica add-in. You can search by the sender’s address or by a recipient’s address. For details about the filter box, see Acumatica Add-In for Outlook: General Information. 

 If matching contacts are found, they appear in the Profiles section of the Related Records form. You can: 

- Select a related contact to quickly link the email to it. For details, see _Acumatica Add-In for Outlook: Email_     _Activity Management_. 

- Click a contact’s name (which is a link) to review the contact. The record opens on the _Contacts_ form of your     Acumatica ERP instance. 

- Quickly create a related contact and link it to the email, as described in the next section. 

#### Contact Creation 

 To create a contact with the email address selected in the Filter box of the Related Records form, click Add Contact in the Profiles section—either directly or through the More menu. 

 Figure: The Add Contact command 

 The Contact form opens (see below), and the following boxes may be filled in automatically: 

- **Email** : The email address selected in the filter box. 

- **First Name** : The first word of the email address if it consists of two or more parts separated by spaces (for     example, _Mill Gibson <mill.gibson.mail.com>_ ); otherwise, the box is empty. 

- **Last Name** : The second word of the email address if it consists of two or more parts separated by spaces (for     example, _Mill Gibson <mill.gibson.mail.com>_ ). If a last name can’t be derived, the email address selected in     the Filter box is inserted. 

- **Link Email to Contact** : Selected. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 402 

 Figure: The Contact form 

 Aer you click Create Contact , the form you go to depends on the state of the Link Email to Contact check box: 

- If it’s cleared, you return to the Related Records form. The system refreshes the **Profiles** section and shows     the newly created contact. 

- If it’s selected, you go to the Email Activity form. The system fills in the **Related Contact** and **Related Entity**     boxes with the new contact and inserts _Contact_ in the **Related Entity Type** box. The email is linked to     the newly created contact in Acumatica ERP. For details, see _Acumatica Add-In for Outlook: Email Activity_     _Management_. 

#### Access Rights 

 Users with the following user roles have the Delete access rights to the Contact form: 

- _AcumaticaSupport_ 

- _Administrator_ 

- _CR Marketing Manager_ 

- _CR Sales & Marketing Admin_ 

- _CR Sales Representative_ 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 403 

- _CR Support Admin_ 

- _CR Support Representative_ 

- _Customer Data Manager_ 

- _Vendor Data Manager_ 

### Acumatica Add-In for Outlook: Business Account Management 

 When you work with an email in Outlook, the Acumatica add-in for Outlook lets you quickly find any related business accounts in Acumatica ERP and create new ones without leaving your mailbox. 

 If the add-in isn’t already open, click the Acumatica button on the toolbar to open the add-in panel. 

 The Acumatica add-in searches for business accounts that have email addresses matching the sender or any recipient of the email on the following forms: 

- _Business Accounts_ (CR303000) 

- _Customers_ (AR303000) if the business account has been extended as a customer 

- _Vendors_ (AP303000) if the business account has been extended as a vendor If matching accounts are found, they appear in the **Profiles** section of the Related Records form. You can: 

- Link the email to the related account record. For details, see _Acumatica Add-In for Outlook: Email Activity_     _Management_. 

- Click a business account’s name (which is a link) to review it. The record opens on the corresponding data     entry form of your Acumatica ERP instance. 

- Quickly create a related account and link it to the email, as described in the next section. 

#### Business Account Creation 

 You can create a new business account with the email address selected in the Filter box of the Related Records form. If the Customer Management feature is enabled on the Enable/Disable Features (CS100000) form, you can click Add Account in the Profiles section—either directly or through the More menu. 

 The BIZACCT segmented key may require manual entry of a key segment. In this case, when you click Add Account , the Specify Account ID dialog box opens (shown below). Enter the business account ID and then click Add Account to proceed. 

 Figure: The Specify Account ID dialog box 

 The Account form opens (see below), and the following boxes may be filled in automatically: 

- **Business Account** : The business account ID that you’ve entered in the **Specify Account ID** dialog box (if     applicable). 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 404 

- **Account Name** : The display name of the email address, such as _Mill Gibson <mill.gibson.mail.com>_ ;     otherwise, the box is empty. 

- **Account Email** : The email address selected in the filter box. 

- **First Name** ( **Primary Contact** section): The first word of the email address if it consists of two or more parts     separated by spaces (for example, _Mill Gibson <mill.gibson.mail.com>_ ); otherwise, the box is empty. 

- **Last Name** ( **Primary Contact** section): The second word of the email address if it consists of two or more     parts separated by spaces (for example, _Mill Gibson <mill.gibson.mail.com>_ ). If a last name can’t be derived,     the email address selected in the Filter box is inserted. 

- **Email** ( **Primary Contact** section): The email address selected in the Filter box. 

- **Link Email to Contact** : Selected. 

 Figure: The Account form 

 Aer you click Create Account , the form you go to depends on the state of the Link Email to Contact check box: 

- If it’s cleared, you return to the Related Records form. The system refreshes the **Contacts** section and shows     the newly created business account and its primary contact (if the **Primary Contact** section on the Account     form is filled in). 

- If it’s selected, you go to the Email Activity form. The system fills in the **Related Account** and **Related Entity**     boxes with the business account you created and inserts _Business Account_ in the **Related Entity Type** box.     The email is linked to the newly created business account in Acumatica ERP. For details, see _Acumatica Add-_     _In for Outlook: Email Activity Management_. 

#### Access Rights 

 Users with the following user roles have the Delete access rights to the Account form: 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 405 

- _AcumaticaSupport_ 

- _Administrator_ 

- _CR Marketing Manager_ 

- _CR Sales & Marketing Admin_ 

- _CR Sales Representative_ 

- _CR Support Admin_ 

- _CR Support Representative_ 

- _Customer Data Manager_ 

- _Vendor Data Manager_ 

### Acumatica Add-In for Outlook: Lead Management 

 With the Acumatica add-in for Outlook, you can easily convert any email from a potential customer into a lead and save it in Acumatica ERP. 

 If the add-in isn’t already open, click the Acumatica button on the toolbar to open the add-in panel. 

 When you open an email with the Acumatica add-in running, it tries to find related leads on the Leads (CR301000) form. That is, it looks for leads whose email addresses match the one selected in the Filter box on the Related Records form of the Acumatica add-in. 

 If matching leads are found, they appear in the Leads section of the Related Records form. You can: 

- Link the email to the related lead to keep all important communication details in one place. For details, see     _Acumatica Add-In for Outlook: Email Activity Management_. 

- Review the lead by clicking its name, which is a link. The record opens on the _Leads_ form in your Acumatica     ERP instance. 

- Quickly create a related lead and link it to the email, as described in the next section. 

#### Lead Creation 

 To create a lead with the email address selected in the Filter box of the Related Records form, click Add Lead in the Leads section—either directly or through the More menu. 

 The Lead form opens (see below), and the following boxes may be filled in automatically: 

- **First Name** : The first word of the email address if it consists of two or more parts separated by spaces (for     example, _Mill Gibson <mill.gibson.mail.com>_ ); otherwise, the box is empty. 

- **Last Name** : The second word of the email address if it consists of two or more parts separated by spaces (for     example, _Mill Gibson <mill.gibson.mail.com>_ ). If a last name can’t be derived, the email address selected in     the filter box is inserted. 

- **Business Account** : The name of the existing related business account that has the same email address as     the address specified in the filter box; otherwise, the box is empty. 

- **Email** : The email address selected in the filter box. 

- **Description** : The email subject. 

- **Link Email to Lead** : Selected. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 406 

**_Figure: The Lead form_** 

Aer you click **Create Lead** , the form you go to depends on the state of the **Link Email to Lead** check box: 

- If it’s cleared, you return to the Related Records form. The system refreshes the **Leads** section and shows the     newly created lead. 

- If it’s selected, you go to the Email Activity form. The system fills in the **Related Account** and **Related Entity**     boxes with the lead you created and selects _Lead_ in the **Related Entity Type** box. For details, see _Acumatica_     _Add-In for Outlook: Email Activity Management_. The email is linked to the newly created lead in Acumatica     ERP. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 407 

#### Access Rights 

 Users with the following user roles have the Delete access rights to the Lead form: 

- _AcumaticaSupport_ 

- _Administrator_ 

- _CR Marketing Manager_ 

- _CR Sales & Marketing Admin_ 

- _CR Sales Representative_ 

- _CR Support Admin_ 

- _CR Support Representative_ 

### Acumatica Add-In for Outlook: Opportunity Management 

 When you communicate with a potential or existing customer in Outlook and realize that an email may lead to a new deal, you can easily use this email to create an opportunity in Acumatica ERP by using the Acumatica add-in for Outlook. You can also link the email to an existing opportunity. 

 If the add-in isn’t already open, click the Acumatica button on the toolbar to open the add-in panel. 

 When you open an email with the Acumatica add-in running, it tries to find related opportunities on the Opportunities (CR304000) form. That is, it searches for opportunities whose email addresses match the one selected in the filter box on the Related Records form of the Acumatica add-in. 

 If matching opportunities are found, they appear in the Opportunities section of the Related Records form. You can: 

- Link the email to the related opportunity record. For details, see _Acumatica Add-In for Outlook: Email Activity_     _Management_. 

- Review the opportunity by clicking its name, which is a link. The record opens on the _Opportunities_ form in     your Acumatica ERP instance. 

- Quickly create a related opportunity and link it to the email, as described in the next section. 

#### Opportunity Creation 

 To create an opportunity with the email address selected in the Filter box of the Related Records form, click Add Opportunity in the Opportunities section—either directly or through the More menu. 

 The Opportunity form opens (see below), and the following boxes may be filled in automatically: 

- **Description** : The email subject. 

- **Business Account** : The name of the existing related business account with the same email address as the     address specified in the filter box; otherwise, the box is empty. 

- **First Name** ( **Contact** section): The first word of the email address if it consists of two or more parts     separated by spaces (for example, _Mill Gibson <mill.gibson.mail.com>_ ); otherwise, the box is empty. 

- **Last Name** ( **Contact** section): The second word of the email address if it consists of two or more parts     separated by spaces (for example, _Mill Gibson <mill.gibson.mail.com>_ ). If a last name can’t be derived, the     email address selected in the filter box is inserted. 

- **Email** ( **Contact** section): The email address selected in the filter box. 

- **Link Email to Opportunity** : Selected. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 408 

 Figure: The Opportunity form 

 Aer you click Create Opportunity , the form you go to depends on the state of the Link Email to Opportunity check box: 

- If the check box is cleared, you return to the Related Records form. The system refreshes the **Opportunities**     section and shows the newly created opportunity. 

- If the check box is selected, you go to the Email Activity form. The system fills in the **Related Entity** box with     a new opportunity and selects _Opportunity_ in the **Related Entity Type** box. For details, see _Acumatica Add-_     _In for Outlook: Email Activity Management_. The email is linked to the newly created opportunity in Acumatica     ERP. 

#### Access Rights 

 Users with the following user roles have the Delete access rights to the Opportunity form: 

- _AcumaticaSupport_ 

- _Administrator_ 

- _CR Marketing Manager_ 

- _CR Sales & Marketing Admin_ 

- _CR Sales Representative_ 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 409 

### Acumatica Add-In for Outlook: Case Management 

 Customer requests oen arrive by email. Through the Acumatica add-in for Outlook, you can start working on them right away by creating cases based on these emails or by linking these emails to existing cases or other related records. 

 If the add-in isn’t already open, click the Acumatica button on the toolbar to open the add-in panel. 

 When you open an email with the Acumatica add-in running, it tries to find related cases on the Cases (CR306000) form. That is, it searches for cases whose contact or business account contains an email address matching the one selected in the filter box on the Related Records form of the Acumatica add-in. 

 If matching cases are found, they appear in the Cases section of the Related Records form. You can: 

- Link the email to a related case to keep all related emails together in one place. For details, see _Acumatica_     _Add-In for Outlook: Email Activity Management_. 

- Review the case by clicking its name, which is a link. The record opens on the _Cases_ form of your Acumatica     ERP instance in a new browser tab. 

- Quickly create a related case and link it to the email, as described in the next section. 

#### Case Creation 

 If no related cases have been found in Acumatica ERP, you can create a case with the email address selected in the Filter box of the Related Records form. Click Add Case in the Cases section—either directly or through the More menu. 

 The Case form opens (see below), and the following boxes may be filled in automatically: 

- **Subject** : The email subject 

- **Business Account** : The name of the existing business account that has the same email address as the     address specified in the filter box; otherwise, the box is empty 

- **Contact** : The name of the existing contact that contains the same email address as the address specified in     the filter box; otherwise, the box is empty 

- **Description** : The email message's body 

- **Link Email to Case** : Selected 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 410 

 Figure: The Case form 

 Aer you click Create Case , the form you go to depends on the state of the Link Email to Case check box: 

- If the check box is cleared, you return to the Related Records form. The system refreshes the **Cases** section     and shows the newly created case. 

- If the check box is selected, you go to the Email Activity form. The system fills in the **Related Entity** box     with the case you created and selects _Case_ in the **Related Entity Type** box. The email is linked to the newly     created case in Acumatica ERP. For details, see _Acumatica Add-In for Outlook: Email Activity Management_. 

#### Access Rights 

 Users with the following user roles have the Delete access rights to the Case form: 

- _AcumaticaSupport_ 

- _Administrator_ 

- _CR Support Admin_ 

- _CR Support Representative_ 

### Acumatica Add-In for Outlook: Incoming Document Management 

 Emails may include attachments, such as vendor bills. If the attached files are in a recognizable format, such as PDF, they can be submitted for recognition in Acumatica ERP if the AP Document Recognition Service feature is enabled on the Enable/Disable Features (CS100000) form. Once the documents are recognized, they can be used to create the corresponding records in the system. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 411 

 When you open an email with attachments while the Acumatica add-in for Outlook is running, it tries to find related documents on the Incoming Documents (AP301110) form. That is, it searches for recognized incoming documents that have a link to the currently open email. 

 If any matching documents are found in Acumatica ERP, they appear in the Incoming Documents section of the Linked Records form. You can click any incoming document’s name (which is a link) to open the document on the Incoming Documents form of your Acumatica ERP instance. 

 If the incoming document is assigned to a vendor, its name is also displayed next to the document's name, which is a link. You can click the link to open the vendor on the Vendors (AP303000) form. 

#### Attachment Recognition 

 To recognize an email attachment that hasn't been recognized yet in Acumatica ERP, you click Process Email Attachments on the Linked Records form. On the Attachment Selection form, which opens (see below), you select the document you want to submit for recognition and click Process. 

 Figure: The Attachment Selection form 

 You return to the Linked Records form, which refreshes and shows the recognized document in the Incoming Documents section (see below). 

 If the document doesn't appear in the section, click Refresh on the More menu. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 412 

 Figure: The recognized document 

#### Access Rights 

 Users with the following user roles have the Delete access rights to the Attachment Selection form: 

- _AcumaticaSupport_ 

- _Administrator_ 

- _AP Admin_ 

- _AP Clerk_ 

### Acumatica Add-In for Outlook: Project Management 

 If you receive an email related to a project in your Outlook mailbox, you may want to save the email in Acumatica ERP so that it’s displayed on the Activities tab of the Projects (PM301000) form for this project. With the Acumatica add-in for Outlook, you can easily find the related project on the Related Records form of the Acumatica add-in if the Projects feature is enabled on the Enable/Disable Features (CS100000) form. 

 If the add-in isn’t already open, click the Acumatica button on the toolbar to open the add-in panel. 

 When you open an email with the Acumatica add-in running, it tries to find related projects on the Projects form. That is, it searches for projects with an email address matching the one selected in the filter box on the Related Records form of the Acumatica add-in. 

 If matching projects are found, they appear in the Projects section of the Related Records form. You can click a project’s name (which is a link) to review it. The record opens on the Projects form of your Acumatica ERP instance. 

 If no matching projects are found, select Do Not Filter in the Filter box, search for the project, and link the email to it (see below). For details, see Acumatica Add-In for Outlook: Email Activity Management. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 413 

 Figure: Selection of the project to link to an email 

### Acumatica Add-In for Outlook: Requests for Information Management 

 Emails in your Outlook mailbox may contain information you want to save as requests for information (RFIs) in Acumatica ERP. You can quickly do this on the Related Records form of the Acumatica add-in if the Construction Project Management feature is enabled on the Enable/Disable Features (CS100000) form. 

 If the add-in isn’t already open, click the Acumatica button on the toolbar to open the add-in panel. 

 When you open an email with the Acumatica add-in running, it tries to find related RFIs on the Request for Information (PJ301000) form. That is, it searches for RFIs whose contact has the same email address as the one selected in the filter box on the Related Records form. 

 If matching RFIs are found, they appear in the Request for Information section of the Related Records form. You can: 

- Select a related RFI to quickly link the email to it. For details, see _Acumatica Add-In for Outlook: Email Activity_     _Management_. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 414 

- Click an RFI’s name (which is a link) to review it. The record opens on the _Request for Information_ form in     your Acumatica ERP instance. 

- Open a project related to the RFI on the _Projects_ (PM301000) form. 

- Quickly create an RFI and link the email to it, as described in the next section. 

#### Creation of a Request for Information 

 To create an RFI based on the email address selected in the filter box of the Related Records form, click Add Request for Information in the Requests for Information section—either directly in the section or through the More menu. 

 The Request for Information form opens (see below), and the following boxes may be filled in automatically: 

- **Summary** : The email subject 

- **Contact** : The name of the existing contact whose email address matches the sender's email address;     otherwise, the box is empty 

- Text area: The email message's body 

- **Link Email to Request for Information** : Selected 

 Figure: The Request for Information form 

 Aer you click Create Request for Information , the form you go to depends on the state of the Link Email to Request for Information check box: 

- If the check box is cleared and the project associated with the request is related to the email address     selected in the Filter box, you return to the Related Records form. The system refreshes the **Requests for**     **Information** section and shows the newly created request. 

- If the check box is cleared and the project associated with the request is not related to the email address     selected in the filter box, you return to the Linked Records form. The system shows the newly created     request in the **Email Attached To** section. 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 415 

- If the check box is selected, you go to the Email Activity form. The system fills in the **Related Entity** box     with the RFI you created and selects _Request for Information_ in the **Related Entity Type** box. For details, see     _Acumatica Add-In for Outlook: Email Activity Management_. The email is linked to the newly created request in     Acumatica ERP. 

### Acumatica Add-In for Outlook: Project Issue Management 

 An email in your Outlook mailbox may contain information that’s important for a project in Acumatica ERP, and you may want to save this information in issues related to this project. You can quickly do this on the Related Records form of the Acumatica add-in for Outlook if the Construction Project Management feature is enabled on the Enable/ Disable Features (CS100000) form. 

 If the add-in isn’t already open, click the Acumatica button on the toolbar to open the add-in panel. 

 When you open an email with the Acumatica add-in running, it tries to find related project issues on the Project Issue (PJ302000) form. That is, it searches for issues associated with projects whose contact has the same email address as the one selected in the Filter box on the Related Records form. 

 Matching project issues appear in the Project Issues section of the Related Records form. You can: 

- Select a related project issue to quickly link the email to it. For details, see _Acumatica Add-In for Outlook:_     _Email Activity Management_. 

- Click an issue’s name (which is a link) to review it. The record opens on the _Project Issue_ form in your     Acumatica ERP instance. 

- Open a project related to the issue on the _Projects_ (PM301000) form. 

- Quickly create a project issue and link the email to it, as described in the next section. 

#### Project Issue Creation 

 To create a project issue with the email address selected in the filter box of the Related Records form, click Add Project Issue in the Project Issues section—either directly or through the More menu. 

 The Project Issue form opens (see below), and the following boxes may be filled in automatically: 

- **Summary** : The email subject 

- Text area: The email message's body 

- **Link Email to Project Issue** : Selected 


<!-- PAGE_BREAK -->
 Using the Acumatica Add-In for Outlook | 416 

**_Figure: The Project Issue form_** 

Aer you click **Create Project Issue** , the form you go to depends on the state of the **Link Email to Project Issue** check box: 

- If it’s cleared and the project associated with the project issue is related to the email address selected in     the Filter box, you return to the Related Records form. The system refreshes the **Project Issues** section and     shows the newly created project issue. 

- If the check box is cleared and the project associated with the project issue is not related to the email     address selected in the Filter box, you return to the Linked Records form. The system shows the newly     created project issue in the **Email Attached To** section. 

- If the check box is selected, you go to the Email Activity form. The system fills in the **Related Entity** box     with the project issue you created and selects _Project Issue_ in the **Related Entity Type** box. For details, see     _Acumatica Add-In for Outlook: Email Activity Management_. The email is linked to the newly created project     issue in Acumatica ERP. 


<!-- PAGE_BREAK -->
 Setting Up Synchronization with Salesforce | 417 

## Setting Up Synchronization with Salesforce 

 Acumatica ERP supports bidirectional real-time synchronization of data between Acumatica ERP and Salesforce, so users can work simultaneously in both systems with changes in one system being reflected in the other. 

### Overview of Synchronization with Salesforce 

 If your company uses both Salesforce and Acumatica ERP, you may want to synchronize CRM-related data between these systems, so users can work simultaneously in both systems. Acumatica ERP provides a synchronization solution that supports bidirectional synchronization of this data in real time. 

#### In This Chapter 

- _Synchronization Solution Overview_ 

- _Requirements and Prerequisites_ 

- _Configuration_ 

- _Supported Data_ 

- _Data Synchronization Process_ 

- _Synchronization of Case Records_ 

- _Export of Sales Prices_ 

- _Limitations_ 

### Synchronization Solution Overview 

 The synchronization solution provided by Acumatica is designed for companies that use Salesforce as their primary CRM system and Acumatica ERP as their primary ERP system. In most cases, a company can use this solution as follows: 

- All marketing and sales operations are managed through the CRM system, which is the source system for     customer and partner accounts, contacts, and sales opportunities. 

- Distribution and financial operations are managed through the ERP system, which is the source system for     inventory items and their prices. 

- The data of customer and partner accounts and contacts can be modified or new business accounts and     contacts can be created in either of these systems. 

#### Typical Solution 

 The use of CRM and ERP systems described above could be supported by one of the many integration solutions available on the market as long as it meets the following requirements: 

- It should track changes in both involved systems. 

- It should control the synchronization process. 

- It should reflect changes in both systems by using an API. 

- It should allow the resolution of conflicts and recovery from connectivity failures. However, this solution would be expensive, and a small or medium-sized business may not be able to afford it. 


<!-- PAGE_BREAK -->
 Setting Up Synchronization with Salesforce | 418 

#### Acumatica Solution 

 The synchronization solution implemented in Acumatica ERP has been designed to meet the following criteria: 

- The users should be able to continue using Salesforce as a CRM system. 

- The synchronization process should be performed as close to real time as possible. Ideally, a change     introduced in one system should be immediately reflected in the other system. 

- CRM-related data that originates in Salesforce should be available for various financial operations in     Acumatica ERP. 

- CRM-related data that originates in Acumatica ERP should be available for sales and marketing operations     managed in Salesforce. 

- The effort required for the development and administration of Salesforce at the client sites should be     minimal because many Acumatica partners and customers do not know how to configure and administer     Salesforce or how to develop and deploy code for it. 

#### Salesforce and Acumatica ERP Integration Capabilities 

 Salesforce provides a REST API for queueing and manipulating data in the system. Through this API, an external system (in this case, Acumatica ERP) can retrieve data from Salesforce or submit data to Salesforce. Salesforce also provides a Streaming API , through which an external system can subscribe to a queue of changes made to data objects selected by a query. 

 Acumatica ERP provides a REST API for queueing and manipulating data in the system. Also, Acumatica ERP provides the capability to expose a data query through the OData protocol. 

 A custom synchronization engine and its configuration UI can be developed in both systems. 

### Requirements and Prerequisites 

 The following requirements and prerequisites should be met so that you can start working with the solution that provides synchronization between Acumatica ERP and Salesforce. 

#### Requirements 

 Acumatica ERP is integrated with Salesforce through the Salesforce API. Thus, you need to make sure that your organization uses one of the following Salesforce editions, in which the API is enabled by default: 

- Enterprise Edition 

- Unlimited Edition 

- Developer Edition 

- Performance Edition For more information about these editions, see _Salesforce editions with API Access_. 

 For details on how to quickly get a free Salesforce instance so that you can explore the solution, see To Quickly Obtain a Salesforce Instance. 

#### Prerequisites 

 Before you start configuring the systems for synchronization, make sure that the following prerequisites are met: 

- You need a Salesforce account with administrator permissions so that you can properly configure your     Salesforce instance. 


<!-- PAGE_BREAK -->
 Setting Up Synchronization with Salesforce | 419 

- You need an administrator role assigned to your Acumatica ERP user account so that you can properly     configure your Acumatica ERP instance. 

- The _Salesforce Integration_ feature should be included in the license that is applied to your Acumatica ERP     instance. 

- You may need a security token, which will be used during your first authorization in Salesforce to obtain     a session token. (For details about how to obtain a security token if you do not have one, see _To Obtain a_     _Salesforce Security Token_ .) 

### Configuration 

 Because Acumatica ERP provides built-in integration scenarios and a data provider that has been configured to work with basic installations of Acumatica ERP and Salesforce, you can quickly configure the integration of these systems. Immediately aer configuration, you can start synchronizing the data between the two products. 

 However, an Acumatica ERP administrator may need to additionally configure the built-in integration scenarios and modify the mapping rules between Salesforce object data fields and Acumatica ERP data fields of Acumatica ERP entities. The synchronization solution uses this map to convert data from the format recognized by one system to the format recognized by the other system. 

 In Salesforce, an administrator should configure authentication and create the custom fields that are required to maintain data synchronization. 

 For details on the configuration process, see Quick Configuration Steps. 

#### Salesforce Sync Data Provider 

 Acumatica ERP uses the Salesforce Sync data provider in the following cases: 

- For real-time synchronization of data between Acumatica ERP and Salesforce. Data related to an entity     listed on the _Salesforce Sync Entities_ (SF205020) form can be synchronized between the systems in real time.     Synchronization of this type does not depend on the **Sync Type** setting of the involved integration scenario. 

- For synchronization of data through integration scenarios. Data related to an entity that is not listed on the     _Salesforce Sync Entities_ (SF205020) form can be synchronized between the systems through an integration     scenario that uses the _Salesforce Sync_ data provider. In the case of synchronization through an integration scenario, a proper type of synchronization should be selected for the integration scenario in the **Sync Type** box on the _Import by Scenario_ (SM206036) or _Export by Scenario_ (SM207036) form; the following options are available: 

- _Full_ (default): Any record for which a matching record has been found in the other system becomes updated     accordingly. Any record without a match is deleted. 

- _Incremental - All Records_ : Any record for which a matching record has been found in the other system     becomes updated accordingly. For a record without a match, a matching record is created. 

- _Incremental - New Only_ : For any record for which no matching record has been found in the other system,     such a matching record is created. 

#### Specific Functions Available for Integration Scenarios 

 The table below provides a list of specific functions that may be used in formulas in an integration scenario that uses the Salesforce Sync data provider. (For more information about functions, see Functions .) 


<!-- PAGE_BREAK -->
 Setting Up Synchronization with Salesforce | 420 

 Scenario Type Function Description 

 GetEntityId() Returns the CD of the record that is being exported. Used as a value for a key field. 

 GetSalesforceId() 

 Returns the ID of the record in Salesforce that corresponds to the specified CD of the record in Acumatica ERP. Throws an exception when nothing is found. 

 Export 

 GetSalesforcePricebookEntryId() 

 Returns the PriceBookEntry value that corresponds to the specified ProductCode and PriceBookID values, which are the identifiers of the matching records in Salesforce. Throws an exception when nothing is found. 

 GetEntityId() Returns the CD of the record that is being imported. Returns 0 if no local entity is found by RemoteID. Used as a value for a key field. 

 Import 

 GetEntityIdBySalesforceId(string SalesforceID) 

 Returns the CD of the record in Acumatica ERP that corresponds to the specified ID of the record in Salesforce. Throws an exception when nothing is found. Specified in key fields during the import of data. 

 Any SplitAddressStreet(string Address, int maxLength, int index) 

 Splits an address line into multiple text lines whose length does not exceed the maxLength value. Index indicates which of these lines should be used in the target record. 

### Supported Data 

#### Bi-Directional Synchronization in Real Time 

 Synchronization between Acumatica ERP and Salesforce gives users the ability to create, modify, or delete the following entities in either of the systems, with the changes reflected in both systems: 

- Leads and contacts 

- Business accounts 

- Opportunities 

- Cases 

- Stock and non-stock inventory items 

- Users 

#### One-Way Synchronization 

 Changes made to inventory items in Acumatica ERP can be synchronized with Salesforce, but this synchronization cannot be performed in the opposite direction. 

 User data can be synchronized also in only one direction, from Salesforce to Acumatica ERP. 


<!-- PAGE_BREAK -->
 Setting Up Synchronization with Salesforce | 421 

#### Additional Considerations 

 In Salesforce, a case record cannot be saved if it has no owner specified. In Acumatica ERP, only a user that is linked to an employee can be assigned to a case as its owner. Thus, before synchronization of case records starts, user records should be synchronized between the systems and then verified for association with employees. For more information about synchronization of cases, see Synchronization of Case Records. 

 For correct synchronization of inventory items and opportunities between the systems, sales prices in Acumatica ERP should be synchronized with product prices in Salesforce. Real-time synchronization is not available for sales prices, but Acumatica ERP supports the export of sales prices through specific export scenarios. For details, see Export of Sales Prices. 

### Data Synchronization Process 

 This topic describes how you can prepare CRM-related data for real-time synchronization between Acumatica ERP and Salesforce and how you can initiate and maintain the synchronization process. 

#### Preparation for Real-Time Data Synchronization 

 If one of the systems, Salesforce or Acumatica ERP, is used in your company as the primary CRM system, the data should be initially synchronized between the systems, which the administrator can do by initiating the synchronization process on the Salesforce Data Resync (SF205035) form with Full Data Resync selected in the Sync to Start box. 

#### Real-Time Synchronization of Data 

 You initiate the bi-directional real-time synchronization process on the Salesforce Sync (SF205030) form. This process monitors data changes in both systems. If any change has been detected, it gets synchronized between the systems. 

 At the end of the synchronization process, each record is assigned a status that indicates whether the data has been synchronized. On the Salesforce Sync State (SF205040) form, you can review the statuses of the processed records and any errors the system generated when processing failed for records. 

 If data synchronization fails for any record, the record is assigned the internal status Modified , which indicates that the record data is out of sync. An administrator or a user with access to the record can analyze the cause of the failure and eliminate it, and then another attempt to synchronize the record data can be made. To resynchronize the out-of-sync records, you can use the Salesforce Data Resync (SF205035) form or the Sync State tabs on the applicable entry forms for the corresponding records. 

 You can stop bi-directional real-time synchronization of data between the systems by clearing the Active check box for the Salesforce Sync data provider on the Data Providers (SM206015) form. 

 To stop real-time synchronization of records of particular types from Salesforce to Acumatica ERP, you need to open the Salesforce Sync (SF205030) form, select unlabeled check boxes for the corresponding types of records, and then click Stop on the form toolbar. If you click Stop All on the form toolbar of that form, records of all listed types will stop being synchronized from Salesforce to Acumatica ERP. 

 To stop real-time synchronization of records of particular types from Acumatica ERP to Salesforce, you need to open the Salesforce Sync Entities (SF205020) form and delete from the table the export scenarios for the needed types of records. 


<!-- PAGE_BREAK -->
 Setting Up Synchronization with Salesforce | 422 

#### Scheduled Jobs for Synchronization 

 In Acumatica ERP, the following recurrent jobs related to the synchronization process can be scheduled to run at any frequency. 

- _Salesforce Sync_ : This job is used for the real-time synchronization of data from Salesforce to Acumatica ERP.     You use the _Salesforce Sync_ (SF205030) form to configure this job.     When this job starts, Acumatica ERP requests that Salesforce notify it about all changes of the data for the     particular type of record (for instance, business account) for which the job has been started. Then the job     starts a background process that monitors the data stream and receives notifications about changes for     the object data in Salesforce. As soon as each notification is received, the job finds the changed record in     the Acumatica ERP database by using the identifier of the corresponding Salesforce record and writes the     changes according to the mapping rules specified in the relevant integration scenario. If no corresponding     record is found in Acumatica ERP, then a new record is created.     We recommend that you schedule an automatic restart of this job in case a network failure occurs or     Acumatica ERP is taken down for maintenance. 

- _Failed & Missed Data Resync_ : This job is used to compensate for possible synchronization failures. You use     the _Salesforce Data Resync_ (SF205035) form to configure this job.     Normally, records are synchronized bi-directionally in real time. Occasionally, however, a record may not be     submitted to a system for various reasons, such as a network connection failure or specific configuration of     validation rules that prevent a record from being saved if validation fails. When this job is started, it selects     records that previously failed to synchronize and tries to resubmit them. If an attempt is unsuccessful, on     the next run of the job, the job selects the record again and makes another attempt to submit the record.     The maximum number of times the system attempts to submit the record is determined by the solution     configuration.     We recommend that you schedule this job to run every five to ten minutes. 

- _Full Data Resync_ : This job is used aer a long system outage or a Salesforce system failure has occurred. It     also can be used for initial data synchronization. You use the _Salesforce Data Resync_ form to configure this     job.     Salesforce keeps notifications about record data changes in the data stream for 24 hours, aer which it     discards them. It is unlikely (although possible) that the two systems would stay disconnected for more than     24 hours. It is also unlikely (although possible) that for some reason, a record modified in Salesforce would     not be pushed to the data stream. When this job is started, it searches in both systems for any record that     has been modified, created, or deleted since the last time the job was run. If any record is found, the job     synchronizes its data.     We recommend that you run this job once a day. 

#### Data Flow 

 The following diagrams provide a simplified illustration of synchronization data flow. 

 When a user modifies, creates, or deletes a record in Salesforce, the system pushes the record into the data stream. Acumatica ERP picks up the record from the data stream and searches for the same record in Acumatica ERP database by using the Salesforce record identifier. If a record is found, the synchronization solution updates the data or deletes the record. If no record is found, the synchronization solution creates a new record. 


<!-- PAGE_BREAK -->
 Setting Up Synchronization with Salesforce | 423 

 Figure: Salesforce to Acumatica ERP data flow 

 When a user modifies or deletes a record in Acumatica ERP, the system uses the API to search for the record in Salesforce by using the Salesforce record identifier. If a record has been found, the synchronization solution updates or deletes it. If a record has been modified in Acumatica ERP but no corresponding record has been found in Salesforce, the synchronization solution creates a new record. When a user creates a record in Acumatica ERP, the synchronization solution creates a record in Salesforce. 

 Figure: Acumatica ERP to Salesforce data flow 

### Synchronization of Case Records 

 In Salesforce, a case record cannot be saved if it has no owner specified. In Acumatica ERP, only a user that is linked to an employee can be assigned to a case as its owner. Thus, the following should be done for the successful synchronization of case records between the systems: 

1. The _Full Data Resync_ operation should be executed on the _Salesforce Data Resync_ (SF205035) form for the     _User_ entity. 

2. The results of the synchronization should be reviewed on the _Salesforce Sync State_ (SF205040) form. 


<!-- PAGE_BREAK -->
 Setting Up Synchronization with Salesforce | 424 

 Only user records that have the Synchronized status and are linked to employees can be used in the subsequent synchronization of case records. 

 During the synchronization process, the usernames of Salesforce users are compared with the email addresses of Acumatica ERP users. If for a particular Salesforce user, no matching email address is found among the email addresses of Acumatica ERP users, no corresponding user is created in Acumatica ERP. However, the built-in import scenario, Import User from Salesforce , can be configured so that a user is created in Acumatica ERP if no matching email address is found. 

 Also, you can create a specific export scenario and export user records from Acumatica ERP to Salesforce by using the Export by Scenario (SM207036) form for full synchronization of user records between the systems. 

### Export of Sales Prices 

 Inventory items and opportunities can be synchronized between Acumatica ERP and Salesforce in real time, but for correct and complete synchronization of the data, sales prices in Acumatica ERP should be separately synchronized with product prices in Salesforce. 

 Real-time synchronization is not available for sales prices. Sales prices can be exported from Acumatica ERP to Salesforce through the Export by Scenario (SM207036) form. Prices may be exported in various currencies, and price classes used in Acumatica ERP may be exported as price books to Salesforce. 

 Before an administrator can start configuring the export of sales prices, integration between the systems should be properly configured (for details, see Configuration ). Then the following steps, each of which is described in detail below, should be completed: 

1. _Synchronization of inventory items_ between Acumatica ERP and Salesforce 

2. _Review and update of the built-in generic inquiry forms_ used for the export of sales prices 

3. _Review and update of the built-in export scenarios_ used for the export of sales prices 

4. _Configuration of custom generic inquiries and export scenarios_ 

5. _Configuration of the support of multiple currencies_ 

6. _Export of sales prices_ 

#### Synchronization of Inventory Items 

 Stock and non-stock inventory items in Acumatica ERP should be synchronized with products in Salesforce. For that purpose, the Full Data Resync job should be run for stock and non-stock inventory items on the Salesforce Data Resync (SF205035) form, and then all conflicts (if any) should be resolved on the Salesforce Sync State (SF205040) form. 

#### Review and Update of the Built-In Generic Inquiry Forms 

 The Default Prices for Export to Salesforce (SF000001) and Base Sales Prices for Export to Salesforce (SF000002) forms, which are hidden generic inquiry forms, are used in Acumatica ERP to support the export of sales prices through the Export Default Prices to Salesforce and Export Base Sales Prices to Salesforce export scenarios. 

 The generic inquiry forms may be additionally configured to match your company's policies regarding sales prices. For information about the limitations on the export of sales prices, see Synchronizing Sales Prices. 


<!-- PAGE_BREAK -->
 Setting Up Synchronization with Salesforce | 425 

#### Review and Update of the Built-In Export Scenarios 

 On the Mapping tab of the Export Scenarios (SM207025) form, the value of the Pricebook2Id field should be updated for the involved export scenarios as follows: 

- The _Pricebook2Id_ of the standard price book should be specified for the _Export Default Prices to Salesforce_     export scenario. 

- The _Pricebook2Id_ of the price book with base prices should be specified for the _Export Base Sales Prices to_     _Salesforce_ export scenario. 

 The standard price book in Salesforce should already be filled with prices. If a product has no price in the standard price book, no sales price can be exported for this product from Acumatica ERP to any price book in Salesforce. 

#### Configuration of the Support of Multiple Currencies 

 The identifiers of currencies used in Acumatica ERP should exactly match the currency codes used in Salesforce. 

 In Acumatica ERP, a currency identifier may be configured on the Companies (CS101500) form for the base currency or on the Currencies (CM202000) form if multiple currencies are supported. 

 In Salesforce, a currency code may be configured in the Active Currencies list at Setup > Administer > Company Profile > Manage Currencies. 

 If your company does not use multiple currencies, default prices always appear in Salesforce in their base currency. 

 If the use of multiple currencies is enabled both systems, an Acumatica ERP administrator should do the following: 

1. On the _Data Providers_ (SM206015) form, select the _Salesforce Sync_ data provider and then, on the **Schema**     tab, select the _PricebookEntry_ source object, click **Fill Schema Fields** , and select the **Key** check box for the     _Pricebook2Id_ , _Product2Id_ , and _CurrencyIsoCode_ fields; for all the other listed fields, this check box should be     cleared. 

2. On the **Mapping** tab of the _Export Scenarios_ (SM207025) form, for the _Export Default Prices to Salesforce_     and _Export Base Sales Prices to Salesforce_ export scenarios, the _Active_ check box should be selected for the     _CurrencyIsoCode_ field. The administrator can specify the base currency in the **Field** column if it differs from     the default value. 

#### Configuration of Custom Generic Inquiries and Export Scenarios 

 To match your company's sales process, you can create custom generic inquiries and integration scenarios. 

 For example, you can do the following to prepare for the export of customer price classes or customer prices: 

1. On the _Generic Inquiry_ (SM208000) form, create a generic inquiry that collects customer price classes or     customer prices. 

2. On the _Export Scenarios_ (SM207025) form, create an export scenario based on the new generic inquiry.     You can copy the mapping data from the _Export Base Sales Prices to Salesforce_ export scenario and specify     the _Pricebook2Id_ that corresponds to customer price classes or customer prices in Salesforce. You can     define different price books by using nested =IIF() formulas. Also, you may need to set up the support of     multiple currencies. 


<!-- PAGE_BREAK -->
 Setting Up Synchronization with Salesforce | 426 

#### Export of Sales Prices 

 Before starting the export of sales prices from Acumatica ERP to Salesforce, an administrator should make sure that the corresponding generic inquiries and export scenarios match the company's sales policies. 

 Then, on the Export by Scenario (SM207036) form, a corresponding export scenario should be executed as many times as needed until all the prices appear in Salesforce. 

 Related Links 

- _Sales Prices: General Information_ 

### Limitations 

 The solution for the synchronization of data between Acumatica ERP and Salesforce has the following limitations: 

- If the **Clone** action is initiated in Salesforce, a duplicate of the _Acumatica_NoteID_ custom property is created,     which may cause the failure of the synchronization process. We recommend that users either avoid using     the **Clone** action or clear the _Acumatica_NoteID_ value for each clone record. 

- If a lead is converted to a contact in Acumatica ERP, the changes are not synchronized with Salesforce. As     a workaround, we recommend that you restrict the ability to convert leads in Acumatica ERP. For instance,     you can do this on the _Access Rights by Screen_ (SM201020) form by restricting access rights to the **Convert**     **to Contact** , **Create Opportunity** , and **Create Business Account** actions, which are available on the _Leads_     (CR301000) form. For information about how you can manage user access rights, see _Managing User Access_. 

- If a lead is converted to a contact in Salesforce, the resynchronization process should be performed on     the _Salesforce Data Resync_ (SF205035) form for the changes to be synchronized with Acumatica ERP. The     changes may be synchronized automatically if a schedule for the _Failed & Missed Data Resync_ process is     activated. As a result, an inactive lead record and an active contact record appear in Acumatica ERP. This     happens because in Salesforce, a lead and the related contact are stored as two separate records, whereas     in Acumatica ERP, a single record having different statuses holds the lead and contact data. 

#### Using Source and Target Restrictions in Integration Scenarios 

 Source and target restrictions may be specified for an integration scenario that uses the Salesforce Sync data provider. However, if these restrictions are modified aer bi-directional synchronization of data between Salesforce and Acumatica ERP has been initiated, the changes will be ignored by the running synchronization process. 

 To make the changes in source and target restrictions effective, you need to do the following: 

1. Restart the bi-directional real-time synchronization process on the _Salesforce Sync_ (SF205030) form. 

2. Clear the LastFullSyncDateTime field in the SFEntitySetup table in the database. 

3. Run the _Full Data Resync_ job on the _Salesforce Data Resync_ form. 

 Source and target restrictions do not apply when a record is deleted in one of the systems. That is, if a record that meets the conditions of the source or target restrictions has been synchronized and the status of the record has changed to Skipped , deletion of the record in the source system will result in deletion of the matching record in the target system. 

#### Synchronizing Sales Prices 

 Synchronization of sales prices between the systems works with the following limitations: 

- Promotional prices cannot be exported to Salesforce because Salesforce does not support this type of price. 


<!-- PAGE_BREAK -->
 Setting Up Synchronization with Salesforce | 427 

- If the _Default Prices for Export to Salesforce (SF000001)_ or _Base Sales Prices for Export to Salesforce (SF000002)_     generic inquiry form includes a row with **Break Qty.** set to a value other than _0_ , this row is not processed     because Salesforce does not support this type of property. 

### Quick Configuration Steps 

 Before you can start synchronizing data between Acumatica ERP and Salesforce, you need to properly configure both systems. In most cases, to set up the integration of Acumatica ERP and Salesforce and to configure data synchronization, you can perform the quick configuration steps described in this chapter. 

#### In This Chapter 

- _Configuration of Salesforce_ 

- _Configuration of Acumatica ERP_ 

### Configuration of Salesforce 

 To configure your Salesforce instance, you need to log in to Salesforce with an administrator account and perform the following steps: 

1. Create a connected app to integrate Acumatica ERP with Salesforce through the Salesforce API. For details,     see _To Create a Connected App in Salesforce_ or _To Create a Connected App in Salesforce Lightning_. 

2. Create custom fields that correspond to the NoteID fields in Acumatica ERP, which are used as keys for     identifying Acumatica ERP entities during synchronization with Acumatica ERP. For details, see _To Create_     _Custom Fields in Salesforce_ or _To Create Custom Fields in Salesforce Lightning_. 

3. Because Acumatica ERP validates the values specified in the **Country** , **State** , and **Postal/Zip Code** boxes on     the _Business Accounts_ (CR303000), _Leads_ (CR301000), and _Contacts_ (CR302000) forms, configure appropriate     validation rules to avoid errors during the real-time synchronization. For details, see _To Configure Validation_     _Rules in Salesforce_ or _To Configure Validation Rules in Salesforce Lightning_. 

### Configuration of Acumatica ERP 

 To configure your Acumatica ERP instance, you need to sign in to Acumatica ERP with an administrator account and do the following: 

1. Enable the _Salesforce Integration_ feature on the _Enable/Disable Features_ (CS100000) form. 

2. On the _Countries/States_ (CS204000) form, disable state and postal code validation for all necessary     countries. For details, see _To Disable State and Postal Code Validation_. Because you have already configured     validation rules in Salesforce (as described in _Configuration of Salesforce_ ), this step is optional. 

3. On the _Data Providers_ (SM206015) form, configure the _Salesforce Sync_ data provider, which is predefined in     the system, and mark it as active. For details, see _To Configure the Salesforce Data Provider_. 

4. On the _Import Scenarios_ (SM206025) and _Export Scenarios_ (SM207025) forms, review and modify (if needed)     the predefined import and export scenarios to be used for the synchronization of data between Acumatica     ERP and Salesforce. (For details, see _To Configure Predefined Integration Scenarios_ .) Alternatively, you can     create new integration scenarios from scratch. 

5. On the _Salesforce Sync Entities_ (SF205020) form, review and modify (if needed) the predefined configuration     of entities to be synchronized. For details, see _To Set Up Data Synchronization in Acumatica ERP_. 


<!-- PAGE_BREAK -->
 Setting Up Synchronization with Salesforce | 428 

6. On the _Salesforce Data Resync_ (SF205035) form, activate the predefined schedule _Failed & Missed Data_     _Resync every 5 minutes_ so that the system repeatedly attempts to resynchronize the data for which     synchronization previously failed. For details, see _To Activate the Predefined Periodic Schedule_. 

7. On the _Salesforce Sync_ (SF205030) form, create an automation schedule to repeatedly initiate real-time     synchronization of data. This will automatically resume the real-time synchronization process on such     occasions as when the server has been restarted due to maintenance issues. For details, see _To Create a_     _Salesforce Sync Schedule_. 

8. On the _Salesforce Data Resync_ form, create an automation schedule to repeatedly initiate the full     resynchronization of data. This will automatically synchronize the data missed by the real-time     synchronization process, which may occur (although rarely) because the remote system discards     notifications about modified records from the data stream aer the retention period of 24 hours expires. For     details, see _To Create a Schedule for Full Data Resync_. 

### To Quickly Obtain a Salesforce Instance 

 If you want to quickly obtain a free Salesforce instance so that you can assess data synchronization between Acumatica ERP and Salesforce, you can do either of the following: 

- Go to _https://developer.salesforce.com/_ and sign up for a free Developer Edition instance. 

- Go to _https://www.salesforce.com/_ and get a free 30-day trial edition. 

### To Obtain a Salesforce Security Token 

 Each time a new user is created in Salesforce, the system sends the user an email with a user security token. If you have lost your security token, you can request a new one by doing the following: 

1. Log in to Salesforce by using the account under which data synchronization will be performed. In most     cases, this is the account you usually use to log in to your Salesforce instance. 

2. Click **My Settings > Personal > Reset My Security Token**. 

3. Click the **Reset Security Token** button. 

 Aer that, you will receive an email with a user security token, which you will need to configure the data provider used for data synchronization. For details, see To Configure the Salesforce Data Provider. 

### To Create a Connected App in Salesforce 

 To create a connected app in Salesforce, which will enable the integration of Acumatica ERP with Salesforce through the Salesforce API, do the following: 

1. In **Setup** mode, select **Build > Create > Apps**. 

2. In the **Apps** section, click **New**. 

3. On the **New Connected App** page, specify the following settings: 

- **Connected App Name** : Acumatica ERP Salesforce Sync 

- **API Name** : Acumatica_ERP_Salesforce_Sync 

- **Contact Email** : The salesforce administrator's email address 

- **Enable OAuth Setting** : Selected 


<!-- PAGE_BREAK -->
 Setting Up Synchronization with Salesforce | 429 

- **Callback URL** : The URL of your Acumatica ERP instance—for example, _[http://app.site.net/](http://app.site.net/)_     _instance_name/_ 

- **Available OAuth Scopes** : _Manage user data via APIs (api)_ —add this option to the **Selected OAuth Scopes**     list 

4. Click **Save** , and then click **Continue**. 

5. On the **Acumatica ERP Salesforce Sync** page, find and copy to the clipboard the following settings, which     you will need when you configure the data provider in Acumatica ERP (see _To Configure the Salesforce Data_     _Provider_ ): 

- **Consumer Key** 

- **Consumer Secret** 

### To Create a Connected App in Salesforce Lightning 

 To create a connected app in Salesforce, which will enable the integration of Acumatica ERP with Salesforce through the Salesforce API, do the following: 

1. In **Setup** mode, select **Apps > App Manager**. 

2. In the **Apps** section, click **New Connected App**. 

3. On the **New Connected App** page, specify the following settings: 

- **Connected App Name** : Acumatica ERP Salesforce Sync 

- **API Name** : Acumatica_ERP_Salesforce_Sync 

- **Contact Email** : The salesforce administrator's email address 

- **Enable OAuth Setting** : Selected 

- **Callback URL** : The URL of your Acumatica ERP instance—for example, _[http://app.site.net/](http://app.site.net/)_     _instance_name/_ 

 Callback URL may not work with a localhost URL. 

- **Available OAuth Scopes** : _Access and manage your data (api)_ —add this option to the **Selected OAuth**     **Scopes** list 

4. Click **Save** , and then click **Continue**. 

5. On the **Acumatica ERP Salesforce Sync** page, find and copy to the clipboard the following settings, which     you will need when you configure the data provider in Acumatica ERP (see _To Configure the Salesforce Data_     _Provider_ ): 

- **Consumer Key** 

- **Consumer Secret** 

### To Create Custom Fields in Salesforce 

 To create in Salesforce the custom fields required for successful data synchronization, do the following: 

1. In **Setup** mode, select **Build > Customize > Leads > Fields**. 

2. In the **Custom Fields & Relationships** area, click **New**. 

3. On the **New Custom Field** page, specify the following settings: 

- **Data Type** : _Text_ 


<!-- PAGE_BREAK -->
 Setting Up Synchronization with Salesforce | 430 

- **Field Label** : Acumatica_NoteID 

- **Length** : 36 

- **Add Field** : Cleared (for all check boxes in the column) 

4. Click **Save**. 

5. Repeat Steps 2 through 4 on the following pages: 

- **Build > Customize > Accounts > Fields** 

- **Build > Customize > Contacts > Fields** 

- **Build > Customize > Opportunities > Fields** 

- **Build > Customize > Cases > Fields** 

- **Build > Customize > Products > Fields** 

### To Create Custom Fields in Salesforce Lightning 

 To create in Salesforce the custom fields required for successful data synchronization, do the following: 

1. In **Setup** mode, select **Objects and Fields > Object Manager > Leads**. 

2. In the **Fields & Relationships** area, click **New**. 

3. On the **New Custom Field** page, specify the following settings: 

- **Data Type** : _Text_ 

- **Field Label** : Acumatica_NoteID 

- **Length** : 36 

- **Add Field** : Cleared (for all check boxes in the column) 

4. Click **Save**. 

5. Repeat Steps 2 through 4 on the following pages: 

- **Objects and Fields > Object Manager > Accounts** 

- **Objects and Fields > Object Manager > Contacts** 

- **Objects and Fields > Object Manager > Opportunities** 

- **Objects and Fields > Object Manager > Cases** 

- **Objects and Fields > Object Manager > Products** 

### To Configure Validation Rules in Salesforce 

 This topic explains how you can configure validation rules for the billing country and state fields. You should use similar expressions to configure the shipping address fields. 

 To configure lead and contact validation rules, you navigate to the appropriate pages and perform the steps described below. 

 For information about other validation formulas that you may find useful, see the Examples of Validation Rules topic in Salesforce Help. 

#### To Configure Validation Rules 

1. In **Setup** mode, select **Build > Customize > Accounts > Validation Rules**. 

2. Click **New**. 


<!-- PAGE_BREAK -->
 Setting Up Synchronization with Salesforce | 431 

3. Specify the following settings: 

- **Rule Name** : Billing_Country_Complete 

- **Active** : Selected 

- **Error Condition Formula** : ISBLANK(BillingCountry) 

- **Error Message** : Country code is required. 

- **Description** : Prevents the saving of an account with no billing country     specified 

- **Error Location** : Preferred location 

4. Click **Save & New**. 

5. Specify the following settings: 

- **Rule Name** : Billing_Country_Code 

- **Active** : Selected 

- **Error Condition Formula** : 

 OR( LEN(BillingCountry) = 1, NOT( CONTAINS( "AF:AX:AL:DZ:AS:AD:AO:AI:AQ:AG:AR:AM:" & "AW:AU:AZ:BS:BH:BD:BB:BY:BE:BZ:BJ:BM:BT:BO:" & "BA:BW:BV:BR:IO:BN:BG:BF:BI:KH:CM:CA:CV:KY:" & "CF:TD:CL:CN:CX:CC:CO:KM:CG:CD:CK:CR:CI:HR:" & "CU:CY:CZ:DK:DJ:DM:DO:EC:EG:SV:GQ:ER:EE:ET:FK:" & "FO:FJ:FI:FR:GF:PF:TF:GA:GM:GE:DE:GH:GI:GR:GL:" & "GD:GP:GU:GT:GG:GN:GW:GY:HT:HM:VA:HN:HK:HU:" & "IS:IN:ID:IR:IQ:IE:IM:IL:IT:JM:JP:JE:JO:KZ:KE:KI:" & "KP:KR:KW:KG:LA:LV:LB:LS:LR:LY:LI:LT:LU:MO:MK:" & "MG:MW:MY:MV:ML:MT:MH:MQ:MR:MU:YT:MX:FM:MD:MC:" & "MC:MN:ME:MS:MA:MZ:MM:MA:NR:NP:NL:AN:NC:NZ:NI:" & "NE:NG:NU:NF:MP:NO:OM:PK:PW:PS:PA:PG:PY:PE:PH:" & "PN:PL:PT:PR:QA:RE:RO:RU:RW:SH:KN:LC:PM:VC:WS:" & "SM:ST:SA:SN:RS:SC:SL:SG:SK:SI:SB:SO:ZA:GS:ES:" & "LK:SD:SR:SJ:SZ:SE:CH:SY:TW:TJ:TZ:TH:TL:TG:TK:" & "TO:TT:TN:TR:TM:TC:TV:UG:UA:AE:GB:US:UM:UY:UZ:" & "VU:VE:VN:VG:VI:WF:EH:YE:ZM:ZW", BillingCountry))) 

- **Error Message** : A valid two-letter country code is required. 

- **Description** : Validates that the billing country code specified for the     account is a valid ISO 3166 two-letter code 

- **Error Location** : Preferred location 

6. Click **Save & New**. 

7. Specify the following settings: 

- **Rule Name** : Billing_State_USA 

- **Active** : Selected 

- **Error Condition Formula** : 

 AND ( OR(BillingCountry = "US", ISBLANK(BillingCountry)), OR( LEN(BillingState) < 2, 


<!-- PAGE_BREAK -->
 Setting Up Synchronization with Salesforce | 432 

 NOT( CONTAINS("AL:AK:AZ:AR:CA:CO:CT:DE:DC:FL:GA:HI:ID:" & "IL:IN:IA:KS:KY:LA:ME:MD:MA:MI:MN:MS:MO:MT:NE:NV:NH:" & "NJ:NM:NY:NC:ND:OH:OK:OR:PA:RI:SC:SD:TN:TX:UT:VT:VA:" & "WA:WV:WI:WY", BillingState)))) 

- **Error Message** : A valid two-letter state code is required. 

- **Description** : Validates that the code of the billing state or province     specified for the account is a valid two-character abbreviation if the     billing country is set to US or blank 

- **Error Location** : Preferred location 

8. Click **Save**. 

### To Configure Validation Rules in Salesforce Lightning 

 This topic explains how you can configure validation rules for the billing country and state fields. You should use similar expressions to configure the shipping address fields. 

 To configure lead and contact validation rules, you navigate to the appropriate pages and perform the steps described below. 

 For information about other validation formulas that you may find useful, see the Examples of Validation Rules topic in Salesforce Help. 

#### To Configure Validation Rules 

1. In **Setup** mode, select **Objects and fields > Object Manager > Accounts > Validation Rules**. 

2. Click **New**. 

3. Specify the following settings: 

- **Rule Name** : Billing_Country_Complete 

- **Active** : Selected 

- **Description** : Prevents the saving of an account with no billing country     specified 

- **Error Condition Formula** : ISBLANK(BillingCountry) 

- **Error Message** : Country code is required. 

- **Error Location** : Preferred location 

4. Click **Save & New**. 

5. Specify the following settings: 

- **Rule Name** : Billing_Country_Code 

- **Active** : Selected 

- **Description** : Validates that the billing country code specified for the     account is a valid ISO 3166 two-letter code 

- **Error Condition Formula** : 

 OR( LEN(BillingCountry) = 1, NOT( 


<!-- PAGE_BREAK -->
 Setting Up Synchronization with Salesforce | 433 

 CONTAINS( "AF:AX:AL:DZ:AS:AD:AO:AI:AQ:AG:AR:AM:" & "AW:AU:AZ:BS:BH:BD:BB:BY:BE:BZ:BJ:BM:BT:BO:" & "BA:BW:BV:BR:IO:BN:BG:BF:BI:KH:CM:CA:CV:KY:" & "CF:TD:CL:CN:CX:CC:CO:KM:CG:CD:CK:CR:CI:HR:" & "CU:CY:CZ:DK:DJ:DM:DO:EC:EG:SV:GQ:ER:EE:ET:FK:" & "FO:FJ:FI:FR:GF:PF:TF:GA:GM:GE:DE:GH:GI:GR:GL:" & "GD:GP:GU:GT:GG:GN:GW:GY:HT:HM:VA:HN:HK:HU:" & "IS:IN:ID:IR:IQ:IE:IM:IL:IT:JM:JP:JE:JO:KZ:KE:KI:" & "KP:KR:KW:KG:LA:LV:LB:LS:LR:LY:LI:LT:LU:MO:MK:" & "MG:MW:MY:MV:ML:MT:MH:MQ:MR:MU:YT:MX:FM:MD:MC:" & "MC:MN:ME:MS:MA:MZ:MM:MA:NR:NP:NL:AN:NC:NZ:NI:" & "NE:NG:NU:NF:MP:NO:OM:PK:PW:PS:PA:PG:PY:PE:PH:" & "PN:PL:PT:PR:QA:RE:RO:RU:RW:SH:KN:LC:PM:VC:WS:" & "SM:ST:SA:SN:RS:SC:SL:SG:SK:SI:SB:SO:ZA:GS:ES:" & "LK:SD:SR:SJ:SZ:SE:CH:SY:TW:TJ:TZ:TH:TL:TG:TK:" & "TO:TT:TN:TR:TM:TC:TV:UG:UA:AE:GB:US:UM:UY:UZ:" & "VU:VE:VN:VG:VI:WF:EH:YE:ZM:ZW", BillingCountry))) 

- **Error Message** : A valid two-letter country code is required. 

- **Error Location** : Preferred location 

6. Click **Save & New**. 

7. Specify the following settings: 

- **Rule Name** : Billing_State_USA 

- **Active** : Selected 

- **Description** : Validates that the code of the billing state or province     specified for the account is a valid two-character abbreviation if the     billing country is set to US or blank 

- **Error Condition Formula** : 

 AND ( OR(BillingCountry = "US", ISBLANK(BillingCountry)), OR( LEN(BillingState) < 2, NOT( CONTAINS("AL:AK:AZ:AR:CA:CO:CT:DE:DC:FL:GA:HI:ID:" & "IL:IN:IA:KS:KY:LA:ME:MD:MA:MI:MN:MS:MO:MT:NE:NV:NH:" & "NJ:NM:NY:NC:ND:OH:OK:OR:PA:RI:SC:SD:TN:TX:UT:VT:VA:" & "WA:WV:WI:WY", BillingState)))) 

- **Error Message** : A valid two-letter state code is required. 

- **Error Location** : Preferred location 

8. Click **Save**. 


<!-- PAGE_BREAK -->
 Setting Up Synchronization with Salesforce | 434 

### To Disable State and Postal Code Validation 

 To avoid errors during data synchronization between Salesforce and Acumatica ERP, you may need to disable state and postal code validation in Acumatica ERP, which you do as follows: 

1. Open the _Countries/States_ (CS204000) form, and select a country. 

2. In the **Input Validation** section, in the **State Validation Mode** box, select _No Validation_. 

3. Leave the **Input Mask** and **Postal Code Validation Regexp** boxes empty. 

4. Repeat Steps 1 through 3 for each needed country. 

### To Configure the Salesforce Data Provider 

 To configure the Salesforce Sync data provider, which is predefined in the system, perform the following steps on the Data Providers (SM206015) form: 

1. In the **Name** box, select _Salesforce Sync_. 

2. Select the **Active** check box. 

3. On the **Parameters** tab, specify the following settings: 

- **TokenRequestUrl** : https://login.salesforce.com/services/oauth2/token (or     https://test.salesforce.com/services/oauth2/token for Salesforce Sandbox) 

 If you click Reload Parameters on the table toolbar, the system inserts https:// test.salesforce.com/services/oauth2/token in the TokenRequestUrl box by default. 

- **ConsumerKey** : The consumer key previously copied from Salesforce (see _To Create a Connected App in_     _Salesforce_ ) 

- **ConsumerSecret** : The consumer secret previously copied from Salesforce (see _To Create a Connected_     _App in Salesforce_ ) 

- **Login** : The login of the Salesforce user account under which data will be synchronized 

- **Password** : The password of the Salesforce user account under which data will be synchronized 

- **SecurityToken** : The security token obtained for the Salesforce user account under which data will be     synchronized (see _To Obtain a Salesforce Security Token_ ) 

- **SyncID** : Acumatica_NoteID__c, which is a required field for successful data synchronization (see _To_     _Create Custom Fields in Salesforce_ ) 

- **MaxLongOperations** : The maximum number of event processing threads that can be executed     concurrently during real-time synchronization of data. 

4. Click **Save**. 

### To Configure Predefined Integration Scenarios 

 When configuring data synchronization between Acumatica ERP and Salesforce, you may need to review the following integration scenarios: 


<!-- PAGE_BREAK -->
 Setting Up Synchronization with Salesforce | 435 

- _Import Business Account from Salesforce_ , _Import Case from Salesforce_ , _Import Contact from Salesforce_ , _Import_     _Lead from Salesforce_ , _Import Opportunity from Salesforce_ , and _Import User from Salesforce_ on the _Import_     _Scenarios_ (SM206025) form 

- _Export Base Sales Prices to Salesforce_ , _Export Business Account to Salesforce_ , _Export Case to Salesforce_ , _Export_     _Contact to Salesforce_ , _Export Default Prices to Salesforce_ , _Export Lead to Salesforce_ , _Export Non-Stock Item_     _to Salesforce_ , _Export Opportunity to Salesforce_ , and _Export Stock Item to Salesforce_ on the _Export Scenarios_     (SM207025) form 

 If you try using one of the listed above integration scenarios to import (or export) an entity whose synchronization settings are specified on the Salesforce Sync Entities (SF205020) form, the system will import (or export) zero records. 

 In the integration scenarios that you are going to use, verify the mapping in the following cases: 

- Your company uses custom values, such as statuses or stages. 

- You need to synchronize custom fields, particular class IDs, or attributes. You may also need to make sure     that you have specified default values for all required attributes. 

- You want to apply auto-numbering to imported records.     For instance, in the _Import Business Account from Salesforce_ scenario, you may need to replace the value in     the **Source Field/Value** column for the _Business Account_ field with the following string: 

 =IsNull(AccountNumber, BAccount.AcctCD) 

 For more information on scenario mapping, see Configuring Scenario Mapping. 

### To Set Up Data Synchronization in Acumatica ERP 

 On the Salesforce Sync Entities (SF205020) form, review the predefined list of entities available for synchronization with Salesforce. If needed (for instance, if you have created new integration scenarios that you want to be used for data synchronization instead of the built-in scenarios), modify the settings specified for a particular entity by doing the following: 

1. In the **Import Scenario** and **Export Scenario** columns, select the needed integration scenarios. 

2. In the **Number of Attempts** box, specify the maximum number of synchronization attempts the system     should perform during automatic synchronization. 

3. Click **Save** on the form toolbar. 

### To Activate the Predefined Periodic Schedule 

 To activate the periodic schedule that runs the Failed & Missed Data Resync process every five minutes, do the following: 

1. On the _Salesforce Data Resync_ (SF205035) form, click **Schedules > View**.     The _Automation Schedules_ (SM205020) form opens in a pop-up pane with the details of the _Failed & Missed_     _Data Resync every 5 minutes_ schedule filled in. 

2. In the Summary area, select the **Active** check box. 

3. On the form toolbar, click **Save & Close**. 


<!-- PAGE_BREAK -->
 Setting Up Synchronization with Salesforce | 436 

### To Create a Salesforce Sync Schedule 

 To create a schedule that periodically initiates the real-time synchronization of data between Acumatica ERP and Salesforce, do the following: 

1. On the _Salesforce Sync_ (SF205030) form, click **Schedules > Add**.     The _Automation Schedules_ (SM205020) form opens in a pop-up pane. 

2. In the Summary area, specify the following settings: 

- **Description** : A schedule description (for instance, Salesforce Sync every 5 minutes) 

- **Active** : Selected 

3. On the **Details** tab, specify the following settings: 

- **No Execution Limit** : Selected 

- **No Expiration Date** : Selected 

4. On the **Schedule** tab, do the following: 

- In the **Schedule Type** section, select **Daily**. 

- In the **Schedule Details** section, in the **Next Execution Date** box, select the current date, which is     specified by default. 

- Select **Every** 1 **Day(s)**. 

- In the **Execution Time** section, in the **Every** box, type 00:05. 

5. On the form toolbar, click **Save & Close**. 

### To Create a Schedule for Full Data Resync 

 To create a periodic schedule that initiates the full resynchronization of data between Acumatica ERP and Salesforce, do the following: 

1. On the form toolbar of the _Salesforce Data Resync_ (SF205035) form, click **Schedules > Add**.     The _Automation Schedules_ (SM205020) form opens in a pop-up pane. 

2. In the Summary area, specify the following settings: 

- **Description** : The schedule description (for instance, Daily Full Data Resync) 

- **Active** : Selected 

3. On the **Details** tab, specify the following settings: 

- **No Execution Limit** : Selected 

- **No Expiration Date** : Selected 

4. On the **Schedule** tab, do the following: 

- In the **Schedule Type** section, select **Daily**. 

- In the **Schedule Details** section, in the **Next Execution Date** box, select the current date, which is     specified by default. 

- Select **Every** 1 **Day(s)**. 

5. On the **Filter Values** tab, add a row with the following settings specified: 

- **Field Name** : _Sync to Start_ 

- **Value** : _Full Data Resync_ 

- **Ignore Error** : Selected 


<!-- PAGE_BREAK -->
 Setting Up Synchronization with Salesforce | 437 

6. On the form toolbar, click **Save & Close**. 


<!-- PAGE_BREAK -->
 Appendix | 438 

## Appendix 

 The appendix provides some reference information relevant for this document. The additional information in this section is a useful source for readers who need some reference material that is related to system forms and tables, as well as running reports. 

 In this section: 

- _Reports_ 

- _Form Toolbar and More Menu_ 

- _Table Toolbar_ 

- _Glossary_ 

### Reports 

 In addition to offering a comprehensive collection of reports, Acumatica ERP gives you a high degree of control over each report. 

 On a typical report form, described in Report Form , you can adjust the report settings to meet your specific informational needs. You can specify sorting and filtering options and select the data by using report-specific settings—such as financial period, ledger, and account—and configure additional processing settings for each report. The settings can be saved as a report template for later use. For details, see To Run a Report and To Create a Report Template. 

 Aer you run a report, the prepared report appears on your screen. You can print the report, export the report to a file, or send the report by email. 

 This chapter describes a typical report form and the main tasks related to using reports. 

#### In This Chapter 

- _Report Form_ 

- _To Run a Report_ 

- _To Modify a Filter on a Report Form_ 

- _To Create a Report Template_ 

### Report Form 

 Before you run a report, you specify the needed parameters on the report form. You can select a template and manually make selections that affect the information collected. Also, you can specify appropriate settings to print or email the finished report. 

 The following screenshot shows a typical report form, which has the following elements: 

1. Report form toolbar and More menu (see Item 1) 

2. Details area (Item 2) 


<!-- PAGE_BREAK -->
 Appendix | 439 

 Figure: Report form 

 Switching reports to the Modern UI will be available in a future release. 

#### Report Form Toolbar and More Menu 

 The following table lists the elements of the report form toolbar and the commands of the More menu. 

 Element Description 

 Cancel Clears any changes you have made on the report form and restores the default settings. 

 Delete Template Removes the selected template. 

 This command is available only if a template is selected in the Template box. 

 Edit Report For a report created in the Acumatica Report Designer, downloads the RPS file with the report. 

 For an ARM report, opens the Report Definitions (CS206000) form, where you can modify the report. 

 Edit Template Opens the Edit Template dialog box, in which you can change the template name and settings. 

 This command is available if a template is selected in the Template box. 

 Run Report Initiates data collection for the report and displays the generated report. 

 Save Template Saves changes to the currently selected template. If you do not select any template, the system saves the currently selected report as a template with the settings that you specify in the Save Template dialog box. 

 Save Template As 

 Saves a copy of the selected template with the settings that you specify in the Save Template dialog box. If you do not select any template, the system creates a template with the specified settings. 


<!-- PAGE_BREAK -->
 Appendix | 440 

 Element Description 

 Template The template to be used for the report. If any templates have been created and saved, you can select a template to use its settings for the report. 

 To quickly find a template, start typing its name in the Search box. If no template is selected, the lookup box remains empty. After you select a template, its name appears in this box, which becomes highlighted in blue. To run a report without using a template, you select None in this box. 

 You can mark frequently used templates as favorites. The system lists these templates at the top of the list. 

**_Table: The Save Template Dialog Box_** 

In this dialog box, you specify the name of the template and mark it as default, shared, or both. 

 Element Description 

 Template The name of the template. 

 Default A check box that you select to mark the template as the default one for you. 

 Shared A check box that you select to indicate that the template is shared with other users. 

 Shared templates are marked with the Group icon to help you identify them quickly. 

 Shared templates are also available for selection in the Report Parameters box on the Attached Reports tab of the Email Templates (SM204003) form. 

 The dialog box has the following buttons. 

 Save Saves the changes and closes the dialog box. 

 Cancel Closes the dialog box without saving the changes. 

**_Table: The Edit Template Dialog Box_** 

In this dialog box, you edit the name of the template and mark it as default, shared, or both. 

 Element Description 

 Template The name of the template. 

 Default A check box that you select to mark the template as the default one for you. 

 Shared A check box that you select to indicate that the template is shared with other users. 

 Shared templates are marked with the Group icon to help you identify them quickly. 

 The dialog box has the following buttons. 

 Save Saves the changes and closes the dialog box. 

 Cancel Closes the dialog box without saving the changes. 


<!-- PAGE_BREAK -->
 Appendix | 441 

#### Report Toolbar 

 The following table lists the buttons of the report toolbar, which is shown on the generated report that you have run. 

 Buttons Icon Description 

 Parameters Navigates back to the report form to let you change the report parameters. 

 Refresh Refreshes the information displayed in the report (if any data changes were made). 

 Groups Adds to the report a le pane where the report structure is shown. Click a report node to highlight the pertinent data in the right pane. 

 View PDF / View HTML 

##### / 

 Displays the report as a PDF, or displays the report in HTML format. The available button depends on the current report view; if you're viewing a PDF, for instance, you will see the View HTML button. 

 First Displays the first page of the report. 

 Previous Displays the previous page. 

 Next Displays the next page. 

 Last Displays the last page of the report. 

 Print Opens the browser dialog box so you can print the report. 

 Send Opens the Email Activity dialog box, which you use to send the report file (in the selected format) to the specified email address. 

 Export Enables you to export the data in the selected format (Excel or PDF). 

#### Parameters Tab 

 This tab has sections where you can specify the contents of the report depending on the current report and vary in the following regards: 


<!-- PAGE_BREAK -->
 Appendix | 442 

- Which elements are available on a particular report 

- Whether elements contain default values 

- Whether specific elements require values to be selected 

- Whether elements may be le blank to let you display a broader range of data 

#### Sorting & Filtering Tab 

 This tab contains the following sections with additional sorting and filtering conditions: 

- **Sorting** : Defines the sorting order. You can add a line, select one of the report-specific properties, and select     the _Descending_ or _Ascending_ sort order for the column. 

- **Filtering** : Defines the report filter. You click **Add** , select one of the report-specific fields, and define a     condition and its value. The list of conditions include one-operand and two-operand conditions. For more     information on creating filters, see _Managing Advanced Filters_. For detailed procedures on using ad hoc     filters, see _Modern UI: Filters_ and _Reports: Process Activity_. 

#### Mailing & Printing Tab 

 If you plan to print the report or save the report as a PDF, select the appropriate settings in the Printing section. 

 Table: Printing Section 

 Element Description 

 Archived Records The indication of how the system should treat archived records when printing the report. The following options are available: Hide , Print , Only. 

 Deleted Records The visibility of the data deleted from the database. The following options are available: Hide , Print , Only. 

 Print All Pages A check box that you select to causes the system to print all pages of the report. 

 Print in PDF Format A check box that you select to display the report in PDF format. 

 Compress PDF File A check box that you select to indicate that the system should generate a compressed PDF. 

 Embed Fonts in PDF File A check box that you select to indicate that the system should generate the PDF with fonts embedded. 

 If you plan to send the report as an email, in the Mailing section, specify the format in which the report will be sent, as well as the email subject, the recipients of copies of the report, and the email account of the recipient. 

 When you add recipients, the system checks the format of the email addresses entered in the To , Cc , and Bcc boxes. If an address’s format is incorrect, its box is highlighted in red so that you can quickly identify and correct the issue. 


<!-- PAGE_BREAK -->
 Appendix | 443 

 Table: Mailing Section 

 Element Description 

 Format The format ( HTML , PDF , or Excel ) in which the report will be emailed. 

 Merge function for reports in Excel format is not supported. If you want to merge a report with other reports and send an aggregated report by email, you should select either the HTML or PDF format for the report. 

 To The email address of the recipient. 

 CC An additional addressee to receive a carbon copy (CC) of the email. 

 BCC The email address of a person to receive a blind carbon copy (BCC) of the email; an address entered in this box will be hidden from other recipients. 

 Subject The subject of the email. 

 Table: Regional Section This section appears only when multiple locales are active in the system. 

 Element Description 

 Locale A locale that you select to indicate to the system that the report should be prepared with the data translated to the language associated with this locale. This box is displayed if there are multiple active locales in the system. For details, see Locales and Languages. 

 Localization The localization that is used for the report. 

 This box appears on the form if the following conditions are met: 

- The _Canadian Localization_ or _UK Localization_ feature is enabled on the _Enable/Disable_     _Features_ (CS100000) form. 

- A localized version of the report exists in the system. One of the following options can be selected in the box: 

- _None_ (default): Even though the report has a localized version, the report will be printed     without any localization applied. 

- _Canada_ : The Canadian version of the report will be printed. If the company in which you     are signed in has _Canada_ selected in the **Localization** box on the **Company Details** tab     ( **Configuration Settings** section) on the _Companies_ (CS101500) form, this setting is se-     lected by default in the current box. 

 To determine if a localized version of a report exists, the system checks the Site\ReportsDefault directory, the database, the ReportsCustomized folder, and the ReportsDefault folder. 

#### Versions Tab 

 If the report has multiple versions, you can select one of them. 

 This tab displays the data only to users assigned with report designer user role. 


<!-- PAGE_BREAK -->
 Appendix | 444 

 Report versions are designed in the Report Designer. To activate editing report versions, give the user report designer role. 

 The table toolbar includes standard buttons and buttons that are specific to this table. For the list of standard buttons, see Table Toolbar. The table-specific buttons are listed below. 

 Table: Table Toolbar 

 Button Description 

 Edit Version Downloads the RPS file with the report version. 

 Deactivate Deactivates the report version. This button appears if a report version is active. 

 If the version is inactive, the button changes to Activate. 

 Table: Table Columns 

 Column Description 

 Version The version number. 

 Description Th description of the version. 

 Created The date when the version was created. 

 Active Read-only, A check box that indicates (if selected) that the version is active. 

#### Email Notifications Tab 

 This tab lists the email templates that can be used to send email notifications that include the report. 

 Table: Table Toolbar The table toolbar includes standard buttons and buttons that are specific to this table. For the list of standard buttons, see Table Toolbar. The table-specific buttons are listed below. 

 Button Description 

 Schedule Report Opens the Email Templates (SM204003) form, where you can select or create a new email template that can be used to send the report and specify a schedule for notifications. 

 The button appears only if the user account to which you are signed in has at least the Insert level of access rights to the Email Templates (SM204003) form. 

 Table: Table Columns 

 Column Description 

 Email Template The email template to be used to generate the body of the email notification. 

 Screen ID The identifier of the form whose elements are used as the source of specific placeholders for this template. 

 Recipients The email addresses of the people to receive the email. Use semicolons as separators between addresses. 


<!-- PAGE_BREAK -->
 Appendix | 445 

 Column Description 

 Report Template The template configured for the report. 

 Report Template Owner 

 The name of the user who created the template. 

 Related Links 

- _To Run a Report_ 

- _To Create a Report Template_ 

- _Types of Filters_ 

- _Automation Schedule Statuses_ 

### Report 

 Once you click Run Report , the prepared report appears on your screen. You can print the report, export the report to a file, or send the report by email. 

 The prepared report is displayed in the report view of the report form. For more information about setting up the report parameters and the parameters view of the report form, see Report Form. 

#### Report Toolbar 

 The following table lists report toolbar buttons. 

 Buttons Icon Description 

 Parameters Navigates back to the report form to let you change the report parameters. 

 Refresh Refreshes the information displayed in the report (if any data changes were made). 

 Groups Adds to the report a le pane where the report structure is shown. Click a report node to highlight the pertinent data in the right pane. 

 View PDF / View HTML 

 / 

 Displays the report as a PDF, or displays the report in HTML format. The available button depends on the current report view; if you're viewing a PDF, for instance, you will see the View HTML button. 

 First Displays the first page of the report. 

 Previous Displays the previous page. 


<!-- PAGE_BREAK -->
 Appendix | 446 

 Buttons Icon Description 

 Next Displays the next page. 

 Last Displays the last page of the report. 

 Print Opens the browser dialog box so you can print the report. 

 Send Opens the Email Activity dialog box, which you use to send the report file (in the chosen format) to the specified email address. 

 Export Enables you to export the data in the chosen format (Excel or PDF). 

 Related Links 

- _Filters_ 

- _Report_ 

### Form Toolbar and More Menu 

 The form toolbar, which is available on most forms, is located near the top of the form, under the form name (and record title, if the form has one), as shown in the following screenshot. 

 The form toolbar includes the following: 

- Standard buttons (see Item 1 in the following screenshot), with the particular set of buttons depending on     the specific form 

- On some forms, form-specific buttons (Item 2) 

- On some form, the More button (Item 3); clicking this button opens the More menu (Item 4), which contains     additional form-specific commands 

 Figure: The form toolbar and the More menu 


<!-- PAGE_BREAK -->
 Appendix | 447 

 You use the standard buttons on the form toolbar to navigate through entities that were created by using the current form, insert or delete an entity, use the clipboard, save the data you have entered, or cancel your work on the form. 

 A form toolbar on a particular form may include form-specific buttons in addition to standard buttons; it may also (or instead) include commands on the More menu. By using these form-specific buttons and commands, users can navigate to related records and forms, initiate specific actions, and perform modifications or processing related to the functionality of the form. 

#### Standard Form Toolbar Buttons 

 The following table lists the standard buttons of the form toolbar. A form toolbar may include some or all of these buttons. 

 Table: Standard Form Toolbar Buttons 

 Button Icon Description 

 Discard Changes and Close 

 Discards any unsaved changes made to the entity, and navigates to the list of records that is related to the current form. 

 If the system opened the current form in a pop-up window (from a different form), this button is not displayed. To return to the original form, click Close. 

 Save & Close Saves the changes made to the entity, and navigates to the list of records that is related to the current form. 

 Save Saves the changes made to the entity. 

 Cancel Depending on the context, does one of the following: 

- Discards any unsaved changes you have made to entities and retrieves the     last saved version. 

- Clears all changes and restores the default settings. 

 Add New Record Clears any values you've specified on the form, restores any default values, and initiates the creation of a new entity. 

 Delete Deletes the currently selected entity, clears any values you have specified on the form, and populates elements with the default values that the system inserts when a new entity is created. 

 You can delete an entity only if it is not linked with another entity. 


<!-- PAGE_BREAK -->
 Appendix | 448 

 Button Icon Description 

 Archive Archives the document that is opened on the form. This button is available if archival is set up on the Archival Policy (SM200400) form for the type of the document open on the form and if the document meets the archival criteria—that is, if the document is older than the retention period specified on the Archival Policy form and has been processed to completion or canceled. 

 For more information on archiving the documents, see Archiving Old Documents in the Acumatica ERP System Administration guide. 

 Extract Extracts the archived document from the archive and makes the system use this document in day-to-day operations. This button is available if archival is set up on the Archival Policy (SM200400) form for the type of the document opened on the form is archived. 

 For more information on archiving the documents, see Archiving Old Documents in the Acumatica ERP System Administration guide. 

 Clipboard Provides menu commands you can use to do the following: 

- **Copy** : Copy the selected entity to the clipboard. 

- **Paste** : Paste an entity or template from the clipboard. 

- **Save as Template** : Create a template based on the selected entity. 

- **Import from XML** : Import an entity or a template from an .xml file. 

- **Export to XML** : Export the selected entity to an .xml file. For more information on templates and copy-and-paste operations in Acumatica ERP, see _Using Forms_. For more information on importing and ex- porting .xml files, see _Importing and Exporting Data to Excel and XML_ in the Acumatica ERP User Guide. 

 Go to First Record Displays the first entity (in the list of entities of the specific type) and its details. 

 Go to Previous Record 

 Displays the previous entity and its details. 

 Go to Next Record Displays the next entity and its details. 

 Go to Last Record Displays the last entity (in the list of entities of the specific type) and its details. 

 View Schedule Gives you the ability to schedule the processing. For more information, see Automated Processing: General Information. 

#### Inquiry Form Toolbar Buttons 

 Acumatica ERP inquiry forms present data in a tabular format; they may also have selection criteria you can use to filter the data in the table. Predefined inquiry forms are provided as part of Acumatica ERP out of the box, and 


<!-- PAGE_BREAK -->
 Appendix | 449 

 inquiry forms can be designed by a user with the appropriate access rights by using the Generic Inquiry tool (for details, see Managing Generic Inquiries in the Acumatica ERP Reporting Tools Guide). A form toolbar of an inquiry form contains both the standard form toolbar buttons (described in the table above) and the additional buttons described below. 

 Button Icon Description 

 Refresh Refreshes the inquiry data in the table. 

 Cancel Clears all changes (including selection criteria that has been specified, if the generic inquiry form has this criteria) and restores the default settings. 

 Add New Record Initiates the creation of a new entity. 

 Edit Opens the applicable data entry form with the selected record. 

 Fit to Screen Expands the form to fit on the screen and adjusts the column widths proportionally. 

 Export to Excel Exports the data to an Excel file. For more information, see Integration with Excel in the Acumatica ERP Getting Started Guide. 

#### The More Menu and Form-Specific Buttons 

 If there are multiple form-specific commands on the form toolbar, they are displayed on a single menu—the More menu—and listed under descriptive categories, which makes it easier to find the needed menu command. On the More menu, you can easily define your favorite menu commands, which eases access to them. 

 On some forms, the system places a button (which is highlighted in green) on the form toolbar for the expected next command, which represents the likely next step to be performed on the selected record. The following screenshot, which shows the Cash Transactions (CA304000) form, illustrates an example of the form toolbar and the More menu, which contains categories and menu commands. 


<!-- PAGE_BREAK -->
 Appendix | 450 

 Figure: The form toolbar of the Transactions form 

 The numbered items in the screenshot indicate the following: 

1. A highlighted button for the expected next command, which represents the next logical step to be     performed on the record selected on the form 

2. Another button for a command that is commonly performed on the form 

3. The More button, which you click to open the More menu 

4. The More menu with most form-specific menu commands and descriptive categories on it 

5. The star icon, which is used to mark the individual user's favorite commands on the form 

6. An unavailable command 

#### Favorite Commands 

 Based on your role in the company and your job duties, you may use some commands more oen than others. On the form toolbar, you can specify these commands as favorites. This will cause the system to duplicate the commands as form toolbar buttons, easing access to them. 

 To add a command to the form toolbar as a button, you open the More menu, hover over the needed command, and click the star icon when it appears. The yellow color of the star indicates that the command has been added to your favorites, and a button for the command appears on the form toolbar immediately. The following example shows two commands that have been added to the user's favorites on the Invoices and Memos (AR301000) form and thus added as buttons on the form toolbar. 


<!-- PAGE_BREAK -->
 Appendix | 451 

 Figure: Favorite commands on the More menu and the corresponding toolbar buttons 

 Favorites are individual to each user account, specific to a particular form, and preserved across user sessions. 

#### Highlighted Buttons and Commands 

 On some forms, the system applies predefined logic to commands for specific records. Based on this logic, the system may place a button on the form toolbar, highlight it using some color, or do both of these things. 

 If a command is the expected next command (that is, the command that is most likely to be clicked for a record with the current status), it is shown both on the form toolbar and on the More menu. The primary command on the form toolbar is highlighted in green (see Item 1 in the following screenshot), and on the More menu, it is marked with a green dot (Item 2). Below is an example of a cash transaction on the Cash Transactions (CA304000) form that has the On Hold status (Item 3). Before you can process it, you need to remove it from hold. Because Remove Hold is the next logical command, it is displayed as a button on the form toolbar and highlighted in green. 

 Figure: The highlighted command and the corresponding status 


<!-- PAGE_BREAK -->
 Appendix | 452 

#### Unavailable Commands on the More Menu 

 By default, on the More menu, the system displays all commands that could be available for the form, based on the system configuration. Some of these commands may be unavailable (that is, they are listed but cannot be clicked). These are the commands that are not applicable to the record based on its current status or other factors. 

#### The Responsive Form Toolbar and More Menu 

 The form toolbar and the More menu have a responsive layout, meaning that they dynamically adjust to different screen sizes. When there is enough space, buttons for highlighted and favorite commands are displayed on the form toolbar. When the screen size decreases, the system moves the commands off the form toolbar one by one but keeps them on the More menu. 

 If there are multiple categories on the More menu, the categories and menu commands can be displayed in multiple columns on the More menu, depending on the screen size and the number of categories. When the screen size decreases, the system moves some categories and menu commands to the le to decrease the number of columns, and in the screens of the smallest size, all categories are displayed in one column. Below are two examples of the same menu in different screen sizes for a record on the Bills and Adjustments (AP301000) form. 

 Figure: The form toolbar and More menu on a wide screen 


<!-- PAGE_BREAK -->
 Appendix | 453 

 Figure: The form toolbar and More menu on a narrow screen 

 Related Links 

- _Integration with Excel_ 

- _To Copy a Document Contents to a New Document_ 

- _To Create a Document with a Template_ 

### Table Toolbar 

 Each table on an Acumatica ERP form, tab, dialog box, or page has a table toolbar, which contains the buttons you can use to work with the details or objects of the table. A toolbar, shown in the following screenshot, includes buttons that are specific to the table, standard buttons that most table toolbars have, and the Search box (for some tables; for others, the Search box is displayed in the filtering area). 


<!-- PAGE_BREAK -->
 Appendix | 454 

 Figure: Table toolbar 

#### Standard Table Toolbar Buttons 

 The following table describes the standard table toolbar buttons. A table toolbar may include some or all of those buttons. If a table toolbar includes table-specific buttons, they are described in the reference help topic. 

 Button Icon Description 

 Refresh Refreshes the data in the table. 

 Switch Between Grid and Form 

 Controls how the elements are displayed: in a table (grid) with rows and columns; or as separately arranged elements for one table row, with navigation tools you use to move between row data. 

 Add Row Appends a new row to the table so you can define a new detail or object. The new row may contain some default values. 

 Delete Row Deletes the selected row or rows. 

 Move Row Up Moves the selected row one position up. 

 Move Row Down Moves the selected row one position down. 

 Fit to Screen Adjusts the table to the screen width and makes the column width proportional. 


<!-- PAGE_BREAK -->
 Appendix | 455 

 Button Icon Description 

 Export to Excel Exports the data in the table to an Excel file. For more information, see Integration with Excel in the Acumatica ERP Getting Started Guide. 

 Filter Settings Opens the Filter Settings dialog box, which you can use to define a new advanced filter. After you create and save the filter, the corresponding tab appears on the table. 

 For more information about filtering, see Filters. For details on the Filter Settings dialog box, see Filter Settings Dialog Box. 

 Load Records from File 

 Opens the File Upload dialog box, described in detail below, so you can locate and upload a local file for import. You can use this option to import data from an Excel spreadsheet (.xlsx) or .csv file. For the detailed procedure, see To Import Data from a Local File to a Table. 

 Search A box in which you can type a word, part of a word, or multiple words. As you type, the system filters the contents of the table to display only rows that contain the string you have typed in any column. 

 Download Downloads the selected file. 

#### File Upload Dialog Box 

 With the File Upload dialog box, you select a file of one of the supported formats (.csv or .xlsx) to import data from the file. 

 Element Description 

 File Path The path to the file you want to upload. 

 To select the file, click Browse , and then find and select the file you want to upload. 

 The dialog box has the following button. 

 Upload Closes the dialog box and opens the Common Settings dialog box, where you specify the import settings. 

#### Common Settings Dialog Box 

 In the Common Settings dialog box, which opens if you click Upload in the File Upload dialog box, you specify the import settings for a file that you has selected in the File Upload dialog box. 


<!-- PAGE_BREAK -->
 Appendix | 456 

 Element Description 

 Separator Chars The character that is used as the separator in the imported file. 

 By default, the comma is used as the separator. You specify the separator character if the imported file uses any other separator. 

 This box appears only if you import data from a .csv file. 

 Null Value Optional. The value that is used to mark an empty column in the imported file. You specify the null value if the value in the imported file differs from the empty string. 

 Encoding The encoding that is used in the imported file. 

 This box appears only if you import data from a .csv file. 

 Culture The regional format that has been used to display the time, currency, and other measurements in the imported file. 

 Mode The mode that determines which rows of the uploaded file will be imported into the table. The following options are available: 

- _Update Existing_ : The rows already present in the table will be updated, and the rows     not present in the table will be added. 

- _Bypass Existing_ : Only the new rows that are not present in the table will be imported.     The rows that are already present in the table will not be updated. 

- _Insert All Records_ : All the rows from the file will be imported into the table. 

 If you select this option, you may get duplicated rows because the system does not check for duplicates when importing rows from the file. 

 The dialog box has the following buttons. 

 OK Closes the dialog box and opens the Columns dialog box. 

 Cancel Closes the dialog box without importing the data from the file. 

#### Columns Dialog Box 

 In the Columns dialog box, which opens if you click OK in the Common Settings dialog box, you match the columns in the imported file that you have selected in the File Upload dialog box to the columns in the Acumatica ERP table to which you are importing data. 

 Element Description 

 Column Name The name of the column in the uploaded file. 

 Property Name The name of the corresponding column in the table in Acumatica ERP. 

 The dialog box has the following buttons. 

 OK Closes the dialog box and imports the selected file. 


<!-- PAGE_BREAK -->
 Appendix | 457 

 Element Description 

 Cancel Closes the dialog box without importing the data from the file. 

**Related Links** 

- _Tables_ 

- _Integration with Excel_ 

- _To Import Data from a Local File to a Table_ 


