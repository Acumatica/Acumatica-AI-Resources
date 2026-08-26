# Fixed Asset Troubleshooting: To Reverse an Asset {#_71ecb42b-7b71-42b2-970f-3e293ac260bf .task}

You use the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form to annul a fixed asset in Acumatica ERP by using the reverse procedure.

## To Reverse a Fixed Asset {#section_rgh_ljv_vxb .section}

1.  Open the [Fixed Assets](FA_30_30_00.md) \(FA303000\) form.
2.  In the **Asset ID** box of the summary area, select the asset you need to reverse.

    **Note:** You can reverse an asset with the *Active* status only.

3.  On the More menu \(under **Corrections**\), click **Reverse**.

    The asset is reversed; reversal transactions are generated for all released transactions associated with this fixed asset and posted to the same book as the original transactions.

    **Note:** In the posting book, if the financial period of the original fixed asset transactions is already closed, the reversal transactions will be posted to the nearest open financial period.

4.  Release the resulting transactions as dictated by your company workflow.

**Parent topic:**[Troubleshooting Fixed Assets](../UserGuide/FixedAssets_Troubleshooting_Mapref.md)

