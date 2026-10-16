# Synchronizing Customers: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for the synchronization of customers and customer locations between Acumatica ERP and the BigCommerce store, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist

We recommend that before you initially synchronize customers and customer locations between Acumatica ERP and the BigCommerce store, you make sure the needed features have been enabled and settings have been specified, as summarized in the following checklist.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)

</td><td>

The following features have been enabled: -   *Retail Commerce*
-   *BigCommerce Connector*
-   *Business Account Locations* \(for synchronization of customer addresses\)
-   *BigCommerce B2B Integration* \(for synchronization of companies and B2B data\)

</td></tr><tr><td>

[Customer Classes](AR_20_10_00.md) \(AR201000\)

</td><td>

The customer class for ecommerce customers has been created. This customer class is used for creating customer records in Acumatica ERP for customers imported from the BigCommerce store.

 See [Accounts Receivable: Customer Classes](../ImplementationGuide/config_Basic_Company_Customer_Classes.md).

</td></tr><tr><td>

[Customers](AR_30_30_00.md) \(AR303000\)

</td><td>

The customer account for importing to Acumatica ERP orders placed in the online store by guest users has been created.

 See [Customers: General Information](Customer_GeneralInfo.md).

</td></tr><tr><td>

[Numbering Sequences](CS_20_10_10.md) \(CS201010\)

</td><td>

-   A numbering sequence has been defined for the auto-numbered segment that will be used for generating customer IDs on import.
-   A numbering sequence has been defined for the auto-numbered segment that will be used for generating customer location IDs on import.

 See [Use of Numbering Sequences](CS__con_Multiple_Numbering_Sequences.md).

</td></tr><tr><td>

[BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form

</td><td>

-   The connection to the BigCommerce store has been established as described in [Initial Configuration of a BigCommerce Store](Commerce_BC_Initial_Configuration_Mapref.md).
-   On the **Entities** tab, the following entities have been activated:
    -   *Customer*
    -   *Customer Location* \(if customer locations should be synchronized together with customers\)
    -   *Company* \(if companies and B2B data should be synchronized\)
-   On the **Customers** tab, the following boxes have been filled in:
    -   **Customer Class**
    -   **Customer Numbering Template** \(if the *CUSTOMER* segmented key has more than one segment\)
    -   **Customer Numbering Sequence**
    -   **Location Numbering Template** \(if the *LOCATION* segmented key has more than one segment\)
    -   **Location Numbering Sequence**
    -   **Generic Guest Customer**
    -   -   BigCommerce payment terms have been mapped with Acumatica ERP credit terms in the **Payment Terms** table on the **Customers** tab \(if the *Company* entity has been activated\).

</td></tr><tr><td>

[Substitution Lists](SM_20_60_26.md) \(SM206026\) form

</td><td>

In the *BCCPAYMENTMETHODS* substitution list, BigCommerce payment options have been mapped to Acumatica ERP payment methods.

</td></tr><tr><td>

[Entities](BC_20_20_00.md) \(BC202000\)

</td><td>

-   The filtering conditions for the export and import of the *Customer* entity have been defined, if necessary.
-   The additional mappings for the export and import of the *Customer* entity have been defined, if necessary.

</td></tr></tbody>
</table>

## Validation of Configuration

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in [Synchronizing Customers: To Perform Bidirectional Synchronization](Commerce_BC_Syncing_Customers_To_Perform_Bidirectional_Sync.md) and [Synchronizing Customers: To Synchronize Customers with Multiple Locations](Commerce_BC_Syncing_Customers_To_Sync_Customers_with_Locations.md).

**Parent topic:**[Synchronizing Individual and Business Customers](../UserGuide/Commerce_BC_Syncing_Customers_Mapref.md)

