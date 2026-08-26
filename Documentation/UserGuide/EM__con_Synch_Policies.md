# Synchronization Policies {#_081a9f26-d333-482c-a7d6-07147ec5bdba .concept}

Synchronization policies define the settings for synchronization between your Exchange Server and Acumatica ERP instances, such as the record types to be synchronized, the synchronization direction, and the way the synchronized records will be marked.

You can create different synchronization policies to meet the needs of the employees of your company. Rather than configuring synchronization individually for each employee, you define the synchronization policies and assign them to employees. Changing a synchronization policy changes the synchronization settings for all employees with this policy assigned.

## Record Types { .section}

For a synchronization policy, you can select the types of records to be synchronized. The following table shows how record types are mapped between Acumatica ERP and Exchange Server.

|Record Types in Acumatica ERP|Record Types in Exchange Server|
|-----------------------------|-------------------------------|
|Contact|Contact|
|Email|Email|
|Event|Appointment/Meeting|
|Task|Task|

For more information, see [Record Synchronization in Acumatica ERP](EM__con_Sync_Records.md).

## Category { .section}

Any synchronization policy includes a category to be used to mark records exported from Acumatica ERP. A category includes a color and a word \(or a phrase\) that you have entered for the policy.

## Synchronization Direction { .section}

A policy defines the direction for synchronization. You can select either unidirectional or bidirectional synchronization for tasks, contacts, and events. Email synchronization is bidirectional only.

## Conflict Resolution { .section}

If a policy includes bidirectional synchronization of any type of records, you need to define how the system is to resolve possible conflicts that may arise if records of the corresponding type have been updated since the previous synchronization. You can give priority to records from a particular system, or you can choose to keep copies of records from both systems.

## Contact Synchronization { .section}

For a synchronization policy that includes contact synchronization, you have to decide the following:

-   Which contacts will be synchronized: all the available contacts, or specific contact groups \(such as the contacts associated with the user or the user's workgroup\)
-   Whether a specific folder will be used for synchronized contacts

## Email Synchronization { .section}

For a synchronization policy that includes email synchronization, you have to decide the following:

-   Whether a specific folder will be used to store synchronized emails
-   Whether a new contact is to be created each time an employee receives an email from an unknown address
-   Whether you want to synchronize attachments

**Parent topic:**[Synchronizing Acumatica ERP with Microsoft Exchange Server](../UserGuide/EM__mng_Exchange_server.md)

