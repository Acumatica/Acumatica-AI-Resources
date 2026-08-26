# To Add a Synchronization Policy {#_e893c7c4-f184-4f7b-b0aa-9912d65f2251 .task}

You use synchronization policies to specify the settings for synchronization between user accounts in Acumatica ERP and their mailboxes. You add, delete, and manage synchronization policies by using the [Exchange Integration Policies](SM_20_40_10.md) \(SM204010\) form.

For more information about synchronization policies, see [Synchronization Policies](EM__con_Synch_Policies.md).

## To Add a Synchronization Policy { .section}

1.  Sign in to your Acumatica ERP instance.
2.  Open the [Exchange Integration Policies](SM_20_40_10.md) \(SM204010\) form.
3.  In the **Policy Name** box, type the name for the new policy.
4.  In the **Description** box, type the policy description.
5.  On the **Synchronization Settings** tab, in the **General** section, do the following:
    1.  In the **Category Name** box, type the name of the category that will be used for marking the synchronized records in a user's mailbox.
    2.  In the **Category Color** box, select the color.
    3.  In the **Conflict Resolution Priority** box, select how conflicts will be resolved in the case of a bidirectional synchronization.
6.  Specify the settings for contact synchronization. In the **Contacts** section, do the following:
    1.  To synchronize contacts, select the **Synchronize Contacts** check box.
    2.  If you want to store the synchronized contacts in a specific folder in user mailbox, select the **Use Separate Folder for Contacts** check box and type the name of a folder in the **Folder Name** box.
    3.  If you want to avoid duplicating contact accounts in Acumatica ERP, select the **Merge Contacts by Email** check box.
    4.  If you don't want to mark the exported contacts in each user's mailbox, select the **Synchronize New Items without Category** check box.
    5.  In the **Direction** box, select the direction for synchronization.
    6.  In the **Filter** box, select the option that indicates which contacts are to be synchronized: all contacts, the contacts associated with a user or the user's workgroup.
    7.  In the **Contact Class** box, select a contact class to be assigned to the contacts imported to Acumatica ERP.
7.  Specify the settings for email synchronization. In the **Email** section, do the following:
    1.  To synchronize emails, select the **Synchronize Emails** check box.
    2.  In the **Folder Name** box, type the name of a folder in each user's mailbox to be used to store emails that are exported from Acumatica ERP.
    3.  If you want to synchronize attachments, select the **Synchronize Attachments** check box.
8.  Specify the settings for task synchronization. In the **Tasks** section, do the following:
    1.  To synchronize tasks, select the **Synchronize Tasks** check box.
    2.  If you want to store the synchronized tasks in a specific folder in each user's mailbox, select the **Use Separate Folder for Tasks** check box and type the name of a folder in the **Folder Name** box.
    3.  If you don't want to mark the exported tasks in each user's mailbox, select the **Synchronize New Items without Category** check box.
    4.  In the **Direction** box, select the direction for synchronization.
9.  Specify the settings for event synchronization. In the **Events** section, do the following:
    1.  To synchronize events, select the **Synchronize Events** check box.
    2.  If you want to store the synchronized events in a specific folder in each user's mailbox, select the **Use Separate Folder for Events** check box and type the name of a folder in the **Folder Name** box.
    3.  If you don't want to mark the exported contacts in each user's mailbox, select the **Synchronize New Items without Category** check box.
    4.  In the **Direction** box, select the direction for synchronization.
10. On the form toolbar, click **Save**.

You can use the synchronization policy you have added to specify synchronization settings for the employees.

**Parent topic:**[Synchronizing Acumatica ERP with Microsoft Exchange Server](../UserGuide/EM__mng_Exchange_server.md)

