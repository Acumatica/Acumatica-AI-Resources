# Push Notifications: Destinations {#_87648532-3d21-4e16-b555-c906ebac151b .concept}

When you configure a push notification on the [Push Notifications](../UserGuide/SM_30_20_00.md) \(SM302000\) form of Acumatica ERP, you select the type of the notification destinations, which can be any of the predefined types described in this topic. You can also create your own destination type, as described in [Push Notifications: To Create a Custom Destination Type](IntegrationDev_PushNotifications_Activity_CustomDestinationType.md).

## Webhook { .section}

A webhook is an HTTP address to which Acumatica ERP sends HTTP `POST` requests with notification information. For this destination type, you specify a valid HTTP address in the **Address** box on the [Push Notifications](../UserGuide/SM_30_20_00.md) \(SM302000\) form. For security reasons, you can specify a header of the HTTP request in the **Header Name** and **Header Value** boxes.

**Attention:** Do not specify the `Accept` and `Content-Type` headers for the request. The values of these headers are specified automatically by the system.

If an integrated application returns an error in reply for a push notification, the push notification is resent. If your application processed the request and sent an error in the reply, your application receives the same push notification again, which can lead to duplicate data in the application. Therefore, you should not reply with an error if a push notification is successfully received.

Acumatica ERP makes at most five attempts to send a push notification automatically. For details on the notifications that failed to be sent, see [Push Notifications: Failed Notifications](IntegrationDev_PushNotifications_FailedNotifications.md).

## Message Queue { .section}

The message queue is a local or remote private Microsoft message queue. You specify the address of the message queue \(such as `MyComputer\private$\TestQueueForPushNotificatons`\) in the **Address** box on the [Push Notifications](../UserGuide/SM_30_20_00.md) \(SM302000\) form. For information on how to configure a private Microsoft message queue, see the Microsoft documentation.

The message queue is the most reliable destination type protected from network failures. However, Acumatica ERP makes at most five attempts to send a push notification automatically. For details on the notifications that failed to be sent, see [Push Notifications: Failed Notifications](IntegrationDev_PushNotifications_FailedNotifications.md).

## SignalR Hub { .section}

The SignalR hub is the destination type implemented in Acumatica ERP by using the ASP.NET SignalR library. The address of this destination type is `PushNotificationsHub`, which is filled in automatically in the **Address** box on the [Push Notifications](../UserGuide/SM_30_20_00.md#) \(SM302000\) form. This destination type can be used if you can expose neither an HTTP address \(webhook\) nor a message queue to receive push notifications. If Acumatica ERP is configured to send notifications to the SignalR hub, the external application can connect to Acumatica ERP through websoket or a long-polling mechanism and receive notifications through this connection. If multiple external applications are connected to the SignalR hub, they receive notifications simultaneously. For information on how to connect your application to the SignalR hub of Acumatica ERP, see [Push Notifications: To Connect to the SignalR Hub](IntegrationDev_PushNotifications_Activity_SignalRHub.md).

The SignalR hub destination type is not reliable: If the connection fails or there are no clients connected to the SignalR hub when a notification comes, this notification will not be sent and it cannot be resent later.

## Commerce Push Destination { .section}

The commerce push destination is a local private Microsoft message queue that is used for notifications sent to a commerce connector. The address of this destination type is `Commerce`, which is filled in automatically in the **Address** box on the [Push Notifications](../UserGuide/SM_30_20_00.md#) \(SM302000\) form. For details about commerce push notifications, see [Real-Time Synchronization for a Connector: How Webhooks and Push Notifications Are Used](../PlugInDevelopmentGuide/CommerceConnector_RealTimeSync_HowWorks.md).

Acumatica ERP makes at most five attempts to send a push notification automatically. For details on the notifications that failed to be sent, see [Push Notifications: Failed Notifications](IntegrationDev_PushNotifications_FailedNotifications.md).

**Parent topic:**[Configuring Push Notifications for Real-Time Monitoring](../IntegrationDevelopmentGuide/IntegrationDev_PushNotifications_Mapref.md)

