# To Create a Retainage Document \(Release Retainage\) {#_f23704c1-20ad-4ee9-8723-bdfe648461b1 .task}

You release retainage for a particular bill or a debit adjustment from which a part of an amount has been retained on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. Once the retainage is released, the system creates a retainage bill with the specified amount and opens it on the same form. For a negative **Retainage to Release** amount, the system creates a retainage debit adjustment.

## To Create a Retainage Document \(Release Retainage\) {#section_k3m_njv_vxb .section}

1.  Open the [Bills and Adjustments](../Shared/../UserGuide/AP_30_10_00.md) \(AP301000\) form.
2.  In the **Type** box of the Summary area, select *Bill* if you are releasing retainage for a bill, or *Debit Adj.* if you are releasing retainage for a debit adjustment.
3.  In the **Reference Nbr.** box, select the reference number of the document with retainage for which you want to release retainage.
4.  On the More menu \(under **Processing**\), click **Release Retainage**.
5.  On the [Release AP Retainage](../Shared/../UserGuide/AP_51_00_00.md) \(AP510000\) form, which opens, check the values in the **Retainage to Release** and **Percent to Release** columns. If necessary, change the value in one of the columns; the system automatically recalculates the value in the other one.
6.  Select the Included check box for the row \(if the document is processed at the document level\) or rows \(if the document is processed at the line level\) and click **Process** on the form toolbar.

    The system creates a retainage bill or retainage debit adjustment. Make sure that the **Retainage Document** check box is selected for the document.

7.  On the [Bills and Adjustments](../Shared/../UserGuide/AP_30_10_00.md) form, click **Remove Hold** and **Release** on the form toolbar to release the retainage document.

    **Note:** If the **Automatically Release Retainage Documents** check box is selected on the [Accounts Payable Preferences](../Shared/../UserGuide/AP_10_10_00.md) \(AP101000\) form, the system releases retainage documents automatically as soon as they are created.


**Parent topic:**[Processing AP Documents with Retainage](../UserGuide/AP__MNG_Managing_Bills_with_Retainage.md)

