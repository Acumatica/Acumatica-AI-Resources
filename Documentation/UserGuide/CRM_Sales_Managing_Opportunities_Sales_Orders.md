# Opportunity Management: Sales Orders {#_6fd5258e-65ae-470d-981f-603737e72555 .concept}

The **Details** tab of the [Opportunities](CR_30_40_00.md) \(CR304000\) form may include detail lines that represent products or services for items and services to be included in the potential sales. A detail line may contain a stock item or a non-stock item defined in Acumatica ERP, or it may contain no inventory items at all. \(That is, the **Inventory ID** column may be left empty for the line, which gives you the ability to manually enter the line description in the **Description** column and other values—such as the quantity, price, discount, or warehouse—in the respective columns.\) For details, see [Opportunity Management: Products and Services in an Opportunity](CRM_Sales_Managing_Opportunities_Products_Services.md).

For the opportunity, you can create a sales order if the *Inventory and Order Management* group of features is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form and a business account has been selected for the opportunity. If the selected business account has the *Business Account* type \(that is, the business account is a prospective customer that has not been extended to be a customer\), you can extend it on the fly during sales order creation by using the **Create Sales Order** dialog box.

This sales order will include only the detail lines for which the **Inventory ID** column is filled in. If the opportunity includes no detail lines or only detail lines with the **Inventory ID** column left empty, you cannot create a sales order based on that opportunity.

You can start creating a sales order based on an opportunity in either of the following ways:

-   By clicking **Create Sales Order** on the More menu of the [Opportunities](CR_30_40_00.md) form
-   By clicking **Convert to Order** on the More menu of the [Sales Quotes](CR_30_45_00.md) \(CR304500\) form

Clicking either of these commands causes the system to open the **Create Sales Order** dialog box, where you can specify basic settings, including which sales order type should be used, whether prices and discounts should be recalculated, and how the system creates the customer based on the selected business account.

**Tip:** If the products, services, and total amount of a deal are still being discussed, and the **Manual Amount** check box is selected in the Summary area of the [Opportunities](CR_30_40_00.md) or [Sales Quotes](CR_30_45_00.md) form, to create a sales order from an opportunity or sales quote with this check box selected, you select the **Create a Sales Order Regardless of the Specified Manual Amount** check box of the **Create Sales Order** dialog box.

When you click **Create and Review**, the system performs the following actions:

-   Verifying that the user has filled in all the required elements in the dialog box
-   Closing the dialog box
-   Creating a new customer based on the existing business account
-   Creating a new sales order for the customer and opening it on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form with the applicable settings filled in

For more details about the creation of a sales order from a sales quote, see the [Creation of a Sales Order from a Sales Quote](CRM_Sales_Managing_Opportunities_Sales_Orders.md#_845737bb-9ee1-47df-8ac3-52e6f57cef09) section of this topic.

## Creation of a Sales Order from an Opportunity { .section}

When an opportunity-based sales order is created, the values of the following settings are copied from the opportunity on the [Opportunities](CR_30_40_00.md) \(CR304000\) form to the sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form:

-   The settings in the **Bill-To Address** section \(including the **Override Address** check box\), **Bill-To Contact** section \(including the **Override Contact** check box\), **Ship-To Address** and **Ship-To Info** sections from the **Addresses** tab of the [Opportunities](CR_30_40_00.md) form to the corresponding section of the **Addresses** tab of the [Invoices and Memos](AR_30_10_00.md) form
-   The **Credit Terms** box on the **Additional Info** tab of the [Opportunities](CR_30_40_00.md) form to the **Terms** box on the **Financial** tab of the [Sales Orders](SO_30_10_00.md) form
-   The settings in the **Tax Settings** section from the **Additional Info** tab of the [Opportunities](CR_30_40_00.md) form to the **Taxes** tab of the [Sales Orders](SO_30_10_00.md) form
-   The settings in the **Shipping Settings** section from the **Additional Info** tab of the [Opportunities](CR_30_40_00.md) form to the **Delivery Settings** section on the **Shipping** tab of the [Sales Orders](SO_30_10_00.md) form

The system lists the sales orders created from an opportunity on the **Relations** tab of the [Opportunities](CR_30_40_00.md) form. An opportunity can have any number of sales orders. A sales order is assigned the *Derivative* role in the **Role** column of this tab, meaning that the sales order has been created based on the opportunity. Also, the opportunity is listed on the **Relations** tab of the [Sales Orders](SO_30_10_00.md) form and is assigned the *Source* role. For details, see [Relations: Sales Orders, Opportunities, and Other Entities](CRM_Managing_Relations_SO_and_Associated_Entities.md).

For details, see [Opportunity Management: To Create an Opportunity-Based Sales Order](CRM_Sales_Managing_Opportunities_To_Create_an_Oppty-Based_Sales_Order.md).

## Creation of a Sales Order from a Sales Quote { .section}

You can start creating a sales order from a sales quote by clicking **Convert to Order** on the More menu of the [Sales Quotes](CR_30_45_00.md) \(CR304500\) form. If the business account selected for the sales quote has the *Business Account* type \(that is, the business account is a prospective customer that has not been extended to be a customer\), you can extend it on the fly during sales order creation by using the **Create Sales Order** dialog box. When a sales order has been created and saved, the system changes the status of the sales quote to *Converted*.

A sales order can be created from both a primary quote for an opportunity and a non-primary one. An opportunity can have multiple sales orders that have been created based on non-primary quotes. The system lists the sales orders on the **Relations** tab of the [Sales Quotes](CR_30_45_00.md) \(CR304500\) and [Opportunities](CR_30_40_00.md) \(CR304000\) forms for each sales quote and opportunity, respectively; it also lists the opportunity and the sales quote on this tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. For details, see [Relations: Sales Orders, Opportunities, and Other Entities](CRM_Managing_Relations_SO_and_Associated_Entities.md).

**Parent topic:**[Managing Opportunities](../UserGuide/CRM_Sales_Managing_Opportunities_Mapref.md)

