# Expense Claims: To Approve Expense Claims {#_946c7cbd-c6df-4787-a052-aeeeffcec96a .task}

The following activity will walk you through the process of approving expense claims.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that Bill Owen and Joanne Simpson, employees of the marketing department at the SweetLife Fruits &amp; Jams company, went on a business trip to a marketing conference. The $250 participation fee for the conference included transportation for attendees to the conference. After the conference, David had dinner and paid $45, while Joanne took a taxi and paid $50. All expenses were paid by using the employees' personal credit cards.

In accordance with the SweetLife Fruits &amp; Jams company's expense management policy, all expenses claimed by employees of the marketing department with a total claim amount greater than $100 but less than $300 must be approved by the accountant Anna Johnson. If the total claim amount is $300 or more, the claims must be approved by the accountant Nenad Pasic.

The employees have submitted their expense receipts, added them to the expense claims, and submitted the expense claims for further processing.

First, acting as Anna Johnson, you will approve Bill Owen's expense claim. After that, acting as Nenad Pasic, you will approve Joanne Simpson's expense claim.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Expense Management* and *Approval Workflow* features have been enabled.
-   On the [Approval Maps](EP_20_50_15.md) \(EP205015\) form, the *Expense Claims* approval map has been created. In accordance with the approval map, expense claims of marketing department's employees with the total claim amount from $100 to $300 must be approved by accountant Anna Johnson. If the total claim amount is $300 or more, expense claims must be approved by accountant Nenad Pasic.
-   On the [Time and Expenses Preferences](EP_10_10_00.md) \(EP101000\) form, the *Expense Claims* approval map has been selected in the **Expense Claim Approval Map** box.
-   On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, the *TRAVEL*, *MEAL*, and *TAXI* non-stock items with the *Expense* type have been created.
-   On the [Employees](EP_20_30_00.md) \(EP203000\) form, the accounts for Bill Owen, Joanne Simpson, Anna Johnson, and Nenad Pasic have been created and associated with their user accounts.
-   On the [Expense Claims](EP_30_10_30.md) \(EP301030\) form, the following expense claims have been created and submitted for approval:
    -   The *Business trip to the marketing conference* claim with a total amount of $295, submitted by Bill Owen
    -   The *Business trip to the marketing conference* claim with a total amount of $300, submitted by Joanne Simpson

## Process Overview { .section}

First, you will approve Bill Owen's expense claim on the [Expense Claim](EP_30_10_00.md) \(EP301000\) form. Then you will approve Joanne Simpson's expense claim on the [Approvals](EP_50_30_10.md) \(EP503010\) form.

## System Preparation { .section}

To sign in to the system and prepare to perform the instructions of the activity, do the following:

-   Launch the Acumatica ERP website, and sign in as Anna Johnson by using the *johnson* username and the *123* password.
-   In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to today’s date. For simplicity, in this activity, you will create and process all documents in the system on this business date.

## Step 1: Approving the First Expense Claim { .section}

To approve Bill Owen's expense claim, do the following:

1.  Open the [Expense Claims](EP_30_10_30.md) \(EP301030\) form.
2.  In the Selection area, clear the **Employee** box to see the full list of the expense claims that you are allowed to access.
3.  On the **Pending Approval** tab, click the link in the **Reference Nbr.** column for Bill Owen's expense claim with the $295 claim total amount. The expense claim opens on the [Expense Claim](EP_30_10_00.md) \(EP301000\) form.
4.  On the form toolbar, click **Approve**.

    The expense claim's status has changed to *Approved*. The expense claim is approved and ready to be released.

5.  Sign out from the system.

## Step 2: Approving the Second Expense Claim { .section}

To approve Joanne Simpson's expense claim, do the following:

1.  Sign in to the system as Nenad Pasic by using the *pasic* username and the *123* password.
2.  Open the [Approvals](EP_50_30_10.md) \(EP503010\) form.
3.  On the **My Approvals** tab, review Joanne Simpson's expense claim with the $300 total amount and select the unlabeled check box for the row.
4.  On the form toolbar, click **Approve**.
5.  After the processing has been completed, double-click the row with Joanne Simpson's expense claim.

    The system opens the expense claim on the [Expense Claim](EP_30_10_00.md) \(EP301000\) form. Note that the expense claim's status has changed to *Approved*. The expense claim is approved and ready to be released.


Both expense claims have been approved and are now ready to be released.

**Parent topic:**[Processing Expense Claims](../UserGuide/TimeExpenses_Process_Expense_Claims_Mapref.md)

