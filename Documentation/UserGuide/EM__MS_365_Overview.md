# Microsoft Graph Integration: Overview

Microsoft Exchange Server is one of the most popular email-based collaborative communication servers for businesses. By integrating Acumatica ERP with Exchange Server, you can seamlessly and transparently synchronize contacts, tasks, appointments, and emails across platforms.

You control the synchronization process by setting up synchronization policies and assigning those policies to your users. Automatic synchronization ensures that updates are delivered on time.

In this topic, you will find information about synchronization between Acumatica ERP and Microsoft Exchange Server through Microsoft Graph.

## Configuration Tasks

To configure the integration between the Acumatica ERP instance and the Exchange Server instance via Microsoft Graph., you will perform the following basic tasks:

1.  Connecting Acumatica ERP to Microsoft 365. This involves configuring an OAuth 2.0 external application in Acumatica ERP and associating it with the Microsoft Graph application registered in Microsoft Entra. For more information, see [Microsoft 365 Configuration](EM__MS_365_Configuring_Integration_Concept.md).
2.  Granting permissions on the Microsoft Graph side. These permissions are granted to the application rather than to individual Microsoft 365 users and require consent from a Microsoft administrator. Depending on the permissions granted, the application can access the applicable data across the Microsoft 365 tenant without interaction from individual users. For details, see [Microsoft Graph Permissions](EM__MS_Graph_Permissions_Concept.md).
3.  Selecting the employee mailboxes that will participate in synchronization. For more information, see [Synchronizing Microsoft 365 Mailboxes](EM__MS_365_Mailbox_Provisioning_Concept.md).
4.  Setting up synchronization for your Acumatica ERP users. For more information, see [Synchronizing Microsoft 365 Records](EM__MS_365_Synchronization_Concept.md).

-   **[Microsoft 365 Configuration](../UserGuide/EM__MS_365_Configuring_Integration_Concept.md)**  

-   **[Microsoft Graph Permissions](../UserGuide/EM__MS_Graph_Permissions_Concept.md)**  

-   **[Synchronizing Microsoft 365 Mailboxes](../UserGuide/EM__MS_365_Mailbox_Provisioning_Concept.md)**  

-   **[Synchronizing Microsoft 365 Records](../UserGuide/EM__MS_365_Synchronization_Concept.md)**  

-   **[Deletion and Restoration](../UserGuide/EM__MS_365_Deletion_and_Restoration_Concept.md)**  

-   **[Incremental Synchronization and Conflict Resolution](../UserGuide/EM__MS_365_Conflict_Resolution_Concept.md)**  


**Parent topic:**[Synchronizing Acumatica ERP with Microsoft Exchange Server](../UserGuide/EM__mng_Exchange_server.md)

