# To Create a Connected App in Salesforce {#_13f38f30-6625-4774-b4cd-884d4c4a3641 .task}

To create a connected app in Salesforce, which will enable the integration of Acumatica ERP with Salesforce through the Salesforce API, do the following:

1.  In **Setup** mode, select **Build** &gt; **Create** &gt; **Apps**.
2.  In the **Apps** section, click **New**.
3.  On the **New Connected App** page, specify the following settings:
    -   **Connected App Name**: `Acumatica ERP Salesforce Sync`
    -   **API Name**: `Acumatica_ERP_Salesforce_Sync`
    -   **Contact Email**: The salesforce administrator's email address
    -   **Enable OAuth Setting**: Selected
    -   **Callback URL**: The URL of your Acumatica ERP instance—for example, *http://app.site.net/instance\_name/*
    -   **Available OAuth Scopes**: *Manage user data via APIs \(api\)*—add this option to the **Selected OAuth Scopes** list
4.  Click **Save**, and then click **Continue**.
5.  On the **Acumatica ERP Salesforce Sync** page, find and copy to the clipboard the following settings, which you will need when you configure the data provider in Acumatica ERP \(see [To Configure the Salesforce Data Provider](IS__how_Configure_SF_Data_Provider.md)\):
    -   **Consumer Key**
    -   **Consumer Secret**

**Parent topic:**[Setting Up Synchronization with Salesforce](../UserGuide/SF_00_00_00.md)

