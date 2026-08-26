# Attachments: To Attach Files and Notes {#_5d828800-40c1-4c54-855b-bf266f9bcfcd .task}

The following activity will walk you through the process of attaching a file and a note to a sales order. Then you’ll view the note you have attached.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you’re David Chubb, a new sales manager of the SweetLife Fruits &amp; Jams company. You have received a purchase order for three hours of juicer maintenance for the GoodFood One Restaurant customer.

Also, the customer has requested that you temporarily contact them by using the other phone number. You need to add a pop-up note to the customer record to warn your colleagues about the phone number. Then you need to create an invoice for the customer \(and verify that the pop-up note appears\) and attach the scanned purchase order to the invoice.

## Process Overview { .section}

In this activity, you’ll do the following:

1.  Add a pop-up note to the customer account on the [Customers](AR_30_30_00.md) \(AR303000\) form.
2.  Create an invoice, and attach the scanned purchase order \([PO\_GoodFood1Restaurant.pdf](Files/PO_GoodFood1Restaurant.pdf)\) from the customer to the invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

## System Preparation { .section}

Before you start performing the steps of this activity in Acumatica ERP, make sure that the following tasks have been performed:

-   You have installed an Acumatica ERP instance with the *U100* dataset, or a system administrator has performed this task for you.
-   You have signed in to Acumatica ERP with the following credentials:

    -   **Username**: *chubb*
    -   **Password**: *123*
    For details, see [Acumatica ERP Access: Process Activity](GS_Accessing_Acumatica_ERP_Process_Activity.md).

-   Download the [PO\_GoodFood1Restaurant.pdf](Files/PO_GoodFood1Restaurant.pdf) file to your computer.

## Step 1: Adding a Pop-Up Note to a Customer Account { .section}

To add a pop-up note to the customer account of GoodFood One Restaurant, do the following:

1.  Open the [Customers](AR_30_30_00.md) \(AR303000\) form.
2.  In the **Customer ID** box, select *GoodFood One Restaurant*.
3.  On the form title bar, click **Note**. The **Enter Record Note** dialog box opens.
4.  In the dialog box, select the **Add Pop-Up Note** check box.
5.  In the **Pop-Up Note** text box, type `Contact the customer by using the second phone number until further notice.` Click **Save**.
6.  On the form toolbar, click **Save**.

## Step 2: Creating an Invoice { .section}

To create an invoice, do the following:

1.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, add a new record.
2.  In the **Customer** box, select *GoodFood One Restaurant*. Notice that the system displays the pop-up note you’ve added for the account. Notice that the warning icon \( ![](Images/GS_warning_sign.png)\) appears to the left of the **Customer** box, and when you point at it, you see the same note that you’ve added to the account.
3.  In the **Description** box, type `Juicer service`.
4.  On the **Details** tab, add a row, and specify the following settings:
    -   **Branch**: *HEADOFFICE*
    -   **Inventory ID**: *MAINTSERV*
    -   **Quantity**: `3`
5.  On the form toolbar, click **Save**.

## Step 3: Attaching a File to the Invoice { .section}

To attach a file to the invoice you have created, do the following:

1.  While you are still viewing the invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, click **Files** on the form title bar. The **Files** dialog box opens.
2.  In the dialog box, do the following:

    1.  Click **Upload Files**.
    2.  In the window that opens, select the `PO_GoodFood1Restaurant.pdf` file \(which you have downloaded earlier\).
    3.  Click **Open** to cause the system to upload the file. After the file is uploaded, the information about the uploaded file is displayed in the table of the dialog box.
    4.  Close the dialog box.
    On the form title bar, you can see the number of attached files in parentheses right of the **Files** button.


**Parent topic:**[Working with Attachments](../UserGuide/GS_Working_With_Attachments_Mapref.md)

