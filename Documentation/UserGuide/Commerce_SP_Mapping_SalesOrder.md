# Sales Order Entity {#_5196a797-02c0-41b4-a2f3-788347c97990 .concept}

This topic provides reference information about the standard filtering and field mapping used for the *Sales Order* entity during the synchronization between Acumatica ERP and Shopify. The topic also contains information about the merging of duplicate records during the synchronization.

## Sales Order Filtering { .section}

During the import of sales orders, a sales order is skipped if its status in Shopify is *Canceled*. For each order with the *Completed* or *Archived* status in Shopify, the system creates a synchronization record in Acumatica ERP and assigns it the *Filtered* status on the [Sync History](BC_30_10_00.md) \(BC301000\) form.

During the export of sales orders, only sales orders that match the following conditions are exported:

-   The order's type is selected in the **Order Types for Export** box on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.
-   The order's status is *Open*, *Pending Processing*, *Shipping*, *Back Order*, or *Completed*—that is, the **Status** box in the Summary area of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form is set to any of these values.

## Merging of Duplicates { .section}

A sales order imported from the ecommerce store is merged with an existing sales order in Acumatica ERP if the **ID** of the Shopify order \(found in the URL of the order page\) matches the **External Reference** of the order, which is located on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, in Acumatica ERP.

## Sales Order Import Mapping { .section}

The following table shows the mapping of Shopify fields to Acumatica ERP fields that is used during the import of sales order data from Shopify.

|**Source Fields \(Shopify\)**|**Target Fields \(Acumatica ERP\)**|
|Field Name|Page Object|Field Name|Form Object|Notes|
|-----------------------------|-----------------------------------|
|----------|-----------|----------|-----------|-----|
| | |[Sales Orders](SO_30_10_00.md) \(SO301000\) form|
| | |**Order Type**|Summary area|The order type is specified in the **Order** section on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.|
| | |**Description**|Summary area|Default: *&lt;store name&gt; \| Order: &lt;order number&gt; \| Status: &lt;payment status&gt;*|
|created\_at|Order page &gt; order summary|**Requested On**|Summary area|This date is the same as the date shown in the **Date** box in the Summary area.|
| | |**Status**|Summary area|Default: *Open*|
|**Order Summary Information**|
|**Email**|Order page &gt; **Contact information** section|**Email**|**Addresses** tab &gt; **Bill-To Contact** section| |
|**Notes**|Order page &gt; **Notes** section|**Notes**|Form toolbar| |
|total\_weight|Not in the UI|**Order Weight**|**Totals** tab &gt; **Freight Info** section| |
|currency| |**Currency**|Summary area|The currency of the transaction.|
|total\_discounts|Order page &gt; total of discount amounts|**Discount Total**|Summary area|Applies if on the **Orders** tab \(**Order** section\) of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, the **Show Discounts As** box is set to *Document Discounts*.|
|order\_number|Order page &gt; order summary|**External Reference**|Summary area|The **External Reference** contains the order number and the store name.|
|po\_number|Order page &gt; order summary|**Customer Order Nbr.**|Summary area|The PO number is imported if it has been specified in an order placed on behalf of a company in the Shopify store.|
|created\_at|Order page &gt; order summary|**Date**|Summary area| |
|contact\_email|Order page &gt;**Contact information** section|**Email**|**Addresses** tab &gt; **Ship-To Contact** section| |
|**Discounts**|
|discount\_codes|Order page &gt; discount amounts|**External Discount Code**|**Discounts** tab| |
|**Taxes**|
|title|Order page &gt; tax lines|**Tax ID**|**Taxes** tab| |
|rate|Order page &gt; tax lines|**Tax Rate**|**Taxes** tab| |
|price|Order page &gt; tax lines|**Tax Amount**|**Taxes** tab| |
|**Billing Address**|
|name|Order page &gt; **Billing Address** section|**Attention**|**Addresses** tab &gt; **Bill-To Contact** section| |
|company|Order page &gt; **Billing Address** section|**Account Name**|**Addresses** tab &gt; **Bill-To Contact** section| |
|address1|Order page &gt; **Billing Address** section|**Address Line 1**|**Addresses** tab &gt; **Bill-To Address** section| |
|address2|Order page &gt; **Billing Address** section|**Address Line 2**|**Addresses** tab &gt; **Bill-To Address** section| |
|city|Order page &gt; **Billing Address** section|**City**|**Addresses** tab &gt; **Bill-To Address** section| |
|zip|Order page &gt; **Billing Address** section|**Postal Code**|**Addresses** tab &gt; **Bill-To Address** section| |
|phone|Order page &gt; **Billing Address** section|**Phone 1**|**Addresses** tab &gt; **Bill-To Contact** section| |
|country\_code|Order page &gt; **Billing Address** section|**Country**|**Addresses** tab &gt; **Bill-To Address** section|The country code is transformed to the country name.|
|province\_code|Order page &gt; **Billing Address** section|**State**|**Addresses** tab &gt; **Bill-To Address** section| |
|**Shipping Address**|
|name|Order page &gt; **Shipping Address** section|**Attention**|**Addresses** tab &gt; **Ship-To Contact** section| |
|company|Order page &gt; **Shipping Address** section|**Account Name**|**Addresses** tab &gt; **Ship-To Contact** section| |
|address1|Order page &gt; **Shipping Address** section|**Address Line 1**|**Addresses** tab &gt; **Ship-To Address** section| |
|address2|Order page &gt; **Shipping Address** section|**Address Line 2**|**Addresses** tab &gt; **Ship-To Address** section| |
|city|Order page &gt; **Shipping Address** section|**City**|**Addresses** tab &gt; **Ship-To Address** section| |
|zip|Order page &gt; **Shipping Address** section|**Postal Code**|**Addresses** tab &gt; **Ship-To Address** section| |
|phone|Order page &gt; **Shipping Address** section|**Phone 1**|**Addresses** tab &gt; **Ship-To Contact** section| |
|country\_code|Order page &gt; **Shipping Address** section|**Country**|**Addresses** tab &gt; **Ship-To Contact** section|The country code is transformed to the country name.|
|province\_code|Order page &gt; **Shipping Address** section|**State**|**Addresses** tab &gt; **Ship-To Contact** section| |
|**Customer Details**|
|id|Order page &gt; **Contact information** section|**Customer**|Summary area| |
|email|Order page &gt; **Contact information** section|**Email**|**Addresses** tab &gt; **Ship-To Contact** section| |
|**Sales Order Details**|
|quantity|Order page &gt; line items|**Quantity**|**Details** tab| |
|sku|Order page &gt; line items|**Inventory ID**|**Details** tab| |
|price|Order page &gt; line items|**Unit Price**|**Details** tab| |
|total\_discount|Order page &gt; line items|**Discount Amount**|**Details** tab|Applies if on the **Orders** tab \(**Order** section\) of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, the **Show Discounts As** box is set to *Line Discounts*.|
|total\_discount|Order page &gt; line items|**Discount Amt.**|**Discounts** tab|Applies if on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) form, the **Show Discounts As** box is set to *Document Discounts*.|

## Sales Order Export Mapping { .section}

The following table shows the mapping of Acumatica ERP fields to Shopify fields that is used during the export of sales order data from Acumatica ERP to Shopify.

|**Source Fields \(Acumatica ERP\)**|**Target Fields \(Shopify\)**|
|Field Name|Form Object|Field Name|Page Object|Notes|
|-----------------------------------|-----------------------------|
|----------|-----------|----------|-----------|-----|
|[Sales Orders](SO_30_10_00.md) \(SO301000\) form|
|**Date**|Summary area|created\_at|Order page &gt; order summary| |
|**Customer Order Nbr.**|Summary area|po\_number|Order page &gt; order summary|The customer order number is exported if it has been specified in an order placed on behalf of a company.|
|**External Reference**|Summary area|id|Order page &gt; order summary|The order identifier is displayed in the URL of the order page.|
|**Discount Amt.**|**Discounts** tab|amount|Order page &gt; discount amounts| |
|**Discount Code**/**External Discount Code**|**Discounts** tab|code|Order page &gt; discount amounts| |
|**Sales Order Details**|
|**Inventory ID**|**Details** tab|sku / variant\_id|Order page &gt; line items| |
|**Line Description**|**Details** tab|title / variant\_title|Order page &gt; line items| |
|**Quantity**|**Details** tab|quantity|Order page &gt; line items| |
|**Disc. Unit Price**|**Details** tab|price|Order page &gt; line items| |
|**Tax Category**|**Details** tab|taxable|Order page &gt; line items| |
|**Sales Order Tax**|
|**Tax ID**|**Taxes** tab|title|Order page &gt; tax lines| |
|**Tax Rate**|**Taxes** tab|rate|Order page &gt; tax lines| |
|**Tax Amount**|**Taxes** tab|price|Order page &gt; tax lines| |
|**Shipping Address**|
|**Account Name**|**Addresses** tab &gt; **Ship-To Contact** section|company|Order page &gt; **Shipping Address** section| |
|**Attention**|**Addresses** tab &gt; **Ship-To Contact** section|first\_name, last\_name|Order page &gt; **Shipping Address** section| |
|**Phone 1**|**Addresses** tab &gt; **Ship-To Contact** section|phone|Order page &gt; **Shipping Address** section| |
|**Email**|**Addresses** tab &gt; **Ship-To Contact** section|email|Order page &gt; **Contact information** section| |
|**Address Line 1**|**Addresses** tab &gt; **Ship-To Address** section|address1|Order page &gt; **Shipping Address** section| |
|**Address Line 2**|**Addresses** tab &gt; **Ship-To Address** section|address2|Order page &gt; **Shipping Address** section| |
|**City**|**Addresses** tab &gt; **Ship-To Address** section|city|Order page &gt; **Shipping Address** section| |
|**Country**|**Addresses** tab &gt; **Ship-To Address** section|country\_code|Order page &gt; **Shipping Address** section| |
|**Postal Code**|**Addresses** tab &gt; **Ship-To Address** section|zip|Order page &gt; **Shipping Address** section| |
|**State**|**Addresses** tab &gt; **Ship-To Address** section|province\_code|Order page &gt; **Shipping Address** section| |
|**Billing Address**|
|**Account Name**|**Addresses** tab &gt; **Bill-To Contact** section|company|Order page &gt; **Billing Address** section| |
|**Attention**|**Addresses** tab &gt; **Bill-To Contact** section|first\_name, last\_name|Order page &gt; **Billing Address** section| |
|**Phone 1**|**Addresses** tab &gt; **Bill-To Contact** section|phone|Order page &gt; **Billing Address** section| |
|**Email**|**Addresses** tab &gt; **Bill-To Contact** section|email|Order page &gt; **Contact information** section| |
|**Address Line 1**|**Addresses** tab &gt; **Bill-To Address** section|address1|Order page &gt; **Billing Address** section| |
|**Address Line 2**|**Addresses** tab &gt; **Bill-To Address** section|address2|Order page &gt; **Billing Address** section| |
|**City**|**Addresses** tab &gt; **Bill-To Address** section|city|Order page &gt; **Billing Address** section| |
|**Country**|**Addresses** tab &gt; **Bill-To Address** section|country\_code|Order page &gt; **Billing Address** section| |
|**State**|**Addresses** tab &gt; **Bill-To Address** section|province\_code|Order page &gt; **Billing Address** section| |
|**Postal Code**|**Addresses** tab &gt; **Bill-To Address** section|zip|Order page &gt; **Billing Address** section| |
|**Customer Details**|
|**Email**|**Addresses** tab &gt; **Ship-To Contact** section|email|Order page &gt; **Contact information** section| |
|**Account Name**|**Addresses** tab &gt; **Ship-To Contact** section|first\_name, last\_name|Order page &gt; **Customer** section| |
|**Order Totals**|
|**Order Weight**|**Shipping** tab &gt; **Order Shipping Settings** section|total\_weight| | |
|**Freight Price** / **Premium Freight Price**|**Totals** tab|price, code, title| |The title and code are the shipping method mapped to the ship via code of the order|
|**Payment**|
|**Status**|**Payments** tab|financial\_status|Order page &gt; order summary|The exported order is assigned the *Paid* status in Shopify.|

**Parent topic:**[Shopify Mapping Reference](../UserGuide/Commerce_SP_Mapping_Reference.md)

