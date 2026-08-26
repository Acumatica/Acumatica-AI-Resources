# Integration with Web Map Services: General Information {#_4641259c-ca89-48e2-9e05-06f3e5bddff6 .concept}

Address data quality is essential for many business operations. The integration of Acumatica ERP with web map services gives users the ability to maximize the accuracy of address information.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Set up integration with the Google Maps web map service
-   Set up integration with the Azure Maps web map service

## Applicable Scenarios { .section}

You may need to set up integration with web map services in scenarios that include the following:

-   Users need to find a company address by a company name.
-   Users need to find a company address by a postal code if no other address details are available.
-   Users need to find a full address by a street address.

## Address Enrichment Functionality Through Web Map Services { .section}

With the address enrichment functionality through integration with web map services, you can add a new address, update an existing address, and fill in the missing address information in a record that has address settings. To make this functionality available, you must enable the *Address Lookup Integration* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form in the *Customer Management* group of features. You then need to set up integration with the web map service on the [Address Providers](CS_10_30_00.md) \(CS103000\) form and select the address provider on the [Site Preferences](SM_20_05_05.md) \(SM200505\) form, as described in [Integration with Web Map Services: Implementation Activity](config_Web_Map_Services_Implem_Activity.md).

As a result, the selected web map service will be used as the address provider on all forms that have address information \(if applicable\).

The *Address Lookup Integration* feature can also be used for the Acumatica Self-Service Portal: To do so, after the *Address Lookup Integration* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form and the address provider has been set up on the *Address Providers \(CS103000\)* form, you should set up the address provider on the *Portal Preferences \(SP800000\)* form.

## Web Map Services as Address Providers { .section}

Acumatica ERP provides integration with the Google Maps and Azure Maps web map services. On the [Address Providers](CS_10_30_00.md) \(CS103000\) form, you need to enter an identifier for the provider in the **Provider ID** box and select either of the following plug-ins in the **Plug-In** box:

-   *Google Maps*
-   *Azure Maps*

When the plug-in has been selected, on the **Plug-In Parameters** tab of the form, you need to specify values in the **Value** column for the following parameters:

-   *API KEY*: You get an API key when you register with the particular web map service that you are planning to use. This key should be entered here.
-   *COUNTRY*: You specify the ISO 3166 country code \(For details, see [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html).\) for each country in which users can search for addresses, with the codes separated by commas. The countries supported by the Google Maps address provider are the United States, the United Kingdom, Canada, and Mexico. The country supported by the Azure Maps address provider is the United States.

    **Attention:** A user can select up to five countries to be used for the address search by Google Maps and one country to be used for the address search by Azure Maps. The countries that are not supported by the web map services may have different address templates used by postal services, and Acumatica cannot guarantee that the data from these templates will be correctly processed by the system.


**Parent topic:**[Integrating Acumatica ERP with Web Map Services](../UserGuide/config_Web_Map_Services_Mapref.md)

