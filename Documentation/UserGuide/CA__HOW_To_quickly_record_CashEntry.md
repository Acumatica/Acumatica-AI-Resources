# To Quickly Record a Cash Transaction {#_a8df17b5-1bbc-44ea-be27-1e7a25cff770 .task}

To quickly record a cash transaction, you use the **Quick Transaction** dialog box. You can invoke the dialog box in one of the following ways:

-   By clicking the **Create Transaction** button on the table toolbar of the [Cash Account Details](CA_30_30_00.md#) \(CA303000\) form.
-   By clicking the **Create Adjustment** button on the table toolbar of the [Reconciliation Statements](CA_30_20_00.md#) \(CA302000\) form when you are performing the bank reconciliation of the cash account.

## Before You Proceed {#section_v5b_kjv_vxb .section}

Before you start recording a cash transaction, make sure all the necessary entry types are created on the [Entry Types](CA_20_30_00.md) \(CA203000\) form and associated with cash accounts on the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form. For details on the entry types, see [Entry Types](CA__CON_EntryTypes.md).

## To Quickly Record a Cash Entry {#section_x5b_kjv_vxb .section}

1.  Open the [Cash Account Details](../Shared/../UserGuide/CA_30_30_00.md) \(CA303000\) form.
2.  In the **Cash Account** box of the Selection area, select the cash account for which you want to record the transaction.
3.  On the table toolbar, click the **Create Transaction** button.

    The **Quick Transaction** dialog box opens.

4.  In the **Entry Type** box, select the entry type from the list of entry types defined for the cash account selected on the form from which you invoked the dialog box.
5.  In the **Doc. Date** box, check the date of the cash transaction, and change it, if needed.

    By default, the current date is selected in the box, but you can select another date. The **Fin. Period** box is filled in automatically based on the transaction date. After you have selected the transaction date, you can change the financial period of the transaction, if needed.

6.  In the **Document Ref.** box, enter the document reference number that meets your internal requirements.
7.  If you have selected an entry type whose value in the **Module** column of the lookup box is set to *CA*, check the **Offset Account** column. By default, the system fills in the column with the offset account specified for the selected entry type, but you can change the default account, if needed.
8.  If you have selected an entry type whose value in the **Module** column of the lookup box is set to *AP* or *AR*, do the following:
    1.  In the **Business Account** box, select the account of the vendor or the customer used for the transaction.
    2.  In the **Location ID** box, check the vendor or customer location, and change it, if needed.
    3.  In the **Payment Method** box, check the method of payment. You can change it if multiple payment methods can be accepted.

        **Note:** Payment methods have to be created on the [Payment Methods](../Shared/../UserGuide/CA_20_40_00.md#) \(CA204000\) form to process cash transactions of the accounts payable and accounts receivable functionality.

9.  If required, in the **Document Ref.** box, enter the reference number of the corresponding external document.
10. In the **Amount** box, enter the total amount of the transaction.
11. In the **Description** box, enter a brief description of the transaction.
12. Select the **Cleared** check box, if this transaction has been cleared.
13. Click **Save**, and close the **Quick Transaction** dialog box.

After you have saved a cash transaction, you can edit the created transaction, or release it if it is balanced, in the module specified for the entry type you selected. Also, you can release a particular or multiple balanced cash transactions on the [Cash Account Details](CA_30_30_00.md#) form.

**Parent topic:**[Processing Cash Entries](../UserGuide/Finance_Creating_Cash_Entry_Mapref.md)

