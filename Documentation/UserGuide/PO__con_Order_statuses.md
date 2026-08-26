# Purchase Order Statuses {#_057ea83c-9f5f-4800-a4e1-cd96ccb8d5ae .concept}

Acumatica ERP supports four purchase order types: normal, drop ship, blanket, and standard. For all these types, the same set of statuses is used; however, different processing steps can be configured for purchase orders of different types.

The purchasing process usually starts when you create a purchase order in Acumatica ERP on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form. You can add goods to the purchase order and specify the details for each line. The system changes the status of the purchase order during its processing.

The following table describes each of the possible statuses and the ways they fit into purchase order processing; the statuses are listed in the order in which they occur, if applicable.

|Status|Description|
|------|-----------|
|*On Hold*|A newly created purchase order that does not originate from a change order has a status of *On Hold*. The system may also assign the purchase order this status if it has been rejected by the person assigned to approve it or if you have selected the **Hold** check box on the [Purchase Orders](PO_30_10_00.md) form. The purchase order can be left on hold for future editing, including the addition or removal of lines.

 If a purchase order has a line related to a project with the change order workflow enabled, you can click **Hold** on the form toolbar only if the purchase order has the *Rejected* status. You cannot click **Hold** for a purchase order that has at least one related change order. For more information about change orders, see [Tracking Changes to the Project Budget](Projects_CO_Mapref.md).

 When a purchase order is on hold, its totals and quantities of listed goods are not traced or checked. To move the *On Hold* purchase order to the next step in its processing and change its status, you click **Remove Hold**. You can turn on the validation of totals for purchase orders of specific types by selecting the relevant check boxes in the **Validate Total on Entry** section on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form. This validation \(if it is turned on for purchase orders of the specific type\) is performed when you clear the **Hold** check box for the order.

 Whether or not validation is performed, when you clear this check box, the system changes the status of the purchase order to *Pending Approval*, *Pending Printing*, *Pending Email*, or *Open*, depending on the purchase order approval rules specified in the system and your required processing steps.

|
|*Pending Approval*|Depending on your organization's approval rules for purchase orders as defined in Acumatica ERP, the status of a purchase order might be changed to *Pending Approval* after the **Hold** check box has been cleared. This status indicates that the purchase order requires approval. This status remains until all required approvals have been performed.

 To approve a purchase order with this status, an authorized user selects **Approve** on the More menu of the [Purchase Orders](PO_30_10_00.md) form. When the user performing the last \(or only\) required approval invokes this action, the system changes its status to *Pending Printing*, *Pending Email*, or *Open*.

 To reject a purchase order with this status, an authorized user selects **Reject** on the More menu of the [Purchase Orders](PO_30_10_00.md) form. When this user invokes this action, the system changes its status to *Rejected*.

|
|*Rejected*|Depending on your organization's approval rules for purchase orders as defined in Acumatica ERP, the status of a purchase order might be changed to *Rejected* after an employee who was assigned to approve the purchase order has rejected it.

 You can save a purchase order with the *Rejected* status with the *On Hold* status for further editing by selecting the **Hold** check box.

|
|*Pending Printing*|Printing a purchase order is an optional step in purchase order processing that is performed if the vendor prefers to receive printed purchase orders by fax or postal mail. Depending on the vendor settings, the status of the purchase order may be changed to *Pending Printing* from *On Hold* or *Pending Approval* to *Pending Printing*. To require printing in the purchase order processing steps for a particular vendor, you select the **Print Order** check box on the **Purchase Settings** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form. The **Printed** check box on the **Other** tab of the [Purchase Orders](PO_30_10_00.md) form shows whether the order has been printed.

 A newly created purchase order that originates from a change order is assigned the *Pending Printing* status if the vendor's settings require the printing of purchase orders. The system also assigns the *Pending Printing* status to a purchase order if the vendor's settings require the printing of purchase orders and the purchase order, which had the *Open* status, has been changed by means of change orders.

 The *Pending Printing* status indicates that an employee must print the purchase order and then send or fax it to the vendor. To print the purchase order, you select **Reports** &gt; **Print Purchase Order** on the form toolbar of the [Purchase Orders](PO_30_10_00.md) form. This changes the status of the purchase order to *Pending Email* or *Open*.

|
|*Pending Email*|Emailing a purchase order to the vendor is an optional step in purchase order processing that is performed if the vendor prefers to receive purchase orders by email. Depending on the vendor settings, the status of the purchase order may be changed to *Pending Email* from *On Hold*, *Pending Approval*, or *Pending Printing*. To require emailing in the purchase order processing steps for a particular vendor, select the **Email Order** check box on the **Purchase Settings** tab of the [Vendors](AP_30_30_00.md) form. The **Emailed** check box on the **Other** tab of the [Purchase Orders](PO_30_10_00.md) form shows whether the order has been emailed.

 A newly created purchase order that originates from a change order is assigned the *Pending Email* status if the vendor's settings require the emailing of purchase orders. The system also assigns the *Pending Email* status to a purchase order if the vendor's settings require the emailing of purchase orders and the purchase order, which had the *Open* status, has been changed by means of change orders.

 When a purchase order has the *Pending Email* status, the purchase order must be sent by email to the vendor. To complete this step, you select **Email Purchase Order** on the More menu of the [Purchase Orders](PO_30_10_00.md) form. This changes the order status to *Open*.

|
|*Canceled*|The status of the purchase order is changed to *Canceled* if the purchase order has been canceled by a user selecting **Cancel Order** on the More menu of the [Purchase Orders](PO_30_10_00.md) form. This status means the purchase order cannot be edited, and no receipts can be created for it.

 The canceled purchase order keeps this status unless you change the status to *On Hold* by selecting the **Hold** check box for it. If the status is changed to *On Hold*, the document can be edited, and the usual purchase order processing steps can be performed.

|
|*Open*|The status of the purchase order is changed to *Open* after any necessary approvals and any other required processing steps \(printing the order, emailing it, or both\) have been performed for the purchase order. If no approvals or optional processing steps are required, the status of the purchase order changes from *On Hold* to *Open* when the **Hold** check box is cleared.

 A newly created purchase order that originates from a change order is assigned the *Open* status if the vendor's settings do not require the printing or emailing of purchase orders.

 The *Open* status means that the quantity of the items on purchase receipts for this purchase order is less than the quantity required to complete the purchase order. In Acumatica ERP, you create the receipts for the ordered and received items by using the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form.

 When a purchase order has the *Open* status, the system traces the quantities of items received for the order and displays the item availability information on the [Inventory Allocation Details](IN_40_20_00.md) \(IN402000\) form in accordance with the availability calculation rule assigned to the item class to which the item belongs. This rule is specified for the item class in the **Availability Calculation Rule** box on the **General** tab of the [Item Classes](IN_20_10_00.md) \(IN201000\) form.

|
|*Completed*|The status of the purchase order is changed from *Open* to *Completed* when all the lines of the purchase order have been completed based on the appropriate rules \(that is, when the **Completed** check box is selected for all the purchase order lines\).

 Also, you can manually complete the order by clicking **Complete Order** on the More menu of the [Purchase Orders](PO_30_10_00.md) form.

|
|*Closed*|The status of the purchase order is changed from *Completed* to *Closed* when all the lines of the order have been received and billed in full.|

**Parent topic:**[Managing Purchase Documents](../UserGuide/PO__MNG_Managing_Document.md)

