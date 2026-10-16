# Synchronizing Customers: Individual Customers

Individual customers are synchronized during the synchronization of the *Customer* entity. The sections below describe what happens during the synchronization of customers that have one or multiple locations when the *Customer Location* entity is both disabled and enabled.

## Synchronization of Customers Without Customer Locations

If the *Customer* entity is activated and the *Customer Location* entity is not activated on the [BigCommerce Stores](BC_20_10_00.md) form, when the *Customer* entity is synchronized between the BigCommerce store and Acumatica ERP, the customer location \(address\) data is not copied from one system to the other.

When a sales order created in the BigCommerce store is imported, the address information \(that is, the billing address and shipping address\) specified in the order is imported to Acumatica ERP as part of sales order data; however, new locations are not created and existing locations are not updated with the imported data.

## Synchronization of Customers with Customer Locations

To save shoppers time on entering address details with each purchase, BigCommerce provides the ability to store each customer's shipping addresses in the customer's address book. In Acumatica ERP, you can save more than one location for a customer account if the *Business Account Locations* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

If you need to synchronize individual customers along with their locations, both the *Customer* entity and the *Customer Location* entity must be activated on the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form.

When the *Customer* entity is synchronized between the BigCommerce store and Acumatica ERP, customer location \(address\) data is copied from one system to the other along with the customer data. The remaining sections of this topic describe what happens during the synchronization if a customer was created without an address or if an address was created, updated, or deleted in either system.

## Creation of a Customer Without an Address

With the *Customer* and *Customer Location* entities activated on the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, when a new customer is created in the BigCommerce store without an address, after the *Customer* entity is synchronized, a customer record is created in Acumatica ERP with the *MAIN* location. In the *MAIN* location, the system populates the **Country** and **Ship Via** values based on the customer class specified in the **Customer Class** box on the **Customers** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form. However, the address lines are left blank.

In Acumatica ERP, whenever a new customer is created, the default *MAIN* location is created and specified for the customer. When the *Customer* entity is exported, in the BigCommerce store, this customer is created without an address record in the customer address book.

The following diagram illustrates the synchronization of customers created without an address.


## Creation of a Customer Address

If the *Customer* and *Customer Location* entities are activated on the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form and a new address was created for a customer in the BigCommerce store, during the import of the *Customer* entity, the ecommerce connector does one of the following:

-   If the default *MAIN* location has empty address lines, the new address is used to populate the elements of the *MAIN* location.
-   If the default location has been deleted in Acumatica ERP, and there is a corresponding synchronization record with the *Deleted* status on the [Sync History](BC_30_10_00.md) \(BC301000\) form, the ecommerce connector creates a new location and makes it the default.
-   If the default location exists and the address lines in it are filled in, the connector creates a new location.

If a new location was created for a customer in Acumatica ERP, when the *Customer* entity is exported, the corresponding new address is created for the customer in the BigCommerce store with the data of the new location.

The following diagram illustrates the synchronization of a new customer address.


## Editing of a Customer Address

With the *Customer* and *Customer Location* entities activated on the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, if an existing customer address synchronized with Acumatica ERP is edited in the BigCommerce store, during the import of the *Customer* entity, the corresponding customer location in Acumatica ERP is updated with the changes made to the customer address in the BigCommerce store.

If an existing customer location is edited in Acumatica ERP, during the export of the *Customer* entity, the ecommerce connector does one of the following:

1.  If the customer location is active—that is, if the **Active** check box is selected for it on the [Customer Locations](AR_30_30_20.md) \(AR303020\) form—the corresponding customer address in the BigCommerce store is updated based on the changes to the customer location.
2.  If the customer location is inactive \(that is, if the **Active** check box is cleared for it\), the synchronization proceeds as follows:
    -   If the location's synchronization record has a status other than *Deleted*, the corresponding customer address in the BigCommerce store is updated based on the changes to the customer location.
    -   If the location's synchronization record has the *Deleted* status or the location has not been synchronized previously, the location is not synchronized with the BigCommerce store.

The following diagram illustrates the synchronization of an updated customer address.


## Deletion of a Customer Address

With the *Customer* and *Customer Location* entities activated on the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, if a customer address is deleted in the BigCommerce store, the import of the *Customer* entity proceeds as follows:

-   If the corresponding customer location in Acumatica ERP is not the default customer location, the system makes it inactive and its synchronization status changes to *Deleted*.
-   If the corresponding customer location in Acumatica ERP is the default customer location, the connector does one of the following:
    -   If the customer location is the only active location of a customer, the connector assigns the *Deleted* status to the location's synchronization record.
    -   If other active locations exist for the customer, the connector makes this default location inactive, assigns the *Deleted* status to its synchronization record, and makes one of the other active locations the default one.

If an existing customer location is made inactive in Acumatica ERP, when the *Customer* entity is exported, the inactive customer location is not synchronized with the BigCommerce store.

The following diagram illustrates the synchronization of a deleted customer address.


## Use of the Guest Customer Account

If you want to allow placing orders in your store without providing the customer's phone number or email address and want to import such orders into Acumatica ERP, you need to fill in the **Generic Guest Customer** box on the **Customer Settings** tab of the [BigCommerce Stores](../Shared/../UserGuide/BC_20_10_00.md) \(BC201000\) form. This customer account appears on imported sales orders that have been placed in the BigCommerce store without customer details.

The customer record selected in the **Generic Guest Customer** box is not exported to the BigCommerce store during the synchronization of customers.

You can also configure the system to change a guest customer account after a particular number of sales orders have been created for this account. You do so by selecting the **Use Multiple Guest Accounts** check box. When the maximum allowed number of sales orders is exceeded, the system creates a new customer and inserts its identifier in the **Generic Guest Customer** box. The settings of the new customer account are copied from the previous generic guest customer account, and its identifier is generated based on the numbering sequence specified in the **Customer Numbering Sequence** box.

By default, the allowed number of sales orders per guest customer account is limited to 10,000. You can override this number by adding the `MaxOrdersPerGuestAccount` key to the &lt;appSettings&gt; section of the `web.config` file. For example, to change the guest customer account after every 500 sales orders, add the following key:

```
<add key="MaxOrdersPerGuestAccount" value="500"/>
```

For more information about creating a customer, see [Customers: General Information](../Shared/../UserGuide/Customer_GeneralInfo.md).

**Parent topic:**[Synchronizing Individual and Business Customers](../UserGuide/Commerce_BC_Syncing_Customers_Mapref.md)

