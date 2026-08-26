# Synchronizing Customers: General Information {#_cda35946-f427-46ce-a22b-6e3c9ccffe7c .concept}

In Acumatica ERP Retail Edition, you can synchronize customer records between Acumatica ERP and the BigCommerce store.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Set up the synchronization of customers and customer locations \(addresses\) so that they can be both exported to the BigCommerce store and imported from the BigCommerce store to Acumatica ERP.
-   Define the filtering of customers based on various conditions.
-   Synchronize customers that have multiple locations.

## Applicable Scenarios { .section}

You configure the import of customers if you want to synchronize changes to customer information made in the BigCommerce store to Acumatica ERP. The synchronization of customers is a prerequisite for the synchronization of orders. So if you plan to import online orders placed in the BigCommerce store by new, existing, or guest customers and then further process these orders in Acumatica ERP, you need to synchronize customers first.

You configure the export of customers from Acumatica ERP to the BigCommerce store if you maintain records of customers in Acumatica ERP and want the details of these customers to be available in the BigCommerce store so that the up-to-date customer information, such as customer billing and address details, is available when registered customers place orders online.

## Synchronization of Customers Without Customer Locations { .section}

Before you can start synchronizing customer records between Acumatica ERP and the BigCommerce store, you need to activate the *Customer* entity for the store. To do this, on the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, you select the store, and on the **Entities** tab, you select the **Active** check box for the *Customer* entity. Then on the **Customers** tab, you need to also fill in the following boxes:

-   **Customer Class**: The customer class that is assigned to new customers imported to Acumatica ERP from the BigCommerce store and thus used to provide their default settings. For information about creating a customer class, see [Accounts Receivable: Customer Classes](../ImplementationGuide/config_Basic_Company_Customer_Classes.md) and [Customers: Customer Class Settings](AR__CON_CustomerClasses.md).

    If the *Multiple Base Currencies* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the **Restrict Visibility To** value of the customer class on the [Customer Classes](AR_20_10_00.md) \(AR201000\) form should be set to the branch selected in the **Branch** box on the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form or to the company this branch belongs to.

-   **Customer Numbering Template** \(available for editing only if the *CUSTOMER* segmented key has more than one segment\): The template that is used to provide the identifiers of new customers imported to Acumatica ERP from the BigCommerce store. This character string, such as *\_\_\_\_-\_\_\_\_-\#\#\#\#\#\#*, initially shows the number and length of segments in the *CUSTOMER* segmented key, which is configured on the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form and defines the structure of the identifiers used for customers in Acumatica ERP. The groups of underscores represent the constant segments, and the number signs represent the auto-numbered segment.

    You replace the underscores with the values of the constant segments to be used in the identifiers of the customers imported from the BigCommerce store, as shown in the following example: *ECUS-RET1-\#\#\#\#\#\#*. With this setting, the identifiers of all customers imported from BigCommerce to Acumatica ERP would start with *ECUS-RET1*, for easy identification, and the system would automatically assign the numerical part of the identifier according to the numbering sequence selected in the **Customer Numbering Sequence** box. These settings do not affect the assignment of identifiers to other customers in the system \(those that already exist or those that are created directly in Acumatica ERP\).

-   **Customer Numbering Sequence**: The numbering sequence that the system uses to automatically generate identifiers for customers imported from the BigCommerce store.

    If the *CUSTOMER* segmented key consists of more than one segment, the numbering sequence that you select in this box applies to the automatically numbered segment \(a group of number signs in the **Customer Numbering Template** box\). The length of the numbering sequence must match the length of the auto-numbered segment.

    Selecting a numbering sequence in this box does not change the **Numbering ID** setting of the *CUSTOMER* segmented key on the [Segmented Keys](CS_20_20_00.md) form. The selected numbering sequence applies only to customers that are imported from the BigCommerce store and does not affect the assignment of identifiers to other customers in the system \(those that already exist or those that are created directly in Acumatica ERP\).

    For more information about segmented keys and numbering sequences, see [Managing Segmented Keys](SM__con_Managing_Segmented_Keys.md).

-   **Generic Guest Customer** \(optional\): The generic customer account that appears on imported sales orders that were placed in the BigCommerce store as guest orders. This customer account is not exported to the BigCommerce store during the synchronization of customers. For more information about creating a customer, see [Customers: General Information](Customer_GeneralInfo.md).

If the *Customer* entity is activated and the *Customer Location* entity is not activated on the [BigCommerce Stores](BC_20_10_00.md) form, when the *Customer* entity is synchronized between the BigCommerce store and Acumatica ERP, the customer location \(address\) data is not copied from one system to the other.

When a sales order created in the BigCommerce store is imported, the address information \(that is, the billing address and shipping address\) specified in the order is imported to Acumatica ERP as part of sales order data; however, new locations are not created and existing locations are not updated with the imported data.

## Synchronization of Customers with Customer Locations { .section}

To save shoppers time on entering address details with each purchase, BigCommerce provides the ability to store each customer's shipping addresses in the customer's address book. In Acumatica ERP, you can save more than one location for a customer account if the *Business Account Locations* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

Before you can start synchronizing customer records along with customer location \(address\) records between Acumatica ERP and the BigCommerce store, you need to activate the *Customer Location* entity for the store. To do this, on the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, you select the store, and on the **Entities** tab, you select the **Active** check box for the *Customer Location* entity. Then on the **Customers** tab, you need to also fill in the following boxes:

-   **Location Numbering Template** \(available for editing only if the *LOCATION* segmented key has more than one segment\): The template that is used to provide the identifiers of new customer locations imported to Acumatica ERP from the BigCommerce store. This character string, such as *\_\_\_\_-\_\_\_\_-\#\#\#\#\#\#*, initially shows the number and length of segments in the *LOCATION* segmented key, which is configured on the [Segmented Keys](CS_20_20_00.md) form and defines the structure of the identifiers used for customer locations in Acumatica ERP. The underscores represent the constant segments, and the number signs represent the automatically numbered segment.

    You replace the underscores with values of the constant segments to be used in the identifiers of the customer locations imported from the BigCommerce store, as shown in the following example: *ECOM-RET1-\#\#\#\#\#\#*. With this setting, the identifiers of all customer locations imported from BigCommerce to Acumatica ERP would start with *ECOM-RET1*, for easy identification, and the system would automatically assign the numerical part of the identifier according to the numbering sequence selected in the **Location Numbering Sequence** box. These settings do not affect the assignment of identifiers to other customer locations in the system \(those that already exist or those that are created directly in Acumatica ERP\).

    If you will be importing customer locations from an online store, one of the segments of the *LOCATION* segmented key must be automatically numbered.

-   **Location Numbering Sequence**: The numbering sequence that the system uses to automatically generate identifiers for customer locations imported from the BigCommerce store.

    If the *LOCATION* segmented key consists of more than one segment, the numbering sequence that you select in this box applies to the automatically numbered segment \(a group of number signs in the **Location Numbering Template** box\). The length of the numbering sequence must match the length of the auto-numbered segment.

    Selecting a numbering sequence in this box does not change the **Numbering ID** setting of the *LOCATION* segmented key on the [Segmented Keys](CS_20_20_00.md) form. The selected numbering sequence applies only to customer locations that are imported from the BigCommerce store and does not affect the assignment of identifiers to other customer locations in the system \(those that already exist or those that are created directly in Acumatica ERP\).

    For more information about segmented keys and numbering sequences, see [Managing Segmented Keys](SM__con_Managing_Segmented_Keys.md).


When the *Customer* entity is synchronized between the BigCommerce store and Acumatica ERP, customer location \(address\) data is copied from one system to the other along with the customer data. The remaining sections of this topic describe what happens during the synchronization if a customer was created without an address or if an address was created, updated, or deleted in either system.

## Creation of a Customer Without an Address { .section}

With the *Customer* and *Customer Location* entities activated on the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, when a new customer is created in the BigCommerce store without an address, after the *Customer* entity is synchronized, a customer record is created in Acumatica ERP with the *MAIN* location. In the *MAIN* location, the system populates the **Country** and **Ship Via** values based on the customer class specified in the **Customer Class** box on the **Customers** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form. However, the address lines are left blank.

In Acumatica ERP, whenever a new customer is created, the default *MAIN* location is created and specified for the customer. When the *Customer* entity is exported, in the BigCommerce store, this customer is created without an address record in the customer address book.

The following diagram illustrates the synchronization of customers created without an address.

![](Images/diag_Synchronization_of_Customers.png "Synchronization of customers created without an address")

## Creation of a Customer Address { .section}

If the *Customer* and *Customer Location* entities are activated on the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form and a new address was created for a customer in the BigCommerce store, during the import of the *Customer* entity, the ecommerce connector does one of the following:

-   If the default *MAIN* location has empty address lines, the new address is used to populate the elements of the *MAIN* location.
-   If the default location has been deleted in Acumatica ERP, and there is a corresponding synchronization record with the *Deleted* status on the [Sync History](BC_30_10_00.md) \(BC301000\) form, the ecommerce connector creates a new location and makes it the default.
-   If the default location exists and the address lines in it are filled in, the connector creates a new location.

If a new location was created for a customer in Acumatica ERP, when the *Customer* entity is exported, the corresponding new address is created for the customer in the BigCommerce store with the data of the new location.

The following diagram illustrates the synchronization of a new customer address.

![](Images/diag_Synchronization_of_Customers_New_Address.png "Synchronization of a new customer address")

## Editing of a Customer Address { .section}

With the *Customer* and *Customer Location* entities activated on the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, if an existing customer address synchronized with Acumatica ERP is edited in the BigCommerce store, during the import of the *Customer* entity, the corresponding customer location in Acumatica ERP is updated with the changes made to the customer address in the BigCommerce store.

If an existing customer location is edited in Acumatica ERP, during the export of the *Customer* entity, the ecommerce connector does one of the following:

1.  If the customer location is active—that is, if the **Active** check box is selected for it on the [Customer Locations](AR_30_30_20.md) \(AR303020\) form—the corresponding customer address in the BigCommerce store is updated based on the changes to the customer location.
2.  If the customer location is inactive \(that is, if the **Active** check box is cleared for it\), the synchronization proceeds as follows:
    -   If the location's synchronization record has a status other than *Deleted*, the corresponding customer address in the BigCommerce store is updated based on the changes to the customer location.
    -   If the location's synchronization record has the *Deleted* status or the location has not been synchronized previously, the location is not synchronized with the BigCommerce store.

The following diagram illustrates the synchronization of an updated customer address.

![](Images/diag_Synchronization_of_Customers_Address_Updated.png "Synchronization of an updated customer address")

## Deletion of a Customer Address { .section}

With the *Customer* and *Customer Location* entities activated on the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, if a customer address is deleted in the BigCommerce store, the import of the *Customer* entity proceeds as follows:

-   If the corresponding customer location in Acumatica ERP is not the default customer location, the system makes it inactive and its synchronization status changes to *Deleted*.
-   If the corresponding customer location in Acumatica ERP is the default customer location, the connector does one of the following:
    -   If the customer location is the only active location of a customer, the connector assigns the *Deleted* status to the location's synchronization record.
    -   If other active locations exist for the customer, the connector makes this default location inactive, assigns the *Deleted* status to its synchronization record, and makes one of the other active locations the default one.

If an existing customer location is made inactive in Acumatica ERP, when the *Customer* entity is exported, the inactive customer location is not synchronized with the BigCommerce store.

The following diagram illustrates the synchronization of a deleted customer address.

![](Images/diag_Synchronization_of_Customers_Address_Deleted.png "Synchronization of a deleted customer address")

## Use of the Guest Customer Account { .section}

If you want to allow placing orders in your store without providing the customer's phone number or email address and want to import such orders into Acumatica ERP, you need to fill in the **Generic Guest Customer** box on the **Customer Settings** tab of the [BigCommerce Stores](../Shared/../UserGuide/BC_20_10_00.md) \(BC201000\) form. This customer account appears on imported sales orders that have been placed in the BigCommerce store without customer details.

The customer record selected in the **Generic Guest Customer** box is not exported to the BigCommerce store during the synchronization of customers.

You can also configure the system to change a guest customer account after a particular number of sales orders have been created for this account. You do so by selecting the **Use Multiple Guest Accounts** check box. When the maximum allowed number of sales orders is exceeded, the system creates a new customer and inserts its identifier in the **Generic Guest Customer** box. The settings of the new customer account are copied from the previous generic guest customer account, and its identifier is generated based on the numbering sequence specified in the **Customer Numbering Sequence** box.

By default, the allowed number of sales orders per guest customer account is limited to 10,000. You can override this number by adding the `MaxOrdersPerGuestAccount` key to the &lt;appSettings&gt; section of the `web.config` file. For example, to change the guest customer account after every 500 sales orders, add the following key:

```
<add key="MaxOrdersPerGuestAccount" value="500"/>
```

For more information about creating a customer, see [Customers: General Information](../Shared/../UserGuide/Customer_GeneralInfo.md).

**Parent topic:**[Synchronizing Customers](../UserGuide/Commerce_BC_Syncing_Customers_Mapref.md)

