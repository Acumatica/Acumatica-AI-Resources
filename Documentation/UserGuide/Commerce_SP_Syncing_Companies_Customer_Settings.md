# Customer Synchronization: Default Settings {#_7be42551-3a9a-4f63-8d36-8aad8f7514c0 .concept}

The settings described in the sections below are applicable to the synchronization of both individual customers and business customers.

## Default Customer Settings { .section}

When you activate the *Customer* or *Company* entity on the **Entities** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, you need to also fill in the following boxes on the **Customers** tab:

-   **Customer Class**: The customer class that is assigned to new customers imported to Acumatica ERP from the Shopify store and thus used to provide their default settings. For information about creating a customer class, see [Accounts Receivable: Customer Classes](../ImplementationGuide/config_Basic_Company_Customer_Classes.md) and [Customers: Customer Class Settings](AR__CON_CustomerClasses.md).

    If the *Multiple Base Currencies* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the **Restrict Visibility To** value of the customer class on the [Customer Classes](AR_20_10_00.md) \(AR201000\) form should be set to the branch selected in the **Branch** box on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form or to the company this branch belongs to.

-   **Customer Numbering Template** \(available for editing only if the *CUSTOMER* segmented key has more than one segment\): The template that is used to provide the identifiers of new customers imported to Acumatica ERP from the Shopify store. This character string, such as *\_\_\_\_-\_\_\_\_-\#\#\#\#\#\#*, initially shows the number and length of segments in the *CUSTOMER* segmented key, which is configured on the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form and defines the structure of the identifiers used for customers in Acumatica ERP. The groups of underscores represent the constant segments, and the number signs represent the auto-numbered segment.

    You replace the underscores with the values of the constant segments to be used in the identifiers of the customers imported from the Shopify store, as shown in the following example: *ECUS-RET1-\#\#\#\#\#\#*. With this setting, the identifiers of all customers imported from Shopify to Acumatica ERP would start with *ECUS-RET1*, for easy identification, and the system would automatically assign the numerical part of the identifier according to the numbering sequence selected in the **Customer Numbering Sequence** box. These settings do not affect the assignment of identifiers to other customers in the system \(those that already exist or those that are created directly in Acumatica ERP\).

-   **Customer Numbering Sequence**: The numbering sequence that the system uses to automatically generate identifiers for customers imported from the Shopify store.

    If the *CUSTOMER* segmented key consists of more than one segment, the numbering sequence that you select in this box applies to the automatically numbered segment \(a group of number signs in the **Customer Numbering Template** box\). The length of the numbering sequence must match the length of the auto-numbered segment.

    Selecting a numbering sequence in this box does not change the **Numbering ID** setting of the *CUSTOMER* segmented key on the [Segmented Keys](CS_20_20_00.md) form. The selected numbering sequence applies only to customers that are imported from the Shopify store and does not affect the assignment of identifiers to other customers in the system \(those that already exist or those that are created directly in Acumatica ERP\).

    For more information about segmented keys and numbering sequences, see [Managing Segmented Keys](SM__con_Managing_Segmented_Keys.md).


## Default Customer Location Settings { .section}

To save shoppers time on entering address details with each purchase, Shopify provides the ability to store each customer's shipping addresses as well as create locations for companies. In Acumatica ERP, you can save more than one location for a customer account if the *Business Account Locations* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

When you activate the *Customer* and *Customer Location* entities or when you activate the *Company* entity on the **Entities** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, you need to also fill in the following boxes:

-   **Location Numbering Template** \(available for editing only if the *LOCATION* segmented key has more than one segment\): The template that is used to provide the identifiers of new customer locations imported to Acumatica ERP from the Shopify store. This character string, such as *\_\_\_\_-\_\_\_\_-\#\#\#\#\#\#*, initially shows the number and length of segments in the *LOCATION* segmented key, which is configured on the [Segmented Keys](CS_20_20_00.md) form and defines the structure of the identifiers used for customer locations in Acumatica ERP. The underscores represent the constant segments, and the number signs represent the automatically numbered segment.

    You replace the underscores with values of the constant segments to be used in the identifiers of the customer locations imported from the Shopify store, as shown in the following example: *ECOM-RET1-\#\#\#\#\#\#*. With this setting, the identifiers of all customer locations imported from Shopify to Acumatica ERP would start with *ECOM-RET1*, for easy identification, and the system would automatically assign the numerical part of the identifier according to the numbering sequence selected in the **Location Numbering Sequence** box. These settings do not affect the assignment of identifiers to other customer locations in the system \(those that already exist or those that are created directly in Acumatica ERP\).

    If you will be importing customer locations from an online store, one of the segments of the *LOCATION* segmented key must be automatically numbered.

-   **Location Numbering Sequence**: The numbering sequence that the system uses to automatically generate identifiers for customer locations imported from the Shopify store.

    If the *LOCATION* segmented key consists of more than one segment, the numbering sequence that you select in this box applies to the automatically numbered segment \(a group of number signs in the **Location Numbering Template** box\). The length of the numbering sequence must match the length of the auto-numbered segment.

    Selecting a numbering sequence in this box does not change the **Numbering ID** setting of the *LOCATION* segmented key on the [Segmented Keys](CS_20_20_00.md) form. The selected numbering sequence applies only to customer locations that are imported from the Shopify store and does not affect the assignment of identifiers to other customer locations in the system \(those that already exist or those that are created directly in Acumatica ERP\).

    For more information about segmented keys and numbering sequences, see [Managing Segmented Keys](SM__con_Managing_Segmented_Keys.md).


**Parent topic:**[Synchronizing Individual and Business Customers](../UserGuide/Commerce_SP_Syncing_Customers_Mapref.md)

