# Product Configurator: Adding Configuration Data to Forms {#_86def8d0-857d-4975-9eee-f2e49e44f8cc .concept}

This topic is intended to provide some methods to print the configuration results data on customer and prospect facing forms such as Sales Order, CRM Quote, Invoice, etc. The configuration results data is created and assigned a unique id when the configuration is saved on the related document. The relationships of the tables are described in [Using Manufacturing Data in Inquiries and Reports](MFG_Tables.md).

## Sales Documents { .section}

To print the configuration data on sales documents a subreport can be used. The main report needs to pass the order type, order number, and line number to the subreport. In most cases, the options selected during configuration would be printed. If desired the attribute values could also be printed.

The sales form \(Quote, Sale Order, and Invoice\) have the same column layout of line number, inventory id, description, quantity, UOM, unit price, discount, and extended price. The [Shipment Confirmation](SO_64_20_00.md) \(SO642000\) report removes the pricing information but the line number and inventory id and description are in the same location. Therefore the same subreport could be used for all four forms using visible expressions to suppress the pricing information if price is to be shown on the other three forms.

The following reports are provided:

-   SO6410AM - Example of the [Quote](SO_64_10_00.md) \(SO641000\) report with the Estimates subreport. This could be used in a similar way to add the Configurator subreport.
-   SO6411AM - Subreport for estimates
-   SO6410PC - Subreport to print product configurator options that can be used for quotes, sales orders, and invoices.

## Subreport to Print Options for Sales Documents { .section}

From the main report, you create the collection of columns to pass to the subreport:

-   `SOLine.OrderType`
-   `SOLine.OrderNbr`
-   `SOLine.LineNbr`

These same columns must be defined in the susbreport as parameters and used as filters as follows:

-   The following filters can be used to only print selected features or options:
    -   `AMConfigurationOption.PrintResults Equals 1`
    -   `AMConfigurationFeaturen.PrintResults Equals 1`
-   The last filter below, selects only those options that were selected for this configuration. Without it, all options would be shown.
    -   `AMConfigResultsOption.Included Equals 1`

For the example of a sales order form with configuration options, you can download the [Sales Order with Configuration Options](Files/MFG_Sales_Order_SO004466.pdf) file.

**Parent topic:**[Product Configurator](../UserGuide/MFG_Product_Configurator_Mapref.md)

