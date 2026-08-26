# Automated Synchronization: Business Events for Aborted Records {#_f5fe3f29-d664-489f-bf1f-344912945371 .concept}

Acumatica ERP provides a set of predefined business events that can be activated to trigger the sending of an email notification to the administrator of an online store about aborted synchronization records. Each of the predefined business events is defined for one of the following entities: *Sales Order*, *Payment*, *Shipment*, or *Refund*. The notification is sent when the commerce connector fails to process a synchronization record related to the entity if the maximum allowed number of failed attempts has been exceeded. The administrator specifies the maximum allowed number of failed attempts for each entity on the [Entities](BC_20_20_00.md) \(BC202000\) form or on the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form.

To cause any of the predefined business events to start triggering email notifications about aborted synchronization records of the entity whose synchronization records are monitored by the business event, you need to perform the following general steps:

-   On the **General** tab of the [BigCommerce Stores](BC_20_10_00.md) form, specify the administrator of the store in the **Administrator** box.
-   On the [Business Events](SM_30_20_50.md) \(SM302050\) form, activate the needed business event by selecting the **Active** check box in the Selection area for the event.

Once the business event has been activated and the administrator of the store has been specified, the system will automatically start sending the store administrator email notifications each time a synchronization record of the corresponding entity is aborted.

The following table lists the predefined business events that you can activate on the [Business Events](SM_30_20_50.md) form, the description of the business event, the underlying generic inquiry \(that is, the inquiry that defines the data the system should monitor, which is aborted synchronization records of the entity, to detect whether this business event has occurred\), and the notification template that has been specified as a subscriber to the business event.

|Business Event ID|Description|Generic Inquiry|Notification Template|
|-----------------|-----------|---------------|---------------------|
|*BCAbortedOrder*|Triggers notifications for aborted synchronization records of the *Sales Order* entity|*BC-DB-AbortedOrders*|*Aborted Order Notification*|
|*BCAbortedPayment*|Triggers notifications for aborted synchronization records of the *Payment* entity|*BC-DB-AbortedPayments*|*Aborted Payment Notification*|
|*BCAbortedRefund*|Triggers notifications for aborted synchronization records of the *Refund* entity|*BC-DB-AbortedRefunds*|*Aborted Refund Notification*|
|*BCAbortedShipment*|Triggers notifications for aborted synchronization records of the *Shipment* entity|*BC-DB-AbortedShipments*|*Aborted Shipment Notification*|

For information about email notifications that are triggered by business events, see [Business Events: Subscribers](SA_Using_Business_Events_Subscribers_Concept.md).

**Parent topic:**[Automating Synchronization](../UserGuide/Commerce_BC_Automated_Sync_Mapref.md)

