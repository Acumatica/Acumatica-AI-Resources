# To Correct a Cash Entry {#_1e3dd4c3-f168-49f2-880c-ff2aeaf5e659 .task}

To correct an incorrect transaction of the *Cash Entry* type, you create a reversing cash transaction, release it, and then create and release the correct transaction. You perform these actions on the [Cash Transactions](CA_30_40_00.md) \(CA304000\) form, as described in the procedure below.

Alternatively, to reverse an incorrect cash entry transaction, you can find the incorrect transaction on the [Cash Account Details](CA_30_30_00.md#) \(CA303000\) form, click the reference number of the transaction in the **Orig. Doc. Number** column to navigate to the [Cash Transactions](CA_30_40_00.md) form, and then perform Steps 3–5 of the procedure below.

## To Reverse a Cash Entry Transaction {#section_byb_kjv_vxb .section}

1.  Open the [Cash Transactions](CA_30_40_00.md) \(CA304000\) form.
2.  Find the incorrect cash transaction by clicking the navigation buttons on the form toolbar until you see it. Alternatively, click the lookup icon in the **Reference Nbr.** box, find the cash transaction in one of the following ways, and double-click the row to open the transaction:
    -   Type a reference number in the search box in the upper-right corner. As you type, the system filters the listed transactions to display only those that contain the text in the **Reference Nbr.** column.
    -   Click the column heading of a column you want to search, type a string in the search box, and press Enter. The system displays the items that contain the text in the column.
3.  On the form toolbar, click **Reverse**.

    **Note:** If the transaction has already been reversed, the system displays a message that one or more reversing transactions have already been created. To continue, click **Yes** in the dialog box that opens.

    The system creates and displays a reversing cash transaction with negative amounts, the same details as the original cash transaction, a link to the original transaction in the **Orig. Ref. Nbr.** box in the Summary area, and a status of *Balanced* by default \(the **Hold Transactions on Entry** check box on the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form is cleared\).

4.  Make sure all the settings of the newly created transaction are correct, change them if necessary.
5.  Optional: In the **Description** box, enter a description of the reversing cash transaction.
6.  Optional: If the document was created with the *On Hold* status, on the form toolbar, click **Remove Hold** to give the document the *Balanced* status.
7.  Click **Release** to release the reversing cash transaction.
8.  In the **Orig. Ref. Nbr.** box in the Summary area, click the link to the original transaction. The transaction is opened in a pop-up window.
9.  In the **Reversing Transactions** box in the Summary area, click the link showing the number of reversing transactions.

    The system opens the list of reversing transactions in the [CA Reversing Transactions](CA_65_90_00.md) \(CA659000\) report.


Now that you have created and released the reversing cash transaction, you can create and release the corrected cash transaction.

**Parent topic:**[Processing Cash Entries](../UserGuide/Finance_Creating_Cash_Entry_Mapref.md)

