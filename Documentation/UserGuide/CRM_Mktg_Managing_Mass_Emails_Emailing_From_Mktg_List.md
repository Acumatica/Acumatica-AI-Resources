# Mass Emails: To Email from a Marketing List {#_bb12c0b3-0f4b-4da7-b272-06ac7eb24877 .task}

The following activity demonstrates how to send a mass email to the members of a marketing list.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are Bill Owen, a marketing manager of the SweetLife Fruits &amp; Jams company.You need to send emails to leads with confirmed contact information that represent employees from bakeries and restaurants with a special offer from the company to buy its citrus juicers at a 20 percent discount. To make the process of preparing a mass email quicker, you will apply an email template created by the marketing team of SweetLife Fruits &amp; Jams company.

## Configuration Overview { .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Customer Management* feature has been enabled: This feature provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, as well as the handling of sales opportunities, contacts, marketing lists, and campaigns.
-   On the [Leads](CR_30_10_00.md) \(CR301000\) form, a list of leads has been created in the system.
-   On the [Marketing Lists](CR_20_40_00.md) \(CR204000\) form, the *JCR20OFF* marketing list has been created, and the *Jacob Murray*, *Leslie Walker*, *Nicholas Langdon*, *Paul Mitchell*, and *Leonard Hemmings* leads have been added to the marketing list.
-   On the [Mass Emails](CR_30_80_00.md) \(CR308000\) form, the *Citrus Juicers 20% Off* mass email has been created.
-   On the [Email Accounts](SM_20_40_02.md) \(SM204002\) form, the system email account *marketing@sweetlife.example.com* has been added.
-   On the [Automation Schedules](SM_20_50_20.md) \(SM205020\) form, a schedule for periodic runs of the *Send and Receive Email* process has been created.

## Process Overview { .section}

In this activity, you will do the following on the [Mass Emails](CR_30_80_00.md) \(CR308000\) form:

1.  Prepare a mass email to be sent to the members of a marketing list.
2.  Send the mass email to the test mailbox to make sure that the email will be delivered to the recipients.

## System Preparation { .section}

Before you start sending mass emails to the members of a marketing list, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded.
2.  Sign in to the system as marketing manager Bill Owen by using the following credentials:
    -   **Username**: *owen*
    -   **Password**: *123*
3.  Make sure that on the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, the *SweetLife Head Office and Wholesale Center* branch is selected.

## Step 1: Preparing a Mass Email to Be Sent to the Members of the Marketing List { .section}

To prepare a mass email to be sent to the members of the *JCR20OFF* marketing list, do the following:

1.  In the Filter List menu of the *Mass Emails* \(CR3080PL\) form, click **All Records**.
2.  In the list of records, double-click the mass email with the *Citrus Juicers 20% Off* subject to open it on the [Mass Emails](CR_30_80_00.md) \(CR308000\) form.
3.  On the **Summary** tab, specify the mass email settings as follows:
    1.  In the **Source** box, select *Marketing Lists*.
    2.  In the **Planned** box, specify the date when you plan to send this email, such as the current date.
4.  To apply the email template, on the form toolbar, click **Select Template**.
5.  In the **Select Template** dialog box, which opens, do the following:

    1.  In the **Template** box, select the *Weekly Company Digest* template, which is predefined.

        **Tip:** To search for a record in a list or records, you can enter a text string in the Search box in the filtering area. The system will find all the records that match your search criteria and display these records in the table.

    2.  Leave the **After Email Body** check box selected.

        In this case, the system adds the values \(including empty values\) of the **Subject**, **To**, **CC**, and **BCC** boxes and the text area of the template after any existing values of the same boxes and the text area of the mass email.

    3.  Click **Select**.
    The system closes the dialog box and adds the content of the text area of the *Weekly Company Digest* template to the text area of the **Summary** tab. The values in the **Subject**, **To**, **CC**, and **BCC** boxes of the mass email have not changed because these boxes are empty in the *Weekly Company Digest* template.

    **Tip:** If you select the **Replacing Email Body** check box in the **Select Template** dialog box, the system replaces the values in the **Subject**, **To**, **CC**, and **BCC** boxes and the text area with the respective values from the same boxes and the text area of the template. You can change these settings, if needed.

6.  In the text area of the **Summary** tab \(after the *We are happy to announce the latest news of our company* sentence\), type the following text:

    `We are happy to offer you a special 20% discount on our citrus juicers! You can get a very good price for them if you place an order during this week.`

7.  On the **Marketing List** tab, in the table, select the unlabeled check box for the *JCR20OFF* marketing list. The members of this list will be added to the addressees of the mass email.
8.  On the form toolbar, click **Save**.

You have prepared the mass email based on the template to be sent to the members of the *JCR20OFF* marketing list. Now you can test sending the email to make sure it will be delivered to the recipients.

## Step 2: Sending a Mass Email to a Test Mailbox { .section}

To send a mass email to a test mailbox, do the following:

1.  While you are still viewing the *Citrus Juicers 20% Off* mass email on the [Mass Emails](CR_30_80_00.md) \(CR308000\) form, on the form toolbar, click **Preview Message**.

    The system opens the [Email Activity](CR_30_60_15.md) \(CR306015\) form in a pop-up window with a test message in which the following boxes are filled in as follows:

    -   **From**: *marketing@sweetlife.example.com*
    -   **To**: *system@sweetlife.example.com*
    Notice the *Draft* status of the message in the **Email Status** box of the Summary area.

2.  On the form toolbar, click **Send**. The system sends the message and closes the window with the [Email Activity](CR_30_60_15.md) form.
3.  Open the **Messages** tab. In the table, the system has added the row that has the settings of the test message. In the **Email Status** column, notice the *Pending Processing* status of the message. As soon as the test email has been delivered to the test mailbox, the system changes the status to *Processed*.

**Tip:** If a test email account has been configured as described in [Configuring Email Accounts](EM__con_Configuring_Email_Accounts.md), and the test message has been successfully delivered to your test mailbox, you can click **Send** on the form toolbar to send the mass emails to the members of the marketing list.

**Parent topic:**[Managing Mass Emails](../UserGuide/CRM_Mktg_Managing_Mass_Emails_Mapref.md)

