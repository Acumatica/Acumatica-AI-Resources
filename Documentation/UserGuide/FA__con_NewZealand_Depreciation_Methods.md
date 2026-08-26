# New Zealand Depreciation Methods {#_51ba8297-4351-4f8d-a02f-db240b660f71 .concept}

The sections of this topic describe custom depreciation methods for New Zealand, which are available for configuration in Acumatica ERP.

New Zealand uses depreciation methods similar to the *Straight-Line* and *Declining Balance* methods, which are predefined in Acumatica ERP. However, the methods of calculating depreciation in New Zealand involve a percentage calculation being performed—that is, the yearly depreciation amount is calculated as a percent of the depreciation base. This yearly depreciation amount can be spread over the year’s periods in either of the following ways:

-   As prorated to the exact number of days in each period within a financial year, based on the *Full Period* averaging convention and without regard to leap years \(that is, February is always treated as though it contains 28 days\)
-   Evenly across the year's periods

**Tip:** If you want the system to ignore the salvage amount during depreciation for New Zealand methods, on the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form, you must set the **Salvage Amount** to *0*.

The four New Zealand depreciation methods—New Zealand Straight-Line, New Zealand Diminishing Value, New Zealand Straight-Line Evenly by Periods, and New Zealand Diminishing Value Evenly by Periods—are described in detail in the sections that follow.

## New Zealand Straight-Line {#section_szb_ljv_vxb .section}

With this depreciation method, the depreciation expense is spread evenly over the estimated useful life of the asset, and the yearly depreciation amount is distributed based on the number of days in a period.

**Attention:** Additions are not allowed for the assets that use this depreciation method.

For this method, the following rules are applied:

-   The last depreciation period is calculated based on the values in the **Percent per Year** box on the [Depreciation Methods](FA_20_25_00.md) \(FA202500\) form, the **Orig. Acquisition Cost** and **Salvage Amount** boxes on the **General** tab of the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form, and the **Business Use, %** column on the **Balance** tab of the [Fixed Assets](FA_30_30_00.md) form.
-   The **Useful Life, Years** setting of the asset on the [Fixed Assets](FA_30_30_00.md) form and the asset class on the [Fixed Asset Classes](FA_20_10_00.md) \(FA201000\) form are not used for the calculation of the last deprecation period; these values are used for informational and reporting purposes.
-   The value in the **Useful Life, Years** column on the **Balance** tab of the [Fixed Assets](FA_30_30_00.md) form is calculated and cannot be changed by the user.

If the current period is not the last period of the financial year, the period depreciation is calculated based on the following formula.

``` {#codeblock_yzb_ljv_vxb}
D = Depr. Base * (Percent per Year / 100) * (Np / Ntemp) * (Nd / Days held)
```

If the current period is the last period of the financial year, the depreciation of the period is calculated based on the following formula.

``` {#codeblock_b1c_ljv_vxb}
D = Depr. Base * (Percent per Year / 100) * (Np / Ntemp) - Depr. amount
```

In this formula, the depreciation base is calculated as follows.

``` {#codeblock_e1c_ljv_vxb}
Depr. Base = (Ac – Sa) * Business Use, %
```

The symbols in the formulas have the following meanings:

-   *D*: The depreciation expense \(for a year or an accounting period\).
-   *Depr. Base*: The depreciation base of the asset.
-   *Percent per Year*: The depreciation rate of the asset.
-   *Np*: The exact number of periods the asset is held in the financial year to which the current period belongs. The number of periods held is calculated as follows for the listed years:
    -   For the financial year to which both the **Depr. From** period and the **Depr. To** period belong: `Number of the Depr. To period – Number of the Depr. From period + 1`
    -   For the financial year to which the **Depr. From** period belongs: `Number of periods in the fin. year - Number of the Depr. From period + 1`
    -   For the financial year to which the **Depr. To** period belongs: The period number of the **Depr. To** period in the financial year
    -   For other financial years: The number of periods in the financial year
-   *Ntemp*: The number of periods in the financial year template specified on the [Financial Year](GL_10_10_00.md) \(GL101000\) form for the posting book or on the [Book Calendar Setup](FA_20_60_00.md) \(FA206000\) form for a non-posting book, excluding the adjustment period.
-   *Nd*: The number of days in a financial period. It is calculated as follows:
    -   If the period type is *Month* and the first day of the period is in February, this value is equal to *28*.
    -   For the rest of the periods, this value is calculated using the following formula: `Last period date - First period date + 1`.
-   *Days held*: The number of days the asset is used in the financial year to which the current period belongs. The number of days held is calculated as follows for the listed years:
    -   For the financial year to which both the **Depr. From** period and the **Depr. To** period belong: `Sum of Nd values for the periods in the range (Depr. From Period - Depr. To Period)`
    -   For the financial year to which the **Depr. From** period belongs: `Sum of Nd values for the periods in the range (Depr. From Period - Last Fin. Year's period)`
    -   For the financial year to which the **Depr. To** period belongs: `Sum of Nd values for the periods in the range (First Fin. Year's period - Depr. To Period)`
    -   For other financial years: `Sum of Nd values for the periods in the range (First Fin. Year's period - Last Fin. Year's period)`
-   *Depr. amount*: The sum of the depreciation amounts in the previous periods of the current financial year.

If the current financial period is the **Depr. To** period, `Period Depreciation = NBV (Net Book Value)`. The net book value is calculated as follows:

-   For the **Depr. From** period, `NBV = Depreciation Base`
-   For other periods, `NBV = NBV calculated for the previous period - Depreciation Amount calculated for the previous period`

## New Zealand Diminishing Value {#section_h1c_ljv_vxb .section}

This depreciation method, a modification of the *Declining Balance* method, calculates depreciation based on the specified **Percent per Year** setting of each particular asset.

The last depreciation period for this method is calculated based on the value in the **Useful Life, Years** box on the **General** tab of the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form for a fixed asset. Because this method can theoretically be used for infinite depreciation of an asset, the user defining the fixed asset in the system is responsible for defining the period when the calculation should be stopped, according to the following rules:

-   If the useful life of the asset is known and the depreciation should be stopped after some period, the user should specify the real useful life in the **Useful Life, Years** box on the [Fixed Asset Classes](FA_20_10_00.md) \(FA201000\) form for the fixed asset class, and then this setting is used as the default setting of the fixed asset on the **General** and the **Balance** tabs of the [Fixed Assets](FA_30_30_00.md) form.
-   If the useful life of the asset is unknown and depreciation should be performed until the asset is disposed of, the user specifies a large number in the **Useful Life, Years** box on the **General** tab, such as *100*, for the asset.
-   The **Useful Life, Years** box on the **General** tab of the [Fixed Assets](FA_30_30_00.md) form can be used for informational or reporting purposes, while the **Useful Life, Years** column on the **Balance** tab can be overridden and may contain a greater number.

If the current period is not the last period of the financial year, the period depreciation is calculated based on the following formula.

``` {#codeblock_m1c_ljv_vxb}
D = NBV_year * (Percent per Year / 100) * (Np / Ntemp) * (Nd / Days held)
```

If the current period is the last period of the financial year, the period depreciation is calculated based on the following formula.

``` {#codeblock_o1c_ljv_vxb}
D = NBV_year * (Percent per Year / 100) * (Np / Ntemp) - Depr. amount
```

The symbols in the formulas have the following meanings:

-   *D*: The depreciation expense \(for a year or an accounting period\).
-   *NBV\_year*: The net book value of the asset at the beginning of the year to which the current period belongs, calculated for each addition as follows:
    -   For the first financial year \(to which the **Depr. From** period belongs\): `NBV_year = (Acquisition Cost – Salvage Amount) * Business Use(%)`
    -   For other financial years: `NBV_year = NBV_year calculated for the previous fin. year - Accumulated depreciation amount of the previous fin. year`
-   *Percent per Year*: The depreciation rate of the asset.
-   *Np*: The exact number of periods the asset is used in the financial year to which the current period belongs. The number of periods held is calculated as follows for the listed years:
    -   For the financial year to which both the **Depr. From** period and the **Depr. To** period belong: `Number of the Depr. To period – Number of the Depr. From period + 1`
    -   For the financial year to which the **Depr. From** period belongs: `Number of periods in the fin. year - Number of the Depr. From period + 1`
    -   For the financial year to which the **Depr. To** period belongs: The number of the **Depr. To** period in the financial year
    -   For other financial years: The number of periods in the financial year
-   *Ntemp*: The number of periods in the financial year template specified on the [Financial Year](GL_10_10_00.md) \(GL101000\) form for the posting book or on the [Book Calendar Setup](FA_20_60_00.md) \(FA206000\) form for a non-posting book, excluding the adjustment period.
-   *Nd*: The number of days in a financial period. It is calculated as follows:
    -   If the period type is *Month* and the first day of the period is in February, this value is equal to *28*.
    -   For the rest of the periods, the value is calculated using the following formula: `Last period date - First period date + 1`.
-   *Days held*: The number of days the asset is used in the financial year to which the current period belongs. The number of days held is calculated as follows for the listed years:
    -   For the financial year to which both the **Depr. From** period and the **Depr. To** period belong: `Sum of Nd values for the periods in the range (Depr. From Period - Depr. To Period)`
    -   For the financial year to which the **Depr. From** period belongs: `Sum of Nd values for the periods in the range (Depr. From Period - Last Fin. Year's period)`
    -   For the financial year to which the **Depr. To** period belongs: `Sum of Nd values for the periods in the range (First Fin. Year's period - Depr. To Period)`
    -   For other financial years: `Sum of Nd values for the periods in the range (First Fin. Year's period - Last Fin. Year's period)`
-   *Depr. amount*: The sum of the depreciation amounts in the previous periods of the current financial year

## New Zealand Straight-Line Evenly by Periods {#section_q1c_ljv_vxb .section}

With this method, the depreciation expense is spread evenly over the estimated useful life of the asset, and the yearly depreciation amount is evenly allocated over the periods of the year.

**Attention:** Additions are not allowed for the assets that use this depreciation method.

If the current period is not the last period of the financial year, the period depreciation is calculated based on the following formula.

``` {#codeblock_v1c_ljv_vxb}
D = Depr. Base * (Percent per Year / 100) / Ntemp
```

If the current period is the last period of the financial year, the period depreciation is calculated based on the following formula.

``` {#codeblock_y1c_ljv_vxb}
D = Depr. Base * (Percent per Year / 100) * (Np / Ntemp) - Depr. amount
```

The symbols in the formulas have the following meanings:

-   *D*: The depreciation expense \(for a year or an accounting period\).
-   *Depr. Base*: The depreciation base of the asset.
-   *Percent per Year*: The depreciation rate of the asset.
-   *Np*: The exact number of periods the asset is held in the financial year to which the current period belongs. The number of periods held is calculated as follows for the listed years:
    -   For the financial year to which both the **Depr. From** period and the **Depr. To** period belong: `Number of the Depr. To period – Number of the Depr. From period + 1`
    -   For the financial year to which the **Depr. From** period belongs: `Number of periods in the fin. year - Number of the Depr. From period + 1`
    -   For the financial year to which the **Depr. To** period belongs: The number of the **Depr. To** period in the financial year
    -   For other financial years: The number of periods in the financial year
-   *Ntemp*: The number of periods in the financial year template specified on the [Financial Year](GL_10_10_00.md) \(GL101000\) form for the posting book or on the [Book Calendar Setup](FA_20_60_00.md) \(FA206000\) form for a non-posting book, excluding the adjustment period.
-   *Depr. amount*: The sum of the depreciation amounts in the previous periods of the current financial year.

If the current financial period is the **Depr. To** period, `Period Depreciation = NBV (Net Book Value)`. The net book value at the beginning of the period is calculated as follows:

-   For the **Depr. From** period, `NBV = Depreciation Base`
-   For other periods, `NBV = NBV calculated for the previous period - Depreciation Amount calculated for the previous period`

## New Zealand Diminishing Value Evenly by Periods {#section_bbc_ljv_vxb .section}

With this method, the depreciation is calculated based on the specified **Percent per Year** setting of each particular asset. The annual depreciation amount is calculated as a yearly percent applied to the **Net Book Value** of the asset at the beginning of the year.

If the current period is not the last period of the financial year, the period depreciation is calculated based on the following formula.

``` {#codeblock_fbc_ljv_vxb}
D = NBV_year * (Percent per Year / 100) * (Np / Ntemp)
```

If the current period is the last period of the financial year, the period depreciation is calculated based on the following formula.

``` {#codeblock_hbc_ljv_vxb}
D = NBV_year * (Percent per Year / 100) * (Np / Ntemp) - Depr. amount
```

The symbols in the formulas have the following meanings:

-   *D*: The depreciation expense \(for a year or an accounting period\).
-   *NBV\_year*: The net book value of the asset at the beginning of the year to which the current period belongs, calculated for each addition as follows:
    -   For the first financial year \(to which the **Depr. From** period belongs\): `NBV_year = (Acquisition Cost – Salvage Amount) * Business Use(%)`
    -   For other financial years: `NBV_year = NBV_year calculated for the previous fin. year - Accumulated depreciation amount of the previous fin. year`
-   *Percent per Year*: The depreciation rate of the asset.
-   *Ntemp*: The number of periods in the financial year template specified on the [Financial Year](GL_10_10_00.md) \(GL101000\) form for the posting book or on the [Book Calendar Setup](FA_20_60_00.md) \(FA206000\) form for a non-posting book, excluding the adjustment period.
-   *Np*: The exact number of periods the asset is held in the financial year to which the current period belongs. The number of periods held is calculated as follows for the listed years:
    -   For the financial year to which both the **Depr. From** period and the **Depr. To** period belong: `Number of the Depr. To period – Number of the Depr. From period + 1`
    -   For the financial year to which the **Depr. From** period belongs: `Number of periods in the fin. year - Number of the Depr. From period + 1`
    -   For the financial year to which the **Depr. To** period belongs: The number of the **Depr. To** period in the financial year
    -   For other financial years: The number of periods in the financial year
-   *Depr. amount*: The sum of the depreciation amounts in the previous periods of the current financial year.

**Parent topic:**[Depreciation Configuration](../UserGuide/FA__cnf_Depreciation_Methods.md)

