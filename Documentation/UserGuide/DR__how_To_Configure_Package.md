# To Configure a Package {#_35b08cd3-94ab-456c-8132-fdf1a1a7c812 .task}

You use the [Non-Stock Items](IN_20_20_00.md) \(IN202500\) or [Stock Items](IN_20_25_00.md) \(IN202000\) form to configure a package \(that is, a *multiple-deliverable arrangement*\) in the system.

## Before You Proceed {#section_wwb_3jv_vxb .section}

Before you configure the package, make sure of the following:

-   All required deferral codes designed for configuring packages have been created in the system. For details, see [Managing Recognition for Packages](DR__con_Revenue_Recognition_for_Packages.md).
-   All required items \(stock items or non-stock items\) to be part of the package have been created in the system.

## To Create a Package {#section_zwb_3jv_vxb .section}

**Attention:** This section describes how to configure a package by using the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form. You can create a package similarly on the [Stock Items](IN_20_25_00.md) \(IN202500\) form.

1.  Open the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.
2.  On the form toolbar, click **Add New Record** to create a new non-stock item. For details, see [Non-Stock Item: Implementation Activity](Non_Stock_Item_Fin_Implem_Activity.md).
3.  On the **Deferral** tab, in the **Deferral Code** box, select a deferral code that was created in your system for configuring multiple-deliverable arrangements. \(For this code, the **Multiple-Deliverable Arrangement** check box must be selected on the [Deferral Codes](DR_20_20_00.md) \(DR202000\) form.\)
4.  In the **Revenue Components** table of the tab, do the following for each item to be added to the package:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Inventory ID** column of this row, select the item \(by its identifier\) that should be included in the package.
    3.  In the **Quantity** column, specify the number of this item that is included in the package.
    4.  In the **Deferral Code** column, select the deferral code, which defines the conditions for deferring this item. If you select a deferral code with the *Flexible by Periods, Prorate by Days* or *Flexible by Days in Period* recognition method specified on the [Deferral Codes](DR_20_20_00.md) form, the **Default Term** and **Default Term UOM** columns will be available for editing.
    5.  In the **Default Term** column \(if available\), specify the period to defer the item \(for example, the period that is defined in the maintenance contract\).
    6.  In the **Default Term UOM** column \(if available\), select the unit of measure to be used for the default term. Possible values are the following: *year\(s\)*, *month\(s\)*, *week\(s\)*, or *day\(s\)*.
    7.  In the **Allocation Method** column, select the method to be used to allocate the total document amount between the components of the package: *Percentage*, *Fixed Amount*, or *Residual*. For details, see [Managing Recognition for Packages](DR__con_Revenue_Recognition_for_Packages.md).
    8.  Optional: If you have selected the *Percentage* option in the **Allocation Method** column \(which makes the **Percentage** column available for editing\), specify the percentage that defines the component portion of the total package price.
    9.  Optional: If you have selected the *Fixed Amount* option in the **Allocation Method** column \(which makes the **Fixed Amount** column available for editing\), specify the fixed price of this component.
5.  On the form toolbar, click **Save**.

**Parent topic:**[Managing Recognition for Packages](../UserGuide/DR__con_Revenue_Recognition_for_Packages.md)

