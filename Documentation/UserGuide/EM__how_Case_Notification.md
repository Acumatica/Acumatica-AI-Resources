# To Add a Notification Template for Changes in the Contents of a Case {#_859e8d77-2767-465c-9657-37ff920d5847 .task}

To add a notification template to inform case owners about customers adding comments or attaching files to cases, you use the [Email Templates](SM_20_40_03.md) \(SM204003\) form. The template you add must be associated with the [Cases](CR_30_60_00.md) \(CR306000\) form.

After you have added the notification template, you register the template on Self-Service Portal to automatically send emails to case owners. For details, see [Configuring Case Management in the Self-Service Portal: Implementation Activity](config_SSP_Admin_Configuring_Case_Management_in_SSP_Implem_Activity.md).

This topic describes how you can add a simple notification template for informing a case owner of additions to their cases.

## To Add a Notification Template for Activities in Cases { .section}

1.  Open the [Email Templates](SM_20_40_03.md) \(SM204003\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the **Notification** box, type the name of the notification.
4.  In the **Screen ID** box, select **Organization** &gt; **Customer Management** &gt; **Work Area** &gt; **Enter** &gt; **Cases** &gt; **Cases** to associate the template with the [Cases](CR_30_60_00.md) form.
5.  In the **From** box, select the system email account to be used to send emails.
6.  In the **To** box, select the case owner. Type `((Case.OwnerID.Email))` or select the necessary option in the list.
7.  In the **Subject** box, type the subject of the email—for example, `New comment on Case #`—and add the case ID. Type `((Case.CaseCD))` or select the necessary option in the list.
8.  In the text area, enter the email text and add the contents of the change. Do the following:
    -   Enter the text of the email.
    -   Add the subject of the customer comment. Type `((ActivitiesSelect.Subject))`.
    -   Add the contents of the case change to the email body. Type `((Activities.Body))`.
9.  On the form toolbar, click **Save**.

**Parent topic:**[Email Templates](../UserGuide/EM__con_Notification_Templates.md)

