# To Split a One-Segment Identifier into Multiple Segments {#_bb170c9a-7099-4734-86e8-5d191be60c77 .task}

If you have created a one-segment identifier \(for example, for the *SUBACCOUNT* segmented key\) and then realized that it is more convenient for users if the identifier has more segments, you can split the segment into multiple parts without losing the existing values of the identifier.

In this topic, you will read about how to split a one-segment *SUBACCOUNT* key into two segments.

## To Split a One-Segment *SUBACCOUNT* Segmented Key into Two Segments { .section}

For example, suppose that the *SUBACCOUNT* key has the following values: *AAA000*, *AAA010*, *BBB000*, and *BBB010*; also suppose that you need to split the values into two segments of three characters each. To resolve this task, you do the following:

1.  Add the second segment as follows:
    1.  Open the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form.
    2.  In the **Segmented Key ID** box of the Summary area, select the *SUBACCOUNT* segmented key.
    3.  On the table toolbar, click **Add Row** to add a new segment.
    4.  In the **Description** column, add a description of the new segment.
    5.  In the **Length** column, type `3`.
    6.  Save your changes.
2.  Change the existing values of the *SUBACCOUNT* key as follows:
    1.  Navigate to the Subaccounts \(GL203000\) form.
    2.  For each subaccount value, move the last three characters of the first segment to the second segment. For example, change *AAA000* to *AAA\_\_\_-000*.
    3.  Save your changes.
3.  Change the length of the first segment as follows:
    1.  Navigate to the Segmented Keys form.
    2.  In the **Segmented Key ID** box of the Summary area, select the *SUBACCOUNT* segmented key.
    3.  In the **Length** column of the row with the first segment, type `3`.
    4.  Save your changes.

As a result, the *SUBACCOUNT* key will have the following values: *AAA-000*, *AAA-010*, *BBB-000*, and *BBB-010*.

**Parent topic:**[Managing Segmented Keys](../UserGuide/SM__con_Managing_Segmented_Keys.md)

