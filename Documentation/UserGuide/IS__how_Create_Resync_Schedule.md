# To Create a Schedule for Full Data Resync {#_c8a4d858-df21-4b2c-aeec-8ef20216e285 .task}

To create a periodic schedule that initiates the full resynchronization of data between Acumatica ERP and Salesforce, do the following:

1.  On the form toolbar of the [Salesforce Data Resync](SF_20_50_35.md) \(SF205035\) form, click **Schedules** &gt; **Add**.

    The [Automation Schedules](SM_20_50_20.md) \(SM205020\) form opens in a pop-up pane.

2.  In the Summary area, specify the following settings:
    -   **Description**: The schedule description \(for instance, `Daily Full Data Resync`\)
    -   **Active**: Selected
3.  On the **Details** tab, specify the following settings:
    -   **No Execution Limit**: Selected
    -   **No Expiration Date**: Selected
4.  On the **Schedule** tab, do the following:
    -   In the **Schedule Type** section, select **Daily**.
    -   In the **Schedule Details** section, in the **Next Execution Date** box, select the current date, which is specified by default.
    -   Select **Every** `1` **Day\(s\)**.
5.  On the **Filter Values** tab, add a row with the following settings specified:
    -   **Field Name**: *Sync to Start*
    -   **Value**: *Full Data Resync*
    -   **Ignore Error**: Selected
6.  On the form toolbar, click **Save &amp; Close**.

**Parent topic:**[Setting Up Synchronization with Salesforce](../UserGuide/SF_00_00_00.md)

