# Capable to Promise: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for using the capable-to-promise \(CTP\) functionality.

## Implementation Checklist

We recommend that before you initially run the calculation of projected dates for sales orders, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. You can perform the instructions similar to those described in [Capable to Promise: Implementation Activity](MFG_CTP_Implem_Activity.md) to configure the system.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)

</td><td>

The *Advanced Planning and Scheduling \(Classic\)* or *Advanced Planning and Scheduling \(Optimized\)* feature has been enabled.

</td></tr><tr><td>

[Numbering Sequences](CS_20_10_10.md) \(CS201000\)

</td><td>

The numbering sequence has been created for the CTP-related planning orders to be created by the CTP process.**Tip:** We recommend that you create a separate numbering sequence for these planning to distinguish them from the planning orders unrelated to CTP.

</td></tr><tr><td>

[Production Order Types](AM_20_11_00.md) \(AM201100\)

</td><td>

The production order type has been created for the CTP-related planning orders, and the following recommended settings have been specified:-   **Function**: *Planning*
-   **Order Numbering Sequence**: The specific numbering sequence for CTP-related planning orders
-   **Exclude from MRP**: Cleared

**Tip:** We recommend that you create a separate order type for all CTP-related planning orders.

</td></tr><tr><td>

[Production Preferences](AM_10_20_00.md) \(AM102000\)

</td><td>

The order type for the CTP-related planning orders has been specified in the **Capable to Promise Order Type** box in the **Data Entry Settings** section.

</td></tr><tr><td>

[Stock Items](IN_20_25_00.md) \(IN202500\)

</td><td>

The **CTP Item** check box has been selected on the **Manufacturing** tab \(**General** section\) for all stock items for which you want to calculate projected dates.

</td></tr><tr><td>

[Order Types](SO_20_10_00.md) \(SO201000\)

</td><td>

The **Enable Linking to Production Orders** check box has been selected and all the order statuses have been specified in the **Linkable Sales Order Statuses** list on the **General** tab for the sales order type for which projected dates should be calculated.

</td></tr></tbody>
</table>

## Validation of Configuration

To make sure that all configuration has been performed correctly, we recommend that in your system, you calculate the projected dates for items in sales order by performing instructions similar to those described in [Capable to Promise: Process Activity](MFG_CTP_Activity.md).

**Parent topic:**[Processing Capable to Promise](../UserGuide/MFG_CTP_Mapref.md)

