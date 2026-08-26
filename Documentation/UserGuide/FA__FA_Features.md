# Fixed Assets Overview {#_fd255a28-5747-4935-a342-1548afa50de2 .concept}

By using the fixed asset functionality, you can create fixed assets, track them through their useful life, depreciate them, and dispose of them.

The primary features of the fixed asset functionality are described briefly below and extensively in other topics.

## Quick Conversion from Acquired Items to Fixed Assets {#section_ipb_ljv_vxb .section}

In Acumatica ERP, if your company has acquired new assets, you can quickly convert these items into fixed assets. The acquired items can be converted as separate assets or as components of an existing asset. Alternatively, you can add a fixed asset by entering the required information manually. For more details, see [Conversion of a Purchase: General Information](FixedAssets_Converting_Purchase_GeneralInfo.md).

## Fixed Asset Classes {#section_kpb_ljv_vxb .section}

You can configure fixed asset classes, which let you group similar fixed assets for processing and reporting. Once you assign a new asset to a specific class, the default values from the class are automatically filled in, streamlining the creation of the fixed asset. Many essential settings—such as the asset's useful life, the depreciation method, and the depreciation books that can be used to depreciate the asset—must be defined for a fixed asset class.

To be able to maintain a fixed asset in Acumatica ERP, on acquiring the asset, you need to create a fixed asset record in the system. When you create a fixed asset, you select the fixed asset class to which it belongs, and the system automatically fills in the type of asset, the recovery period, the depreciation settings, and the GL accounts that are specified for the selected fixed asset class. For more information, see [Fixed Assets: Fixed Asset Classes](../ImplementationGuide/config_FixedAssets_FA_classes.md).

## Fixed Asset Hierarchy {#section_npb_ljv_vxb .section}

In Acumatica ERP, the fixed asset hierarchy is a group of relationships between parent and child assets. A fixed asset can have an unlimited number of child assets \(also referred to as *components*\) and only one parent asset. For example, the renovation of a unit of equipment or a building represents an individual fixed asset that is a component of the equipment or building, which is the parent fixed asset.

To build a fixed asset hierarchy, you should take into account what assets consist of or make up, as well as how assets will be replaced at the end of their useful life. The hierarchy is implemented on a provisional basis. For example, if the parent asset is disposed of, the asset's components will remain active.

The asset hierarchy can be built for tangible assets only—that is, for fixed assets with physical substance. Intangible assets must be individually recorded in the system.

In Acumatica ERP, you can use the following forms to organize the hierarchy of fixed assets: [Fixed Asset Classes](FA_20_10_00.md) \(FA201000\), [Fixed Assets](FA_30_30_00.md) \(FA303000\), and [Convert Purchases to Assets](FA_50_45_00.md) \(FA504500\).

On the [Fixed Asset Classes](FA_20_10_00.md) form, you can create a parent fixed asset class that is designed to hold particular parent assets, such as computers. Then when you create a child fixed asset class, you specify the parent class in the**Parent Class** box of the Summary area of this form. You can then specify these classes when you create parent assets and child assets.

When you define a child asset on the [Fixed Assets](FA_30_30_00.md) form, you can select a parent asset for the fixed asset in the Summary area. Then when you open the parent asset on the same form, the child asset will be listed on the **Components** tab.

**Attention:** An asset cannot be a parent and a child of the same fixed asset.

You can also organize the hierarchy of fixed assets as you convert purchased items into fixed assets. You can specify units of items that you want to convert as components of selected assets on the [Convert Purchases to Assets](FA_50_45_00.md) form on the **Reconciliation** tab of the [Fixed Assets](FA_30_30_00.md) form.

## Depreciation Methods {#section_wpb_ljv_vxb .section}

Acumatica ERP provides multiple built-in depreciation methods that are allowed by law in the United States. Additionally, you can configure your own depreciation methods. For the same asset, different depreciation methods can be used for financial reporting and tax reporting. For details, see [Depreciation Configuration](FA__cnf_Depreciation_Methods.md).

## Built-in Averaging Conventions {#section_ypb_ljv_vxb .section}

Acumatica ERP provides a number of built-in averaging conventions to be used for calculating depreciation for the financial periods within which an asset was acquired or disposed. You can select the averaging convention that suits the specific depreciation method. For more information, see [Averaging Conventions](FA__con_Averaging_Conventions.md).

## Flexible Options for Depreciation Calculation {#section_aqb_ljv_vxb .section}

You can automate depreciation calculations for all types of assets by creating schedules for depreciation. You can run these schedules for a particular asset or for multiple assets. If needed, you can suspend the depreciation of specific assets for an unspecified number of periods. For more details, see [Asset Depreciation: General Information](FixedAssets_Depreciation_GeneralInfo.md).

## Support for Fixed Asset Depreciation in the United States {#section_cqb_ljv_vxb .section}

Acumatica ERP fully supports United States-based tax reporting requirements, and you can perform depreciation according to the requirements of the tax authorities of your country. For information on how to set up tax benefits to be calculated during fixed asset depreciation, see [U.S.-Based Fixed Asset Depreciation](FA__con_US-Based_Fixed_Asset_Depreciation.md).

## Mass-Transfer of Fixed Assets {#section_eqb_ljv_vxb .section}

By using Acumatica ERP, you can transfer the assets between branches one by one or through mass processing. For details, see [Asset Transfers: Mass Processing](FixedAssets_Transfers_Mass_Processing.md).

## Mass-Disposal of Fixed Assets {#section_gqb_ljv_vxb .section}

By using Acumatica ERP, you can perform mass disposal and one-by-one disposal of fixed assets. To learn more about the disposal methods and the ways fixed assets can be disposed of with Acumatica ERP, see [Asset Disposal: General Information](FixedAssets_Disposal_GeneralInfo.md).

## Other Features and Options {#section_iqb_ljv_vxb .section}

The fixed asset functionality, you can also do the following:

-   Create custom depreciation methods
-   Schedule depreciation
-   Easily track fixed assets by branch, department, and custodian
-   View the depreciation history of an asset in multiple ways and change the views at any time
-   Use a wide variety of fixed-asset reports that provide accounting and management information
-   Assign multiple depreciation books \(for example, one for tax reporting and one for financial management\) to the fixed assets
-   Split and transfer assets
-   Delete empty transaction documents

