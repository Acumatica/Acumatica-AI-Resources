# To Process a Cash Return Order \(CR\) {#_8beafacb-1ccf-4716-88f7-0de18da27158 .task}

To record a return of items that were sold in a cash sale, you process a cash return order \(that is, an order of the *CR* order type\) by using the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.

## To Process a Cash Return Order { .section}

1.  Open the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.
2.  In the Summary area, select the order by specifying its type \(*CR*\) and reference number.
3.  On the More menu, click **Prepare Invoice**.

    This generates a cash return document with the returned items listed. The system opens the [Invoices](SO_30_30_00.md) \(SO303000\) form to display the new document.

4.  On the More menu of the opened form, select **Release** to release the cash return document.

    The system updates the availability data by creating an inventory transaction of the *Credit Memo* type, and generates a cash transaction of the *Cash Return* type. Once you release the cash return, the original *CR* order is assigned the *Completed* status.


**Parent topic:**[Processing Returns for Cash](../UserGuide/SO__con_scn_Return_for_Cash.md)

