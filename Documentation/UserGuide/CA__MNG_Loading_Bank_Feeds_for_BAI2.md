# Loading of Bank Feeds from BAI2 Files {#_c857c45b-7572-449d-be4c-f80ff6e5b787 .concept}

Acumatica ERP supports the Bank Administration Institute Version 2 \(BAI2\) format of bank statements. The Balance and Transaction Reporting Standard \(BTRS\) improves upon the BAI2 format. The BAI2 and BTRS formats are banking industry standards for communicating bank statements electronically.

The BAI2 and BTRS file formats are supported by bank feeds. When a user retrieves bank feed transactions, the system detects a new file with transactions exported to it by a bank and creates bank transactions for the specified cash account. If a corporate card and employee are specified in the bank feed settings, the system creates expense receipts for them.

## Setup of BAI2 Transaction Retrieval { .section}

To set up the functionality of retrieving BAI2 transactions from a bank feed, an administrative user does the following:

1.  On the [Bank Feeds](CA_20_55_00.md) \(CA205500\) form, creates a bank feed, selecting *BAI2 \(Bank Administration Institute\)* as the **File Format** and entering credentials to the SFTP folder where the bank stores BAI2 files.
2.  Clicks **Set Up Data Provider**. The system creates a new data provider for BAI2 files and inserts it in the **Data Provider** box.
3.  Reviews the mapping rules populated by the system and changes the mapping for optional fields, if needed. For details, see the *Mapping Rules* section below.
4.  On the **Cash Accounts** tab of the [Bank Feeds](CA_20_55_00.md) form, specifies the needed bank accounts and their corresponding cash accounts.
5.  Activates the bank feed by clicking **Activate** on the form toolbar. This changes the bank feed’s status to *Active*. Now users can start retrieving bank transactions on the [Retrieve Bank Feed Transactions](CA_50_75_00.md) \(CA507500\) form.

For details, see [To Set Up Bank Feeds Loaded from the BAI2 Format](CA__HOW_Set_Up_BankFeeds_from_BAI2.md).

## Mapping Rules { .section}

On the **Source File** tab \(**Mapping Rules** section\) of the [Bank Feeds](CA_20_55_00.md) \(CA205500\) form, the system inserts the following settings.

|Active|Target Field|Source Field or Value|
|------|------------|---------------------|
|Selected|*Bank Account Name*|*Customer Account Number*|
|Selected|*Ext. Tran. ID*|*Bank Reference Number*|
|Selected|*Tran. Date*|*As-of-date*The format of this value is *YYMMDD*.

|
|Selected|*Transaction Amount*|*Amount*|
|Selected|*Tran. Desc*|*=Concat\( \[Tran Desc\], \[Additional Tran Desc\]\)*|

The required fields are added by the system when the data provider is created and cannot be edited.

|Active|Target Field|Source Field or Value|
|------|------------|---------------------|
|Cleared|*Card Number*||
|Cleared|*Ext. Ref. Nbr.*|*Bank Reference Number* The *Bank Reference Number* source field is optional in the BAI2 format, but is required in Acumatica ERP because it is mapped to the transaction ID. The transaction ID is used by the system to identify transactions and avoid duplicate records.

|
|Cleared|*Custom Tran. Desc.*| |
|Cleared|*Invoice Nbr.*|*Customer Reference Number*|
|Cleared|*Payee/Payer*| |
|Cleared|*Tran. Code*|*Type Code*|

The optional fields are also added by the system when the data provider is created. The mapping of these fields can be updated by the system administrator.

**Parent topic:**[Integrating Acumatica ERP with Bank Feeds](../UserGuide/CA__MNG_Bank_Feed_Integration.md)

