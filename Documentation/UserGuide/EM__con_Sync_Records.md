# Record Synchronization in Acumatica ERP {#_fc67077e-96a3-4048-a7e1-a7aa0d6d02d4 .concept}

After you have set up integration with the Exchange server, synchronization of all relevant records is performed automatically in accordance with the configured schedule and applied policies.

In this topic, you will find information about the basic principles that users should follow to ensure seamless synchronization of records.

## Contact Synchronization { .section}

In Acumatica ERP, all contact records available for synchronization are listed on the [Contacts](CR_30_20_00.md) \(CR302000\) form. These contacts are synchronized with the contacts stored in the mailbox on the Exchange server, as specified in the synchronization policy settings. The following synchronization scenarios are possible:

-   A new contact has been created in the system—as a result, an identical contact is added to the user mailbox on the Exchange server.
-   An existing contact has been modified in the system—as a result, the corresponding contact from the user mailbox on the Exchange server is updated accordingly.
-   A contact has been deleted from the system—as a result, the corresponding contact is deleted from the specific public folder on the Exchange Server.
-   A contact has been added to the specific public folder on the Exchange Server—as a result, an identical contact is added to the system.
-   An existing contact has been modified in the specific public folder on the Exchange Server—as a result, the corresponding contact is updated accordingly in the system.
-   A contact has been deleted from the specific public folder on the Exchange Server—as a result, the corresponding contact is deleted from the system.

**Note:** If a contact record on Exchange Server has no country specified, and if, on the [Exchange Integration Policies](SM_20_40_10.md) \(SM204010\) form, the **Conflict Resolution Priority** setting is set to *System* for the synchronization policy applied to contact records, then the synchronized records will be assigned the branch country specified in the configuration settings of the user's branch on the [Branches](CS_10_20_00.md) \(CS102000\) form \(or the default country, if one is specified for the branch\).

## Email Synchronization { .section}

In Acumatica ERP, each contact can have associated email activities listed on the **Activities** tab of the [Contacts](CR_30_20_00.md) \(CR302000\) form. These emails can be synchronized with emails from a specific email folder on the Exchange server; the name of this folder should be specified in the synchronization policy settings. Email attachments can also be synchronized. If an email contains new contacts specified as recipients, the corresponding contact records are created automatically.

**Note:** Email synchronization has the following limitation: Emails with the *Draft* status are not included in synchronization between Microsoft Exchange Server and Acumatica ERP.

## Task Synchronization { .section}

Tasks listed on the Tasks \(EP4040PL\) form are synchronized with Exchange tasks included in a specific category that should be specified in the synchronization policy settings. New tasks assigned to a particular contact can be synchronized in both directions. Any shared task information, if updated, is also synchronized. If a task has been deleted in the system, the corresponding task is deleted on Exchange Server; likewise, if a task is deleted on Exchange Server, the corresponding task is deleted in Acumatica ERP.

Task statuses, which indicate the task processing stages, are mapped as shown in the table below. No synchronization is performed for any task whose status has no corresponding status.

|System Task Status|Exchange Task Status|
|------------------|--------------------|
|*Open*|*Not Started*|
|*Draft*|N/A|
|*In Process*|*In Progress*|
|*Canceled*|*Completed*|
|*Completed*|*Completed*|
|*Approved*|*In Progress*|
|*Pending Approval*|*Waiting on Others*|
|*Rejected*|N/A|
|N/A|*Deferred*|

## Event Synchronization { .section}

Events listed on the Events \(EP4041PL\) form are synchronized with Exchange appointments. Appointments that correspond to canceled events are deleted from the Exchange Server. Completion of an event does not require synchronization with the corresponding appointment. Also, the following synchronization scenarios are possible:

-   A new event has been created in the system—as a result, an identical appointment is added to the initiator's calendar on the Exchange server.
-   The list of attendees has been updated for an existing event—as a result, the list of attendees is updated accordingly for the corresponding appointment; invitations are automatically sent to attendees.
-   An event has been deleted—as a result, the corresponding appointment is deleted from the initiator's calendar on the Exchange server.
-   All updated event information is synchronized with appointment information, and the reverse is true as well.

**Note:** Event synchronization has the following limitation: If an employee \(event owner\) whose events are not synchronized with Exchange appointments creates an event in the system and invites an employee \(attendee\) whose events are synchronized with Exchange appointments, no corresponding appointment will appear on the attendee's calendar on the Exchange server. This happens because an appointment has to be created before an attendee is assigned to it, and if event synchronization is disabled for the event owner, no appointment is created at all. The best way to bypass this limitation is to enable event synchronization for all employees in your company.

**Parent topic:**[Synchronizing Acumatica ERP with Microsoft Exchange Server](../UserGuide/EM__mng_Exchange_server.md)

