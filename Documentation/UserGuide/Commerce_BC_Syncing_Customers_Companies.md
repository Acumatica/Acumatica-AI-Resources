# Synchronizing Customers: Business Customers

In BigCommerce, you can sell goods and services directly to business customers without using third-party apps. A business customer is configured as a *company* on the **Companies** page of the B2B Edition control panel.

A company represents a B2B buying organization—that is, a customer or prospective customer of your organization. For each company, you manage its users \(your contacts\) and their roles, shipping and billing addresses, and company-specific settings.

**Attention:**

The functionality is available only if the *BigCommerce B2B Integration* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

It also requires the B2B Edition Access API scope to be enabled for the BigCommerce API account.

## Configuring the Store

You import companies from BigCommerce by using the *Company* entity, which you activate on the **Entities** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form.

The connector uses the same settings to import companies as it does to import customers. You specify these settings on the **Customers** tab \(**Customer** section\). For information about these settings, see [Synchronizing Customers: Default Settings](Commerce_BC_Syncing_Customers_Settings.md).

In the **B2B Customer** section, you additionally specify the following settings:

-   **Import Company Users as Customers**: Select this check box to import company users as both customers and contacts. When this check box is cleared \(the default state\), company users are imported as contacts only.

    **Tip:** Regardless of the check box state, the connector creates a customer for a company user placing an individual order that isn’t associated with a company in BigCommerce.

-   **Synchronize only Default Company Address**: Select this check box to synchronize only the default customer location in Acumatica ERP and the default shipping address in BigCommerce. When this check box is cleared \(the default state\), the connector synchronizes all active company locations and addresses.

In the **Payment Terms** section, you configure mappings between the list of preloaded BigCommerce payment terms and the corresponding credit terms in Acumatica ERP. Only credit terms with the *All* or *Customers* visibility are available for selection.

**Important:** BigCommerce payment terms aren’t imported automatically. The table is prepopulated with the payment terms currently supported by BigCommerce. If BigCommerce adds support for new payment terms after the upgrade, you’ll need to add them to the table manually.

## Mapping Company Payment Methods

The connector synchronizes active customer payment methods from Acumatica ERP to BigCommerce, enabling the corresponding BigCommerce payment options for companies.

It uses the substitution list selected in the **B2B Payment Methods** box on the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form to establish the matching. By default, the predefined *BCCPAYMENTMETHODS* substitution list is selected.

On the [Substitution Lists](SM_20_60_26.md) \(SM206026\) form, the *BCCPAYMENTMETHODS* list is prepopulated with these BigCommerce payment options in the **Original Value** column:

-   *bigcommerce\_gift\_certificate*
-   *bigcommerce\_manual\_payment*
-   *bigcommerce\_store\_credit*
-   *bigpaypay*
-   *cheque*

In the **Substitution Value** column, you enter the identifiers of the corresponding payment methods in Acumatica ERP.

**Important:** The list of payment methods is unique to each store and depends on the payment providers configured for your store. You can modify the *BCCPAYMENTMETHODS* substitution list to match your configuration or create a new substitution list and select it in the store settings.

Configuring this substitution list is optional if the payment method identifiers in Acumatica ERP exactly match the corresponding BigCommerce payment option names. In this case, the connector matches the payment methods automatically, and no substitution mapping is required.

## Importing Companies from BigCommerce

When a company is imported from a BigCommerce store to Acumatica ERP, the connector creates the following records:

-   A customer with the *Organization* customer category on the [Customers](AR_30_30_00.md) \(AR303000\) form for the company.
-   A customer location on the [Customer Locations](AR_30_30_20.md) \(AR303020\) form for each company address in the BigCommerce store if the **Synchronize only Default Company Address** check box is cleared on the **Customers** tab of the [BigCommerce Stores](BC_20_10_00.md) form.
-   A contact on the [Contacts](CR_30_20_00.md) \(CR302000\) form for each company user in the BigCommerce store.
-   A customer of the *Individual* category on the [Customers](AR_30_30_00.md) form for each company user in the BigCommerce store if any of the following conditions are met:
    -   The *Customer* entity is active for the store on the **Entities** tab of the [BigCommerce Stores](BC_20_10_00.md) form.
    -   The **Import Company Users as Customers** check box is selected on the **Customers** tab of the [BigCommerce Stores](BC_20_10_00.md).
    -   The user has placed at least one order in the BigCommerce store.

## Creating Customers in Acumatica ERP for BigCommerce Companies

In Acumatica ERP, a customer is created on the [Customers](AR_30_30_00.md) \(AR303000\) form for each imported BigCommerce company. The customer is assigned the following settings:

-   **Status** \(Summary area\): *Credit Hold* only if the **Put account on credit hold** check box is selected for the company on the **Payments** tab in BigCommerce; otherwise, *Active*.
-   **Customer Category** \(**General** tab\): *Organization*.
-   **Account Address** \(**General** tab\): The company’s legal address.
-   **Ext. Ref. Nbr.** \(**General** tab\): The external ID of the company in BigCommerce and the store name in Acumatica ERP.
-   **Legal Name**, **Email**, Phone number \(**General** tab\): The basic company information.
-   **Parent Account** \(**Financial** tab\): The parent company if the corresponding company has been imported to Acumatica ERP.

    **Attention:** This functionality is available if the *Parent-Child Customer Relationship* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

-   **Terms** \(**Financial** tab\): The credit terms that are mapped to the payment terms of the company in BigCommerce. If no mapping is found, the customer is assigned the credit terms specified for its customer class.
-   **Bill-To Address** \(**Billing** tab\): The company’s default billing address.
-   **Ship-To Address** \(**Shipping** tab\): The company’s default shipping address.
-   **Price Class** \(**Shipping** tab\): The company’s customer group if the corresponding *Customer Price Class* sync record has been imported.

## Creating Locations in Acumatica ERP for BigCommerce Company Addresses

In Acumatica ERP, a customer location is created on the [Customer Locations](AR_30_30_20.md) \(AR303020\) form for each company address in BigCommerce if the **Synchronize only Default Company Address** check box is cleared for the store on [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form. The location has the following settings depending on the company address settings on the **Addresses** tab in BigCommerce:

-   **Default** \(Summary area\): Selected if the address is the default shipping address
-   **Status** \(Summary area\): *Inactive* if the address has both the **Shipping** check box and the **Billing** check box cleared
-   **Location Type** \(Summary area\): One of the following options, depending on the state of the **Shipping** and **Billing** check boxes in the address:
    -   *Shipping Only*
    -   *Billing Only*
    -   *Shipping and Billing*
-   **External ID** \(**General** tab\): The external ID of the address in BigCommerce and the store name in Acumatica ERP
-   **Price Class** \(**General** tab\): The customer group of the company in BigCommerce if the import or bidirectional synchronization of the *Customer Price Class* entity is activated for the store.

If the **Synchronize only Default Company Address** check box is selected for the store on [BigCommerce Stores](BC_20_10_00.md) form, the connector creates a location only for the default shipping address.

It creates the default *Main* location with no address if any of the following conditions are met:

-   The company has no address specified.
-   The company has no default shipping address.
-   All addresses have both the **Shipping** check box and the **Billing** check box cleared.

## Creating Contacts in Acumatica ERP for BigCommerce Company Users

An Acumatica ERP contact is created on the [Contacts](CR_30_20_00.md) \(CR302000\) form for each company user in BigCommerce. The contact is assigned the following settings on the **General** tab:

-   **Name**, **Email**, and Phone number: The basic information for the person
-   **Ext. User Role**: The person’s role
-   **Ext. Ref. Nbr.**: The external ID of the retail customer associated with the customer user in BigCommerce and the store name in Acumatica ERP

The user with the *Admin* role and the earliest creation date in BigCommerce is defined as the company’s primary contact. If the company has no *Admin* users, the user with the earliest creation date is defined as the company’s primary contact instead.

The company’s super admins and sales staff in BigCommerce aren’t imported into Acumatica ERP because they can be associated with multiple companies in BigCommerce.

## Exporting Companies from Acumatica ERP

During the export of companies from Acumatica ERP, the connector creates a company in BigCommerce for every customer of the *Organization* type with any status except *Inactive*.

The connector fills in the following settings on the **Basic Information** tab of the BigCommerce company page by using data from the corresponding customer on the [Customers](AR_30_30_00.md) \(AR303000\) form:

-   **Name**: Customer account name \(Summary area\)
-   **Phone**, **Email**: Primary contact information \(**General** tab\)
-   **Legal address**: Customer account address \(**General** tab\)
-   **Parent company**: The parent account \(**Financial** tab\)
-   **Customer group**: The synchronized customer price class specified for the customer \(**Shipping** tab\)

    If no customer price class is assigned or the assigned customer price class hasn’t been exported, the connector assigns the store’s default customer group.

    **Tip:** If you don’t want exported companies to be assigned to any customer group, configure an export mapping for the *Company* entity on the [Entities](BC_20_20_00.md) \(BC202000\) form, and map the *Customer Group ID* to `0`.


## Exporting Company Contacts from Acumatica ERP

When it exports company contacts from Acumatica ERP, the connector creates a user on the **Company Users** tab of the company page in BigCommerce for every active customer contact listed on the **Contacts** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form. It uses the corresponding contact information from the [Contacts](CR_30_20_00.md) \(CR302000\) form.

The connector assigns user roles as follows:

-   The primary contact is always assigned the *Admin* role. To prevent role changes during bidirectional synchronization, make sure that the primary contact has the *Admin* external user role on the **General** tab of the [Contacts](CR_30_20_00.md) form.
-   Each non-primary contact is assigned a role based on its external user role. The role name must exactly match an existing BigCommerce role. Otherwise, synchronization issues may occur.

If a previously synchronized customer contact is deleted or made inactive in Acumatica ERP, the connector stops updating the corresponding user in BigCommerce.

## Exporting Company Payment Settings from Acumatica ERP

The connector exports the following payment settings from Acumatica ERP to the **Payments** tab of the company page in BigCommerce:

-   **Available payment options**: The connector activates the payment options that correspond to the customer’s payment methods on the [Customer Payment Methods](AR_30_30_10.md) \(AR303010\) form.

    The payment methods must either have the same names as the corresponding BigCommerce payment options or be mapped through the substitution list selected in the **B2B Payment Methods** box on the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form. If no payment methods are defined for the customer or no matching payment options are found, BigCommerce assigns its default payment options.

-   **Put account on credit hold**: Selected if the customer’s status is *Credit Hold* in the Summary area of the [Customers](AR_30_30_00.md) form.
-   **Company payment terms**: The payment terms that correspond to the customer’s terms selected on the **Financial** tab of the [Customers](AR_30_30_00.md) form. These are determined by the mapping specified on the **Customers** tab of the [BigCommerce Stores](BC_20_10_00.md) form.

## Exporting Company Locations from Acumatica ERP

If the **Synchronize only Default Company Address** check box is cleared for the store on the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, the connector exports the company’s active customer locations. That is, for each active customer location on the **Locations** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form, it creates a corresponding address on the **Addresses** tab of the company page in BigCommerce for. It pulls the address information from the [Customer Locations](AR_30_30_20.md) \(AR303020\) form.

The **Location Type** of the customer location determines how the address is used in BigCommerce:

-   *Shipping Only*: As a shipping address
-   *Billing Only*: As a billing address
-   *Shipping and Billing*: As both a shipping address and a billing address

The default customer location becomes the default shipping address if its location type permits shipping. The location whose address is used as the customer’s bill-to address becomes the default billing address if its location type permits billing.

If the **Synchronize only Default Company Address** check box is selected for the store on [BigCommerce Stores](BC_20_10_00.md) form, the connector exports only the default customer location.

If a previously synchronized customer location is deleted or made inactive in Acumatica ERP, the connector stops updating the corresponding BigCommerce address. It remains in BigCommerce with the last settings specified there.

## Synchronization of Sales Orders for Companies

Acumatica ERP supports bidirectional synchronization of sales orders created on behalf of companies.

When importing orders created by company users on behalf of their companies from BigCommerce, the connector sets the company as the **Customer** on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. The user who placed the order is specified as the **Contact**, and the address used when placing the order in BigCommerce is imported as a company location.

When exporting sales orders created for companies along with their associated contacts from Acumatica ERP, the connector links each order to the company in BigCommerce. If an order has been fully paid in Acumatica ERP, it’s created in BigCommerce with the *Awaiting Fulfillment* status. Otherwise, it’s created with the *Awaiting Payment* status.

## Limitations

Company synchronization has the following additional limitations:

-   Although BigCommerce allows multiple companies to share the same email address, and Acumatica ERP allows multiple organization customers to have the same email account, the BigCommerce connector uses the company email as the matching key. As a result, companies with duplicate email addresses—either in BigCommerce or in Acumatica ERP—cannot be synchronized unless they’re already matched by the external ID in the **Ext. Ref. Nbr.** box on the **General** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form.
-   Multiple BigCommerce storefront channels aren’t supported. The default storefront channel is used for synchronized companies, users, and related records.
-   The functionality is intended for stores that use the *Independent Companies* behavior. With the legacy *Dependent Companies* behavior, BigCommerce can create and assign a customer group automatically, which can interfere with the synchronization of BigCommerce customer groups and Acumatica ERP customer price classes.
-   File attachments aren’t synchronized for companies, addresses, or company users.

**Parent topic:**[Synchronizing Individual and Business Customers](../UserGuide/Commerce_BC_Syncing_Customers_Mapref.md)

