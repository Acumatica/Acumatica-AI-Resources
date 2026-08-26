# Employee Time Entry: To Create a Time Activity {#_c7bb1136-029b-4210-8c08-01b018b6927a .task}

The following activity will walk you through the process of creating a time activity.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that David Chubb, an employee of the sales department at the SweetLife Fruits &amp; Jams company, prepared an email about the purchase of new juicers for the Blue Cafe customer. This took about 20 minutes, and David needs to record this time in the system and then complete the time activity.

Acting as David Chubb, you will create an email, record the time spent on it, and complete the created time activity.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   The *Time Management* and *Customer Management* features have been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   On the [Employees](EP_20_30_00.md) \(EP203000\) form, the account for David Chubb has been created.

## Process Overview { .section}

You will create an email for Blue Cafe on the [Email Activity](CR_30_60_15.md) \(CR306015\) form, record the time spent on its creation, and then complete the created time activity.

## System Preparation { .section}

To sign in to the system and prepare to perform the instructions of the activity, do the following:

-   Launch the Acumatica ERP website, and sign in as David Chubb by using the *chubb* username and the *123* password.
-   In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to today’s date. For simplicity, in this activity, you will create and process all documents in the system on this business date.

## Step 1: Creating an Email { .section}

To create an email for Blue Cafe, do the following:

1.  In the **Time and Expenses** workspace, click the **New Email Activity** tile.

    The system opens the [Email Activity](CR_30_60_15.md) \(CR306015\) form.

2.  In the **From** box, select *sales@sweetlife.example.com*.
3.  In the **To** box, select *Chris Rea*, the manager at Blue Cafe.
4.  In the **Subject** box, specify: `Exclusive offers on premium juicers for Blue Cafe`.
5.  On the **Message** tab, type the text of the email body. As an example, you can type the following message:

    `Dear Chris,`

    `I hope you're doing well! I wanted to share special offers on our premium juicers, which are perfect for cafes like yours:`

    -   `15% off if you buy 3 or more juicers`
    -   `Free shipping on all bulk orders`
    -   `Extended warranty for 2 years (limited-time offer!)`
    `Let’s discuss how these offers can benefit your business, or you can place an order directly. These offers are valid until the end of the month—don’t miss out!`

    `Best regards,`

    `David Chubb, Sales Manager`

6.  On the form toolbar, click **Save**.

## Step 2: Entering a Time Activity { .section}

To record the time David Chubb spent preparing the email for Blue Cafe, do the following:

1.  While you are still on the [Email Activity](CR_30_60_15.md) \(CR306015\) form, go to the **Details** tab.
2.  Select the **Track Time and Costs** check box.
3.  In the **Earning Type** box, make sure that *RG - Regular Hours* is selected.
4.  In the **Time Spent** box, type `00:20`.
5.  Clear the **Billable** check box because you do not need to bill the customer for this activity.
6.  On the form toolbar, click **Save**.

## Step 3: Completing the Time Activity { .section}

To review the settings of the time activity created in Step 2 and change its status, do the following:

1.  On the [Employee Time Activities](EP_30_70_00.md) \(EP307000\) form, open the time activity with the *Exclusive offers on premium juicers for Blue Cafe* description.

    Note that this activity is on hold and has the *Open* status.

2.  Clear the **Hold** check box for the row with the time activity.

    The system takes the time activity off hold and changes its status to *Completed*.

3.  On the form toolbar, click **Save**.

You have created the time activity and completed it.

**Parent topic:**[Entering Employee Time](../UserGuide/TimeExpenses_Entering_Employee_Time_Mapref.md)

