# Fixed Assets: Fixed Asset Classes {#_942695f5-8de5-4daf-af9d-9b267878a3e4 .concept}

In Acumatica ERP, fixed asset classes serve the following purposes:

-   To group assets having a similar nature, function, or use in your company's business.
-   To provide default settings when you add an asset to the system and assign the asset to a particular class. Most of the default settings can be overridden.

You can define separate fixed asset classes for tangible and intangible assets of different types with a different estimated useful life, or create a separate fixed asset class for non-depreciable fixed assets or assets under construction. For example, you may set up the following classes for tangible assets:

-   Buildings: 50 years of useful life
-   Plant and machinery: 10 years of useful life
-   Furniture and fixtures: 8 years of useful life
-   Land: 0 years of useful life \(the fixed assets of this class are not depreciated, so their useful life is indefinite\)

You create new fixed asset classes by using the [Fixed Asset Classes](../UserGuide/FA_20_10_00.md) \(FA201000\) form, as described in [Fixed Assets: To Create Fixed Asset Classes](config_FixedAssets_Implem_Activity_FixedAsset_Classes.md). Alternatively, you can copy an existing class to create a similar asset class, as described in [To Create an Asset Class by Copying an Existing Class](FA__how_Creatina_Asset_class_Template.md). Also, you can create templates for fixed asset classes and use them to define new classes.

## Default Values Provided by an Asset Class { .section}

When you create a fixed asset class on the [Fixed Asset Classes](../UserGuide/FA_20_10_00.md) \(FA201000\) form, you specify the default settings for all the assets of the class.

The asset type and estimated useful life define the assets to be associated with the class.

You can associate multiple books with the class, each with its own depreciation settings. You have to add the posting book if you want to post to the general ledger the transactions generated for the assets of the class. You can use accelerated depreciation of all the books that use the *Straight-Line* depreciation method. Note that you will be able to associate the assets of the class with only the books that you select for the class. For more information, see [Fixed Assets: Books and Book Calendars](config_FixedAssets_Books_and_Book_Calendars.md) and [Asset Depreciation: General Information](../UserGuide/FixedAssets_Depreciation_GeneralInfo.md).

The general ledger accounts assigned to the class define most of the accounts that will be used to record the transactions for the assets of the class.

**Parent topic:**[Fixed Asset Configuration](../ImplementationGuide/FixedAssets_Mapref.md)

