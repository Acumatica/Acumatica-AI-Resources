# Configuring a Package {#_77deb3eb-2260-4105-8aae-4e2ced60e53a .concept}

In Acumatica ERP, you configure a package as a stock item or non-stock for which you specify an appropriate *Multiple-Deliverable Arrangement* \(MDA\) deferral code and add several components \(stock or non-stock items\). The following section describe the package configuration process in details.

## Package Configuration Parameters {#section_uvb_3jv_vxb .section}

You configure a package on the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form on the **Deferral** tab. On this tab, you specify the following parameters:

-   In the **Deferral Code** box, select an MDA deferral code \(the one that has the **Multiple-Deliverable Arrangement** check box selected on the [Deferral Codes](DR_20_20_00.md) \(DR202000\) form\), which indicates that an item is a package.
-   In the **Revenue Components** table, add the required items \(components\) to the package \(stock items or non-stock items that were previously configured\).

While adding components to this table, you need to define how the total package price will be allocated between all components. To do this, for each component of the package, you need to select one of the following options in the **Allocation Method** column:

-   *Percentage*: The component price \(fair value\) is a percentage of the total package price. You need to specify the percentage in the **Percentage** column, which becomes available for editing if you select this option.
-   *Fixed Amount*: The component price is a fixed amount, which you should specify in the **Fixed Amount** column. \(This column becomes available for editing if you select this option.\)
-   *Residual*: The price of the component is computed as the difference \(residue\) between the total package price and the sum of the prices calculated for all other components of the package. The cost for such a component is calculated after the fair values of all other components are computed.

    **Attention:** You can select the *Residual* option for only one component of the package.


In addition to specifying a deferral code for the package, you need to specify a deferral code for each component of the package, because each component may have different deferral periods. If you do not specify a deferral code for a component, the price of the component will be recognized immediately.

**Attention:** The **Deferral Code** column is not available for a component with the *Residual* allocation method selected.

After you have specified all required data for a package on the **Deferral Setting** tab, save the item.

**Parent topic:**[Managing Recognition for Packages](../UserGuide/DR__con_Revenue_Recognition_for_Packages.md)

