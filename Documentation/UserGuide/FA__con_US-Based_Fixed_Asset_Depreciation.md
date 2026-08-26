# U.S.-Based Fixed Asset Depreciation {#_36a823e1-bf2e-4423-a3fd-1a544d75dad5 .concept}

This topic discusses some peculiarities of the United States tax system related to fixed asset depreciation.

## Varieties of Tax Benefits {#section_ehc_ljv_vxb .section}

One of the features of the U.S. tax system is Section 179 of the United States Internal Revenue Code. If this section is applied for an asset, you may deduct the full cost of an asset in the first year of its useful life, instead of depreciating the asset over its useful life. However, Section 179 has some limitations and can vary from year to year.

The other tax benefit related to fixed asset depreciation is the bonus depreciation deduction. The bonus amount, which reduces the depreciable basis in the first year of asset's useful life, is the bonus rate multiplied by the depreciable basis. The United States Internal Revenue Code can limit the maximum allowable bonus amount.

By using Acumatica ERP, you can create an unlimited number of bonuses and specify appropriate settings for each, such as the bonus rate and the maximum bonus amount. A bonus is applied to an asset if the start depreciation date is within the specified date range for the bonus. You can create bonuses on the [Bonuses](FA_20_80_00.md) \(FA208000\) form.

## Tax Benefit Setup {#section_ihc_ljv_vxb .section}

In Acumatica ERP, you can define each bonus. For each fixed asset class, which you use to group fixed assets and provide some default settings when users create new fixed assets, you can specify whether any tax benefits will be used to depreciate assets related to particular books. Then, for the fixed asset of the class, you specify the bonus that is used.

To assign a qualified bonus to an asset, perform the following steps:

1.  On the [Bonuses](FA_20_80_00.md) form, create a bonus and specify the appropriate settings for it.
2.  On the **Depreciation** tab of the [Fixed Asset Classes](FA_20_10_00.md) \(FA201000\) form for the applicable class, select the **Bonus** check box.
3.  On the **Balance** tab of the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form for the asset, in the **Bonus** column, select the bonus you defined. The bonus rate and bonus amount are calculated based on the bonus you selected.

To apply the Section 179 deduction to the asset's depreciation, perform the following steps:

1.  On the **Depreciation** tab of the [Fixed Asset Classes](FA_20_10_00.md) form for the applicable class, select the **Sect. 179** check box.
2.  On the [Fixed Assets](FA_30_30_00.md) form for the asset, enter the Section 179 amount in the **Tax 179 Amount** column of the **Balance** tab. The amount is deducted from the depreciable basis in the first year of the asset's life.

## Tax Benefit Recapture {#section_ohc_ljv_vxb .section}

If you are subject to a tax benefit recapture rule \(for example, the Section 179 benefit must be recaptured if the asset was disposed of during the first two years of its useful life\), Acumatica ERP provides relevant columns that you can use to remove the tax benefits as needed. On the **Balance** tab of the [Fixed Assets](FA_30_30_00.md) form, you can do the following:

-   To recapture the Section 179 amount, enter the appropriate amount in the **Tax 179 Recapture** column. As a result, the specified amount is added back to the depreciable basis of the asset.
-   To recapture the bonus amount, enter the amount in the **Bonus Recapture** column. As a result, the specified amount is added back to the depreciable basis of the asset.

**Parent topic:**[Depreciation Configuration](../UserGuide/FA__cnf_Depreciation_Methods.md)

