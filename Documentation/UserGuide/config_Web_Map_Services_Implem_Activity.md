# Integration with Web Map Services: Implementation Activity {#_6e288e35-6afe-4659-8530-dc20a339175a .task}

The following activity will help you set up integration with the Google Maps web map service.

**Tip:** You can perform similar steps to set up integration with Azure Maps instead.

## Story { .section}

You, as administrator, need to set up integration with the Google Maps web map service to give users the ability to add new addresses, update existing addresses, and fill in the missing address information of a company or a person.

## Process Overview { .section}

In this activity, you will do the following:

1.  Define the Google Maps address provider on the [Address Providers](CS_10_30_00.md) \(CS103000\) form.
2.  Check the connection of Acumatica ERP with the address provider.
3.  Select this address provider on the [Site Preferences](SM_20_05_05.md) \(SM200505\) form.
4.  Optional: Select this address provider on the *Portal Preferences \(SP800000\)* form of the Acumatica Self-Service Portal.

## System Preparation { .section}

Before you start setting up integration with an address provider, you need to do the following:

1.  Complete registration in the Google Maps web map service and obtain an API key.

    **Tip:** You get the API key on either of the following websites:

    -   Google Maps: [https://developers.google.com/places/web-service/get-api-key](https://developers.google.com/places/web-service/get-api-key)
    -   Azure Maps: [https://learn.microsoft.com/en-us/azure/azure-maps/how-to-manage-account-keys](https://learn.microsoft.com/en-us/azure/azure-maps/how-to-manage-account-keys)
2.  Launch the Acumatica ERP website, and sign in as an administrator.
3.  On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, enable the following features:
    -   *Customer Management*: Provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, as well as the handling of sales opportunities, contacts, marketing lists, and marketing campaigns.
    -   *Address Lookup Integration*: Provides the address enrichment functionality, which gives users the ability to add new addresses, update existing addresses, and fill in the missing address information on all the forms that have address information.

## Step 1: Creating an Address Provider Based On the Google Maps Plug-In { .section}

To create an address provider based on the Google Maps plug-in, do the following:

**Tip:** You can similarly create an address provider based on the Azure Maps plug-in.

1.  Open the [Address Providers](CS_10_30_00.md) \(CS103000\) form.
2.  On the form toolbar, click **New Record**
3.  In the **Provider ID** box, specify the identifier for the Google Maps address provider, such as *GOOGLEMAPS*.
4.  In the **Description** box, specify the description of the address provider, such as *Google Maps web map service*.
5.  In the **Plug-In** box, select the *Google Maps* plug-in. On the **Plug-In Parameters** tab, the system adds to the table the rows that have the *API KEY* and *COUNTRIES* identifiers.
6.  In the row that has *API KEY* as its identifier, in the **Value** column, enter the API key you have received.
7.  In the row that has *COUNTRIES* as its identifier, notice the default values in the **Value** column, which are the ISO 3166 country codes \(that are supported by Google Maps\) separated by commas. The system will be searching for addresses in these countries.

    **Attention:** For Google Maps, you can specify up to five country codes; for Azure Maps, you can specify one country code.

8.  Optional: Make any needed changes to the selected country codes.
9.  On the form toolbar, click **Test Connection** to check the connection with the address provider. If the connection is successful, the system opens the **Settings** dialog box.
10. In the dialog box, click **OK**.
11. In the Summary area, select the **Active** check box to make the address provider available for use in the system.
12. On the form toolbar, click **Save**.

You have created an address provider based on the Google Maps plug-in.

## Step 2: Selecting Google Maps as the Address Provider to Be Used { .section}

To select the Google Maps web map service you have created as the address provider to be used in the system, you need to select the address provider in the preference settings of the Acumatica ERP website. Do the following:

**Tip:** You can similarly select the Azure Maps web map service as the address provider to be used in the system.

1.  Open the [Site Preferences](SM_20_05_05.md) \(SM200505\) form.
2.  In the **Address Lookup Plug-In** box of the Summary area, select *GOOGLEMAPS*, which is the address provider that you have created in the previous step of this activity.
3.  On the form toolbar, click **Save**.

**Tip:** On the [Site Preferences](SM_20_05_05.md) \(SM200505\) form, you can create, set up, and select an address provider as well. If you had opened this form before defining the address provider, you could have clicked the Edit button right of the **Address Lookup Plug-In** box; the system would have opened the [Address Providers](CS_10_30_00.md) \(CS103000\) form in a pop-up window, in which you could specify the settings that you have specified in Step 1 of this topic.

You have selected the Google Maps web map service as the address provider to be used by the system. Now the address enrichment functionality is available to the users.

## Step 3: Selecting Google Maps as the Address Provider in the Acumatica Self-Service Portal { .section}

To select the Google Maps web map service as the address provider to be used in the Acumatica Self-Service Portal, do the following:

**Tip:** You can similarly select the Azure Maps web map service as the address provider to be used in the Self-Service Portal.

1.  Open the *Portal Preferences \(SP800000\)* form.
2.  In the **Address Lookup Plug-In** box of the Summary area, select *GOOGLE MAPS*, which is the address provider that you have created in Step 1 of this activity.
3.  On the form toolbar, click **Save**.

**Parent topic:**[Integrating Acumatica ERP with Web Map Services](../UserGuide/config_Web_Map_Services_Mapref.md)

