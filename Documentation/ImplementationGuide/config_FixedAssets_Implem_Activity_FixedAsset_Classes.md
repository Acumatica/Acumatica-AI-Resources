# Fixed Assets: To Create Fixed Asset Classes {#_c99bf5f7-a59b-4624-b06e-18f40609a4a0 .task}

In the following implementation activity, you will learn how to create fixed asset classes.

## Story { .section}

Suppose that the fixed asset functionality has been configured for SweetLife Fruits &amp; Jams. Before fixed asset records are created, fixed asset classes need to be planned and created. SweetLife needs to create and maintain fixed assets for land, buildings and building improvements, computers, and software. Each fixed asset class must have a particular fixed asset type assigned to it. The predefined asset types available in Acumatica ERP cover the types of fixed assets used by SweetLife.

Acting as an implementation consultant, you need to create the following fixed asset classes in the system.

|Asset Class|Asset Type|Tangible|Depreciable|Description|Depreciation Method|Averaging Convention|Useful Life|
|-----------|----------|--------|-----------|-----------|-------------------|--------------------|-----------|
|*LAND*|*LAND*|Yes|No|Land|None|No|*0* \(indefinite\)|
|*BUILDING*|*BUILDING*|Yes|Yes|Building and major building improvements|*SL \(Straight-Line\)*|*Mid Period*|*39*|
|*COMPUTERS*|*COMPUTERS*|Yes|Yes|Computers and computer accessories|*MACRS*|*Mid Quarter*|*5*|
|*SOFTWARE*|*SOFTWARE*|No|Yes|Software licensed with limited use time and website development|*SL \(Straight-Line\)*|*Full Period*|*3*|

## Process Overview { .section}

In this activity, on the [Fixed Asset Classes](../UserGuide/FA_20_10_00.md) \(FA201000\) form, you will create the needed fixed asset classes.

## System Preparation { .section}

Before you start creating fixed asset classes, launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as Kimberly Gibbs with the *gibbs* username and the *123* password.

As a prerequisite activity, in the company to which you are signed in, be sure you have prepared the system, as described in [Fixed Assets: To Set Up the System for Fixed Asset Management](config_FixedAssets_Implem_Activity_System.md).

As a prerequisite activity, in the company to which you are signed in, be sure you have configured the fixed asset subledger, as described in [Fixed Assets: To Configure the Fixed Asset Functionality](config_FixedAssets_Implem_Activity_FixedAssets_Subledger.md).

## Step: Creating Fixed Asset Classes { .section}

To create fixed asset classes, do the following:

1.  On the [Fixed Asset Classes](../UserGuide/FA_20_10_00.md) \(FA201000\) form, add a new record.
2.  Create the *LAND* fixed asset class as follows:
    1.  In the **Asset Class ID** box, enter `LAND`.
    2.  In the **Description** box, enter `Land`.
    3.  Make sure that the **Active** check box is selected.
    4.  On the **General** tab, select *LAND* in the **Asset Type** box.
    5.  On the **GL Accounts** tab, specify the following settings:
        -   **Fixed Assets Account**: *15100 \(Land\)*

            This account will hold the cost of the fixed assets of the *LAND* class. This account will be debited when a fixed asset of the *LAND* class is created, and credited when a fixed asset of this class is disposed of.

        -   **Gain Account**: *90000 \(Gain/Loss of Fixed Asset Disposal\)*

            This account will keep the gain or loss resulting from the disposal of a fixed asset of this class. The account will be used for processing fixed asset disposals. When the fixed asset is disposed of, this account will be debited in the asset's cost amount and credited in the amount of the accumulated depreciation to record the net value of the asset. Also, this account will be credited in the proceeds amount. As a result, the gain or loss from the disposal of the fixed asset will be recorded to the account.

        -   **Loss Account**: *90000 \(Gain/Loss of Fixed Asset Disposal\)*
3.  On the form toolbar, click **Save**.
4.  On the form toolbar, click **Add New Record**, and create the *BUILDING* fixed asset class as follows:
    1.  In the **Asset Class ID** box, enter `BUILDING`.
    2.  In the **Description** box, enter `Buildings and building improvements`.
    3.  Make sure that the **Active** check box is selected.
    4.  On the **General** tab, select *BUILDING* in the **Asset Type** box.
    5.  In the **Useful Life, Years** box, type `39`.
    6.  On the **GL Accounts** tab, specify the following settings:
        -   **Fixed Assets Account**: *15200 \(Buildings and Improvements\)*

            This account will hold the cost of the fixed assets of the *BUILDING* class. This account will be debited when a fixed asset of the *BUILDING* class is created, and credited when a fixed asset of this class is disposed of.

        -   **Accumulated Depreciation Account**: *16200 \(Accumulated Depreciation: Buildings and Improvements\)*

            This account will hold the accumulated depreciation for the fixed assets of the *BUILDING* class. This account will be credited when an asset of the *BUILDING* class is depreciated, and debited when a fixed asset of this class is disposed of.

        -   **Depreciation Expense Account**: *64000 \(Depreciation Expense\)*

            This account will accumulate depreciation expenses. The account will be used for recording depreciation expenses when assets are depreciated. This account will be debited when fixed assets are depreciated.

        -   **Gain Account**: *90000 \(Gain/Loss of Fixed Asset Disposal\)*
        -   **Loss Account**: *90000 \(Gain/Loss of Fixed Asset Disposal\)*
    7.  On the **Depreciation** tab, specify the following settings for the *FIN* book:
        -   **Class Method**: *SL \(Straight-Line\)*
        -   **Averaging Convention**: *Mid Period*
5.  On the form toolbar, click **Save**.
6.  On the form toolbar, click **Add New Record**, and create the *COMPUTERS* asset class as follows:
    1.  In the **Asset Class ID** box, enter `COMPUTERS`.
    2.  In the **Description** box, enter `Computers and accessories`.
    3.  Make sure that the **Active** check box is selected.
    4.  On the **General** tab, select *COMPUTERS* in the **Asset Type** box.
    5.  In the **Useful Life, Years** box, type `5`.
    6.  On the **GL Accounts** tab, specify the following settings:
        -   **Fixed Assets Account**: *15300 \(Computers\)*

            This account will hold the cost of the fixed assets of the *COMPUTERS* class. This account will be debited when a fixed asset of the *COMPUTERS* class is created, and credited when a fixed asset of this class is disposed of.

        -   **Accumulated Depreciation Account**: *16300 \(Accumulated Depreciation: Computers\)*

            This account will hold the accumulated depreciation for the *COMPUTERS* fixed assets. This account will be credited when an asset of the *COMPUTERS* class is depreciated, and debited when a fixed asset of this class is disposed of.

        -   **Depreciation Expense Account**: *64000 \(Depreciation Expense\)*
        -   **Gain Account**: *90000 \(Gain/Loss of Fixed Asset Disposal\)*
        -   **Loss Account**: *90000 \(Gain/Loss of Fixed Asset Disposal\)*
    7.  On the **Depreciation** tab, specify the following settings for the *FIN* book:
        -   **Class Method**: *MACRS5-MQ*
        -   **Averaging Convention**: *Mid Quarter*
7.  On the form toolbar, click **Save**.
8.  On the form toolbar, click **Add New Record**, and create the *SOFTWARE* asset class as follows:
    1.  In the **Asset Class ID** box, enter `SOFTWARE`.
    2.  In the **Description** box, enter `Software and website`.
    3.  Make sure that the **Active** check box is selected.
    4.  On the **General** tab, select *SOFTWARE* in the **Asset Type** box.
    5.  In the **Useful Life, Years** box, type `3`.
    6.  On the **GL Accounts** tab, specify the following settings:
        -   **Fixed Assets Account**: *15400 \(Software\)*

            This account will hold the cost of the fixed assets of the *SOFTWARE* class. This account will be debited when a fixed asset of the *SOFTWARE* class is created, and credited when the fixed asset of this class is disposed of.

        -   **Accumulated Depreciation Account**: *16400 \(Accumulated Depreciation: Software\)*

            This account will hold the accumulated depreciation for the *SOFTWARE* fixed assets. This account will be credited when an asset of the *SOFTWARE* class is depreciated, and debited when the fixed asset of this class is disposed of.

        -   **Depreciation Expense Account**: *64000 \(Depreciation Expense\)*
        -   **Gain Account**: *90000 \(Gain/Loss of Fixed Asset Disposal\)*
        -   **Loss Account**: *90000 \(Gain/Loss of Fixed Asset Disposal\)*
    7.  On the **Depreciation** tab, specify the following settings for the *FIN* book:
        -   **Class Method**: *SL \(Straight-Line\)*
        -   **Averaging Convention**: *Full Period*
9.  On the form toolbar, click **Save**.

**Parent topic:**[Fixed Asset Configuration](../ImplementationGuide/FixedAssets_Mapref.md)

