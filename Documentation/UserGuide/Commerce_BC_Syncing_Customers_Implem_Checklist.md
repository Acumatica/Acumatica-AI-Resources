# Synchronizing Customers: Implementation Checklist {#_c79f5391-e86b-4051-9c22-5f62ccfb7706 .concept}

The following sections provide details you can use to ensure that the system is configured properly for the synchronization of customers and customer locations between Acumatica ERP and the BigCommerce store, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially synchronize customers and customer locations between Acumatica ERP and the BigCommerce store, you make sure the needed features have been enabled and settings have been specified, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The following features have been enabled: -   *Retail Commerce*
-   *BigCommerce Connector*
-   *Business Account Locations* \(for synchronization of customer addresses\)

|
|[Customer Classes](AR_20_10_00.md) \(AR201000\)|The customer class for ecommerce customers has been created. This customer class is used for creating customer records in Acumatica ERP for customers imported from the BigCommerce store.

 See [Accounts Receivable: Customer Classes](../ImplementationGuide/config_Basic_Company_Customer_Classes.md).

|
|[Customers](AR_30_30_00.md) \(AR303000\)|The customer account for importing to Acumatica ERP orders placed in the online store by guest users has been created.

 See [Customers: General Information](Customer_GeneralInfo.md).

|
|[Numbering Sequences](CS_20_10_10.md) \(CS201010\)|-   A numbering sequence has been defined for the auto-numbered segment that will be used for generating customer IDs on import.
-   A numbering sequence has been defined for the auto-numbered segment that will be used for generating customer location IDs on import.

 See [Use of Numbering Sequences](CS__con_Multiple_Numbering_Sequences.md).

|
|[BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form|-   The connection to the BigCommerce store has been established as described in [Initial Configuration of a BigCommerce Store](Commerce_BC_Initial_Configuration_Mapref.md).
-   On the **Entities** tab, the following entities have been activated:
    -   *Customer*
    -   *Customer Location* \(if customer locations should be synchronized together with customers\)
-   On the **Customers** tab, the following boxes have been filled in:
    -   **Customer Class**
    -   **Customer Numbering Template** \(if the *CUSTOMER* segmented key has more than one segment\)
    -   **Customer Numbering Sequence**
    -   **Location Numbering Template** \(if the *LOCATION* segmented key has more than one segment\)
    -   **Location Numbering Sequence**
    -   **Generic Guest Customer**

|
|[Entities](BC_20_20_00.md) \(BC202000\)|-   The filtering conditions for the export and import of the *Customer* entity have been defined, if necessary.
-   The additional mappings for the export and import of the *Customer* entity have been defined, if necessary.

|

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in [Synchronizing Customers: To Perform Bidirectional Synchronization](Commerce_BC_Syncing_Customers_To_Perform_Bidirectional_Sync.md) and [Synchronizing Customers: To Synchronize Customers with Multiple Locations](Commerce_BC_Syncing_Customers_To_Sync_Customers_with_Locations.md).

**Parent topic:**[Synchronizing Customers](../UserGuide/Commerce_BC_Syncing_Customers_Mapref.md)

