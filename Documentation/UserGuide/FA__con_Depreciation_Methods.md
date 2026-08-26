# Predefined Depreciation Methods {#_a47273bf-9bed-4efb-9a5d-d7c0452ef958 .concept}

A depreciation method defines how the cost of a tangible asset is allocated over its expected useful life. In Acumatica ERP, you can use multiple depreciation methods for calculating depreciation for the same asset; for example, you may need to apply different depreciation methods for tax reporting and financial management purposes. To depreciate the same asset by using different methods, you must use a separate depreciation book for each method. For details, see [Asset Depreciation: General Information](FixedAssets_Depreciation_GeneralInfo.md).

In Acumatica ERP, you can configure and use formula-based depreciation methods on the [Depreciation Methods](FA_20_25_00.md) \(FA202500\) form and table-based depreciation methods on the [Depreciation Table Methods](FA_20_26_00.md) \(FA202600\) form. Acumatica ERP provides several predefined depreciation methods, and you can configure custom depreciation methods. The predefined depreciation methods can only be viewed; they cannot be edited.

Depreciation methods differ from one another depending on the calculation method used for calculating the depreciation expense. The sections of this topic describe the available methods of calculating depreciation in Acumatica ERP.

## Straight-Line Calculation Method {#section_wtb_ljv_vxb .section}

The *Straight-Line* method of calculating depreciation is the simplest and most popular method. With this method, the depreciation expense is spread evenly over the estimated useful life of the asset. This method assumes that the physical obsolescence of an asset occurs evenly from the time the asset has been placed into service until the full write-off of its cost.

When you use the *Straight-Line* calculation method, the depreciation expense is calculated by using the following parameters:

-   The depreciable basis, which is the asset acquisition cost minus the asset salvage amount \(if one is specified\)
-   The straight-line rate *\(SL rate\)*, which is calculated as *100% \* \(1 / N useful life\)*

This calculation method is expressed in the following formula.

``` {#codeblock_b5b_ljv_vxb}
D = (Ac - Sa) * SL rate
```

where

``` {#codeblock_e5b_ljv_vxb}
SL rate = 100% * (1 / N useful life)
```

The symbols in the formula have the following meanings:

-   *D*: The depreciation expense \(for a year or an accounting period\)

-   *Ac*: The acquisition cost of the asset

-   *Sa*: The salvage amount \(or the residual value\) specified for the asset on the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form

-   *N useful life*: The estimated time period that the asset is expected to be used, starting from the placed-in-service date


To configure the depreciation method based on this calculation method, you need to select *Straight-Line* in the **Calculation Method** box on the [Depreciation Methods](FA_20_25_00.md) \(FA202500\) form.

## Declining-Balance Calculation Method {#section_l5b_ljv_vxb .section}

By using the *Declining-Balance* calculation method, you can mostly depreciate an asset in the early years of its useful life, so that by using this method, you accelerate the depreciation of the asset. Practically, it means that a company writes off the cost of the asset while the asset is relatively new. This method is expedient for the assets that become obsolete very quickly because of, for example, technological innovations.

The acceleration of depreciation is performed by applying the acceleration rate. A company can set the acceleration rate up to 200%. The calculation formula of this method uses the following parameters:

-   The net book value of the asset.
-   The depreciation rate, which is calculated as *100% \* \(1 / N useful life\)* for the straight-line method, but with respect to the declining-balance method, in which the acceleration factor should be applied, you can use the increased multiplier \(in percent\) depending on the acceleration factor that your company setup. Thus, the multiplier can be set as 125%, 150% or 200%. In Acumatica ERP, you enter this value in the **DB Multiplier** box while you configure the *Declining-Balance* depreciation method on the [Depreciation Methods](FA_20_25_00.md) \(FA202500\) form.

Thus, the formula of calculating the depreciation expense by using the *Declining-Balance* depreciation method is the following.

``` {#codeblock_q5b_ljv_vxb}
D = NBV * DB rate
```

The declining-balance rate \(*DB rate*\) is calculated as follows.

``` {#codeblock_t5b_ljv_vxb}
DB rate = DB Multiplier * (1 / N useful life)
```

The symbols in the formula have the following meanings:

-   *D*: The depreciation expense \(for a year or an accounting period\)

-   *NBV*: The net book value of the asset at the beginning of the year or period \(that is, the asset cost minus the accumulated depreciation\)

-   *DB Multiplier*: The percent of depreciation acceleration that a company sets up for the asset

    **Attention:** The depreciation method in which you use 200% as the multiplication factor is known as the *double declining-balance* \(DDB\) depreciation method.

-   *N*: The asset useful life, in years \(of accounting periods\)


To configure the depreciation method based on this calculation method, you need to select *Declining-Balance* in the **Calculation Method** box on the [Depreciation Methods](FA_20_25_00.md) form.

For fixed assets acquired during a financial year, which use custom declining-balance depreciation methods, if the averaging convention is *Full Period*, the annual depreciation amount is prorated based on the number of periods in the year of acquisition and in the year of disposal. Thus, the annual depreciation for such an asset is calculated based on the following formula:

``` {#codeblock_dvb_ljv_vxb}
Da = Ac / N useful life * DB multiplier / 12 * N year
```

The symbols in the formula have the following meanings:

-   *Da*: The annual depreciation expense
-   *Ac*: The acquisition cost of the asset
-   *N*: The asset useful life, in years
-   *DB Multiplier*: The percent of depreciation acceleration set up for the asset in the **DB Multiplier** box on the [Depreciation Methods](FA_20_25_00.md) form.
-   *N year*: The number of months in the financial year

This calculation method does not depreciate the asset to zero. Thus, if you need to fully depreciate the asset, you can set the system to switch the calculation method to *Straight-Line* when the depreciation amount calculated by using the *Straight-Line*method is greater than the depreciation amount calculated for the *Declining-Balance* method. To set the system to switch the calculation method, select the **Switch to SL** check box on the [Depreciation Methods](FA_20_25_00.md) form when you configure the depreciation method based on the *Declining-Balance* calculation method.

**Examples of Calculating Depreciation Expenses for Declining Balance**

Consider a fixed asset with the following settings:

-   Acquisition cost: $10000
-   Salvage amount: 0
-   Business use: 100%
-   Useful life: 5 years
-   Placed-in-service date: 1/1/2016
-   Averaging convention: Full period
-   DB multiplier: 125

The following table compares two methods of calculating the depreciation expense for the asset's first year of useful life, depending on whether the **Yearly Accountancy** check box on the [Depreciation Methods](FA_20_25_00.md) \(FA202500\) form is selected or cleared.

| | |Yearly Accountancy cleared| | |Yearly Accountancy selected|
|---|---|--------------------------|---|---|---------------------------|
|**Period**|NBV|Period Depreciation Amount|NBV|Yearly Depreciation Amount|Period Depreciation Amount|
|01-2016|10000.00|**208.33**|10000.00|**2500.00**|**208.33**|
|02-2016|9791.67|**203.99**|9791.67| |**208.33**|
|03-2016|9587.68|**199.74**|9583.34| |**208.33**|
|04-2016|9387.94|**195.58**|9375.01| |**208.34**|
|05-2016|9192.36|**191.51**|9166.67| |**208.33**|
|06-2016|9000.85|**187.52**|8958.34| |**208.33**|
|07-2016|8813.33|**183.61**|8750.01| |**208.34**|
|08-2016|8629.72|**179.79**|8541.67| |**208.33**|
|09-2016|8449.93|**176.04**|8333.34| |**208.33**|
|10-2016|8273.89|**172.37**|8125.01| |**208.34**|
|11-2016|8101.52|**168.78**|7916.67| |**208.33**|
|12-2016|7932.74|**165.27**|7708.34| |**208.34**|

In the table, the following terms and formulas are used:

-   *NBV* is the net book value
-   When the **Yearly Accountancy** check box is cleared, the *Period Depreciation Amount* is calculated according to the following formula:

    ``` {#codeblock_kvb_ljv_vxb}
    Period Depreciation Amount = NBV * DB multiplier * (1/N Useful Life, periods)
    ```

    In this formula, NBV is the net book value at the beginning of the financial period.

-   When the **Yearly Accountancy** check box is selected, the *Yearly Depreciation Amount* is calculated according to the following formula

    ``` {#codeblock_nvb_ljv_vxb}
    Yearly Depreciation Amount = NBV * DB multiplier * (1/n Useful Life, years)
    ```

    In this formula, NBV is the net book value at the beginning of the financial year.

-   When the **Yearly Accountancy** check box is selected, the *Period Depreciation Amount* is calculated according to the following formula:

    ``` {#codeblock_qvb_ljv_vxb}
    Period Depreciation Amount = Yearly Depreciation Amount / Number of periods in the year
    ```


## Sum-of-the-Years'-Digits Calculation Method {#section_rvb_ljv_vxb .section}

The *Sum-of-the-Years'-Digits* calculation method accelerates depreciation more than the straight-line method but less than the declining-balance method. The depreciation expense per year is equal to the depreciable basis multiplied by the depreciation rate, where the depreciation rate is the ratio of the number of years remaining to depreciate the asset to the sum of the years' digits. For example, suppose that an asset's useful life is 3 years. In the first year, the depreciation rate is 3 / \(1 + 2 + 3\) = 1/2. Thus, the asset would be depreciated by 50% in the first year of its useful life.

To configure the depreciation method based on this calculation method, you need to select *Sum-of-the-Years'-Digits* in the **Calculation Method** box on the [Depreciation Methods](FA_20_25_00.md) \(FA202500\) form.

## Remaining Value Calculation Method {#section_uvb_ljv_vxb .section}

The *Remaining Value* calculation method is similar to the *Straight-Line* method. The difference between the two methods is that the remaining value method always depreciates the asset by the end of its useful life, so that the depreciable basis minus the accumulated depreciation will be zero.

The remaining value calculation method is used if, for example, the useful life of an asset will end earlier than had been planned. Regardless of which depreciation method was used to depreciate the asset, the user can switch the method to the *Remaining Value* method at any time. As a result, the asset will be fully depreciated to the amount of zero by the end of its useful life.

To configure the depreciation method based on this calculation method, you need to select *Remaining Value* in the **Calculation Method** box on the [Depreciation Methods](FA_20_25_00.md) \(FA202500\) form.

**Parent topic:**[Depreciation Configuration](../UserGuide/FA__cnf_Depreciation_Methods.md)

