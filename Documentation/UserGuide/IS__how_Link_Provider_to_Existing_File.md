# To Link a File Data Provider to an Existing File {#_a24d49eb-1b53-47d9-b720-7ee5684302c4 .task}

The file that should be used for creating the data provider may be already uploaded to Acumatica ERP. In this case, you perform the steps described below. You use the [Search in Files](SM_20_25_20.md) \(SM202520\) form to get the link of the file you need to link to a file provider. You then use the [Data Providers](SM_20_60_15.md) \(SM206015\) form to create a provider and specify the copied link on that form.

## To Link a File Data Provider to an Existing File { .section}

1.  On [Search in Files](SM_20_25_20.md) \(SM202520\) form, in the **File Name Contains** box, type the name of the file that you need to link to a file provider and press Enter. The table in the lower right pane contains the list of files matching the specified criteria.
2.  For the needed file that appeared in the search results, click **Get File Link**, and copy the internal link to the file from the **Attached File Link** dialog box.
3.  On the **System** tab, click **Integration**. In the navigation pane, navigate to **Manage** &gt; **Data Providers**.
4.  Create a data provider, and specify its name and type in the **Name** and **Data Type** boxes.
5.  On the **Parameters** tab, set the *FileName* parameter value to the copied link, such as `[{up}Data Providers (Export Leads)\Leads.xlsx]`.
6.  On the **Schema** tab in the **Source Objects** pane, click **Fill Schema Objects**. The source objects appear on the tab. Select the **Active** check box for the needed object. In the **Source Fields** pane, click **Fill Schema Fields**. The fields have been retrieved from the file and appear on the tab. Make sure all fields are active.
7.  Save the provider.

You have created a file provider and linked it to a file that was uploaded to the system earlier. This provider can be used for importing or exporting records.

**Parent topic:**[Preparing Data for Import and Export by Using Scenarios](../UserGuide/IS__mng_Data_Providers.md)

