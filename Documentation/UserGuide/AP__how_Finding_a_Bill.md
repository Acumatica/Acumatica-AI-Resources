# To Find a Particular Bill {#_6a676f33-652c-4096-bbb7-818ac93acbe6 .task}

You can use multiple forms to find a bill that has been created with Acumatica ERP, depending on the bill's status and other parameters:

-   [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form: Use this form to find any bill in the system, as described in the [To Find a Bill on the Bills and Adjustments Form](AP__how_Finding_a_Bill.md#1) section of this topic.
-   [Approve Bills for Payment](AP_50_20_00.md) \(AP502000\) form: If approval of bills is required in your system, use this form to find bills with the *Open* status that require approval or have been approved; see the [To Find a Bill on the Approve Bills for Payment Form](AP__how_Finding_a_Bill.md#3) section.
-   [Prepare Payments](AP_50_30_00.md) \(AP503000\) form: Use this form to find outstanding bills with the *Open* status. For instructions, see the [To Find a Bill on the Pay Bills Form](AP__how_Finding_a_Bill.md#4) section.

## To Find a Bill on the Bills and Adjustments Form {#1 .section}

1.  Open the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
2.  In the **Type** box of the Summary area, select *Bill*.
3.  Select a specific bill in one of the following ways:
    -   Click the navigation buttons on the form toolbar until you see the bill.
    -   Click the selector button in the **Reference Nbr.** box of the Summary area, and do the following:
        1.  Select the column you want to search by clicking its header.
        2.  Type a text string in the **Search** box in the lower-left corner, and press Enter. The system highlights items in the column that contain the text.
        3.  Double-click the needed bill to display its details on the form.

## To Find a Bill on the Approve Bills for Payment Form {#3 .section}

1.  Open the [Approve Bills for Payment](AP_50_20_00.md) \(AP502000\) form.
2.  In the Selection area, make selections that match the known properties of the bill you're seeking.

    In the table, the system displays the documents that meet the criteria you have specified.

3.  To display the bill you're looking for on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, click the row with the bill, and click **View Document** on the table toolbar.

## To Find a Bill on the Prepare Payments Form {#4 .section}

1.  Open the [Prepare Payments](AP_50_30_00.md) \(AP503000\) form.
2.  In the **Cash Account** box of the Selection area, select the cash account to be used to pay the particular bill.
3.  In the **Payment Method** box, select the needed method of payment associated with the cash account.

    The selected documents are displayed in the table; you can create a filter to further narrow the list of documents or use a shared filter, if applicable.

4.  Click the line with the bill, and click **View Document** to display the bill on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

**Parent topic:**[Processing AP Bills](../UserGuide/Finance_ProcessingAPBills_Mapref.md)

