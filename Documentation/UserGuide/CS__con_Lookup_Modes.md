# Lookup Modes for Segmented Keys {#_7ec49397-0399-4904-b862-9cedc01b62a4 .concept}

When configuring segmented keys in Acumatica ERP, you need to select lookup mode, which affects the process of users entering the object identifier based on this segmented key on data entry forms as follows:

-   The part of the identifier that users can select from the list when they are entering the value on data entry forms: existing values of each segment of the identifier, the entire value of the identifier, or the value of both the segment and the entire identifier
-   Whether users can enter new identifiers of the object

## Lookup Modes for Segmented Keys {#_3af8d7e8-43a2-47c3-8c63-2e9eca690c70 .section}

In the **Lookup Mode** box of the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form, you can select one of the following modes:

-   *By Segment: All Avail. Segment Values*: In this mode, a user enters an identifier segment by segment. While typing a segment value, the user can press F3 to open the list of the segment values \(as specified on the [Segment Values](../Shared/../UserGuide/CS_20_30_00.md) \(CS203000\) form\) and select a value from this list.

    If you select this mode, the **Allow Adding New Values On the Fly** check box becomes selected and unavailable for the segmented key. If the **Validate** check box is cleared for the segment whose value a user is typing while entering an identifier, the user can enter a new segment value. The system automatically saves this value to the list of segment values and creates a new segmented key value. If the **Validate** check box is selected for the segment whose value the user is typing, the user cannot enter a new segment value.

-   *By Segment: Child Segment Values*: In this mode, a user enters an identifier segment by segment. While typing a segment value, the user can press F3 to open the list of the segment values that have been specified on the object management form \(such as the [Item Classes](../Shared/../UserGuide/IN_20_10_00.md) \(IN201000\) form\). This list is filtered by the value of the previous segment or segments. When the user is typing segment values, the system lists existing object identifiers. This mode is displayed for only the segmented keys that support the hierarchical structure of segments: *INITEMCLASS*. For details on hierarchy in item class identifiers, see [Item Classes for Stock Items: General Information](../Shared/../UserGuide/Item_Classes_GeneralInfo.md).

    With this mode selected, the **Allow Adding New Values On the Fly** check box is cleared by default but is available for editing.

    We recommend that you clear the **Validate** check box for all segments of a key that supports the hierarchical structure of segments, because this check box controls the validation of segment values based on the values added to the [Segment Values](../Shared/../UserGuide/CS_20_30_00.md) form.

-   *By Segmented Key*: In this mode, a user enters the entire identifier. When the user is typing the identifier on the data entry form, the system displays the list of existing identifiers. The user can select one of the existing values from the list.

    When you select this mode, the **Allow Adding New Values On the Fly** check box is cleared and unavailable for the segmented key. That is, a user cannot enter a new value of either the segments or the identifier on the fly.

    If you select the **Validate** check box for one segment or multiple segments of the segmented key, the system makes sure the segment values are among those that are specified on the [Segment Values](../Shared/../UserGuide/CS_20_30_00.md) form after a user saves the changes made on the data entry form.


## Guidelines for Selecting a Lookup Mode { .section}

For the majority of predefined segmented keys, you cannot change the default *By Segmented Key* mode because usually identifiers that these segmented keys describe are one-segmented.

The most common objects with multi-segmented identifiers are General Ledger subaccounts and inventory subitems. For the segmented keys that describe these identifiers, you can select a lookup mode that best meets you business requirements. For the *INSUBITEM* and *SUBACCOUNT* segmented keys, consider the following guidelines as you select the lookup mode:

-   If the segmented key has only one segment, you can select the *By Segmented Key* mode. In this case, entering identifiers segment-by-segment is the same thing as entering identifiers as a whole.
-   You can select the *By Segmented Key* mode if all of the following conditions are met: The segmented key includes multiple segments, the number of identifiers based on the segmented key is between two and ten, and users are not allowed to enter new identifiers on the fly on data entry forms. In this case, users can select the entire identifier more quickly than they could select the values of each segment.
-   If the segmented key includes multiple segments and users are allowed to enter new values on the fly, you can select the *By Segment: All Avail. Segment Values* mode and clear the **Validate** check box for all segments. Entering new identifiers on the fly is useful when the number of segments and the number of values in each segment could produce so many combinations that it would be labor-intensive to enter all identifiers in advance.
-   You can select the *By Segment: All Avail. Segment Values* mode and select the **Validate** check box for each segment if all of the following conditions are met: The segmented key includes multiple segments, the number of identifiers based on the segmented key is more than ten, and users are not allowed to enter new identifiers on the fly. In this case, the system will display an error message if a user enters a segment value not from the list and saves his or her changes.

For segmented keys that support a hierarchical structure \(*INITEMCLASS*\), you can select the *By Segment: Child Segment Values* mode.

**Parent topic:**[Managing Segmented Keys](../UserGuide/SM__con_Managing_Segmented_Keys.md)

