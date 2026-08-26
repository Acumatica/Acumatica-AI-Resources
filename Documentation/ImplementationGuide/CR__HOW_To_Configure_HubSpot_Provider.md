# Integration with Hubspot: To Configure the HubSpot Data Provider {#_6c283561-17dd-4ad0-8e7a-9acd803359ca .task}

When creating an integration scenario, you need to specify an appropriate data provider. To export leads to HubSpot or to import leads from HubSpot, you can use the *HubSpot* data provider, which is a preconfigured data provider based on a specific built-in provider type: *HubSpot Provider*. This data provider needs additional configuration before it can be put into use.

## Step: Configuring the HubSpot Data Provider { .section}

1.  On the [Data Providers](../UserGuide/SM_20_60_15.md) \(SM206015\) form, select the *HubSpot* provider.
2.  On the **Parameters** tab, specify the following settings:
    -   *AuthMethod*: *Private App Access Token*
    -   *PrivateAppAccessToken*: The Private Apps access token
    -   *HubSpotList*: The name of the list to be used for synchronization between Acumatica ERP and HubSpot \(if no such list exists yet, it will be created automatically during the first export or import\)
3.  On the **Schema** tab, click **Fill Schema Objects** and then **Fill Schema Fields**.

    **Note:** You can deactivate some of the HubSpot utility fields that you are not going to use in your integration scenario.

4.  On the form toolbar, click **Save** to save your changes.

**Parent topic:**[Integration with HubSpot](../ImplementationGuide/config_HubSpot_Mapref.md)

