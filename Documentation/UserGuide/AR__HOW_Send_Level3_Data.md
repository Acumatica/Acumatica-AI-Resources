# To Send Level 3 Data {#_fd664022-eed5-4421-ada1-8d00fa2be767 .task}

You use the [Send Level 3 Data](CA_50_80_00.md) \(CA508000\) form to send level 3 transaction data of captured payments to the payment gateway. If this data is accepted, the documents are eligible for level 3 interchange rates. You can also use this form to view a list of documents with the following processing statuses: *Pending*, *Sent*, *Failed*, and *Resend Failed*.

**Attention:** To open any form, you can navigate to it or search for it \(by its name or by its form ID without periods\).

## Before You Proceed { .section}

Make sure that documents with the *Payment*, *Prepayment*, or *Cash Sale* types paid by corporate credit cards exist in the system.

## To Send Level 3 Data of Documents { .section}

1.  Open the [Send Level 3 Data](CA_50_80_00.md) \(CA508000\) form.
2.  In the Selection area, specify the following settings:
    -   **Processing Center**: The Acumatica Payments processing center configured for the processing of corporate credit cards or business credit cards
    -   **Processing Status**: *Pending*

        The system displays a list of documents for which payments have been captured, but no level 3 data has been sent yet

3.  In the table, for the documents that you want to process, select the Included check box. Click **Process** on the form toolbar to process the selected documents or click **Process All** to process all documents in the table.
4.  Wait for the processing to complete and review the value in the **Processing Status** column for the documents.

    The processing status can be one of the following:

    -   *Sent*: The level 3 data has been successfully sent and accepted by the payment gateway.
    -   *Failed*: The level 3 data has been sent but this action ended with an error. You can attempt to resend the data.
    -   *Resend Failed*: The level 3 data has been resent but this action ended with an error.
    **Attention:** Level 3 data has to be sent before the payment is settled. Once the payment is settled, the card networks will not accept any updates to the transaction data.


The payment gateway does not send any indication of whether the transaction was qualified for level 3 or not because the card networks themselves do not provide this information to the payment gateway. You will know this as you receive a monthly statement that will mention how many transactions were accepted for the level 3 interchange rate.

**Parent topic:**[Level 3 Data Transmission During Card Payments](../UserGuide/AR__con_Level3_Data_Transmission.md)

