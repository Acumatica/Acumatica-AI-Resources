# Fixed Assets: General Information {#_61cb10ad-8fbf-489f-a415-094a06111869 .concept}

In this chapter, you will specify the initial settings for the fixed asset functionality, enable the needed feature, and update the chart of accounts. You will also create fixed asset classes, which you will use later to create fixed assets. After you have completed the steps of this chapter, you can begin creating and working with fixed assets.

The fixed asset functionality is available in the system if the *Fixed Asset Management* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Specify the initial settings for the fixed asset functionality
-   Create departments
-   Update the chart of accounts with accounts to be used in transactions involving fixed assets
-   Specify fixed asset preferences
-   Configure posting books and financial periods
-   Create fixed asset classes

## Applicable Scenarios { .section}

You implement fixed assets in the following cases:

-   Your organization needs to record and keep track of long-term assets \(fixed assets\) over their lifecycle, from acquisition to disposal.
-   Your organization needs to depreciate the cost of fixed assets during their lifetime to correctly account for the company's financial state.

## Fixed Asset Classes { .section}

You can configure fixed asset classes, which let you group similar fixed assets for processing and reporting. Once you assign a new asset to a specific class, the default settings of the class are automatically filled in, streamlining the creation of the fixed asset.

Many essential settings must be defined for a fixed asset class. These settings include the asset's useful life, the depreciation method, and the depreciation books that can be used to depreciate the asset. For more information, see [Fixed Assets: Fixed Asset Classes](config_FixedAssets_FA_classes.md).

## Fixed Asset Types { .section}

While you are creating a new fixed asset or fixed asset class in the system, you have to specify the type of the asset. Acumatica ERP provides a number of predefined fixed asset types, including *Building*, *Computers*, *Copyrights*, and *Equipment*. If additional asset types are required, you can create new asset types that meet your business needs, and define each type as describing tangible or intangible assets. For details, see [Fixed Assets: Fixed Asset Types](config_FixedAssets_FA_Types.md).

## Departments { .section}

Departments are used for dividing the company into organizational units. Along with branches, departments define the organizational structure of the company. Departments are not branch-specific: Multiple branches may share the same department. In Acumatica ERP, you can use budgeting by departments and classify expenses by departments in financial reports.

When you are implementing fixed assets, you need to update the existing company configuration by adding departments, because each fixed asset you create in Acumatica ERP must belong to a particular department.

## Fixed Asset Preferences { .section}

Before you can quickly convert purchased items into fixed assets, you should specify the **FA Accrual Account** and **FA Accrual Subaccount** on the [Fixed Assets Preferences](../UserGuide/FA_10_10_00.md) \(FA101000\) form. This account and subaccount will be updated by the purchasing transaction. We recommend that you specify the same account on the [Bills and Adjustments](../UserGuide/AP_30_10_00.md) \(AP301000\) form when you create a bill that records the purchase of assets.

When you convert purchased items by using the [Convert Purchases to Assets](../UserGuide/FA_50_45_00.md) \(FA504500\) form, the account and subaccount that you have specified on the [Fixed Assets Preferences](../UserGuide/FA_10_10_00.md) form will be the default account and subaccount for all the transactions associated with converting purchased items. Also, this account will be the default account for the transactions that are generated on the **Reconciliation** tab of the [Fixed Assets](../UserGuide/FA_30_30_00.md) \(FA303000\) form.

Unlike transactions in other subledgers, fixed asset transactions do not need to be linked to the general ledger transactions. If you select the **Update GL** check box in the **Posting Settings** section on the [Fixed Assets Preferences](../UserGuide/FA_10_10_00.md) form, the system generates GL transactions when you release fixed asset transactions. If the **Update GL** check box is cleared, the system does not generate GL transactions when you release fixed asset transactions.

## Disposal Methods { .section}

You may want to dispose of an asset for various reasons. For example, a fixed asset may be sold, stolen, lost, damaged, abandoned, donated, or exchanged for a similar asset or a different one. In Acumatica ERP, you can define the possible disposal methods by using the [Disposal Methods](../UserGuide/FA_20_70_00.md) \(FA207000\) form. For details, see [Fixed Assets: To Configure the Fixed Asset Functionality](config_FixedAssets_Implem_Activity_FixedAssets_Subledger.md).

When the time comes to dispose of an asset, you can select the required disposal method.

**Parent topic:**[Fixed Asset Configuration](../ImplementationGuide/FixedAssets_Mapref.md)

