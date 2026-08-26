# Averaging Conventions {#_6d3cc866-fee3-4c9f-8d6e-01eb8ce17be9 .concept}

Averaging conventions determine how fixed assets must be depreciated for the financial period within which they are acquired or disposed of. Assets usually are not put into service on the first date of the financial period; similarly, they are seldom disposed of on the last date of the financial period.

Acumatica ERP provides built-in averaging conventions, which significantly simplify the calculation of depreciation. On the [Depreciation Methods](FA_20_25_00.md) \(FA202500\) form, you specify the averaging conventions that best fit the selected depreciation method. If you select a built-in depreciation method, the system automatically assigns the statutory-allowed averaging convention for the depreciation book; however, you can manually change the convention.

Some averaging conventions require the system to determine the middle of the financial period. You can specify the rule for determining the middle of the period for averaging conventions assigned to each depreciation book by using the **Mid-Period Type** and **Mid-Period Day** columns on the [Books](FA_20_50_00.md) \(FA205000\) form.

The built-in options for averaging conventions in Acumatica ERP are described below.

## Full Period {#section_ggc_ljv_vxb .section}

With this option specified, depreciation is calculated for the full financial period when the asset was acquired. When the asset is disposed of, no depreciation is calculated for the period of disposal.

## Mid-Period {#section_igc_ljv_vxb .section}

The *Mid-Period* option means that when an asset is acquired \(or disposed of\), depreciation is calculated for the half financial period when the asset is acquired \(or disposed of\).

## Next Period {#section_kgc_ljv_vxb .section}

If you have specified this option, no depreciation is calculated for the financial period when the asset is acquired; depreciation is instead calculated starting from the period after the acquisition period. Depreciation is then calculated for the full financial period in which the asset is disposed of.

## Modified Half Period {#section_mgc_ljv_vxb .section}

With this option chosen, if an asset was acquired within the first half of the financial period, depreciation is calculated for a full period, and no extra periods are added for asset depreciation. If an asset was acquired during the second half of the financial period, depreciation is calculated for half the amount for that period. It is also calculated for half the amount of the last asset life period, and this period is added to the end of the asset's lifetime. That is, the number of depreciation periods increases by 1, and the depreciation is calculated for half of the first period and for half of the last one.

## Modified Half Period 2 {#section_ogc_ljv_vxb .section}

If the asset was acquired within the first half of the financial period, depreciation is calculated for a full period, and no extra periods are added for asset depreciation. If the asset was acquired within the second half of the financial period, depreciation is not calculated for that period. Also, if depreciation is calculated for the extra asset life period, this period is added to the end of the asset's lifetime. That is, the number of depreciation periods increases by 1, and depreciation is not calculated for the first period but is fully calculated for the last one.

## Full Quarter {#section_qgc_ljv_vxb .section}

If you select the *Full Quarter* averaging convention, depreciation is calculated by using the appropriate percentage of annual depreciation \(acquisition and disposal\), which depends on the quarter when the asset was acquired or disposed, as shown in the following table.

|**Quarter the Asset Was Put in Use**|**Acquisition Percentage of Annual Depreciation**|**Disposal Percentage of Annual Depreciation**|
|------------------------------------|-------------------------------------------------|----------------------------------------------|
|1|100%|0%|
|2|75%|25%|
|3|50%|50%|
|4|25%|75%|

## Mid Quarter {#section_tgc_ljv_vxb .section}

This option indicates that the depreciation calculation is based on the acquisition or disposal percentage of annual depreciation, which depends on the quarter when the asset was acquired or disposed of, as shown below.

|**Quarter Asset Was Put in Use**|**Acquisition Percentage of Annual Depreciation**|**Disposal Percentage of Annual Depreciation**|
|--------------------------------|-------------------------------------------------|----------------------------------------------|
|1|87.5%|12.5%|
|2|62.5%|37.5%|
|3|37.5%|62.5%|
|4|12.5%|87.5%|

## Full Year {#section_wgc_ljv_vxb .section}

The *Full Year* option means that depreciation is calculated for the full year during which the asset was acquired. No depreciation is calculated for the year the asset was disposed of.

## Mid Year {#section_ygc_ljv_vxb .section}

With this option selected, depreciation is calculated for the half year when the asset was acquired or disposed of.

## Full Day {#section_ahc_ljv_vxb .section}

The *Full Day* option is the most accurate calculation method. With it selected, depreciation is calculated for the days in the period starting from the day when the asset was acquired or disposed of.

**Parent topic:**[Depreciation Configuration](../UserGuide/FA__cnf_Depreciation_Methods.md)

