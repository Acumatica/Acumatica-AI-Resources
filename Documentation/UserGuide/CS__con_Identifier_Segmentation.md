# Segmented Identifiers {#_a2f667ab-0de9-4738-9f05-58e9cbfc1735 .concept}

Acumatica ERP provides a number of preconfigured segmented keys. Also you can configure your own segmented keys and the settings of the keys. In this topic, you will read about the preconfigured segmented keys, the steps you perform to configure segmented keys, and the settings of the keys.

## Configuration and Maintenance of Segmented Keys { .section}

The process of configuring a segmented key consists of the following general steps:

1.  On the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form, you select the predefined key that you want to configure, or you add a new key. Then you specify the settings of the key, such as the module where the segmented key will be used, the identifier of the numbering sequence that will be applied to the segment that is auto-numbered, and the lookup mode. \(For details on the lookup mode, see [Lookup Modes for Segmented Keys](CS__con_Lookup_Modes.md).\)
2.  In the table on the same form, you specify the settings of each segment of the segmented key, such as the length, mask, and separator. You can define one segment per key as auto-numbered, which means that the system will automatically increase the value of this segment by the numbering step specified for the numbering sequence. You can add any number of segments \(but you must specify at least one\) as long as the total length of all segments does not exceed the maximum length specified for the segmented key. The maximum length does not include the segment separators.
3.  On the [Segment Values](CS_20_30_00.md) \(CS203000\) form, you add the values of each segment that will not be auto-numbered. When you add new values for a segment on this form, the system automatically converts case of each value \(if the **Case Conversion** check box has been selected for the segment on the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form\) and checks whether the value meets the input mask requirements \(which are specified in the **Edit Mask** column for the segment\). Users will use these segment values to create the object identifiers described by the segmented key and to enter the identifiers on data entry forms.
4.  On the form that you use to manage the objects whose identifiers are described by the segmented key \(such as [Subaccounts](GL_20_30_00.md) \(GL203000\), which is used to manage subaccounts\), you add the objects and their identifiers. For details, see [Business Account Identifiers](CS__con_Business_Accounts_Identifiers.md).

## Changes to the Structure of Segmented Keys {#_d4f43fb4-2390-4d6f-b250-9579986772a3 .section}

You can change the structure of the segmented key after the identifiers were created as follows:

-   Add a segment to the segmented key. For details, see [To Add a Segment to an Existing Segmented Key](CS__how_Add_Segment_to_Segmented_Key.md).
-   Remove a segment from the segmented key. For more information, see [To Remove a Segment from an Existing Segmented Key](CS__how_Remove_Segment_from_Segmented_key.md).
-   Split a one-segment identifier into multiple segments. For details, see [To Split a One-Segment Identifier into Multiple Segments](CS__how_Split_Segment_to_Multiple_Segments.md).
-   Change the length of a segment. For more information, see [Change of Segment Length](#_87152ff2-a86a-43e6-a549-aee450adacbf).

If you need to make other changes to the segmented keys, contact your Acumatica support provider.

## Change of Segment Length {#_87152ff2-a86a-43e6-a549-aee450adacbf .section}

Due to changes in business processes of your organization, you may need to change a segment length. When you change the length of an existing segment, the system checks the following:

1.  Whether any values of this segment have been defined on the [Segment Values](CS_20_30_00.md) \(CS203000\) form. The system acts based on this check as follows:
    -   Segment values have been defined: The system does not change the segment length; it instead displays an error message.
    -   No values have been defined: The system performs the next check.
2.  Whether any identifiers with the segment have been defined in the system. \(If they have, you can see these values on the form that is used to manage the object identifiers, such as the [Subaccounts](GL_20_30_00.md) \(GL203000\) form.\) The system acts based on this check as follows:
    -   No identifiers defined: The system changes the segment length.
    -   Identifiers defined: The system estimates the length of each segment and acts based on this estimation as follows:
        -   If the length of any found value exceeds the new length of the segment, the system does not change the segment length; it instead displays an error message. In this case, you need to specify a longer segment length or delete identifiers that contain longer values of the segment.
        -   If the length of all found values is equal to or shorter than the new length, the system changes the segment length. For found segment values whose length is shorter than the new segment length, the system adds spaces to the end of each value to make its length equal to the new segment length.

For example, suppose that there are three segments in the *INSUBITEM* segmented key: *Color*, *Size*, and *Material*. You want to reduce the length of the *Size* segment from 4 to 3. Suppose that no values are defined for the segment on the [Segment Values](CS_20_30_00.md) form. The system acts as follows based on its check for values of segmented keys with the segment:

-   On the [Subitems](IN_20_50_00.md) \(IN205000\) form, suppose that only the *BLK-6-Leather* identifier is defined. The system will change the length of the *Size* segment and will add spaces to the end of the segment in the found segmented key: *BLK-6\_\_-Leather*.
-   On the [Subitems](IN_20_50_00.md) form, suppose that the *WHT-XXXL-Cotton* identifier is defined. The system will not change the length of the *Size* segment because the length of the *XXXL* value is 4 \(which is greater than 3\).

**Parent topic:**[Managing Segmented Keys](../UserGuide/SM__con_Managing_Segmented_Keys.md)

