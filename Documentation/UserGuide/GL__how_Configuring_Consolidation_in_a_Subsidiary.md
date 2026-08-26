# GL Consolidation \(Optional\): To Configure Consolidation in a Consolidation Unit with Subaccounts {#_9550872d-dc57-418e-b796-3247a4b28218 .task}

This topic describes additional steps that you perform to set up consolidation with the parent tenant for each subsidiary that uses subaccounts. You should perform the following actions:

-   Verify that all accounts have been mapped.
-   If subaccounts are used in the parent tenant, map the subsidiary subaccount segments to the parent tenant subaccounts by using the [Segmented Keys](CS_20_20_00.md) \(CS202000\) and [Segment Values](CS_20_30_00.md) \(CS203000\) forms.

## To Verify That All Accounts Have Been Mapped {#section_ojm_mjv_vxb .section}

1.  Open the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form.
2.  On the table toolbar, click the **Filter Settings** button.
3.  In the **Filter Settings** dialog box, which opens, click **Add Row**.
4.  In the **Property** column, select *Consolidation Account*.
5.  In the **Condition** column, select *Is Empty*.
6.  Optional: To save the filter for future use, click **Save**, enter a filter name, and click **Save**.
7.  Click **Apply** to close the dialog box and apply the filter.

    The system displays the list of GL accounts that were not mapped.

8.  Map any accounts, and save the changes.

## To Map Subaccounts to the Parent Company Subaccounts {#section_rjm_mjv_vxb .section}

You can provide mapping for any subaccount structure in the parent or subsidiary; for details, see [GL Consolidation: Subaccount Mapping](Finance_GL_Consolidation_Subaccount_Mapping.md). For simplicity, we have based the following procedure on these assumptions:

-   Subaccounts in subsidiaries and in the parent company have the same general structure except that the parent accounts have one additional segment that is used to designate the subsidiary.
-   The subsidiaries do not have such a segment.
-   All other segments in the subsidiaries have values that can be easily mapped to the appropriate segment values in the parent company.

You map segments in the consolidation unit subaccounts to segments in the parent subaccounts as follows:

1.  Open the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form.
2.  In the **Segmented Key ID** box, select *SUBACCOUNT*.
3.  For each of the segments, in the **Consol. Order** column, type the integer that corresponds to the order of this segment in the parent subaccount.
4.  In the **Number of Characters** column, specify the lengths of the appropriate segments in the parent company.
5.  Click **Save**.

You map subsidiary subaccount segment values to parent subaccount segment values as follows:

1.  Open the [Segment Values](CS_20_30_00.md) \(CS203000\) form.
2.  In the **Segmented Key ID** box of the Summary area, select *SUBACCOUNT*.
3.  For each of the segments, perform the following steps:
    1.  In the **Segment ID** box \(Summary area\), select the segment by its number in the subsidiary subaccount.
    2.  In the **Mapped Value** column of the table, for each of the segment values, specify the matching value in the parent subaccount segment.
4.  Click **Save**.

**Parent topic:**[Performing GL Consolidation](../UserGuide/Finance_GL_Consolidation_Mapref.md)

