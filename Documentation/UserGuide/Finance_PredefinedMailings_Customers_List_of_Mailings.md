# Mailings for Customers: Available Mailings {#_8f755566-abfd-408f-be33-01a643f41db9 .concept}

You can view the list of predefined mailings and add new ones by using the **Mailing &amp; Printing** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form. Here you can configure the basic settings of each mailing, these settings will be used by default when you add a mailing to a customer class or a customer.

When you create a new customer class all mailings \(predefined and manually created\) are added to new customer class by default. Also, if sales orders are used, the mailings listed on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form are added to a new customer class. You can modify this list, leaving those that you need for customers of this class.

|Mailing|Purpose|Usage|
|-------|-------|-----|
|*CCEXPIRENOTE*|To inform customers about credit card expiration|To generate emails about multiple expired cards, use the [Notify About Expiring Cards](AR_51_20_00.md) \(AR512000\) form.|
|*INVOICE*|To send customer invoices|To generate emails about multiple invoices and memos, use the [Print/Email AR Documents](AR_50_80_00.md) \(AR508000\) form. To send a particular invoice or a memo, use the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.|
|*INVOICE MULTIPLE*|To send multiple invoices in one email|To create one email per customer with multiple invoices attached, select the **Send Documents in One Email** check box on the [Print/Email AR Documents](AR_50_80_00.md) form.|
|*STATEMENT*|To inform customers about their balances with your organization|To generate emails for multiple statements or a single statement, use the [Print Statements](AR_50_35_00.md) \(AR503500\) form.|
|*STATEMENTMC*|To inform customers about their balances \(in multicurrency format\) with your organization|To generate emails for multiple statements or a single statement in multicurrency format, use the [Print Statements](AR_50_35_00.md) form.|
|*DUNNINGLETTER*|To inform customers and your employees \(users\) about past due balances of customers|To generate emails with dunning letters, use the [Print/Release Dunning Letters](AR_52_20_00.md) \(AR522000\) form.|
|*PAYMENTNOTICE*|To inform vendors after generating electronic funds transfer \(EFT\) files.|To generate emails for EFT files, use the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form.|
|*PROFORMA*|To send pro forma invoices.|To generate emails about pro forma invoices, use the [Pro Forma Invoice](PM_64_20_00.md) \(PM642000\) form.|

|Mailing|Purpose|Usage|
|-------|-------|-----|
|*BLANKET SO*|To inform customers about their blanket sales orders|For multiple orders, to generate the emails, use the [Print/Email Orders](SO_50_20_00.md) \(SO502000\) form. To generate an email for a specific order, use the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form.|
|*COMMERCIAL INVOICE*|To inform customers about commercial invoices|To generate a commercial invoice as a ready-to-print document, use the [Commercial Invoices](SO_64_50_10.md) \(SO645010\) report. You can open the report by clicking **Print Commercial Invoice** on the More menu of the [Shipments](SO_30_20_00.md) \(SO302000\) form.|
|*PICK LIST*|To define different reports for printing pick lists for different customer classes|To print multiple pick lists, use the [Process Shipments](SO_50_30_00.md) \(SO503000\) form. To print a pick list for a particular order, use the [Shipments](SO_30_20_00.md) form.|
|*QUOTE*|To inform customers about their quotes|To generate the emails for multiple quotes, use the [Print/Email Orders](SO_50_20_00.md) form. To generate an email for a particular quote, use the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.|
|*QUOTE MULTIPLE*|To send multiple quotes in one email|To create one email per customer with multiple quotes attached, select the **Send Documents in One Email** check box on the [Print/Email Orders](SO_50_20_00.md) form.|
|*SALES ORDER*|To inform customers about open sales orders|To generate the emails for multiple orders, use the [Print/Email Orders](SO_50_20_00.md) form. To generate an email for a specific order, use the [Sales Orders](SO_30_10_00.md) form.|
|*SALES ORDER MULTIPLE*|To send multiple sales orders in one email|To create one email per customer with multiple sales orders attached, select the **Send Documents in One Email** check box on the [Print/Email Orders](SO_50_20_00.md) form.|
|*SALES ORDER PAY LINK*|To send customers an email message with the link that can be used to make a payment.|For multiple orders, to generate the emails, use the [Print/Email Orders](SO_50_20_00.md) form. To generate an email for a specific order, use the [Sales Orders Preferences](SO_10_10_00.md) form.|
|*SHIPMENT*|To inform customers when their orders ship|To email one or more shipment confirmations, use the [Process Shipments](SO_50_30_00.md) form.|
|*SO INVOICE*|To inform customers that their invoices are ready for release|To generate the emails for multiple sales invoices, use the [Process Invoices and Memos](SO_50_50_00.md) \(SO505000\) form. To generate an email for a particular invoice or a memo, use the [Sales Orders](SO_30_10_00.md) form.|
|*SO INVOICE MULTIPLE*|To send multiple SO invoices in one email|To create one email per customer with multiple SO invoices attached, select the **Send Documents in One Email** check box on the [Process Invoices and Memos](SO_50_50_00.md) form.|

**Parent topic:**[Configuring Predefined Mailings for Customers](../UserGuide/Finance_PredefinedMailings_for_Customers_Mapref.md)

