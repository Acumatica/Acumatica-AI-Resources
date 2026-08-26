# To Create a Cash Purchase {#_62296a88-19b5-468a-9460-91efd6b930d4 .task}

You create can a cash purchase on the [Cash Purchases](AP_30_40_00.md) \(AP304000\) form.

## To Create a Cash Purchase {#section_gkj_njv_vxb .section}

1.  Open the [Cash Purchases](../Shared/../UserGuide/AP_30_40_00.md) \(AP304000\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the **Type** box of the Summary area, select *Cash Purchase*.
4.  In the **Date** box, enter the document date.
5.  In the **Vendor** box, select the vendor to receive the payment.
6.  In the **Payment Method** box, make sure that the payment method is specified correctly.
7.  In the **Cash Account** box, make sure that the selected cash account is the one you need.
8.  If needed, in the **Payment Ref.** box, type the document reference number \(such as the wire transfer number or bank check number\).
9.  On the **Details** tab, enter the details of the cash purchase as follows:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Branch** column \(if it appears\), make sure that the system has specified the correct branch. If needed, specify another branch.
    3.  In the **Inventory ID** column, select the inventory ID of the non-stock item received from the vendor or the service delivered by the vendor.
    4.  If needed, in the **Quantity** column, enter the quantity of the item or service delivered by the vendor.
    5.  If needed, in the **Unit Cost** column, specify the cost per unit.
    6.  In the **Account** column, make sure that the correct account is specified.
    7.  In the **Subaccount** column \(if it appears\), make sure that the correct subaccount is specified.
10. In the **Payment Amount** box of the Summary area, enter the total amount of the cash purchase.
11. On the form toolbar, click **Save** to save the document.

## Notes About the Procedure {#section_hkj_njv_vxb .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note that in the Summary area the system fills in the **Post Period** box automatically, based on the specified document date.

Note the following about the **Details** tab:

-   In the **Account** column, the system enters the expense account associated with the vendor location.
-   In the **Subaccount** column, the system enters a subaccount in accordance with the rule in the **Combine Expense Sub. from** box of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form.

**Parent topic:**[Processing Cash Purchases](../UserGuide/Finance_Processing_Cash_Purchases_Mapref.md)

