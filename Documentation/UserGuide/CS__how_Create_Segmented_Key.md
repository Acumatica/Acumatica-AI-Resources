# To Create a Segmented Key {#_ba80a22b-eade-4966-aaca-24b0edfd8b94 .task}

In Acumatica ERP, you can create a segmented key if the preconfigured segmented keys do not meet you needs. To create a segmented key, do the following.

## To Create a Segmented Key { .section}

1.  Open the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form.
2.  In the **Segmented Key ID** box, type the identifier \(for example, *TESTKEY*\).
3.  In the **Lookup Mode** box, select the lookup mode. To decide which lookup mode to select, see [Segmented Identifiers](CS__con_Identifier_Segmentation.md).
4.  Leave the **Specific Module** box cleared.

    **Note:** If you want to limit by specific module a usage of this key, in the **Specific Module** box, select the module.

5.  If you want to add an auto numbered segment, select the numbering sequence in the **Numbering ID** box.

    **Note:** The selected numbering sequence and the corresponding segment which you will add on the further steps must have the same length \(number of characters\). Otherwise, the error will occur, and auto numbering will not work.

6.  In the **Description** box, type description for the segmented key.
7.  On the table toolbar, click **Add Row**.
8.  In the new row, specify the settings for the new segment:
    1.  In the **Description** column, type description for the segment.
    2.  In the **Length** column, type specify segment length.

        CAUTION:

        Make sure the total length of all segments does not exceed the maximum length.

    3.  In the **Align** column, leave *Left*.
    4.  In the **Edit Mask** column, leave *Unicode*.
    5.  In the **Case Conversion** column, leave *Uppercase*.
    6.  Leave the **Validate** column cleared. If you need to validate this segment, select the **Validate** column.
    7.  Select the **Auto Number** column for the segment which must be auto numbered.

        **Note:** Only one segment of the segmented key can be auto numbered. The numbering sequence selected in the **Numbering ID** box will be used for automatic number generation.

    8.  In the **Separator** column, leave *-* or type the character you want to use as a separator between segments.
9.  Repeat steps 7 and 8 the needed number of times.
10. On the form toolbar, click **Save**.

You have created the segmented key. Now you can use it as identifier whose structure is defined by the segmented key.

**Parent topic:**[Managing Segmented Keys](../UserGuide/SM__con_Managing_Segmented_Keys.md)

