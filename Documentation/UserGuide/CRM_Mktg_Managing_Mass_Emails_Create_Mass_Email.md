# Mass Emails: To Create and Send a Mass Email {#_be2b3603-f714-4056-ab36-a7cc8ee41f15 .task}

The following activity demonstrates how to create and send a mass email.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are Bill Owen, a marketing manager of the SweetLife Fruits &amp; Jams company. You need to introduce a new product \(a commercial juicer\) to the company's customers and want to create and send a mass email for this purpose.

## Configuration Overview { .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Customer Management* feature has been enabled: This feature provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, as well as the handling of sales opportunities, contacts, marketing lists, and campaigns.
-   A system email account has been added on the [Email Accounts](SM_20_40_02.md) \(SM204002\) form.
-   The system email account has been specified as the default system account on the [Email Preferences](SM_20_40_01.md) \(SM204001\) form.
-   Business accounts have been created on the [Business Accounts](CR_30_30_00.md) \(CR303000\) form and extended as customers.
-   On the [Marketing Lists](CR_20_40_00.md) \(CR204000\) form, the *NEWJUICER* marketing list has been created. The marketing list includes customers \(that is, business accounts that have the *Customer* type\).
-   A schedule for periodic runs of the *Send and Receive Email* process has been created on the [Automation Schedules](SM_20_50_20.md) \(SM205020\) form.

## Process Overview { .section}

In this activity, on the [Mass Emails](CR_30_80_00.md) \(CR308000\) form, you will create and send a mass email to the SweetLife customers.

## System Preparation { .section}

Before you start creating and sending a mass email, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in to the system as marketing manager Bill Owen by using the following credentials:
    -   **Username**: *owen*
    -   **Password**: *123*
2.  Make sure that on the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, the *SweetLife Head Office and Wholesale Center* branch is selected.

## Step 1: Creating a Mass Email { .section}

To create a mass email, do the following:

1.  Open the [Mass Emails](CR_30_80_00.md) \(CR308000\) form and create a new record.
2.  In the **From** box of the [Mass Emails](CR_30_80_00.md) form, select *marketing@sweetlife.example.com*.
3.  In the **Subject** box, enter `New commercial juicer available!`.
4.  In the text area, specify the text of the message, such as the following:

    `We are happy to introduce our new commercial juicer! With the juicer, you can easily serve your customers fresh-made orange juice, lemonade, and fruit-based beverages.`

    `Please see this demo video: https://youtu.be/O125F89`

5.  On the form toolbar, click **Save**.

You have created a mass email. Now you can prepare the mass email to be sent and send it to the recipients.

## Step 2: Sending a Mass Email to the SweetLife Customers { .section}

To prepare a mass email to be sent to the SweetLife customers, do the following:

1.  While you are still viewing the *New commercial juicer available!* mass email on the [Mass Emails](CR_30_80_00.md) \(CR308000\) form, in the **Source** box, select *Marketing Lists*.
2.  In the table on the **Marketing List** tab, select the unlabeled check box for the *NEWJUICER* marketing list.
3.  On the form toolbar, click **Save**.
4.  On the form toolbar, click **Preview Message**.

    The system opens the [Email Activity](CR_30_60_15.md) \(CR306015\) form in a pop-up window with a test message in which the following boxes are filled in as follows:

    -   **From**: *marketing@sweetlife.example.com*
    -   **To**: *system@sweetlife.example.com*
5.  On the form toolbar, click **Send**. The system sends the message and closes the window with the [Email Activity](CR_30_60_15.md) form.
6.  Open the **Messages** tab. In the table, the system has added a row that has the settings of the test message. In the **Email Status** column, notice the *Pending Processing* status of the message. As soon as the test email has been delivered to the test email address, the system changes the status to *Processed*.

    **Tip:** If the test message has been successfully delivered and has the *Processed* status, you can click **Send** on the form toolbar to send the mass email to the recipients.


You have created a mass email and tested sending of the mass email to the email addresses of members from the marketing list.

**Parent topic:**[Managing Mass Emails](../UserGuide/CRM_Mktg_Managing_Mass_Emails_Mapref.md)

