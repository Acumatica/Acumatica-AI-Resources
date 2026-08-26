# Advanced Planning and Scheduling: Production Schedule Board {#_32f8994d-26b2-481d-ba67-124174cb05ea .concept}

You can view the production schedule in a graphical format by using the [Production Schedule Board](AM_21_55_55.md) \(AM215555\) form. On this form, a Gantt chart illustrates the schedule for the selected production orders over time.

This topic describes the graphical parts of the [Production Schedule Board](AM_21_55_55.md) form.

## Parts of the Schedule Board { .section}

The schedule board consists of the following parts:

-   The left pane, which has the **Unscheduled** and **Scheduled** tabs that list production orders that require scheduling and scheduled production orders, respectively.
-   The right pane, which contains the Gantt chart with details about the operations of each production order, and the **Work Centers** and **Machines** charts with lists of all work centers and machines, showing histograms with details about the available and scheduled capacity for each work center and machine.

## Capabilities of the Schedule Board { .section}

By using the [Production Schedule Board](AM_21_55_55.md) \(AM215555\) form, you can:

-   **See the full timeline at a glance**: A single graphical bar represents a top-level production order and all its dependent subassemblies. Expand or collapse the view to show or hide child orders.
-   **Quickly spot delays and progress**: Visual indicators show you whether production orders are late, early, or on time.
-   **Understand dependencies instantly**: Arrows connect related operations, making it easier to spot relationships and manage scheduling exceptions.
-   **Streamline data visibility**: Filter production orders by key attributes, such as schedule status, lateness, or customer.
-   **Find what matters most**: Use a secondary sort option to organize orders by completion dates, keeping your priorities in view.
-   **Track all orders**: The board displays both finitely and infinitely scheduled orders.
-   **Stay proactive**: Gantt chart icons reflect the timing status of each order relative to its linked demand’s due date.
-   **Assess capacity at the operation level**: Use the operation view in the lower panel of the board to review the work centers and machines involved in production. This view helps you assess availability and scheduled capacity across all resources, making it easier for you to effectively adjust workloads.

## Available Actions { .section}

Take immediate action directly from the [Production Schedule Board](AM_21_55_55.md) \(AM215555\) form—right-click any production order and select the needed command to schedule, reschedule, or firm the order. You can also click **View** to open the **Production Order** panel, where you can:

-   See all order details at a glance
-   Quickly update the constraint date or dispatch priority
-   Schedule or firm the order without leaving the panel

## Gantt Chart for Production Orders { .section}

The Gantt chart uses consistent colors and icons to reflect the current status, scheduling state, and priority of each production order. Use the visual guide below to quickly interpret these indicators and identify orders that may require your attention.

|Indicator|Description|Meaning|
|---------|-----------|-------|
|**Production order statuses**|
|![](../ReleaseNotes/Images/RN_2025_R2_MFG_Production_Scheduling_Views_Yellow.png)|Yellow bar|The production order is *On Hold*.|
|![](../ReleaseNotes/Images/RN_2025_R2_MFG_Production_Scheduling_Views_Purple.png)|Purple bar|The production order is *Planned*.|
|![](../ReleaseNotes/Images/RN_2025_R2_MFG_Production_Scheduling_Views_Blue.png)|Blue bar|The production order is *Released*.|
|![](../ReleaseNotes/Images/RN_2025_R2_MFG_Production_Scheduling_Views_Green.png)|Green bar|The production order is *In Progress*.|
|![](../ReleaseNotes/Images/RN_2025_R2_MFG_Production_Scheduling_Views_Grey.png)|Gray bar|The production order is *Completed*.|
|![](../ReleaseNotes/Images/RN_2025_R2_MFG_Production_Scheduling_Views_Zebra.png)|Diagonal stripes overlaying the status color bar|The order is unscheduled.|
|**Standard icons**|
|![](../ReleaseNotes/Images/RN_2025_R2_MFG_Production_Scheduling_Views_Info.png)|Green information icon|The order has a future due date and is early.|
|![](../ReleaseNotes/Images/RN_2025_R2_MFG_Production_Scheduling_Views_Warning.png)|Yellow warning icon|The order is due today.|
|![](../ReleaseNotes/Images/RN_2025_R2_MFG_Production_Scheduling_Views_Error.png)|Red error icon|The order has a past due date and is delayed.|
|![](../ReleaseNotes/Images/RN_2025_R2_MFG_Production_Scheduling_Views_Lock.png)|Lock icon|The order has been firmed.|
|![](../ReleaseNotes/Images/RN_2025_R2_MFG_Production_Scheduling_Views_Lightning.png)|Lightning icon|Material is insufficient to complete the order.|
|**Priority icons**|
|![](../ReleaseNotes/Images/RN_2025_R2_MFG_Production_Scheduling_Views_Up_Arrow.png)|Up arrow|The dispatch priority is high.|
|![](../ReleaseNotes/Images/RN_2025_R2_MFG_Production_Scheduling_Views_Down_Arrow.png)|Down arrow|The dispatch priority is low.|
|N/A|No arrow|The dispatch priority is medium.|

**Parent topic:**[Advanced Planning and Scheduling](../UserGuide/MFG_APS_Mapref.md)

