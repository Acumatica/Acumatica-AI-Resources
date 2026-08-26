# Integration with HubSpot: To Configure the HubSpot Enhanced Data Provider {#_7c283561-17dd-4ad0-8e7a-9acd803359ca .task}

When integrating HubSpot and Acumatica ERP, you need to specify the appropriate data provider. To export leads to HubSpot or to import leads from HubSpot, you can use the preconfigured *HubSpot Enhanced Provider* data provider. In this activity, you will learn how to configure this data provider.

## System Preparation { .section}

Before you start configuring the integration between HubSpot and Acumatica ERP, perform the following preparatory tasks:

1.  Create a HubSpot Private App: Follow the [Create a private app](https://developers.hubspot.com/docs/api/private-apps#create-a-private-app) section of the [Private Apps](https://developers.hubspot.com/docs/api/private-apps) HubSpot API Docs. Select the following scopes for the app:
    -   Lists: Read and Write
    -   Contacts: Read and Write
    -   Companies: Read and Write
    -   Contacts schemas: Read
    -   Companies schemas: Read
2.  Obtain the access token value: Follow the [Make API calls with your app's access token](https://developers.hubspot.com/docs/api/private-apps#make-api-calls-with-your-app-s-access-token) section. Copy and paste the value, or write it down for later use.

Now you can launch the Acumatica ERP website, and sign in to the necessary tenant.

## Step: Configuring the HubSpot Data Provider { .section}

To configure the HubSpot data provider, you need to do the following:

1.  Open the [Data Providers](../UserGuide/SM_20_60_15.md) \(SM206015\) form.
2.  In the **Name** box of the Summary area, select *HubSpot Enhanced Provider*.
3.  On the **Parameters** tab, specify the following settings in the **Value** column of the appropriate row:
    -   In the row with the *AuthMethod* name: *Private App Access Token*
    -   In the row with the *PrivateAppAccessToken* name: The Private Apps access token
4.  On the **Schema** tab, on the table toolbar of the **Source Objects** pane, click **Fill Schema Objects**.
5.  For each object that you want to be synchronized, make sure the check box in the **Active** column is selected. Clear this check box for the objects that you do not want to synchronize.
6.  In the **Source Fields** pane, make sure the check box in the **Active** column is selected for the fields that you want to be integrated. Clear this check box for the fields that you do not want to be integrated.
7.  On the table toolbar of the pane, click **Fill Schema Fields**.
8.  On the form toolbar, click **Save** to save your changes.

**Parent topic:**[Integration with HubSpot](../ImplementationGuide/config_HubSpot_Mapref.md)

