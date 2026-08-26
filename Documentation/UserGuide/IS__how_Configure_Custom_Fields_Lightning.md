# To Create Custom Fields in Salesforce Lightning {#_f01a2ed6-a91f-4bd9-94f7-4f4ab3c12c4a .task}

To create in Salesforce the custom fields required for successful data synchronization, do the following:

1.  In **Setup** mode, select **Objects and Fields** &gt; **Object Manager** &gt; **Leads**.
2.  In the **Fields &amp; Relationships** area, click **New**.
3.  On the **New Custom Field** page, specify the following settings:
    -   **Data Type**: *Text*
    -   **Field Label**: `Acumatica_NoteID`
    -   **Length**: `36`
    -   **Add Field**: Cleared \(for all check boxes in the column\)
4.  Click **Save**.
5.  Repeat Steps 2 through 4 on the following pages:
    -   **Objects and Fields** &gt; **Object Manager** &gt; **Accounts**
    -   **Objects and Fields** &gt; **Object Manager** &gt; **Contacts**
    -   **Objects and Fields** &gt; **Object Manager** &gt; **Opportunities**
    -   **Objects and Fields** &gt; **Object Manager** &gt; **Cases**
    -   **Objects and Fields** &gt; **Object Manager** &gt; **Products**

**Parent topic:**[Setting Up Synchronization with Salesforce](../UserGuide/SF_00_00_00.md)

