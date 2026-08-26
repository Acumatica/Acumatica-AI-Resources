# Opportunities: Address Management Through a Third-Party Provider {#_2a7f3482-f418-477b-a469-3f8e2ccfb56d .concept}

In Acumatica ERP, you can validate and enrich the addresses specified for opportunities through integration with a third-party software or service if an address provider is configured on the [Address Providers](CS_10_30_00.md) \(CS103000\) form. For details on configuring the integration, see [Integrating Acumatica ERP with Address Validation Providers](CS__con_Integration_with_Address_Providers.md).

You can also use the address provider to specify and validate addresses on all entry forms that have address settings, such as leads, contacts, business accounts, account locations, customers, and sales quotes.

## Address Validation {#_69a61cfb-aba9-4c2e-b11c-8cdb4afbb6f5 .section}

With the address validation functionality, you can verify the addresses in a record through integration with a third-party provider. This functionality is available if the *Address Validation Integration* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form \(in the *Third-Party Integrations* group of features\) and an address provider is configured on the [Address Providers](CS_10_30_00.md) \(CS103000\) form.

For example, you can validate the addresses specified for an opportunity by clicking **Validate Addresses** on the More menu of the [Opportunities](CR_30_40_00.md) \(CR304000\) form. If the specified addresses have been validated, the system selects the **Validated** check boxes on the **Contact** tab \(**Address** section\) and the **Addresses** tab \(**Ship-To Address** and **Bill-To Address** sections\).

You can run validation for multiple business accounts at once by using the [Validate Addresses in Profiles](../Shared/../UserGuide/CR_50_90_20.md) \(CR509020\) form.

## Address Enrichment {#_d67c6557-85ca-4721-b092-0c1842f322e8 .section}

Through integration with a third-party provider, you can use the address enrichment functionality. With this functionality, you can add a new address, update an existing address, and fill in the missing address information in a record. This functionality is available if the *Address Lookup Integration* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form \(in the *Customer Management* group of features\) and an address provider is configured on the [Address Providers](CS_10_30_00.md) \(CS103000\) form.

You can add address settings based on the contact address of an opportunity \(or another type of record\). On the [Opportunities](CR_30_40_00.md) \(CR304000\) form \(in the **Address** section of the **Contact** tab\), the **Address Lookup** button has been added. The button is displayed instead of the **View on Map** button, which is shown if the *Address Lookup Integration* feature is disabled on the [Enable/Disable Features](CS_10_00_00.md) form. When you click the **Address Lookup** button, the **Address Lookup** dialog box opens, in which you can find the details of the company location. For details, see [Integrating Acumatica ERP with Web Map Services](config_Web_Map_Services_Mapref.md).

**Parent topic:**[Creating Opportunities](../UserGuide/CRM_Sales_Creating_Opportunities_Mapref.md)

