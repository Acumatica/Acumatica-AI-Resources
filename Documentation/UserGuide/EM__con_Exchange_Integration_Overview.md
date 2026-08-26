# Integration with Exchange Server {#_5a7b55cc-7f23-4b0d-91e7-75bdec9172b3 .concept}

Microsoft Exchange Server is one of the most popular email-based collaborative communication servers for businesses. By integrating Acumatica ERP with Exchange Server, you can seamlessly and transparently synchronize contacts, tasks, appointments, and emails across platforms.

You control the synchronization process by setting up synchronization policies and assigning those policies to your users. Automatic synchronization ensures that updates are delivered on time.

In this topic, you will find information about synchronization between Acumatica ERP and Microsoft Exchange Server.

## Requirements { .section}

Acumatica ERP can be integrated with Microsoft Exchange Server 2013 or later.

The license for your Acumatica ERP instance must include the following features, which must be enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form:

-   *Exchange Integration*: Required for the configuration and management of integration with Exchange Server
-   *Scheduled Processing*: Required for the setup of synchronization schedules

## Support of Authentication with OAuth 2.0 { .section}

If you use MS Exchange Server in Azure cloud or have a subscription to MS Office 365, you can configure the system to use the OAuth 2.0 authentication method for integration. The system uses the Microsoft Entra ID service for authentication.

You use the [Exchange Integration Configuration](SM_20_40_15.md) \(SM204015\) form to configure this synchronization; on the form, you select the *Microsoft Graph \(Microsoft 365\)* option in the **Web Services** box. Then you configure a connector of the *Microsoft Graph* type on the [External Applications](SM_30_10_00.md) \(SM301000\) form and specify the connector in the **External Application** box on the [Exchange Integration Configuration](SM_20_40_15.md) form. While you configure the connector, you need to register the connector in the [Microsoft Azure Portal](https://portal.azure.com/) to obtain the needed settings for the connector. For details on registering the connection in the Microsoft Azure Portal, see [To Create a System Email Account for Office 365 with OAuth 2.0](EM__HOW_To_Create_a_System_Email_Account_for_Office_365_with_OAuth_2_0.md).

## Customer Management { .section}

We recommend that you set up the customer management functionality in your Acumatica ERP instance. Even though your employees can work with emails, tasks, events, and contacts by using other Acumatica ERP capabilities, the customer management functionality provides a single entry point for your employees to work with contacts. On the [Contacts](CR_30_20_00.md) \(CR302000\) form, they can view and manage all emails, tasks, and appointments grouped by contacts.

## Configuration Tasks { .section}

To configure the integration between the Acumatica ERP instance and the Exchange Server instance, you will perform the following basic tasks:

1.  Configuring synchronization policies that define synchronization settings, such as the directions for synchronization and the types of records that would be synchronized across platforms. For more information, see [Synchronization Policies](EM__con_Synch_Policies.md).
2.  Setting up an account for your Exchange Server in the Acumatica ERP instance. You specify the connection settings and the Exchange Server account to be used for synchronization. For details, see [Configuration of Synchronization with Exchange Server](EM__con_Exchange_Server_account.md).
3.  Setting up synchronization for your Acumatica ERP users. For every user, you specify the Exchange server to connect to, the synchronization policy, and the schedule for automatic synchronization. For more information, see [Synchronization of User Records in Acumatica ERP with Exchange Mailboxes](EM__con_Synch_for_Users.md).

**Parent topic:**[Synchronizing Acumatica ERP with Microsoft Exchange Server](../UserGuide/EM__mng_Exchange_server.md)

