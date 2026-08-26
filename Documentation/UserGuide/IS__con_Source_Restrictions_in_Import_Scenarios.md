# Source Restrictions in Import Scenarios {#_6f6a125f-a9ab-464c-81ce-f240462904cf .concept}

You can use source restrictions to filter the data that you want to extract from the source for processing by the import scenario. For example, some customer ID values in the source have *CUST* prefixes. You can specify a source restriction that selects only the records from the source that have the *CUST* prefix in the customer ID field.

To configure restrictions on the data that will be extracted from the source during the import, you specify conditions for the fields of the source file on the **Source Restrictions** tab of the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form. If you specify source restrictions, when the system prepares records for import, it selects only the records that conform to the specified condition or conditions from the source and imports only these records.

For example, suppose that you want to import only the customer records that have the *CUST* prefix in the customer ID. In this case, you can add the condition to the source restrictions that the external customer ID field should start with the *CUST* prefix. The system will import only the records for which the customer ID has the specified prefix.

**Attention:** Source restrictions are ignored when importing scenarios via automation schedules. To specify the restrictions in this case, use generic inquiry filters or trigger conditions of business events.

**Parent topic:**[Configuring Import Scenarios](../UserGuide/IS__mng_Configuring_Import_Scenarios.md)

