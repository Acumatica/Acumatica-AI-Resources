# Order Synchronization: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for importing sales orders, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist

We recommend that before you initially import orders from the Shopify store, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)

</td><td>

The following features have been enabled: -   *Retail Commerce*
-   *Shopify Connector*

</td></tr><tr><td>

[Shopify Stores](BC_20_10_10.md) \(BC201010\)

</td><td>

The necessary settings have been specified, as demonstrated in the example of [Initial Configuration: To Configure the Store Connection](Commerce_SP_Initial_Configuration_Implem_Activity.md).

</td></tr></tbody>
</table>

<table id="_8c0170a4-180d-427f-b556-832fa87d3f03"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)

</td><td>

The following features have been enabled: -   *Retail Commerce*
-   *Shopify Connector*

</td></tr><tr><td>

[Processing Centers](CA_20_50_00.md) \(CA205000\)

</td><td>

The processing center for processing payments has been created, as demonstrated in the example of [Order Synchronization: To Configure and Import Shopify Payments](Commerce_SP_Syncing_Orders_To_Use_Shopify_Payments.md).

</td></tr><tr><td>

[Shopify Stores](BC_20_10_10.md) \(BC201010\)

</td><td>

-   The necessary settings have been specified, as demonstrated in the example of [Initial Configuration: To Configure the Store Connection](Commerce_SP_Initial_Configuration_Implem_Activity.md).
-   On the **Payments** tab, the payment mapping has been defined for store payment methods representing payment gateways, as demonstrated in the example of [Order Synchronization: To Configure and Import Shopify Payments](Commerce_SP_Syncing_Orders_To_Use_Shopify_Payments.md).

</td></tr></tbody>
</table>

## Other Settings That Affect the Workflow

You can affect the workflow of the import of orders and payments by specifying additional settings. To automatically release payments related to the imported order, select the **Release Payments and Refunds** check box for the store payment method on the **Payments** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.

## Validation of Configuration

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in [Order Synchronization: To Configure and Import Shopify Payments](Commerce_SP_Syncing_Orders_To_Use_Shopify_Payments.md).

**Parent topic:**[Synchronizing Orders](../UserGuide/Commerce_SP_Syncing_Orders_Mapref.md)

