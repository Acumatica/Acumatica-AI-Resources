# Asset Depreciation: Multiple Depreciation Methods for One Asset {#_5c8f9449-fcd3-4bea-b344-ed2c7ce7d9ed .concept}

Sometimes your company decides to adopt a new depreciation approach starting next year or next quarter. You can schedule the change so that the system continues from that point forward—without adjusting the depreciation amounts that have already been posted.

You can plan depreciation method changes for fixed assets by period. Thus, when you switch methods for future periods on the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form, previously posted depreciation is left as-is; past periods aren’t recalculated just because you’ve changed the method going forward. You maintain a list of the applicable depreciation methods for each fixed asset book, and each method has its own **Start Period**.

## Supported Depreciation Methods { .section}

The table below lists the depreciation methods for which multiple methods are supported, along with their averaging conventions.

|Depreciation Method|Averaging Convention|
|-------------------|--------------------|
|*Straight-Line*|*Full Period*|
|*Straight-Line*|*Full Day*|
|*Australian Prime Cost*|*Full Day*|
|*Australian Diminishing Value*|*Full Day*|
|*New Zealand Diminishing Value*|*Full Period*|
|*New Zealand Straight-Line*|*Full Period*|
|*Dutch Method 2*|*Full Period*|
|*Remaining Value by Days in Period*|*Full Day*|
|*Remaining Value*|*Full Period*|

## Setting Up Multiple Depreciation Methods { .section}

To set up multiple depreciation methods for a specific fixed asset book, do the following:

1.  **Updating the fixed asset preferences.**

    On the [Fixed Assets Preferences](FA_10_10_00.md) \(FA101000\) form, select the **Allow Multiple Depreciation Methods** check box.

2.  **Turning on multiple-method tracking for a specific book:**
    1.  On the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form, select the **Multiple Methods** check box on the **Balance** tab in the book’s row.

        The **Applicable Methods** table appears on the tab so that you can define the book's depreciation method schedule.

    2.  In the **Applicable Methods** table, add a row.
    3.  In the **Start Period** column, specify the first period in which the new method should apply.
    4.  In the **Depreciation Method** column, select the needed method.
    5.  Specify the related settings such as **Percent Per Year** where applicable.
    6.  Repeat the four previous instructions for each depreciation method that will apply for the book.
3.  Repeat Instruction 2 as needed for each of the asset’s books that will use multiple-method scheduling.
4.  Save your changes.

## Restrictions of Multiple Methods { .section}

For an asset on the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form, you can't select the **Multiple Methods** check box on the **Balance** tab if:

-   The combination of the current depreciation method and averaging convention isn't supported. \(See the *Supported Depreciation Methods* section of this topic.\)
-   The asset has the **Depreciable** check box cleared on the **General** tab of the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form.
-   The asset's **Placed-In-Service Date** is still editable. This means that the asset must be depreciated at least partially for the book, which will make that date non-editable.
-   The asset's status is *Fully Depreciated*, *Disposed*, or *Reversed*.

    **Tip:** If the asset is fully depreciated in one book but not in another and still has the *Active* status, you can edit the list of applicable methods in all the asset’s books, including the one where the asset is fully depreciated.


## Managing the Applicable Methods List { .section}

In the **Applicable Methods** table on the **Balance** tab of the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form:

-   You can delete any row except the first one with the earliest start period.
-   If the table contains more than one method, the **Multiple Methods** check box becomes selected and unavailable. Thus, to return to a single method, you must first delete all rows except the first one.
-   If you reduce the asset’s useful life so that the depreciation’s end period would fall earlier than the last method's start period, the system will block the change and tell you to adjust the method list first.

## Assets Under Construction { .section}

If an asset class has the **Under Construction** check box selected on the [Fixed Asset Classes](FA_20_10_00.md) \(FA201000\) form, you can't select the **Multiple Methods** check box for any asset of this class. Before adding multiple methods, you must move the asset to a class with the check box cleared.

## Decreasing an Asset’s Useful Life { .section}

On the **Balance** tab of the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form, you can change the useful life of an asset. This causes the recalculation of the asset’s latest depreciation period \(**Depr. To Period**\). If multiple methods are configured and the new **Depr. To Period** is earlier than the last method’s start period, the system will display an error.

You have to first modify the list of methods in the **Applicable Methods** table and then decrease the useful life of the asset.

## Adjustment of Applicable Methods in Past and Future Periods { .section}

In the **Applicable Methods** table of the **Balance** tab of the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form, you can modify the list of methods—even for past periods where an asset was depreciated. If you modify the list of methods for any past periods when the asset was depreciated, the system generates a catch-up amount when the asset is depreciated again.

If the changes in the table are related to future periods where the asset hasn't been depreciated, the system won't generate any catch-up amount.

## Deletion of Applicable Methods { .section}

In the **Applicable Methods** table of the **Balance** tab of the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form, you can delete any row except for the first one with the earliest start period. Thus, when the **Multiple Methods** check box is selected, at least one row must be added to the **Applicable Methods** table.

**Parent topic:**[Depreciating Fixed Assets](../UserGuide/FixedAssets_Depreciation_Mapref.md)

