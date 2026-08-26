# To Configure a Package for IFRS 15/ASC 606 {#_9b33941f-6672-4049-a3a5-816a851ddcb2 .task}

You use the [Non-Stock Items](IN_20_20_00.md) \(IN202500\) or [Stock Items](IN_20_25_00.md) \(IN202000\) form to configure a package.

One of the following standards can be used for packages:

-   The International Financial Reporting Standard \(IFRS\) 15—generally referred to as *IFRS 15*
-   The 606 Revenue from Contracts with Customers Generally Accepted Accounting Principles \(GAAP\) standard—generally referred to as *ASC 606*

Based on these standards, the revenue of each item is recognized in proportion to the fair value price of each item within the package.

## Before You Proceed {#section_myb_3jv_vxb .section}

Before you configure the package, make sure of the following:

-   The *Revenue Recognition by IFRS 15/ASC 606* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   All required deferral codes designed for configuring packages have been created in the system on the [Deferral Codes](DR_20_20_00.md) \(DR202000\) form. For details, see [Managing Recognition for Packages](DR__con_Revenue_Recognition_for_Packages.md).
-   All required items \(stock items or non-stock items\) to be included in the package have been created in the system on the [Non-Stock Items](IN_20_20_00.md) \(IN202500\) or [Stock Items](IN_20_25_00.md) \(IN202000\) form.
-   All stock or non-stock items that are included in the package have fair value prices configured on the [Sales Prices](AR_20_20_00.md) \(AR202000\) form.

## To Create a Package Based on Fair Value Prices {#section_pyb_3jv_vxb .section}

1.  Open the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.
2.  On the form toolbar, click **Add New Record** to create a new non-stock item. For details, see [Non-Stock Item: Implementation Activity](Non_Stock_Item_Fin_Implem_Activity.md).
3.  On the **Deferral** tab, in the **Deferral Code** box, select a deferral code that has been created in your system for configuring multiple-deliverable arrangements.

    **Attention:** For this code, the **Multiple-Deliverable Arrangement** check box must be selected on the [Deferral Codes](DR_20_20_00.md) \(DR202000\) form.

4.  In the **Revenue Components** table of the tab, do the following for each item to be added to the package:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Inventory ID** column of this row, select the item \(by its identifier\) that should be included in the package.
    3.  In the **Quantity** column, specify the number of this item that is included in the package.
    4.  In the **Deferral Code** column, select the deferral code, which defines the conditions for deferring this item.
5.  On the form toolbar, click **Save**.

## Notes About the Procedure {#section_ryb_3jv_vxb .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note the following about the **Deferral** tab:

-   With the *Revenue Recognition by IFRS 15/ASC 606* feature enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the **Default Term**, **Default Term UOM**, **Allocation Method**, **Fixed Amount**, and **Percentage** columns become unavailable.
-   The settings you enter on this tab, together with the configured fair value prices, will be a source of the reallocation pool calculations shown on the **Reallocation Pool** tab of the [Deferral Schedule](DR_20_15_00.md) \(DR201500\) form for an automatic deferral schedule that the system creates for an invoice with this package.

**Parent topic:**[Managing Recognition for Packages](../UserGuide/DR__con_Revenue_Recognition_for_Packages.md)

