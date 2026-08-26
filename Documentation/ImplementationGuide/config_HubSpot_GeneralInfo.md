# Integration with HubSpot: General Information {#_275c2b88-ff3d-4805-9a07-2ba7f9255337 .concept}

The integration of Acumatica ERP with HubSpot gives you the ability to synchronize data between the two systems. You synchronize data by using integration scenarios. For information on how to prepare these integration scenarios, see [Configuring Import Scenarios](../UserGuide/IS__mng_Configuring_Import_Scenarios.md) and [Configuring Export Scenarios](../UserGuide/IS__mng_Configuring_Export_Scenarios.md).

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Configure the *HubSpot Enhanced Provider* data provider
-   Configure the *HubSpot* data provider
-   Synchronize different entities between the systems
-   Configure automation schedules that will run synchronization processes
-   Resolve synchronization issues

## Data Providers { .section}

When creating or modifying an integration scenario, you need to specify an appropriate data provider. For the synchronization of data between Acumatica ERP and HubSpot, you can use one of the following built-in data providers:

-   *HubSpot*: This data provider is based on a specific built-in provider type: *HubSpot Provider*. By using this data provider, you can export leads from Acumatica ERP to HubSpot for nurturing and then import the leads back to Acumatica ERP for further processing.

    For details about how to configure the *HubSpot* data provider, see [Integration with Hubspot: To Configure the HubSpot Data Provider](CR__HOW_To_Configure_HubSpot_Provider.md).

-   *HubSpot Enhanced Provider*: This data provider is based on the *HubSpot Enhanced* provider type, which supports both the use of the OAuth protocol and Private Apps access tokens for authorization in HubSpot. By using this data provider, you can synchronize contacts, leads, business accounts, and marketing lists between the two systems.

    For more information about the *HubSpot Enhanced Provider* data provider, see [Integration with HubSpot: Enhanced HubSpot Data Provider](config_HubSpot_Enhanced_Provider.md).


## Configuration Flow of Data Synchronization Between Acumatica ERP and HubSpot { .section}

To configure synchronization of data between Acumatica ERP and HubSpot by using the *HubSpot Enhanced Provider* data provider, you should do the following:

1.  Configure the *HubSpot Enhanced Provider* data provider on the **Parameters** tab of the [Data Providers](../UserGuide/SM_20_60_15.md) \(SM206015\) form so that it connects to HubSpot. For instructions, see [Integration with HubSpot: To Configure the HubSpot Enhanced Data Provider](config_HubSpot_Implem_Activity_EnhancedProvider.md).
2.  Prepare integration scenarios that use the *HubSpot Enhanced Provider* data provider for the entity types whose data need to be synchronized between the systems, and start the synchronization processes.

    For details, see [Integration with HubSpot: To Synchronize Leads](config_HubSpot_Implem_Activity_Sync_Leads.md), [Integration with HubSpot: To Synchronize Contacts](config_HubSpot_Implem_Activity_Sync_Contacts.md), [Integration with HubSpot: To Synchronize Accounts](config_HubSpot_Implem_Activity_Sync_Accounts.md), and [Integration with HubSpot: To Synchronize Marketing List](config_HubSpot_Implem_Activity_Sync_Marketing_Lists.md).

3.  Configure automation schedules that will run the needed import and export scenarios at the specified time intervals, as described in [Integration with HubSpot: To Schedule Synchronization Processes](config_HubSpot_Implem_Activity_Schedule_Sync.md).

## HubSpot Integration Limitations { .section}

The solution for the synchronization of data between Acumatica ERP and HubSpot has the following limitations:

-   Only one instance of HubSpot may be synchronized with an Acumatica ERP instance.
-   If multiple data providers use the *HubSpot Enhanced* provider type, an error will occur when a user attempts to use any of them.

**Parent topic:**[Integration with HubSpot](../ImplementationGuide/config_HubSpot_Mapref.md)

