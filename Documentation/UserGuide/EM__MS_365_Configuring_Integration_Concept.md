# Microsoft 365 Configuration

To synchronize emails, contacts, tasks, and calendar events between Acumatica ERP and Microsoft 365, an administrator connects Acumatica ERP to Microsoft 365 through Microsoft Graph. The configuration links a Microsoft Graph application to the Exchange integration and identifies the Microsoft 365 mailboxes that will participate in synchronization.

The configuration involves the [External Applications](SM_30_10_00.md)\(SM301000\) and [Exchange Integration Configuration](SM_20_40_15.md) \(SM204015\) forms. After the connection has been established, the administrator can select the employees whose Microsoft 365 mailboxes will be synchronized.

## Creating Microsoft Graph Application

Before configuring the exchange integration, the administrator creates an external application on the [External Applications](SM_30_10_00.md)\(SM301000\) form for the Microsoft Graph application registered in Microsoft Entra ID.

The external application provides the connection information that Acumatica ERP uses to communicate with Microsoft 365 through OAuth 2.0. The configuration includes the client ID, client secret, authorization endpoint, and token endpoint of the Microsoft Graph application. For details on registering the connection, see [To Create a System Email Account for Office 365 with OAuth 2.0](EM__HOW_To_Create_a_System_Email_Account_for_Office_365_with_OAuth_2_0.md).

The Microsoft Graph application must also have the application permissions required for the types of data that will be synchronized. Because these permissions provide tenant-wide access and require Microsoft administrator consent, their configuration and security implications should be considered before the connection is established. For details on application permissions, see [Microsoft Graph Permissions](EM__MS_Graph_Permissions_Concept.md).

## Creating Exchange Integration Configuration

On the [Exchange Integration Configuration](SM_20_40_15.md) \(SM204015\) form, the administrator creates the configuration that connects Acumatica ERP to the external application. To integrate Acumatica ERP with the Exchange Server via Microsoft 365, perform the following actions:

1.  Specify the name of the external application in the **Name** box.
2.  Select *Microsoft Graph \(Microsoft 365\)* option in the **Web Services** box.
3.  Specify the identifier of the Azure tenant in which the connector is registered in the **Azure Tenant ID** box.
4.  Select the appropriate Microsoft Graph application in the **External Application** box.
5.  Click **Save** to save the configuration.

## Connecting to Microsoft 365 Service

Once the Exchange integration configuration has been saved, the **Sign In** action becomes available on the [Exchange Integration Configuration](SM_20_40_15.md) \(SM204015\) form.

When the administrator clicks **Sign In**, Acumatica ERP connects to Microsoft 365 service and obtains an access token. The token is associated with the external application selected for the exchange integration configuration.

The **Sign In** action is available only to users who have sufficient access rights to modify the exchange integration configuration. It isn't available to users who have only view access to the form.

## Synchronizing Microsoft 365 Mailboxes

After the Microsoft 365 integration has been configured, the **Mailboxes** tab of the [Exchange Integration Configuration](SM_20_40_15.md) \(SM204015\) form lists the employees who have user profiles. The administrator selects the employees whose Microsoft 365 mailboxes should be synchronized. For more information, see [Synchronizing Microsoft 365 Mailboxes](EM__MS_365_Mailbox_Provisioning_Concept.md)

## Synchronization Policies

At least one synchronization policy must be configured on the [Exchange Integration Policies](SM_20_40_10.md) \(SM204010\) form before Microsoft Graph integration can be used for synchronization.

The synchronization policy determines which types of records are synchronized and controls synchronization settings for emails, contacts, tasks, and events. Some synchronization behavior differs between Microsoft Graph and EWS, particularly for email folders, Microsoft To Do lists, and categories.

For details about these differences and the synchronization behavior of each type of record, see [Synchronizing Microsoft 365 Records](EM__MS_365_Synchronization_Concept.md).

**Parent topic:**[Microsoft Graph Integration: Overview](../UserGuide/EM__MS_365_Overview.md)

