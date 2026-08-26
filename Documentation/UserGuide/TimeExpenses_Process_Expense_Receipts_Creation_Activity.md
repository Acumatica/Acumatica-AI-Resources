# Expense Receipts: To Create an Expense Receipt {#_8aa856e3-83b0-43ec-988e-3d9d80cb056a .task}

The following activity will walk you through the process of creating an expense receipt.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that David Chubb, an employee of the sales department at the SweetLife Fruits &amp; Jams company, had a business lunch with Chris Rea, the manager at the Blue Cafe, to discuss Blue Cafe's purchase of new juicers. The lunch cost $20, which David paid with his personal credit card.

Acting as David Chubb, you will enter the expense into the system to request reimbursement.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   The *Expense Management* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   On the [Non-Stock Items](IN_20_20_00.md#) \(IN202000\) form, the *MEAL* non-stock item with the *Expense* type has been created.
-   On the [Employees](EP_20_30_00.md#) \(EP203000\) form, the account for David Chubb has been created and associated with the *chubb* user account.

## Process Overview { .section}

You will create an expense receipt for David Chubb’s business lunch on the [Expense Receipts](EP_30_10_10.md#) \(EP301010\) form.

## System Preparation { .section}

To sign in to the system and prepare to perform the instructions of the activity, do the following:

-   Launch the Acumatica ERP website, and sign in as David Chubb by using the *chubb* username and the *123* password.
-   In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to today’s date. For simplicity, in this activity, you will create and process all documents in the system on this business date.

## Step: Creating an Expense Receipt { .section}

To create an expense receipt for the business lunch that David paid for, do the following:

1.  Open the [Expense Receipts](EP_30_10_10.md#) \(EP301010\) form.
2.  On the form toolbar, click **Add New Record**. The system opens the [Expense Receipt](EP_30_10_20.md#) \(EP301020\) form.
3.  In the Summary area, specify the following settings:
    1.  **Date**: The current date \(inserted automatically\)
    2.  **Expense Item**: *MEAL*
    3.  **Claimed by**: *EP00000014-David Chubb* \(inserted automatically because you are signed in as David Chubb\)
4.  On the **Details** tab, specify the following settings:
    -   **Description**: `Business lunch with Chris Rea, manager at Blue Cafe`
    -   **Quantity**: `1`
    -   **Unit Cost**: `20.00`
    -   **Ref. Nbr.**: `BL145623`
    -   **Project/Contract**: *X-Non-Project Code*
    -   **Paid With**: *Personal Account*
5.  On the form toolbar, click **Save**.

You have created the expense receipt that records David Chubb’s business lunch.

**Parent topic:**[Processing Expense Receipts](../UserGuide/TimeExpenses_Process_Expense_Receipts_Mapref.md)

