# Push Notifications: Recommendations for the Data Queries {#_99dc32c1-00ac-498a-9412-6c7cf766eaa8 .concept}

For optimal results, you need to follow these recommendations when you create each data query for which you want to configure push notifications:

-   Do not use aggregation and grouping in the query; Acumatica ERP does not guarantee that push notifications will work correctly with such queries.
-   Do not use joins of multiple detail tables in the query because this may cause the system to hang.
-   If you need to join multiple tables, use a left join or an inner join in the data query. If you use an inner join, the query execution may be slower than for a left join.
-   Use as simple a data query as possible.
-   For a query defined by using a generic inquiry, do not use a formula on the **Results Grid** tab of the [Generic Inquiry](../UserGuide/SM_20_80_00.md) \(SM208000\) form.
-   For a query defined by using a generic inquiry, do not use description fields of selectors on the **Results Grid** tab of the [Generic Inquiry](../UserGuide/SM_20_80_00.md) form. To track changes in the description value, in the generic inquiry, explicitly join the table that contains the description and add the field from this table in the results of the generic inquiry.

**Parent topic:**[Configuring Push Notifications for Real-Time Monitoring](../IntegrationDevelopmentGuide/IntegrationDev_PushNotifications_Mapref.md)

