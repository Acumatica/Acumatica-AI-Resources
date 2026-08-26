# To Configure Predefined Integration Scenarios {#_322799f8-ba40-40a7-84dc-45cb1822ba82 .task}

When configuring data synchronization between Acumatica ERP and Salesforce, you may need to review the following integration scenarios:

-   *Import Business Account from Salesforce*, *Import Case from Salesforce*, *Import Contact from Salesforce*, *Import Lead from Salesforce*, *Import Opportunity from Salesforce*, and *Import User from Salesforce* on the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form
-   *Export Base Sales Prices to Salesforce*, *Export Business Account to Salesforce*, *Export Case to Salesforce*, *Export Contact to Salesforce*, *Export Default Prices to Salesforce*, *Export Lead to Salesforce*, *Export Non-Stock Item to Salesforce*, *Export Opportunity to Salesforce*, and *Export Stock Item to Salesforce* on the [Export Scenarios](SM_20_70_25.md) \(SM207025\) form

**Note:** If you try using one of the listed above integration scenarios to import \(or export\) an entity whose synchronization settings are specified on the [Salesforce Sync Entities](SF_20_50_20.md) \(SF205020\) form, the system will import \(or export\) zero records.

In the integration scenarios that you are going to use, verify the mapping in the following cases:

-   Your company uses custom values, such as statuses or stages.
-   You need to synchronize custom fields, particular class IDs, or attributes. You may also need to make sure that you have specified default values for all required attributes.
-   You want to apply auto-numbering to imported records.

    For instance, in the *Import Business Account from Salesforce* scenario, you may need to replace the value in the **Source Field/Value** column for the *Business Account* field with the following string:

    ```
    =IsNull(AccountNumber, BAccount.AcctCD)
    ```


For more information on scenario mapping, see [Configuring Scenario Mapping](IS__mng_Scenario_Mapping.md).

**Parent topic:**[Setting Up Synchronization with Salesforce](../UserGuide/SF_00_00_00.md)

