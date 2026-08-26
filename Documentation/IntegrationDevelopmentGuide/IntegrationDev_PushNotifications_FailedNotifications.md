# Push Notifications: Failed Notifications {#_c2d4c4a4-c2fe-4929-ac07-5aa97f2fd6cf .concept}

Acumatica ERP makes at most five attempts to send a push notification to the HTTP address, message queue, or commerce push destination automatically. If Acumatica ERP cannot send a notification, it logs information on the failed notification and displays this notification on the [Process Push Notifications](../UserGuide/SM_50_20_00.md) \(SM502000\) form. You can resend the failed notifications for two days, after which the notifications are removed from the Acumatica ERP database.

**Attention:** If a notification has failed in Acumatica ERP before it was sent \(for example, if Acumatica ERP could not retrieve the data for the notification\), this notification is not displayed in the table on the [Process Push Notifications](../Shared/../UserGuide/SM_50_20_00.md#) form. Acumatica ERP saves the information about these notifications in the PushNotificationsErrors database table if the `api:push-notifications:enable-dead-message-log` key is set to `true` in the `appSettings` section of the `web.config` file of the Acumatica ERP instance.

## Viewing a Failed Push Notification { .section}

To view a failed push notification, on the [Process Push Notifications](../UserGuide/SM_50_20_00.md) \(SM502000\) form, for the row that contains the notification you want to view, you click **Show Notification**. The **Notification Event** dialog box, which opens, displays the notification in JSON format. For details on the format of the notification, see [Push Notifications: Format](IntegrationDev_PushNotifications_Format.md).

## Resending Failed Push Notifications { .section}

On the [Process Push Notifications](../UserGuide/SM_50_20_00.md) \(SM502000\) form, you can resend failed push notifications by doing one of the following:

-   If you want to resend particular notifications, in the table on the form, you select the check boxes in the rows that correspond to the notification you want to send, and click **Send** on the form toolbar.
-   If you want to resend all notifications, on the form toolbar, you click **Send All** on the form toolbar.

**Attention:** Push notifications that have the **Truncated** check box selected cannot be resent.

You can also automate the process of resending failed notifications. You first create a generic inquiry based on the `PX.PushNotifications.UI.DAC.PushNotificationsFailedToSend` data access class, which corresponds to the [Process Push Notifications](../UserGuide/SM_50_20_00.md) form. You then configure a push notification for this generic inquiry.

## Deleting Failed Push Notifications { .section}

On the [Process Push Notifications](../UserGuide/SM_50_20_00.md) \(SM502000\) form, you can delete failed push notifications by doing one of the following:

-   If you want to delete particular notifications, in the table on the form, you select the unlabeled check boxes in the rows that correspond to the notifications you want to delete, and click **Delete** on the form toolbar.
-   If you want to delete all notifications, on the form toolbar, you click **Delete All**.

You then need to save your changes on the form.

**Parent topic:**[Configuring Push Notifications for Real-Time Monitoring](../IntegrationDevelopmentGuide/IntegrationDev_PushNotifications_Mapref.md)

