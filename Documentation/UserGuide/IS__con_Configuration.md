# Configuration {#_54cba765-c5a7-43ce-be52-bc6d3b5984fb .concept}

Because Acumatica ERP provides built-in integration scenarios and a data provider that has been configured to work with basic installations of Acumatica ERP and Salesforce, you can quickly configure the integration of these systems. Immediately after configuration, you can start synchronizing the data between the two products.

However, an Acumatica ERP administrator may need to additionally configure the built-in integration scenarios and modify the mapping rules between Salesforce object data fields and Acumatica ERP data fields of Acumatica ERP entities. The synchronization solution uses this map to convert data from the format recognized by one system to the format recognized by the other system.

In Salesforce, an administrator should configure authentication and create the custom fields that are required to maintain data synchronization.

For details on the configuration process, see [Quick Configuration Steps](IS__con_Configuration_of_Integration.md).

## Salesforce Sync Data Provider { .section}

Acumatica ERP uses the *Salesforce Sync* data provider in the following cases:

-   For real-time synchronization of data between Acumatica ERP and Salesforce. Data related to an entity listed on the [Salesforce Sync Entities](SF_20_50_20.md) \(SF205020\) form can be synchronized between the systems in real time. Synchronization of this type does not depend on the **Sync Type** setting of the involved integration scenario.
-   For synchronization of data through integration scenarios. Data related to an entity that is not listed on the [Salesforce Sync Entities](SF_20_50_20.md) \(SF205020\) form can be synchronized between the systems through an integration scenario that uses the *Salesforce Sync* data provider.

In the case of synchronization through an integration scenario, a proper type of synchronization should be selected for the integration scenario in the **Sync Type** box on the [Import by Scenario](SM_20_60_36.md) \(SM206036\) or [Export by Scenario](SM_20_70_36.md) \(SM207036\) form; the following options are available:

-   *Full* \(default\): Any record for which a matching record has been found in the other system becomes updated accordingly. Any record without a match is deleted.
-   *Incremental - All Records*: Any record for which a matching record has been found in the other system becomes updated accordingly. For a record without a match, a matching record is created.
-   *Incremental - New Only*: For any record for which no matching record has been found in the other system, such a matching record is created.

## Specific Functions Available for Integration Scenarios { .section}

The table below provides a list of specific functions that may be used in formulas in an integration scenario that uses the *Salesforce Sync* data provider. \(For more information about functions, see [Functions](IS__con_IS_Functions.md).\)

|Scenario Type|Function|Description|
|-------------|--------|-----------|
|Export|GetEntityId\(\)|Returns the CD of the record that is being exported. Used as a value for a key field.|
|GetSalesforceId\(\)|Returns the ID of the record in Salesforce that corresponds to the specified CD of the record in Acumatica ERP. Throws an exception when nothing is found.|
|GetSalesforcePricebookEntryId\(\)|Returns the *PriceBookEntry* value that corresponds to the specified *ProductCode* and *PriceBookID* values, which are the identifiers of the matching records in Salesforce. Throws an exception when nothing is found.|
|Import|GetEntityId\(\)|Returns the CD of the record that is being imported. Returns *0* if no local entity is found by *RemoteID*. Used as a value for a key field.|
|GetEntityIdBySalesforceId\(string SalesforceID\)|Returns the CD of the record in Acumatica ERP that corresponds to the specified ID of the record in Salesforce. Throws an exception when nothing is found. Specified in key fields during the import of data.|
|Any|SplitAddressStreet\(string Address, int maxLength, int index\)|Splits an address line into multiple text lines whose length does not exceed the *maxLength* value. *Index* indicates which of these lines should be used in the target record.|

**Parent topic:**[Overview of Synchronization with Salesforce](../UserGuide/IS__con_Integration_with_Salesforce.md)

