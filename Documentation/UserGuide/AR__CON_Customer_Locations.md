# Customers: Customer Locations {#_99682279-8aac-4f9c-a22c-49c41b97c853 .concept}

If the *Business Account Locations* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can specify more than one location for a customer account, and each location can have specific settings. Locations, which are maintained on the [Customer Locations](AR_30_30_20.md) \(AR303020\) form, provide appropriate customer default information for sales orders and invoices.

In this topic, you will read about the main location and the default location, as well as the values provided by locations for sales orders and invoices.

## Main and Default Locations {#section_b3l_4jv_vxb .section}

When you create a customer account on the [Customers](AR_30_30_00.md) \(AR303000\) form, the system creates the main location for the customer automatically by using all the settings you have specified on the **Shipping** tab. \(This is the case whether or not the *Business Account Locations* feature is enabled.\)

The main location has *MAIN* as its ID, and the *Active* status, both of which cannot be modified. You can specify that the identifier of the branch the user is currently signed in to is used by default as the identifier of the customer’s main location instead of the *MAIN* location. To do this for all customers of a class, you select the **Default Location ID from Branch** check box on the [Customer Classes](AR_20_10_00.md) \(AR201000\) form.

Once you create the main location, it is automatically marked as the default location on the **Locations** tab of the [Customers](AR_30_30_00.md) form and in the Summary area of the [Customer Locations](AR_30_30_20.md) form. If additional locations have been added to the customer account, you can make another location the default location on either of these forms. On the **Locations** tab of the [Customers](AR_30_30_00.md) form, you click the location and click **Set as Default** on the table toolbar. On the [Customer Locations](AR_30_30_20.md) form, you select the **Default** check box in the Summary area.

The settings of the default location are used when you create documents for the customer.

If you change the customer class for an existing customer, the following values will not be overridden for the main and additional locations:

-   The country specified in the **Country** box on the **General** tab of the [Customer Locations](AR_30_30_20.md) \(AR303020\) form
-   The tax zone specified in the **Tax Zone** box on the **Shipping** tab of the [Customer Locations](AR_30_30_20.md) form

## Additional Locations {#section_h3l_4jv_vxb .section}

If the *Business Account Locations* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can specify more than one location for a customer account, and each location can have specific settings. You can add a new location by using the [Customer Locations](AR_30_30_20.md) \(AR303020\) form or by clicking the **Add New Location** button on the **Locations** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form.

When you create a new location, the system uses the following default settings copied from the customer account:

-   The address and contact information specified on the **General** tab.
-   General ledger accounts specified on the **GL Accounts** tab.

You can replace any of these settings for the new location. You select the **Override** check box to change details for location contact and address.

**Tip:** If you change location settings for the main location of a customer on the [Customer Locations](AR_30_30_20.md) form after selecting the **Override** check box, the system automatically updates values on the **Shipping** tab for this customer on the [Customers](AR_30_30_00.md) form and vice versa.

## Location and Customer Documents {#section_m3l_4jv_vxb .section}

When you enter a customer document \(that is, an invoice, payment, cash sale, or sales order\), you should first select the customer. When you do, certain elements on the form are filled in with the settings associated with the customer's default location. If you select a location other than the default one, the values will change to those associated with the selected location.

The selected location provides default values for the customer's documents: the tax zone, the shipping instructions, and the sales account and corresponding subaccount. Also, for sales orders, the location provides the shipping address and contact information. You can override any of the default values.

For new invoices and sales orders entered into the system, tax settings are by default those in both the tax zone of the customer location and the product category associated with the inventory items specified as the document details. The system creates the resulting list of applicable taxes automatically and shows it on the **Tax Details** tab of [Invoices and Memos](AR_30_10_00.md) \(AR301000\) or [Sales Orders](SO_30_10_00.md) \(SO301000\).

## Location and Discounts {#section_q3l_4jv_vxb .section}

Each customer's location can be also associated with a customer price class, which is used as a condition to be met for discount application. You can specify different customer price classes for different locations to make your pricing policy more flexible. For details on configuring discounts, see [Configuring and Applying Customer Discounts](Prices_Customer_Discounts_Mapref.md).

**Parent topic:**[Creating a Customer](../UserGuide/Customer_Mapref.md)

