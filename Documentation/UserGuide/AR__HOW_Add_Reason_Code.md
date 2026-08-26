# To Configure a Reason Code {#_62b05076-c875-4ebf-83af-e073ff926b02 .task}

You define reason codes on the [Reason Codes](CS_21_10_00.md) \(CS211000\) form. For each reason code, you must specify with what transaction it will be used. The transaction type determines the Acumatica ERP functional area in which the reason code can be used in. You can define the reason codes for the following types of transactions originating in the accounts receivable functional area: credit write-off and balance write-off.

## Before You Proceed {#section_km2_hjv_vxb .section}

Make sure that the general ledger accounts and subaccounts you are going to use for write-offs have been configured.

## To Add a Reason Code {#section_mm2_hjv_vxb .section}

1.  Open the [Reason Codes](CS_21_10_00.md) \(CS211000\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the **Reason Code** box, type the identifier of the reason code. An alphanumeric string of up to 10 characters may be used.
4.  In the **Description** box, type a short description of the reason code.
5.  In the **Usage** box, select the option indicating where the reason code will be used:
    -   To use the reason code for writing off credits, select *Credit Write-Off*.
    -   To use the reason code for writing off balances, select *Balance Write-Off*.
6.  In the **Combine Sub. From** box, construct a subaccount mask. Point to each segment and press F3 to open the list of options.
7.  In the **Account** box, select the account to be updated by the transaction amount for transactions marked by the reason code.
8.  In the **Subaccount** box, specify a subaccount according to the mask. Point to each segment and press F3 to open the list of options.
9.  Click **Save** to save changes.

**Parent topic:**[Managing Sales Documents](../UserGuide/SO__MNG_Managing_Documents.md)

