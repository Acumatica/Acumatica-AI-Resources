# To Create a Salesforce Sync Schedule {#_51c65c75-c5b6-460d-aa28-3e877b9b4a2e .task}

To create a schedule that periodically initiates the real-time synchronization of data between Acumatica ERP and Salesforce, do the following:

1.  On the [Salesforce Sync](SF_20_50_30.md) \(SF205030\) form, click **Schedules** &gt; **Add**.

    The [Automation Schedules](SM_20_50_20.md) \(SM205020\) form opens in a pop-up pane.

2.  In the Summary area, specify the following settings:
    -   **Description**: A schedule description \(for instance, `Salesforce Sync every 5 minutes`\)
    -   **Active**: Selected
3.  On the **Details** tab, specify the following settings:
    -   **No Execution Limit**: Selected
    -   **No Expiration Date**: Selected
4.  On the **Schedule** tab, do the following:
    -   In the **Schedule Type** section, select **Daily**.
    -   In the **Schedule Details** section, in the **Next Execution Date** box, select the current date, which is specified by default.
    -   Select **Every** `1` **Day\(s\)**.
    -   In the **Execution Time** section, in the **Every** box, type `00:05`.
5.  On the form toolbar, click **Save &amp; Close**.

**Parent topic:**[Setting Up Synchronization with Salesforce](../UserGuide/SF_00_00_00.md)

