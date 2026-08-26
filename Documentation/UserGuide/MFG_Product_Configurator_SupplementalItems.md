# Product Configurator: Supplemental Items {#_55081ac9-c9d8-4943-875d-6fd713fea90a .concept}

Supplemental items are supporting option items selected during configuration entry and indicated as a supplemental item in the configuration definition. When supplemental items are selected and the configuration entry is complete, the options will be added to a quote, sales order, or opportunity as a new line item. The concept is a supporting item that is shipped and sold separately from the configured item. Supplemental item price and cost do not get rolled into the configured item price. The sales order lines for supplemental items are linked to and controlled by the sales order line for the configured item:

-   The sales order line quantity ordered for supplemental item is the quantity required for the option times the quantity ordered for the configured line.
-   The sales order lines for supplemental items are deleted if the sales order line for the configured item is deleted. You may have to refresh the details table or save the order to see the updated lines.
-   A change to the configuration, whether in the sales order or in an associated production order, will add or remove the sales order lines for any supplemental items associated with the configured sales order line and recalculate the order quantity.
-   Changing the order quantity for the configured item will not change the order quantity for the associated supplemental items.
-   You can change the quantity, warehouse, price, and other parameters for supplemental items.

## Examples { .section}

Consider supplemental items as materials that are not required to build the configured item but are selected based on the configured item and should be shipped with it:

-   A desktop computer where the monitor and keyboard are separate inventory items that must be picked and shipped with the sales order. The monitor and keyboard selections may affect the configuration of the computer components but they are components themselves for the production order for the computer.
-   Accessories such as power cords, cables, installation CD's, and manuals for equipment that are included with the configured item.
-   Miscellaneous charges for rush orders, extra fees for services, or packaging and shipping charges.

You indicate supplemental items on the [Configuration Maintenance](AM_20_75_00.md) \(AM207500\) form by selecting the material type for an option of a feature. Since supplemental items will not be components on a production order, the operation number is not required. All other capabilities such as calculation of the quantity required and rules are available.

**Parent topic:**[Product Configurator](../UserGuide/MFG_Product_Configurator_Mapref.md)

