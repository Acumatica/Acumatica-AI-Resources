# To Configure the Salesforce Data Provider {#_55dfcc00-529f-430f-8cf3-62490b9347eb .task}

To configure the *Salesforce Sync* data provider, which is predefined in the system, perform the following steps on the [Data Providers](SM_20_60_15.md) \(SM206015\) form:

1.  In the **Name** box, select *Salesforce Sync*.
2.  Select the **Active** check box.
3.  On the **Parameters** tab, specify the following settings:
    -   **TokenRequestUrl**: `https://login.salesforce.com/services/oauth2/token` \(or `https://test.salesforce.com/services/oauth2/token` for Salesforce Sandbox\)

        **Attention:** If you click **Reload Parameters** on the table toolbar, the system inserts `https://test.salesforce.com/services/oauth2/token` in the **TokenRequestUrl** box by default.

    -   **ConsumerKey**: The consumer key previously copied from Salesforce \(see [To Create a Connected App in Salesforce](IS__how_Configure_App_Salesforce.md)\)
    -   **ConsumerSecret**: The consumer secret previously copied from Salesforce \(see [To Create a Connected App in Salesforce](IS__how_Configure_App_Salesforce.md)\)
    -   **Login**: The login of the Salesforce user account under which data will be synchronized
    -   **Password**: The password of the Salesforce user account under which data will be synchronized
    -   **SecurityToken**: The security token obtained for the Salesforce user account under which data will be synchronized \(see [To Obtain a Salesforce Security Token](IS__how_Obtain_Security_Token.md)\)
    -   **SyncID**: `Acumatica_NoteID__c`, which is a required field for successful data synchronization \(see [To Create Custom Fields in Salesforce](IS__how_Configure_Custom_Fields.md)\)
    -   **MaxLongOperations**: The maximum number of event processing threads that can be executed concurrently during real-time synchronization of data.
4.  Click **Save**.

**Parent topic:**[Setting Up Synchronization with Salesforce](../UserGuide/SF_00_00_00.md)

