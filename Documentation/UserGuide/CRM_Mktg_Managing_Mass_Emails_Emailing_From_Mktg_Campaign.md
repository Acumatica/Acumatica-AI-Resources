# Mass Emails: To Email from a Marketing Campaign {#_1f94dfae-b881-4306-aa11-f0a23cdf095a .task}

The following activity demonstrates how to send a mass email to the members of a marketing campaign.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are Bill Owen, a marketing manager of the SweetLife Fruits &amp; Jams company.You have launched a marketing campaign. The campaign will promote online master classes focused on demonstrating how to use citrus juicers that the company sells. You need to send emails to your target audience describing the details of the master classes and a special offer for the attendees.

## Configuration Overview { .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Customer Management*: This feature provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, as well as the handling of sales opportunities, contacts, marketing lists, and campaigns.
    -   *Scheduled Processing* in the *Monitoring &amp; Automation* group of features: This feature gives you the ability to create schedules for automatic processing.
-   On the [Leads](CR_30_10_00.md) \(CR301000\) form, a list of leads has been added to the system.
-   On the [Mass Emails](CR_30_80_00.md) \(CR308000\) form, the mass email *SweetLife: SuperJuicer Online Master Class!* has been created.
-   On the [Marketing Campaigns](CR_20_20_00.md) \(CR202000\) form, the *Citrus Online Master Classes* marketing campaign has been created.
-   On the [Marketing Lists](CR_20_40_00.md) \(CR204000\) form, the *JCR20OFF* marketing list has been created.
-   On the [Email Accounts](SM_20_40_02.md) \(SM204002\) form, a system email account has been added.
-   On the [Automation Schedules](SM_20_50_20.md) \(SM205020\) form, a schedule for periodic runs of the *Send and Receive Email* process has been created.

## Process Overview { .section}

In this activity, you will do the following:

1.  On the [Marketing Campaigns](CR_20_20_00.md) \(CR202000\) form, add multiple members to the *Citrus Online Master Classes* marketing campaign. These members will receive your mass email.
2.  On the [Mass Emails](CR_30_80_00.md) \(CR308000\) form, prepare the mass email to be sent to the members of the *Citrus Online Master Classes* marketing campaign.
3.  On the [Mass Emails](CR_30_80_00.md) form, send the mass email to the test email address to make sure that the email will be delivered to the recipients.

## System Preparation { .section}

Before you start sending mass emails to the members of a marketing campaign, you should do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded.
2.  Sign in to the system as marketing manager Bill Owen by using the following credentials:
    -   **Username**: *owen*
    -   **Password**: *123*
3.  Make sure that on the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, the *SweetLife Head Office and Wholesale Center* branch is selected.

## Step 1: Adding Multiple Members to a Marketing Campaign { .section}

To add multiple members to the *Citrus Online Master Classes* marketing campaign from a marketing list, do the following:

1.  On the [Marketing Campaigns](CR_20_20_00.md) \(CR202000\) form, open the *Citrus Online Master Classes* marketing campaign.
2.  Open the **Marketing Lists** tab.
3.  In the **Selected** column, select the check box in the row with the *JCR20OFF* marketing list.
4.  On the form toolbar, click **Save**.
5.  In the **Confirmation** dialog box, which opens, click **Update** to update the campaign members.

The system automatically copies the members to the list of members on the **Members** tab from the *Citrus Juicers at a 20% Discount* marketing list. Notice that for these members, the name of the source marketing list has been added to the **Marketing List ID** column of the **Members** tab.

You have added multiple members to the marketing campaign. These members will receive your mass email when you prepare and send it.

## Step 2: Preparing a Mass Email to Be Sent to the Members of the Marketing Campaign { .section}

To prepare a mass email to be sent to the members of the marketing campaign, do the following:

1.  In the Filter List menu of the *Mass Emails* \(CR3080PL\) form, click **All Records**.
2.  In the list of records, double-click the *SweetLife: SuperJuicer Online Master Class!* mass email to open it on the [Mass Emails](CR_30_80_00.md) \(CR308000\) form.

    **Tip:** Creating an email on the [Mass Emails](CR_30_80_00.md) form is described in [Mass Emails: To Create and Send a Mass Email](CRM_Mktg_Managing_Mass_Emails_Create_Mass_Email.md).

3.  On the **Summary** tab, specify the mass email settings as follows:
    1.  In the **Source** box, select *Campaigns*.
    2.  In the **Planned** box, specify the date when you plan to send this email, such as the current date.
4.  On the **Campaigns** tab, in the table, select the **Selected** check box for the *Citrus Online Master Classes* marketing campaign. The members of this campaign will be added to the addressees of the mass email.
5.  On the form toolbar, click **Save**.

You have prepared the mass email to be sent. Now you can test sending the email to make sure it will be delivered to the recipients.

## Step 3: Sending a Mass Email to a Test Mailbox { .section}

To send a mass email to a test mailbox, do the following:

1.  While you are still viewing the *SweetLife: SuperJuicer Online Master Class!* mass email on the [Mass Emails](CR_30_80_00.md) \(CR308000\) form, on the form toolbar, click **Preview Message**.

    The system opens the [Email Activity](CR_30_60_15.md) \(CR306015\) form in a pop-up window with a test message in which the following boxes are filled in as follows:

    -   **From**: *marketing@sweetlife.example.com*
    -   **To**: *system@sweetlife.example.com*
    Notice the *Draft* status of the message in the **Email Status** box of the Summary area.

2.  On the form toolbar, click **Send**. The system sends the message and closes the window with the [Email Activity](CR_30_60_15.md) form.
3.  Open the **Messages** tab. In the table, the system has added a row that has the settings of the test message. In the **Email Status** column, notice the *Pending Processing* status of the message. As soon as the test email has been delivered to the test mailbox, the system changes the status to *Processed*.

**Tip:** If a test email account has been configured in the system and the test message has been successfully delivered to your test mailbox, you can click **Send** on the form toolbar to send the mass emails to the members of the marketing campaign. For details, see [Configuring Email Accounts](EM__con_Configuring_Email_Accounts.md).

**Parent topic:**[Managing Mass Emails](../UserGuide/CRM_Mktg_Managing_Mass_Emails_Mapref.md)

