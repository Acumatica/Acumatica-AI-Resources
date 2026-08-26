# To Create Custom Fields in Salesforce {#_eac9ba8c-3e6e-4640-b8ef-60b81e05815d .task}

To create in Salesforce the custom fields required for successful data synchronization, do the following:

1.  In **Setup** mode, select **Build** &gt; **Customize** &gt; **Leads** &gt; **Fields**.
2.  In the **Custom Fields &amp; Relationships** area, click **New**.
3.  On the **New Custom Field** page, specify the following settings:
    -   **Data Type**: *Text*
    -   **Field Label**: `Acumatica_NoteID`
    -   **Length**: `36`
    -   **Add Field**: Cleared \(for all check boxes in the column\)
4.  Click **Save**.
5.  Repeat Steps 2 through 4 on the following pages:
    -   **Build** &gt; **Customize** &gt; **Accounts** &gt; **Fields**
    -   **Build** &gt; **Customize** &gt; **Contacts** &gt; **Fields**
    -   **Build** &gt; **Customize** &gt; **Opportunities** &gt; **Fields**
    -   **Build** &gt; **Customize** &gt; **Cases** &gt; **Fields**
    -   **Build** &gt; **Customize** &gt; **Products** &gt; **Fields**

**Parent topic:**[Setting Up Synchronization with Salesforce](../UserGuide/SF_00_00_00.md)

