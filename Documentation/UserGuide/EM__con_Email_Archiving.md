# Email Archiving {#_68c7b8af-728a-40ad-bb73-447e0068d1db .concept}

Over time, system email accounts may accumulate an extremely large number of emails, both incoming and outgoing, which may result in considerable system slowdown, especially if incoming mail processing has been enabled for these accounts.

In Acumatica ERP, you can archive emails that are too old to be relevant. On the [Email Preferences](SM_20_40_01.md) \(SM204001\) form, you can enable email archiving by specifying the minimum age of emails to be archived. The actual archiving is performed when you apply this setting to a particular system email account by executing the *Send All*, *Receive All*, or *Send/Receive All* action, which you can do on any of the following forms:

-   [Email Accounts](SM_20_40_02.md) \(SM204002\): On this form, you can process only one email account at a time.
-   [Send and Receive Email](SM_50_70_10.md) \(SM507010\): On this form, you can process multiple email accounts at once.
-   [Automation Schedules](SM_20_50_20.md) \(SM205020\): You can use this form to create an automation schedule for the [Send and Receive Email](SM_50_70_10.md) form so that you can regularly process the selected email accounts. For details, see [To Create a Send and Receive Email Schedule](EM__HOW_To_Create_a_Send_and_Receive_Schedule.md).

Emails with any status can be archived. After the archiving process is completed, the archived emails disappear from the lists on the Incoming \(CO4090PL\) and Sent \(CO4090PL\) inquiries; instead, they are all listed on the Archived \(CO4090PL\) inquiry. \(Also, you can review a list of archived emails on the **Archived Emails** tab of the [All Emails](CO_40_90_70.md) \(CO409070\) form.\) Thus, archived emails do not get in your way when you are browsing through incoming or outgoing emails, although you still can search for an archived item, or even perform regular actions, such as **Reply** or **Forward**, on it.

Also, you can archive any email by opening it on the [Email Activity](CR_30_60_15.md) \(CR306015\) form and using the **Archive** command on the More menu.

**Tip:** After it has been archived, an email associated with a particular entity remains listed on the **Activities** tab of the respective data entry form. Also, if time tracking has been enabled for this email, the billable time spent on this email \(if any\) will be billed to the customer even if the email has been archived. \(For more information on time tracking for activities, see [Employee Time Entry: Time Activities](TimeExpenses_Entering_Employee_Time_Time_Activities.md).\)

An archived email can be restored from the archive. When it has been restored, the email disappears from list on the Archived \(CO4090PL\) inquiry and is again listed on the Incoming or Sent form, depending on whether it is an incoming or outgoing email. The status of the email remains the same as it was before the archiving. You can restore an individual email by opening it on the [Email Activity](CR_30_60_15.md) form and clicking **Restore from Archive** on the More menu.

**Parent topic:**[Managing Emails](../UserGuide/EP__con_Email_Management.md)

