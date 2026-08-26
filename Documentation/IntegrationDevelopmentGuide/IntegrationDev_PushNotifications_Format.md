# Push Notifications: Format {#_7dabea03-649c-4228-8d5b-16e907be2c5a .concept}

Acumatica ERP sends push notifications in JSON format. This topic describes the structure of the notifications.

## Elements { .section}

The push notifications that Acumatica ERP sends include the following elements in JSON format.

|Element|Description|
|-------|-----------|
|Inserted|The rows that are new in the results of the query execution.**Tip:** If an attribute is included in the list of fields that the system should track, the returned row contains null for the value of the attribute that was not changed.

|
|Deleted|The rows that were in the results of the query execution but are missing after the latest data transaction. You can compare the Inserted and Deleted rows to identify the rows that have been updated.**Attention:** The same value is inserted in the Inserted and Deleted elements of a push notification if all of the following are true:

-   You've set up multilingual user input \(as described in [Locales and Languages](../UserGuide/SM__CON_Locales_and_Languages.md)\).
-   You've added a field with values in multiple languages to a generic inquiry that's being monitored by a push notification.
-   This field has been changed, which triggered a push notification.

**Tip:** If an attribute is included in the list of fields that the system should track, the returned row contains null for the value of the attribute that was not changed.

|
|Query|The query for which Acumatica ERP has produced the notification. The value of the element can be either the name of the generic inquiry or the name of the class with the built-in query definition.|
|CompanyId|The name of the tenant.|
|Id|The unique identifier of the data transaction in Acumatica ERP that has initiated the notification. The external application can use this identifier to omit duplicated notifications.|
|TimeStamp|The `long` value that corresponds to the date and time when the transaction that initiated the notification happened in Acumatica ERP. By using the value of this element, the external application can define the order of notifications.|
|AdditionalInfo|Any additional information that is added to the notification. This element can contain additional information added by the system as well as the custom information. For more information on how to add custom information to push notifications, see [Push Notifications: To Include Additional Information in Push Notifications](IntegrationDev_PushNotifications_Activity_AdditionalInfo.md).|

## Example { .section}

Suppose that push notifications are configured for the *Stock Items: Last Modified Date* generic inquiry \(which displays the **InventoryID**, **StockItem**, **ItemStatus**, and **InventoryItem\_lastModifiedDateTime** columns\). Acumatica ERP sends the following notification when the status of the *AACOMPUT01* inventory item has been changed from *Active* to *Inactive*.

```
{
  "Inserted":
  [{
    "InventoryID":"AACOMPUT01",
    "StockItem":true,
    "ItemStatus":"Inactive",
    "InventoryItem_lastModifiedDateTime":"2024-05-05T15:16:23.1"
  }],
  "Deleted":
  [{
    "InventoryID":"AACOMPUT01",
    "StockItem":true,
    "ItemStatus":"Active",
    "InventoryItem_lastModifiedDateTime":"2024-05-05T15:16:23.103"
  }],
  "Query":"Stock Items: Last Modified Date",
  "CompanyId":"MyTenant",
  "Id":"1af4d140-5321-41f2-a2ec-50b67f577c6c",
  "TimeStamp":636295833829493672,
  "AdditionalInfo":{}
}
```

**Parent topic:**[Configuring Push Notifications for Real-Time Monitoring](../IntegrationDevelopmentGuide/IntegrationDev_PushNotifications_Mapref.md)

