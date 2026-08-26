# Automated Synchronization: Real-Time Synchronization {#_3c563812-d90a-47c0-8a8c-f966e1d92795 .concept}

With real-time synchronization, Acumatica ERP attempts to prepare data or prepare and process data as soon as a change occurs in Acumatica ERP or in the ecommerce system. Depending on the entity involved and your company's processes, real-time synchronization can involve import or export or can be bidirectional. \(For some entities, the direction of the synchronization is system-specified and cannot be changed.\)

Real-time import relies on webhooks that Acumatica ERP receives from an ecommerce system, and real-time export makes use of the push notification mechanism available in Acumatica ERP. For general information about push notifications in Acumatica ERP, see [Push Notifications: General Information](../IntegrationDevelopmentGuide/IntegrationDev_PushNotifications_GeneralInfo.md).

## Real-Time Mode { .section}

Before you turn on real-time synchronization for an entity, you specify how changes to records of the entity should be handled. To do so, in the Summary area of the [Entities](BC_20_20_00.md) \(BC202000\) form, in the **Real-Time Mode** box, you select one of the following options:

-   *Prepare*: As soon as a push notification about a change to data is received, the corresponding synchronization record is placed in the processing queue. The synchronization record appears on the [Sync History](BC_30_10_00.md) \(BC301000\) form, but the change is not recorded to the destination system unless the synchronization record is processed manually or by an automation schedule.
-   *Prepare &amp; Process*: As soon as a push notification about a change to data is received, the corresponding synchronization record is placed in the processing queue. At the same time, a background process will immediately start processing synchronization records from that queue.

**Tip:** You can also specify the real-time mode for an entity on the **Entities** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.

## Turning On of Real-Time Synchronization { .section}

To turn on real-time synchronization for an entity, on the [Entities](BC_20_20_00.md) \(BC202000\) form, you select the store and the entity and then click **Start Real-Time Sync** on the form toolbar. Real-time synchronization is turned on for the direction specified in the **Sync Direction** box of the Summary area as follows:

-   If the **Sync Direction** is *Export*, only real-time export is turned on for the entity.
-   If the **Sync Direction** is *Import*, only real-time import is turned on for the entity.
-   If the **Sync Direction** is *Bidirectional*, both real-time export and real-time import are turned on for the entity.

The status of the real-time import and export processes for an entity are displayed in the **Real-Time Import** and **Real-Time Export** boxes in the Summary area and can be either of the following:

-   *Running*: Real-time synchronization has been turned on.
-   *Stopped*: Real-time synchronization is off but can be turned on.
-   *Not Supported*: Real-time synchronization cannot be turned on.

To turn off real-time synchronization for an entity, you select the store and the entity in the Summary area, and then click **Stop Real-Time Sync** on the form toolbar.

For detailed instructions on how to enable real-time synchronization, see [Automated Synchronization: To Turn On Real-Time Synchronization](Commerce_SP_Automated_Sync_To_Enable_Real-Time_Sync.md).

## Webhook URL for Real-Time Import { .section}

If the synchronization direction is set to *Import* or *Bidirectional*, when you click **Start Real-Time Sync** on the form toolbar of the [Entities](BC_20_20_00.md) \(BC202000\) form, the system displays the **Start Real-Time Sync** dialog box. In the **Real-Time Webhook URL** box of this dialog box, you can update the URL which Acumatica ERP will use for webhook notifications from the ecommerce system, if necessary. The webhook URL must be publicly accessible and have SSL/TLS encryption. If a webhook cannot be delivered to the webhook URL, real-time import will not work. When real-time synchronization is running, the URL that is currently used to receive webhooks for the entity is displayed in the **Real-Time Webhook URL** box of the Summary area.

## Limitations of Real-Time Synchronization { .section}

The use of real-time synchronization has the following limitations:

-   Real-time synchronization in the *Import* direction is not reliable. Webhooks may be lost, disabled, or deleted, in which case notifications about the changes will not be received and the synchronization will not happen. We recommend that for each entity for which you have configured real-time synchronization, you set up an automation schedule to run data preparation in *Incremental* mode at least once a night.
-   The background process makes only one attempt to process each synchronization record placed in the processing queue by the real-time synchronization process. If the attempt fails, processing continues for other records in the queue. We recommend that you set up an automation schedule to regularly run data processing to ensure that failed synchronization records are synchronized.
-   In some cases, Acumatica ERP or an ecommerce system may generate multiple notifications for the same record. For example, when a shipment is processed, Acumatica ERP generates multiple notifications about updates to the sales order. For optimal performance, incoming notifications are processed with a delay of 15 to 20 seconds to ensure that all related notifications are processed simultaneously.

**Parent topic:**[Automating Synchronization](../UserGuide/Commerce_SP_Automated_Sync_Mapref.md)

