# Australian Depreciation Methods {#_1afd6281-174f-4149-92c2-f3cc12a27b4c .concept}

The sections of this topic describe custom depreciation methods for Australia, which can be configured in Acumatica ERP.

**Tip:** If you want the system to ignore the salvage amount during depreciation for Australian methods, on the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form, you must set the **Salvage Amount** to *0*.

## Remaining Value by Days in Period {#section_rxb_ljv_vxb .section}

This method, a modification of the *Straight-Line* method, is used in some Asia Pacific \(APAC\) countries, such as Australia, New Zealand, and Thailand. With this method, depreciation is calculated based on the exact number of days in each period within a financial year.

Depreciation for each period of an asset's useful life is calculated according to the following formula.

``` {#codeblock_vxb_ljv_vxb}
D = (Ac - Sa - Ad) * SL rate * N
```

The symbols in the formula have the following meanings:

-   *D*: The depreciation expense for an accounting period.

-   *Ac*: The acquisition cost of the asset.

-   *Sa*: The salvage amount \(or the residual value\) specified for the asset on the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form.

-   *Ad*: The accumulated depreciation of the asset.
-   *SL rate*: The straight-line depreciation rate, which is calculated as follows.
-   ``` {#codeblock_byb_ljv_vxb}
SL rate = 100% * (1/ N Remaining Useful Life)
```

    In this calculation, *N Remaining Useful Life* is the useful life in days minus the number of days in the previous period for which depreciation was calculated.

-   *N* \(number of days held in period\): The exact number of days the asset is held in the fiscal period.


This depreciation method is a custom one and should be added to the system manually. For details, see [To Configure the Remaining Value by Days in Period Method](FA__how_To_Configure_Australian_Depreciation_Methods.md#_edef2095-87d8-4f32-be12-11bc7978f1b8).

## Australian Prime Cost {#section_fyb_ljv_vxb .section}

This method, a modification of the *Straight-Line* method, calculates depreciation based on the specified **Percent per Year** setting of each particular asset. With this depreciation method specified, additions and deductions are not allowed.

For each period of an asset's useful life, depreciation is calculated based on the following formula.

``` {#codeblock_jyb_ljv_vxb}
D = Depr. Base * (Percent per Year / 100) * (N / 365)
```

where

``` {#codeblock_myb_ljv_vxb}
Depr. Base = (Ac – Sa) * Business Use, %
```

The symbols in the formulas have the following meanings:

-   *D*: The depreciation expense for an accounting period.
-   *Depr. Base*: The depreciation base of the asset.
-   *Percent per Year*: The depreciation rate of the asset.
-   *N*: The exact number of days the asset is held in the fiscal period. The number of days held is calculated as follows for the listed periods:
    -   The first depreciation period that is specified for the book \(**Depr. From Period**\): `Last day of the period – Placed-in-Service Date + 1`
    -   The disposal period: `Disposal Date – First date of the period + 1`
    -   All other periods: Length of the period in days
-   *Ac*: The acquisition cost of the asset.
-   *Sa*: The salvage amount \(or the residual value\) specified for the asset on the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form.
-   *Business Use*: The use of the asset for business purposes, expressed as a percentage. This value is specified in the table on the **Balance** tab of the [Fixed Assets](FA_30_30_00.md) form.

This is a custom depreciation method that should be added to the system manually if it is needed. For details, see [To Configure the Australian-Specific Methods](FA__how_To_Configure_Australian_Depreciation_Methods.md#_e6ac5bf3-d520-4374-98a7-0b4eb1321c7e).

## Australian Diminishing Value {#section_pyb_ljv_vxb .section}

This method, a modification of the *Declining Balance* method, calculates depreciation based on the specified **Percent per Year** setting of each particular asset.

For each period of an asset's useful life, depreciation is calculated based on the following formula.

``` {#codeblock_tyb_ljv_vxb}
D = NBV_year * Percent per Year * (N / 365)
```

The symbols in the formula have the following meanings:

-   *D*: The depreciation expense for an accounting period.
-   *NBV\_year*: The net book value of the asset for the financial year. This value is calculated as follows for the listed financial years:
    -   The first financial year \(the year to which the **Depr. From Period** belongs\): `NBV = (Ac – Sa) * Business Use %`
    -   All other financial years: `NBV = NBV of the previous financial year – Ad`
-   *Ac*: The acquisition cost of the asset.
-   *Sa*: The salvage amount \(or the residual value\) specified for the asset on the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form.
-   *Business Use*: The use of the asset for business purposes, expressed as a percentage. This value is specified in the table on the **Balance** tab of the [Fixed Assets](FA_30_30_00.md) form.
-   *Ad*: The accumulated depreciation of the asset.
-   *Percent per Year*: The depreciation rate of the asset.
-   *N*: The exact number of days the asset is held in the fiscal period. The number of days held is calculated as follows for the following periods:
    -   The first depreciation period that is specified for the book \(**Depr. From Period**: `Last day of the period – Placed-in-Service Date + 1`
    -   The disposal period: `Disposal Date – First date of the period + 1`
    -   The other periods: Length of the period in days

Because this method can be used to depreciate assets for an indefinite time, you should define when the calculation should stop as follows:

-   If the useful life of the asset is known and its depreciation should be stopped after some period, you enter the real useful life in the **Useful Life, Years** box on the **General** tab of the [Fixed Asset Classes](FA_20_10_00.md) \(FA201000\) form. This value will be inserted as the default value in the **Useful Life, Years** box on the **General** tab of the [Fixed Assets](FA_30_30_00.md) form.
-   If the useful life of the asset is unknown and its depreciation should be performed until the asset is disposed of, you enter an unrealistically large number \(for example, `100`\) in the **Useful Life, Years** box on the **General** tab of the [Fixed Asset Classes](FA_20_10_00.md) form.

    If a legitimate estimation of the asset's useful life needs to be entered \(for informational or reporting purposes\) that differs from the large value you need to specify in the **Useful Life, Years** box, a separate customization box should be used.


This is a custom depreciation method that should be added to the system manually if it is needed. For details, see [To Configure the Australian-Specific Methods](FA__how_To_Configure_Australian_Depreciation_Methods.md#_e6ac5bf3-d520-4374-98a7-0b4eb1321c7e).

**Parent topic:**[Depreciation Configuration](../UserGuide/FA__cnf_Depreciation_Methods.md)

