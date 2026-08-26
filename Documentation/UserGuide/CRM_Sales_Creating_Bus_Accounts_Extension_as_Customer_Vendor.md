# Business Accounts: Extension of a Business Account as a Customer or Vendor {#_f1222a9d-c179-40eb-8037-4eb238ececc3 .concept}

The organizations to which your company intends to sell products and services can initially be defined in Acumatica ERP as business accounts on the [Business Accounts](CR_30_30_00.md) \(CR303000\) form. These prospective customers may later become—that is, be *extended* as—customers, vendors, or both. The type of the business account is displayed in the **Type** box on the **General** tab of the form and can be one of the following: *Business Account*, *Customer*, *Vendor*, or *Customer &amp; Vendor*.

A customer or vendor can be created in the system directly without first being defined as a business account. In this case, the system automatically creates a business account corresponding to the customer or vendor.

## A Business Account Extended as a Customer { .section}

You extend a business account to be a customer account by clicking **Extend as Customer** on the form toolbar or More menu of the [Business Accounts](CR_30_30_00.md) \(CR303000\) form. The system opens the [Customers](AR_30_30_00.md) \(AR303000\) form for the new customer with the appropriate settings copied from the business account. On the form, you specify the customer class, the financial settings, and additional settings \(such as billing address\) that may be used in Acumatica ERP documents of the customer.

When the customer class is specified, the system populates the customer's currency settings \(that is, the value in the **Currency ID** box and the state of the **Enable Currency Override** check box on the [Customers](AR_30_30_00.md) form\) with the currency settings specified on the [Customer Classes](AR_20_10_00.md) \(AR201000\) form for this customer class. If the customer's currency settings differ from those of the corresponding business account, the system will copy the customer's currency settings to the business account when you save the customer for the first time.

The system synchronizes the currency settings of the business account and the customer. If the currency settings for the customer are changed, the same changes are applied to the corresponding business account. Similarly, changing the currency settings for the business account affects the corresponding customer.

**Tip:** If you change the business account class of a business account that has already been extended as a customer, the currency settings of both the business account and the corresponding customer will remain unchanged.

When you save the customer, the system changes the type of the business account, shown in the **Type** box of the [Business Accounts](CR_30_30_00.md) form, to *Customer*. \(If the account has been extended as both a customer and a vendor, the type of the account is changed to *Customer &amp; Vendor*.\)

If you create a sales order from the [Opportunities](CR_30_40_00.md) \(CR304000\) or [Sales Quotes](CR_30_45_00.md) \(CR304500\) form, the system automatically extends the selected business account to be a customer. When you click the **Create Sales Order** or **Convert to Order** command on the More menu of the [Opportunities](CR_30_40_00.md) or [Sales Quotes](CR_30_45_00.md) form, respectively, the system opens the **Create Sales Order** dialog box. The dialog box includes the **Customer** section, which contains the settings of the customer that will be created when the business account is extended. When you click **Create and Review**, the system creates a new customer based on the existing business account. If the system requires more information for the creation of a customer of the selected customer class, the dialog box displays an error message, and the **Create Customer** button appears in the dialog box. When you click the button, the created customer is opened on the [Customers](AR_30_30_00.md) form in a new browser tab. You can then fill in all the required information and save the customer.

Business accounts and customers share the same statuses, which are displayed in the **Customer Status** box of the Summary area of the [Business Accounts](CR_30_30_00.md) and [Customers](AR_30_30_00.md) forms. The status of a particular business account or customer may be one of the following: *Prospect*, *Active*, *On Hold*, *Credit Hold*, *One-Time*, or *Inactive*.

## A Business Account Extended as a Vendor { .section}

You extend a business account to be a vendor account by clicking **Extend as Vendor** on the form toolbar or More menu of the [Business Accounts](CR_30_30_00.md) \(CR303000\) form. The system opens the [Vendors](AP_30_30_00.md) \(AP303000\) form with the appropriate settings copied from the business account. On the form, you specify the vendor class, the financial settings, and additional settings \(such as billing address\) that may be used in Acumatica ERP documents of the vendor. You then save the vendor.

When you save the vendor, the system changes the type of the business account, shown in the **Type** box of the [Business Accounts](CR_30_30_00.md) form, to *Vendor*. If a prospective customer has been extended as both customer and vendor, the type of the account is changed to *Customer &amp; Vendor*.

The statuses of a vendor are independent from the statuses of a business account. The status of a vendor, shown in the **Vendor Status** box of the [Vendors](AP_30_30_00.md) \(AP303000\) form, can be one of the following: *Active*, *On Hold*, *Hold Payments*, *Inactive*, and *One-Time*. You can manually change the status of the vendor. Changes to the status of the vendor do not cause changes to the status of the associated business account \(or customer, if the vendor is also a customer\). Similarly, if the status of the business account changes, the system does not change the status of the associated vendor.

**Parent topic:**[Creating Business Accounts](../UserGuide/CRM_Sales_Creating_Bus_Accounts_Mapref.md)

