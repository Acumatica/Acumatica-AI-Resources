# Customer Synchronization: Business Customers {#_991bd3b2-9afe-4143-8157-771fdc2b688c .concept}

In Shopify, it is possible to sell goods and services to business customers without using third-party apps. A business customer is set up in the Shopify store as a *company*. A company may have multiple locations, and multiple customers may be associated with the same company. Each customer that is associated with a company may be assigned either the *Ordering only* role or the *Location admin* role in any of the company's locations. When a customer associated with a company signs in to the Shopify store, they select the location for which they are placing an order, and they are offered the prices and payment terms that have been set up in the store for that company location.

For more information about setting up companies in Shopify, see [the Shopify documentation](https://help.shopify.com/en/manual/b2b/companies).

**Important:** Business-to-business functionality in Shopify is available on the Shopify Plus subscription plan.

You can synchronize business customers between Acumatica ERP and a Shopify store, as described in the sections below. You can also synchronize orders that have been placed by contacts associated with business customers, as described in [Order Synchronization: Orders for Companies](Commerce_SP_Syncing_Orders_for_Companies.md).

**Important:** The synchronization of business customers is available if both the *Shopify Connector* feature and the *Shopify Business-to-Business Entities* feature are enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Import of Business Customers { .section}

During the import of a company from a Shopify store to Acumatica ERP, the system does the following:

-   Creates a customer for the company on the [Customers](AR_30_30_00.md) \(AR303000\) form
-   For each location that has been defined for the company in the Shopify store, creates a customer location on the [Customer Locations](AR_30_30_20.md) \(AR303020\) form
-   For each customer associated with the company in the Shopify store, creates a contact on the [Contacts](CR_30_20_00.md) \(CR302000\) form
-   For each customer associated with the company in the Shopify store, creates a customer of the *Individual* type on the [Customers](AR_30_30_00.md) form if either of the following conditions is met:
    -   The **Import Company Contacts as Customers** check box is selected on the **Customers** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\).
    -   The customer has at least one order placed in the Shopify store.

The created customer is assigned settings as follows:

-   The system generates the identifier of the business customer imported from a Shopify store based on the numbering sequence selected in the **Customer Numbering Sequence** box on the **Customers** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.
-   The system inserts the customer class that is specified in the **Customer Class** box of the **Customers** tab of the [Shopify Stores](BC_20_10_10.md) form. This class provides default settings for the customer.
-   The system inserts *Organization* in the **Customer Category** box on the [Customers](AR_30_30_00.md) form, which indicates that the customer is a business customer.
-   The system inserts the company identifier from the Shopify store, along with the store name, in the **Ext. Ref. Nbr.** box on the **General** tab of the [Customers](AR_30_30_00.md) form in the following format: *&lt;Company Identifier&gt; - &lt;Store Name&gt;*.

The created locations are assigned settings as follows:

-   The system generates the identifiers of the imported locations based on the numbering sequence specified in the **Location Numbering Sequence** box on the **Customers** tab of the [Shopify Stores](BC_20_10_10.md) form.
-   The system inserts the location identifier from the Shopify store, along with the store name, in the **External ID** box on the **General** tab of the [Customer Locations](AR_30_30_20.md) form in the following format: *&lt;Location Identifier&gt; - &lt;Store Name&gt;*.
-   The **Contacts** tab of the [Customer Locations](AR_30_30_20.md) form shows all contacts that are assigned a role in a particular location.

The created contacts are assigned settings as follows:

-   On the **Locations** tab of the [Contacts](CR_30_20_00.md) form and on the **Contacts** tab of the [Customer Locations](AR_30_30_20.md) form, the system assigns the roles to contacts in the customer locations based on the roles the customers had in each of the locations in the Shopify store as follows:
    -   If the customer has the *Ordering only* role in the Shopify store, the contact is assigned the *User* role in Acumatica ERP.
    -   If the customer has the *Location admin* role in the Shopify store, the contact is assigned the *Admin* role in Acumatica ERP.
-   The system inserts the customer identifier from the Shopify store, along with the store name, in the **Ext. Ref. Nbr.** box on the **CRM Info** tab of the [Contacts](CR_30_20_00.md) form in the following format: *&lt;Customer Identifier&gt; - &lt;Store Name&gt;*.
-   The **Locations** tab of the [Contacts](CR_30_20_00.md) form shows the locations in which a contact is assigned a role.

If a customer associated with a company is deleted in the Shopify store after the company has been synchronized, during the next synchronization, the corresponding contact in Acumatica ERP becomes inactive. Similarly, if a location is deleted in the Shopify store, the corresponding customer location in Acumatica ERP becomes inactive.

## Export of Business Customers {#_3fb81e38-3b6e-49f2-8eb3-d9a3b1bdaf03 .section}

If the synchronization direction is set to *Export* or *Bidirectional* for the *Company* entity for the store on the **Entities** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, business customers can be exported to the Shopify store. Customers are exported only if the **Customer Category** box contains *Organization* on the [Customers](AR_30_30_00.md) \(AR303000\) form.

During the export of a business customer, the system does the following in the Shopify store:

-   Creates a company.
-   Creates a company location for each customer location created for the business customer on the [Customer Locations](AR_30_30_20.md) \(AR303020\) form.

    If changes have been made to a location after the company has been synchronized, these changes are exported to the Shopify store during the next synchronization. However, if a location is deactivated or deleted in Acumatica ERP, the corresponding company location is not updated in the Shopify store.

-   Creates a customer for each contact created for the business customer on the [Contacts](CR_30_20_00.md) \(CR302000\) form and associates it with the company. The customers are assigned roles in the company's locations according to the contacts' roles in Acumatica ERP as follows:

    -   If the contact has the *User* role in Acumatica ERP, the customer is assigned the *Ordering only* role in Shopify.
    -   If the contact has the *Admin* role in Acumatica ERP, the customer is assigned the *Location admin* role in Shopify.
    If changes have been made to a contact after the company has been synchronized, these changes are exported to the Shopify store during the next synchronization. However, if the contact is deactivated or deleted in Acumatica ERP, the corresponding customer is not updated in the Shopify store.


## Synchronization of Shopify Payment Terms { .section}

You can synchronize credit terms assigned to customers in Acumatica ERP \(on the **Financial** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form\) with payment terms assigned to company locations in the Shopify store.

When the connection to the Shopify store is established, the connector imports the list of Shopify payment terms into the **Payment Terms** table on the **Customers** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form. To complete the setup, you select the corresponding credit terms defined on the [Credit Terms](CS_20_65_00.md) \(CS206500\) form in the **ERP Credit Terms** column to map them to the imported Shopify payment terms shown in the **Payment Terms Name** column.

**Important:** The *Due on receipt* payment terms can't be assigned to a company location in Shopify. Don't map these terms to any credit terms in Acumatica ERP.

If you want Acumatica ERP to be the main system for managing credit terms, you select the **Always Export Credit Terms** check box on the **Customers** tab of the [Shopify Stores](BC_20_10_10.md) form. This ensures that during the export, the connector always overrides the payment terms of company locations in Shopify with the credit terms assigned to the corresponding customers in Acumatica ERP.

## Import of Payment Terms from Shopify { .section}

If the synchronization direction is set to *Import* or *Bidirectional* for the *Company* entity for the store on the **Entities** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, payment terms can be imported form the Shopify store. Only customers assigned to the *Organization* customer category on the **General** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form are included in the sync.

The connector updates each customer's credit terms on the **Financial** tab of the [Customers](AR_30_30_00.md) form with the company's payment terms from Shopify. But this update occurs only if those terms are mapped in the **Payment Terms** table on the **Customers** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.

**When payment terms are imported**: The connector assigns the credit terms mapped to the company's payment terms to the customer in Acumatica ERP if all company locations in Shopify use the same payment terms. \(Locations with no payment terms assigned are ignored.\)

**When payment terms are skipped**: The connector doesn't import payment terms from Shopify if different payment terms are assigned to one or more company locations. Instead, it assigns the imported customer the credit terms defined for the customer class selected on the **Customers** tab of the [Shopify Stores](BC_20_10_10.md) form.

## Export of Credit Terms to Shopify { .section}

If the synchronization direction is set to *Export* or *Bidirectional* for the *Company* entity for the store on the **Entities** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, credit terms can be exported to the Shopify store. Only customers assigned to the *Organization* customer category on the **General** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form are included in the sync.

The system exports credit terms assigned to a customer on the **Financial** tab of the [Customers](AR_30_30_00.md) form only if they're mapped to payment terms in the **Payment Terms** table on the **Customers** tab of the [Shopify Stores](BC_20_10_10.md) form.

**When credit terms are exported**: The connector assigns the payment terms mapped to the customer's credit terms to all company locations in Shopify in **each** of the following cases:

-   The **Always Export Credit Terms** check box is selected on the **Customers** tab of the [Shopify Stores](BC_20_10_10.md) form.
-   The customer is being exported for the first time, and no corresponding company exists in Shopify.
-   The corresponding company already exists in Shopify, and either no payment terms are specified for any of the company locations or all locations share the same payment terms.

**When credit terms are skipped**: The connector does not export credit terms if **all** of the following conditions are met:

-   The **Always Export Credit Terms** check box is cleared on the **Customers** tab of the [Shopify Stores](BC_20_10_10.md) form.
-   The corresponding company already exists in Shopify.
-   Different payment terms are assigned to one or more company locations.

**Parent topic:**[Synchronizing Individual and Business Customers](../UserGuide/Commerce_SP_Syncing_Customers_Mapref.md)

