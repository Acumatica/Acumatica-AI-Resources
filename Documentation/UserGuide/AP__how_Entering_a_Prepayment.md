# To Enter a Prepayment in the Simplified Way {#_7595dbdc-d6ba-49a4-af1f-00c3bc619577 .task}

In Acumatica ERP, you can enter prepayments to vendors in the following ways, which are described in detail in this topic:

-   Standard way: You enter the vendor's prepayment request on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form as an Accounts Payable document of the *Prepayment* type. Then you create a payment to pay for this prepayment request on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form \(for details, see [AP Bill Payments: Process Activity](Finance_PayingAPBills_Process_Activity.md)\). For details describing the standard way of creating a prepayment, see [Bill Prepayments: To Process a Prepayment](Finance_ProcessingPrepayments_Process_Activity.md).
-   Simplified way: You create a document of the *Prepayment* type directly by using the [Checks and Payments](AP_30_20_00.md) form.

## To Enter a Prepayment: Simplified Way {#2 .section}

1.  Open the [Checks and Payments](../Shared/../UserGuide/AP_30_20_00.md) \(AP302000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record**.
3.  In the **Type** box of the Summary area, select *Prepayment*.
4.  In the **Application Date** box, check the date of the document, and change it, if needed.
5.  In the **Vendor** box, select the vendor to be paid.

    The system fills in the following boxes automatically with the default settings of the selected vendor: **Location**, **Payment Method**, and **Cash Account**. Review these settings, and make any needed changes.

6.  In the **Payment Amount** box \(if it appears\), specify the total amount of the prepayment.
7.  On the form toolbar, click **Save** to save the prepayment.

## Notes About the Procedure {#section_jyn_njv_vxb .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note the following about the Summary area of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form:

-   The system fills in the **Post Period** box automatically, based on the selected document date.
-   In the **Currency** box, you can override the currency only if the **Allow Currency Override** check box is selected for the vendor on the [Vendors](AP_30_30_00.md) \(AP303000\) form.
-   The **Vendor Ref.** parameter is required only if the **Require Vendor Reference** check box is selected on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form; otherwise, it is optional.

Note the following about the **Details** tab of the [Bills and Adjustments](AP_30_10_00.md) form:

-   In the **Account** column, the system enters the expense account associated with the vendor location if the **Inventory ID** column is empty. If you have specified an inventory item in the **Inventory ID** column, the system enters an expense account specified in the inventory ID settings.
-   In the **Subaccount** column is correct; by default, it is generated in accordance with the rule in the **Combine Expense Sub. from** box on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form. You can manually change it if necessary.

Note the following about the Summary area of the [Checks and Payments](AP_30_20_00.md) form:

-   The system fills in the **Application Period** box automatically, based on the selected document date.

**Parent topic:**[Processing Prepayments for a Bill](../UserGuide/Finance_ProcessingPrepayments_Mapref.md)

