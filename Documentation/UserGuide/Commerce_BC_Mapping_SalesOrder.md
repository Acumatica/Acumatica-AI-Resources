# Sales Order Entity {#_1962f436-2b47-4e90-b026-f3e21365d14f .concept}

This topic provides reference information about the standard filtering and field mapping used for the *Sales Order* entity during the synchronization between Acumatica ERP and BigCommerce. The topic also contains information about the merging of duplicate records during the synchronization.

## Sales Order Filtering { .section}

During the export of sales orders from Acumatica ERP, a sales order is skipped if any of the following conditions are met:

-   It has the *Completed* or *Canceled* status.
-   Its type is not supported. Only the order types that are selected in the **Order Types for Export** box and the **Return Order Type** boxes on the **Orders** tab \(**Order** section\) of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form are supported.
-   The sales order is a guest order—that is, a previously imported order saved in Acumatica ERP with the generic guest customer account \(the customer specified in the **Generic Guest Customer** box on the **Customers** tab of the [BigCommerce Stores](BC_20_10_00.md) form\) or an order that was created in Acumatica ERP for the generic guest customer.

During the import of sales orders, for each order with the *Completed* or *Archived* status in BigCommerce, the system creates a synchronization record in Acumatica ERP and assigns it the *Filtered* status on the [Sync History](BC_30_10_00.md) \(BC301000\) form.

## Merging of Duplicates { .section}

A sales order imported from the BigCommerce store is merged with an existing sales order in Acumatica ERP if the **ID** of the BigCommerce order \(found on the **View orders** page\) matches the **External Reference** of the order, which is located on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, in Acumatica ERP.

## Sales Order Export Mapping { .section}

The following table shows the mapping of Acumatica ERP fields to BigCommerce fields that is used during the export of sales order data to BigCommerce.

|**Source Fields \(Acumatica ERP\)**|**Target Fields \(BigCommerce\)**|
|Field Name|Form Object|Field Name|Page Object|Notes|
|-----------------------------------|---------------------------------|
|----------|-----------|----------|-----------|-----|
|[Sales Orders](SO_30_10_00.md) \(SO301000\) form| |
|**Order Nbr.**|Summary area|**Order ID**|**View Orders** page| |
|**Customer**|Summary area|**Customer**|**View Orders** page| |
|**Date**|Summary area|**Date**|**View Orders** page| |
|**Currency**|Summary area|**Currency**|**View Orders** page &gt; **Transactional Currency** section|This box is shown only if the *Multicurrency Accounting* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.|
|**Status**|Summary area|**Status**|**View Orders** page|The statuses are mapped as follows:-   *Back Order* -&gt;*Partially shipped*
-   *Canceled* -&gt; *Cancelled*
-   *Completed* -&gt; *Shipped*
-   *Credit Hold* -&gt; *Verification required*
-   *On Hold* -&gt; *Pending*
-   *Open* -&gt; *Awaiting fulfillment*
-   *Balanced* -&gt; *Manual verification required*
-   *Shipping* -&gt; *Awaiting shipment*
-   *Invoiced* -&gt; *Awaiting fulfillment*

|
|**Tax Total**|Summary area|**Tax**|**View Orders** page| |
|**Freight Price**|**Totals** tab &gt; **Freight Info** section|**Shipping**|**View Orders** page| |
|**Attention** \(part before the first space\)|**Addresses** tab &gt; **Bill-To Contact** section|**First Name**|**Edit an Order** page &gt; **Billing Information** section|If there is no space in **Attention**, the whole value is copied to **First Name**.|
|**Attention** \(part after the space\)|**Addresses** tab &gt; **Bill-To Contact** section|**Last Name**|**Edit an Order** page &gt; **Billing Information** section|If there is no space in **Attention**, the whole value is copied to **Last Name**.|
|**Account Name**|**Addresses** tab &gt; **Bill-To Contact** section|**Company Name**|**Edit an Order** page &gt; **Billing Information** section| |
|**Address Line 1**|**Addresses** tab &gt; **Bill-To Contact** section|**Address Line 1**|**Edit an Order** page &gt; **Billing Information** section| |
|**Address Line 2**|**Addresses** tab &gt; **Bill-To Contact** section|**Address Line 2**|**Edit an Order** page &gt; **Billing Information** section| |
|**City**|**Addresses** tab &gt; **Bill-To Contact** section|**Suburb/City**|**Edit an Order** page &gt; **Billing Information** section| |
|**Country**|**Addresses** tab &gt; **Bill-To Contact** section|**Country**|**Edit an Order** page &gt; **Billing Information** section|The ISO country code is transformed to the country name.|
|**State**|**Addresses** tab &gt; **Bill-To Contact** section|**State/Province**|**Edit an Order** page &gt; **Billing Information** section|The state code is transformed to the state name.|
|**Postal Code**|**Addresses** tab &gt; **Bill-To Contact** section|**Zip/Postcode**|**Edit an Order** page &gt; **Billing Information** section| |
|**Phone 1**|**Addresses** tab &gt; **Bill-To Contact** section|**Phone Number**|**Edit an Order** page &gt; **Billing Information** section| |
|**Email**|**Addresses** tab &gt; **Bill-To Contact** section|**Email**|**Edit an Order** page &gt; **Billing Information** section| |
|**Attention** \(part before the first space\)|**Addresses** tab &gt; **Ship-To Contact** section|**First Name**|**Edit an Order** page &gt; **Shipping** section| |
|**Attention** \(part after the first space\)|**Addresses** tab &gt; **Ship-To Contact** section|**Last Name**|**Edit an Order** page &gt; **Shipping** section| |
|**Account Name**|**Addresses** tab &gt; **Ship-To Contact** section|**Company Name**|**Edit an Order** page &gt; **Shipping** section| |
|**Address Line 1**|**Addresses** tab &gt; **Ship-To Address** section|**Address Line 1**|**Edit an Order** page &gt; **Shipping** section| |
|**Address Line 2**|**Addresses** tab &gt; **Ship-To Address** section|**Address Line 2**|**Edit an Order** page &gt; **Shipping** section| |
|**City**|**Addresses** tab &gt; **Ship-To Address** section|**Suburb/City**|**Edit an Order** page &gt; **Shipping** section| |
|**Country**|**Addresses** tab &gt; **Ship-To Address** section|**Country**|**Edit an Order** page &gt; **Shipping** section|The ISO country code is transformed to the country name.|
|**State**|**Addresses** tab &gt; **Ship-To Address** section|**State/Province**|**Edit an Order** page &gt; **Shipping** section|The state code is transformed to the state name.|
|**Postal Code**|**Addresses** tab &gt; **Ship-To Address** section|**Zip/Postcode**|**Edit an Order** page &gt; **Shipping** section| |
|**Phone 1**|**Addresses** tab &gt; **Ship-To Contact** section|**Phone Number**|**Edit an Order** page &gt; **Shipping** section| |
|**Inventory ID**|**Details** tab|Product ID| | |
|**Quantity**|**Details** tab|**Qty**|**Edit an Order** page &gt; **Add Products** section| |
|**Unit Price**|**Details** tab|**Price**|**Edit an Order** page &gt; **Add Products** section| |
|**Line Description**|**Details** tab|**Product Name**|**Edit an Order** page &gt; **Add Products** section| |
|**Discount Amount**|**Details** tab|**Manual Discount**|**Edit an Order** page &gt; **Summary** section|All discounts are summed and the total amount is added.|

## Sales Order Import Mapping { .section}

The following table shows the mapping of BigCommerce fields to Acumatica ERP fields that is used during the import of sales order data from BigCommerce.

|**Source Fields \(BigCommerce\)**|**Target Fields \(Acumatica ERP\)**|
|Field Name|Page Object|Field Name|Form Object|Notes|
|---------------------------------|-----------------------------------|
|----------|-----------|----------|-----------|-----|
|**Order Summary**|[Sales Orders](SO_30_10_00.md) \(SO301000\) form|
| | |**Order Type**|Summary area|The order type is specified in the **Order** section on the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form.|
| | |**Order Nbr.**|Summary area|The identifier is generated based on the numbering sequence defined for sales orders.|
|**Date**|**View Orders** page|**Date**|Summary area| |
| | |**Description**|Summary area|Default: *&lt;store name&gt; \| Order: &lt;order number&gt; \| Status: &lt;order status&gt;*|
|**Date**|**View Orders** page|**Requested On**|Summary area| |
|**Currency**|**Edit an Order** page &gt; **Transactional Currency** section|**Currency**|Summary area|To use a currency other than the base currency, currency override must be enabled for the customer.|
|**Order ID**|**View Orders** page|**External Reference**|Summary area| |
|**Customer**|**View Orders** page|**Customer**|Summary area|If an order is a guest order, the customer account selected in the **Generic Guest Customer** box on the **Customers** tab of the [BigCommerce Stores](BC_20_10_00.md) form is used.|
|**Address**|**View Orders** page &gt; **Shipping** section|**Location**|Summary area|If the shipping address of the order is saved to the customer address book in BigCommerce and if synchronization of locations/addresses is turned on, the saved address is imported to Acumatica ERP as a customer location and this customer location is used for the order. Otherwise, the primary location is used.|
|**Status**|**View Orders** page|**Status**|Summary area| |
|**Staff Notes**|**Edit an Order** page &gt; **Comments and Notes** section|**Notes**|Form title bar|Default: *Staff Notes: &lt;text&gt;* \(combined with Customer Notes\)|
|**Comments**|**Edit an Order** page &gt; **Comments and Notes** section|**Notes**|Form title bar|Default: *Customer Notes: &lt;text&gt;* \(combined with Staff Notes\)|
| | |**Branch**|**Financial** tab &gt; **Financial Information** section|The branch specified in the **General** section on the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) form is used.|
| | |**Override Freight Price**|**Totals** tab &gt; **Freight Info** section|This check box is selected if the shipping terms allow freight calculation on orders.|
|**Shipping**|**View Orders** page|**Freight Price**|**Totals** tab &gt; **Freight Info** section|This mapping is used if the shipping terms allow freight calculation on order.|
|**Billing Information**| |
| | |**Override Address**|**Addresses** tab &gt; **Bill-To Address** section|The check box is selected.|
| | |**Override Contact**|**Addresses** tab &gt; **Bill-To Contact** section|The check box is selected.|
|**First Name** and **Last Name**|**Edit an Order** page &gt; **Billing Information** section|**Attention**|**Addresses** tab &gt; **Bill-To Contact** section|The **First Name** is concatenated with the **Last Name**.|
|**Company Name**|**Edit an Order** page &gt; **Billing Information** section|**Account Name**|**Addresses** tab &gt; **Bill-To Contact** section| |
|**Address Line 1**|**Edit an Order** page &gt; **Billing Information** section|**Address Line 1**|**Addresses** tab &gt; **Bill-To Address** section| |
|**Address Line 2**|**Edit an Order** page &gt; **Billing Information** section|**Address Line 2**|**Addresses** tab &gt; **Bill-To Address** section| |
|**Suburb/City**|**Edit an Order** page &gt; **Billing Information** section|**City**|**Addresses** tab &gt; **Bill-To Address** section| |
|**Country**|**Edit an Order** page &gt; **Billing Information** section|**Country**|**Addresses** tab &gt; **Bill-To Address** section|The country name is transformed to the ISO country code.|
|**State**|**Edit an Order** page &gt; **Billing Information** section|**State**|**Addresses** tab &gt; **Bill-To Address** section|The state name is transformed to the state code.|
|**Zip/Postcode**|**Edit an Order** page &gt; **Billing Information** section|**Postal Code**|**Addresses** tab &gt; **Bill-To Address** section| |
|**Phone Number**|**Edit an Order** page &gt; **Billing Information** section|**Phone 1**|**Addresses** tab &gt; **Bill-To Contact** section| |
|**Email**|**Edit an Order** page &gt; **Billing Information** section|**Email**|**Addresses** tab &gt; **Bill-To Contact** section| |
|**Shipping Info**| |
| | | | |BigCommerce supports multiple shipping addresses, whereas Acumatica ERP supports only one shipping address. Only the first shipping address is imported with the sales order.|
| | |**Override Contact**|**Addresses** tab &gt; **Ship-To Contact** section|The check box is selected.|
| | |**Override Address**|**Addresses** tab &gt; **Ship-To Address** section|The check box is selected.|
|**First Name** and **Last Name**|**Edit an Order** page &gt; **Shipping** section|**Attention**|**Addresses** tab &gt; **Ship-To Contact** section| |
|**Company Name**|**Edit an Order** page &gt; **Shipping** section|**Account Name**|**Addresses** tab &gt; **Ship To Contact** section| |
|**Address Line 1**|**Edit an Order** page &gt; **Shipping** section|**Address Line 1**|**Addresses** tab &gt; **Ship To Address** section| |
|**Address Line 2**|**Edit an Order** page &gt; **Shipping** section|**Address Line 2**|**Addresses** tab &gt; **Ship To Address** section| |
|**Suburb/City**|**Edit an Order** page &gt; **Shipping** section|**City**|**Addresses** tab &gt; **Ship To Address** section| |
|**Country**|**Edit an Order** page &gt; **Shipping** section|**Country**|**Addresses** tab &gt; **Ship To Address** section|The country name is transformed to the ISO country code.|
|**State**|**Edit an Order** page &gt; **Shipping** section|**State**|**Addresses** tab &gt; **Ship To Address** section|The state name is transformed to the state code.|
|**Zip/Postcode**|**Edit an Order** page &gt; **Shipping** section|**Postal Code**|**Addresses** tab &gt; **Ship To Address** section| |
|**Phone Number**|**Edit an Order** page &gt; **Shipping** section|**Phone 1**|**Addresses** tab &gt; **Ship To Contact** section| |
|**Email**|**View Orders** page &gt; **Shipping** section|**Email**|**Addresses** tab &gt; **Ship To Contact** section| |
| | |**Ship Via**|**Shipping** tab &gt; **Delivery Settings** section|The system uses the ship via code mapped to the store's shipping zone and shipping method in the **Shipping Option Mapping** table on the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) form.|
| | |**Shipping Terms**|**Shipping** tab &gt; **Delivery Settings** section|The system uses the shipping terms mapped to the store's shipping zone and shipping method in the **Shipping Zone Mapping** table on the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) form.|
| | |**Shipping Zone**|**Shipping** tab &gt; **Delivery Settings** section|The system uses the shipping zone mapped to the store's shipping zone and shipping method in the **Shipping Zone Mapping** table on the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) form.|
|**Order Lines**| |
| | |**Branch**|**Details** tab|The branch specified in the **General** section on the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) form is used.|
|Product ID|Not on the UI|**Inventory ID**|**Details** tab|If the product is a gift certificate, the system uses the **Inventory ID** specified in the **Gift Certificate Item** box on the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) form.|
|**Qty**|**Edit an Order** page &gt; **Add Products** section|**Quantity**|**Details** tab| |
|**Item Price**|**Edit an Order** page &gt; **Add Products** section|**Unit Price**|**Details** tab| |
|Product Name|**Edit an Order** page &gt; **Add Products** section|**Line Description**|**Details** tab| |
|Product Discount|**Edit an Order** page &gt; **Summary** section|**Discount Amount**|**Details** tab|Used if discounts are configured to appear on the line level on the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) form.|
|**Order Discounts**|
| | |**Disable Automatic Discount Update**|**Discounts** tab|The check box is selected.|
|**Manual Discount**|**Edit an Order** page &gt; **Summary** section|**Discount Amt.**|**Discounts** tab|A separate row is added for the manual discount on the **Discounts** tab.|
|Product Discount|**Edit an Order** page &gt; **Summary** section|**Discount Amt.**|**Discounts** tab|If discounts are configured to appear on the document level on the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) form, all product line discounts are displayed on the **Discounts** tab grouped by discount code \(one row per discount code\).|
|**Coupon**|**Edit an Order** page &gt; **Summary** section|**External Discount Code**|**Discounts** tab| |

**Parent topic:**[BigCommerce Mapping Reference](../UserGuide/Commerce_BC_Mapping_Reference.md)

