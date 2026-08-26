# Dutch Depreciation Methods {#_2c68b393-de60-43bb-a629-8d856736cfad .concept}

*Dutch Method 1* and *Dutch Method 2* are custom depreciation methods and are commonly used for calculating depreciation in the Netherlands. These methods are similar to the declining balance calculation method, which provides the ability to mostly depreciate an asset in the earlier years of its useful life.

To configure a depreciation method based on these calculation methods, you need to select either *Dutch Method 1* or *Dutch Method 2* in the **Calculation Method** box on the [Depreciation Methods](FA_20_25_00.md) \(FA202500\) form.

With these methods, the depreciation expenses are calculated by using the following formula.

``` {#codeblock_mwb_ljv_vxb}
D = NBV * D rate
```

The symbols in the formula have the following meanings:

-   *D*: The depreciation expenses \(per period\).

-   *NBV*: The net book value of the asset at the beginning of the period. The net book value is calculated as the asset’s acquisition cost minus the total accumulated depreciation by the beginning of the period.

-   *D rate*: The depreciation rate.


It follows from the formula that both of these methods involve applying the specific depreciation rate. The difference between these methods is that different parameters are required for calculating this depreciation rate, as described below.

## Calculation Formula of Dutch Method 1 {#section_swb_ljv_vxb .section}

The depreciation rate for the *Dutch Method 1* method is calculated by using the asset salvage amount and the asset useful life \(number of periods\). The rate, in this case, is calculated in a way that makes it possible to fully depreciate an asset during its expected useful life.

The *Dutch Method 1* uses the following calculation formula.

``` {#codeblock_wwb_ljv_vxb}
D rate = 1 - (Sa / Ac) ^ (1/n)
```

The symbols in the formula have the following meanings:

-   *D rate*: The depreciation rate

-   *Sa*: The salvage amount of the asset

-   *Ac*: The asset acquisition cost

-   *n*: The number of periods of asset useful life


## Calculation Formula of Dutch Method 2 {#section_cxb_ljv_vxb .section}

The depreciation rate for the *Dutch Method 2* method is calculated by using the constant percentage and the number of periods in a year. The constant percentage defines the part of the asset's net book value that should be depreciated during this year.

The *Dutch Method 2* uses the following calculation formula:

``` {#codeblock_gxb_ljv_vxb}
D rate = 1 - (1 - Percentage / 100) ^ (1/N)
```

The symbols in the formula have the following meanings:

-   *D rate*: The depreciation rate.

-   *Percentage*: The constant percent that defines which part of the asset net book value should be depreciated \(on the [Depreciation Methods](FA_20_25_00.md) form, you should enter this value in the **Percent per Year** box\).

-   *N*: The number of periods in a year


**Parent topic:**[Depreciation Configuration](../UserGuide/FA__cnf_Depreciation_Methods.md)

