# Shipping Rule Combinations {#_ebbe444b-5214-48e9-9db8-a27da4e1732d .concept}

The shipping rules specified for a particular sales order define how the goods in the sales order should be shipped—whether they should be shipped only in full or partial shipments for the available quantities are allowed. The shipment rules for a sales order are applied when you create a shipment for a single order—by using the **Create Shipment** action on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form—or mass-create shipments for multiple orders, by running the **Create Shipments** process from the [Process Orders](SO_50_10_00.md) \(SO501000\) form.

## Shipping Rule Options { .section}

On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, you can specify the document-level shipping rule for the sales order document as a whole \(in the **Shipping Rule** box on the **Shipping** tab\) and for each sales order line \(in the **Shipping Rule** column on the **Details** tab\).

You can specify any of the following shipping rule options for order lines and for orders:

-   *Ship Complete*
-   *Cancel Remainder*
-   *Back Order Allowed*

The shipping rules applied to order lines are explained in the following table.

|Shipping Rule Option|Result|
|--------------------|------|
|**Ship Complete**|If a negative quantity is not allowed for the item specified in the line, the item can be included in a shipment only if the full ordered quantity is available for shipping. If the quantity of the item that is available for shipping is less than the ordered quantity, then the item in this line is not included in the shipment. The ordered quantity is shown as the **Open Quantity**, and the line remains *Open*.

 If shipping of the negative stock is allowed for the order type—that is, if **Ship in Full If Negative Stock Is Allowed** is selected on the [Order Types](SO_20_10_00.md) \(SO201000\) form—the items for which a negative quantity is allowed are included in a shipment in the full ordered quantity, regardless of whether this quantity is available for shipping. \(This rule does not apply to lot- or serial-tracked stock items.\)

 After this shipment has been confirmed, the line has the *Completed* status on the [Sales Orders](SO_30_10_00.md) form. For details, see [Processing Partial Shipments](SO__con_Shipments.md).

|
|**Cancel Remainder**|With this shipping rule, shipping for the line is performed only once.

 If a negative quantity is not allowed for the item specified in the line, the item can be included in a shipment if any nonzero quantity that is less than or equal to the ordered quantity is available for shipping.

 If shipping of the negative stock is allowed for the order type, the items for which a negative quantity is allowed are included in a shipment in the full ordered quantity, regardless of whether it is available for shipping. \(This rule does not apply to lot- or serial-tracked stock items.\)

 After this shipment has been confirmed, the line is marked as *Completed*, and the **Open Quantity** value is set to zero.

 **Note:** If you reopen a sales order line for which at least one shipment has been performed, the system changes the shipping rule to *Back-Order Allowed* for this line on the [Sales Orders](SO_30_10_00.md) form.

|
|**Back Order Allowed**|If a negative quantity is not allowed for the item specified in the line, the item can be included in a shipment if any nonzero quantity that is less than or equal to the ordered quantity is available for shipping. The remaining quantity \(if applicable\) is shown as the **Open Quantity** on the line. The ordered quantity can be shipped in multiple shipments. The line gets the *Completed* status once the full ordered quantity has been shipped.

 If shipping of the negative stock is allowed for the order type, the items for which a negative quantity is allowed are included in a shipment in the full ordered quantity, regardless of whether the full quantity is available for shipping. \(This rule does not apply to lot- or serial-tracked stock items.\) After this shipment has been confirmed, the line has the *Completed* status.

 If shipping of the negative stock is not allowed for an order type, but you don't want to rely completely on availability data for the classes of items for which negative quantity is allowed, select the **Add Zero Lines for Items Not in Stock** check box on the [Sales Orders Preferences](SO_10_10_00.md) form. Then in the orders of this type, for order lines with the **Back Order Allowed** shipping rule, a zero-quantity line is added to the shipment if the item is not in stock; you can manually enter the actually available quantity of the item.

|

See the table below for details about how the shipping rule of a sales order affects the mass-processing of the sales orders, which you perform by using the [Process Orders](SO_50_10_00.md) \(SO501000\) form.

**Note:** If you initiate shipment creation for an individual sales order \(by using the [Sales Orders](SO_30_10_00.md) form\) and the system detects a shortage of the items, the system displays the message informing you that the order cannot be shipped in full so that you can make an appropriate decision on the fulfillment of this order and change the quantities, create a partial shipment, or change the order status to *Back Order* manually.

|Document-Level Rule|Result|
|-------------------|------|
|**Ship Complete**|If shipping cannot be performed for each line of the order, no shipment is created, and the order is assigned the *Back Order* status.

 The shipment is created \(and the order is assigned the *Shipping* status\) if shipping can be performed for each line—that is, if the lines meet the following criteria:

 -   For each *Ship Complete* line: The ordered quantity is available for shipping and can be shipped in full.
-   For each *Cancel Remainder* line: Any nonzero quantity that is equal to or less than the ordered quantity is available for shipping.
-   For each *Back Order Allowed* line: Any nonzero quantity that is equal to or less than the ordered quantity is available for shipping.

 You cannot specify different **Requested On** dates for different lines in the order.

 When the shipment has been confirmed, the order is assigned the *Completed* status if all the lines have the *Completed* status. If any line is not completed, the order is assigned the *Back Order* status.

|
|**Cancel Remainder**|If shipping cannot be performed for any of order lines, no shipment is created, and the order is assigned the *Back Order* status.

 If full or partial shipping can be performed for at least one line \(according to the line's shipping rule\), the shipment is created.

 You cannot specify different **Requested On** dates for different lines in the order.

 When the shipment has been confirmed, the order is assigned the *Completed* status if at least one line has the *Completed* status and the lines not included in shipment have the *Cancel Remainder* rule. The order is assigned the *Back Order* status if at least one line is not completed \(that is, if it has a nonzero open quantity\).

|
|**Back Order Allowed**|If shipping cannot be performed for any of the order lines, no shipment is created, and the order is assigned the *Back Order* status.

 You can specify different **Requested On** dates for different lines in the order, and different lines will be shipped on different dates.

**Note:** If you change the **Requested On** date for the order, the system prompts you to choose whether you want to keep the dates specified for each line or to update the respective dates with the new **Requested On** date.

 If full or partial shipping can be performed for at least one line according to the line's shipping rule, the shipment is created. After the shipment has been confirmed, the order is assigned the *Back Order* status if other lines are not completed.

|

## Examples of the Application of Shipping Rules { .section}

The table below presents the examples that illustrate how the shipping rules specified for the sales order and its lines affect the fulfillment of the order. Assume this order has the following lines:

-   Line 1: *Product 1* with an ordered quantity of 150
-   Line 2: *Product 2* with an ordered quantity of 100

Each row of the table shows a combination of shipping rules, with the first column indicating the rule specified for the sales order as a whole and the second column indicating the rules specified for the lines of the sales orders. The third column shows the quantity of each product that is available for shipping in the example in the row. The fourth column then shows, for the particular shipping rules and available quantities, the result of and conditions. The table includes enough combinations to give you an idea how these settings work together without covering an overwhelming amount of detail.

|Document-Level Rule|Shipping Rules for Order Lines\)|Qty. Available for Shipping|Result|
|-------------------|--------------------------------|---------------------------|------|
|**Ship Complete**|-   Line 1: *Ship Complete*
-   Line 2: *Ship Complete*

|-   300
-   2000

|A shipment is created that includes both lines \(150 of *Product 1* and 100 of *Product 2*\), and the sales order is assigned the *Shipping* status. On shipment confirmation, the order is assigned the *Completed* status.|
|**Ship Complete**|-   Line 1: *Ship Complete*
-   Line 2: *Ship Complete*

|-   300
-   99

|No shipment is created, and the sales order is assigned the *Back Order* status.|
|**Ship Complete**|-   Line 1: *Ship Complete*
-   Line 2: *Cancel Remainder*

|-   300
-   50

|A shipment is created that includes both lines \(150 of *Product 1*, and 50 of *Product 2*\), and the sales order is assigned the *Shipping* status. On shipment confirmation, the order is assigned the *Completed* status.|
|**Ship Complete**|-   Line 1: *Ship Complete*
-   Line 2: *Back Order Allowed*

|-   300
-   50

|A shipment is created that includes both lines \(150 of *Product 1*, and 50 of *Product 2*\), and the sales order is assigned the *Shipping* status. On shipment confirmation, the sales order is assigned the *Back Order* status.|
|**Cancel Remainder**|-   Line 1: *Ship Complete*
-   Line 2: *Cancel Remainder*

|-   300
-   0

|A shipment is created that includes only one line \(150 of *Product 1*\), and the sales order is assigned the *Shipping* status. On shipment confirmation, the order is assigned the *Completed* status.|
|**Cancel Remainder**|-   Line 1: *Ship Complete*
-   Line 2: *Cancel Remainder*

|-   100
-   50

|A shipment is created that includes only one line \(50 of *Product 2*\), and the sales order is assigned the *Shipping* status. On shipment confirmation, the order is assigned the *Back Order* status.|
|**Cancel Remainder**|-   Line 1: *Cancel Remainder*
-   Line 2: *Cancel Remainder*

|-   0
-   0

|No shipment is created and the sales order is assigned the *Back Order* status.|
|**Back Order Allowed**|-   Line 1: *Ship Complete*
-   Line 2: *Cancel Remainder*

|-   300
-   50

|A shipment is created that includes both lines \(150 of *Product 1* and 50 of *Product 2*\), and the sales order is assigned the *Shipping* status. On shipment confirmation, the sales order is assigned the *Completed* status.|
|**Back Order Allowed**|-   Line 1: *Ship Complete*
-   Line 2: *Back Order Allowed*

|-   300
-   50

|A shipment is created that includes both lines \(150 of *Product 1* and 50 of *Product 2*\), and the sales order is assigned the *Shipping* status. On shipment confirmation, the order is assigned the *Back Order* status.|
|**Back Order Allowed**|-   Line 1: *Cancel Remainder*
-   Line 2: *Back Order Allowed*

|-   100
-   50

|A shipment is created that includes both lines \(100 of *Product 1* and 50 of *Product 2*\), and the sales order is assigned the *Shipping* status. On shipment confirmation, the sales order is assigned the *Back Order* status.|

## Shipment Thresholds { .section}

You can use undershipment and overshipment thresholds, in addition to shipping rules, to determine whether a shipment results in changing the status of the sales order line to *Completed*.

On the **Details** tab on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, for each line of a sales order, you can specify whether undershipment and overshipment are allowed as follows:

-   To allow overshipment, you enter in the **Overship. Threshold \(%\)** column a value greater than 100 \(meaning 100%\). For an order line with the *Ship Complete* shipping rule for 100 yards of fabric, you might opt to have the whole lap shipped \(a lap of fabric has 100 meters, and each meter is 1.093 yards\). To do this, you can specify the overshipment threshold at 110%, which allows up to 10% more fabric than the ordered amount to be shipped.
-   To allow undershipment, you enter in the **Undership. Threshold \(%\)** a value that is less than 100. Suppose that when you create a shipment, for an order line with the *Back Order Allowed* shipping rule, the system detects a small shortage of goods—for example, only 99 units are available for shipping and 100 have been ordered. If the line's undershipment threshold was specified at 99% or lower, the 99 units for the line will be included in the shipment, the line will be marked as *Completed*, and no open quantity will be left on the line for a back order.

**Note:** If 100 is specified in both these columns, it means that undershipment or overshipment are not allowed.

**Parent topic:**[Processing Partial Shipments](../UserGuide/SO__con_Shipments.md)

