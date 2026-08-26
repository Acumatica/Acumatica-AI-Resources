# Importing Transactions {#_d8eb8445-289c-41cd-af69-d8315335b131 .concept}

With Acumatica ERP, you can quickly import the list of recent bank transactions or amounts confirmed by other documents, and the periodic statements.

For each cash account, for which transactions are imported, the system creates a bank statement \(even if you upload just the list of amounts\) that lists the uploaded transactions. The system assigns a reference number to this bank statement in accordance with the numbering sequence assigned to bank statements on the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form.

In this topic, you will read about the forms used to import transactions, the supported formats of the files to be uploaded, the setup of the import procedure for other file formats, and the manual entry of needed transactions.

## Supported Formats {#section_b4d_kjv_vxb .section}

In Acumatica ERP, you can upload transactions in files in the following formats:

-   OFX \(Open Financial Exchange\), QBO \(QuickBooks Online\), and QFX \(Quicken File eXchange\): Acumatica ERP includes the *PX.Objects.CA.OFXStatementReader* import service, which parses uploaded files in these three supported formats to create bank statements. For details on uploading files in these formats, see [To Import a Bank Statement in OFX, QBO, and QFX Formats](CA__HOW_ImportBankSatement_OFX.md).
-   Excel: For details on uploading files in this format, see [To Import a Bank Statement in Excel](CA__how_to_Import_Statement.md).

    **Attention:** The file format you use defines the preliminary steps you should take and the details of the import procedure.


## The First Import of Transactions {#section_e4d_kjv_vxb .section}

When you import transactions for the first time, the system creates the first bank statement. If you import a file in OFX, QBO, or QFX format, the values for **Statement Date**, **Start Balance Date**, **End Balance Date**, and **Ending Balance** boxes on the [Import Bank Transactions](CA_30_65_00.md) \(CA306500\) form are imported from the file. You have to specify the beginning balance of the first statement manually.

If you import transactions from Excel or enter them manually, you have to enter all these values manually.

**Tip:** If a bank statement that you are going to import does not include transaction reference numbers, make sure that the **Require Document Ref. Nbr. on Entry** check box is cleared on the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form.

## Subsequent Imports of Transactions {#section_i4d_kjv_vxb .section}

You can import files that contain transactions for multiple cash accounts or for one cash account. When you upload transactions, for each involved cash account, the system creates a bank statement that lists the uploaded transactions and assigns the reference number to this bank statement.

In Acumatica ERP, you can use the following forms to upload transactions:

-   [Import Bank Transactions](CA_30_65_00.md) \(CA306500\): You use this form to upload and view transactions for each bank statement that the system has created. When you use the form to upload a file with transactions for one cash account, the system displays the created statement on the form right away. When you use the form to upload a file with transactions for multiple cash accounts, the system does not display any of the created statements. To view one of the statements, you need to select the needed cash account and the reference number of the statement \(the last uploaded statement will have the highest reference number\).

    Here, too, if you import a file in OFX, QBO, or QFX format, the system imports the values of the **Statement Date**, **Start Balance Date**, **End Balance Date**, and the **Ending Balance** boxes from the file. The system validates the value of **Start Balance Date** which should be equal to the end balance date of the previously imported statement.

    These formats \(OFX, QBO, and QFX\) do not provide the beginning balance in bank statements. The system uses as the value of **Beginning Balance** the ending balance of the previous bank statement. Also, the system checks whether the beginning balance plus the total imported receipts minus the total imported disbursements agrees with the imported ending balance of the bank statement.

    If you import bank transactions in Excel format, you need to manually enter the statement date, end balance date, and ending balance. The system uses as the beginning balance the ending balance of the previous bank statement. Similarly, as the start balance, it uses the end balance date of the previous bank statement.

    After upload, you can manually edit bank transaction details before continuing to process the transactions in the system \(matching and clearing them\).

-   [Process Bank Transactions](CA_30_60_00.md) \(CA306000\): You use this form primarily to process transactions from all the created statements for the selected cash account, but you can upload statements on this form as well. When you upload a file, the system does not display the transactions, regardless of the number of cash accounts in the file. To view the uploaded transactions, you need to select a cash account; the system then displays all the transactions uploaded for this cash account that have not been processed \(matched and cleared\) yet.

## Setup of Import for Other Formats {#section_p4d_kjv_vxb .section}

Your company may receive statements for cash accounts in formats that are both supported and not supported by Acumatica ERP formats. If your company has an import service to parse files in formats that are not supported, the service can be added to the list of import services in Acumatica ERP. For details, please consult Acumatica ERP support.

In such a case, you can define to the system an import service that is specific to a particular cash account. To do this, you need to select the **Import Bank Statements to Single Cash Account** check box on the **Bank Statements** tab of the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form. This causes the **Statement Import Service** box to be displayed on the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form, where you can specify the particular import service for the cash account. Also, if the check box is selected, a user can upload a file only after selecting a cash account on the [Import Bank Transactions](CA_30_65_00.md) \(CA306500\) or [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form \(to make the **Upload File** button available on the toolbar of the form\).

## Foolproof Import Procedure {#section_s4d_kjv_vxb .section}

If your company always receives separate files \(in supported formats\), each of which contains transactions for a single cash account, you can make the upload procedure more strict. In this case, by selecting the **Import Bank Statements to Single Cash Account** check box on the **Bank Statements** tab of the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form, you can force the user to select a cash account before uploading a file. If the check box is selected, a user can upload a file only after selecting a cash account on the [Import Bank Transactions](CA_30_65_00.md) \(CA306500\) and [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) forms.

In this case, for each cash account for which you import transactions, in the **Statement Import Service** box on the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form, you also need to specify the *PX.Objects.CA.OFXStatementReader* import service.

## Manual Entry of Transactions {#section_v4d_kjv_vxb .section}

You can manually enter transactions for a specific account directly in the table on the [Import Bank Transactions](CA_30_65_00.md) \(CA306500\) form and save the list as a bank statement with a reference number.

-   **[To Import a Bank Statement in OFX, QBO, and QFX Formats](../UserGuide/CA__HOW_ImportBankSatement_OFX.md)**  

-   **[To Import a Bank Statement in Excel](../UserGuide/CA__how_to_Import_Statement.md)**  


**Parent topic:**[Managing Bank Statements](../UserGuide/CA__MNG_BankStatements.md)

