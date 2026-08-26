# Business Events {#_920e13d8-387c-404f-8b33-c200ac66df98 .concept}

To configure the system to monitor a business process, on the [Business Events](../Shared/../UserGuide/SM_30_20_50.md) \(SM302050\) form, you define a *business event* that relates to this business process and that causes the system to perform an action or multiple actions in the system. The business event is a data change or a set of conditions checked for on a schedule. For details on business events, see [Business Events: Data Change Processing](../Shared/../UserGuide/SA_Using_Business_Events_Event_By_Data_Change.md) and [Business Events: Scheduled Event Processing](../Shared/../UserGuide/SA_Using_Business_Events_By_Schedule.md).

You can add the business events to a customization project as *BpEvent* items. A *BpEvent* item contains the data set of a business event. The item includes the following information:

-   The general information about the business event \(such as its name and type\)
-   The trigger conditions of the business event
-   The schedule of the business event \(if the conditions of the business event are checked for on a schedule\)
-   The generic inquiry parameters \(if any parameter values have been specified for the business event\)
-   The email notification templates \(if the business event has email notification templates as subscribers\)
-   The link to the *GenericInquiryScreen* item related to the business event, which the system adds to the customization project as a separate item
-   The links to the *XportScenario* items related to the business event, which the system adds to the customization project as separate items \(if the business event has import scenarios as subscribers\)

You use the [Business Events](../UserGuide/AU_21_00_10.md) \(AU210010\) page of the [Customization Project Editor](../UserGuide/SM_20_45_10.md) to manage *BpEvent* items in the customization project. This page displays the list of the business events that have been added to the customization project.

On the page, you can perform a variety of operations, as described in the following topics:

-   [To Add Business Events to a Project](CG_GL_Items_BusinessEvents_Adding.md)
-   [To Delete Business Events from a Project](CG_GL_Items_BusinessEvents_Deleting.md)
-   [To Update Business Events in a Project](CG_GL_Items_BusinessEvents_Updating.md)
-   [To Navigate to the Business Events Form](CG_GL_BusinessEvents_Redirecting.md)

**Note:** You can customize *BpEvent* items for the Self-Service Portal as well.

-   **[To Add Business Events to a Project](../CustomizationPlatform/CG_GL_Items_BusinessEvents_Adding.md)**  

-   **[To Delete Business Events from a Project](../CustomizationPlatform/CG_GL_Items_BusinessEvents_Deleting.md)**  

-   **[To Update Business Events in a Project](../CustomizationPlatform/CG_GL_Items_BusinessEvents_Updating.md)**  

-   **[To Navigate to the Business Events Form](../CustomizationPlatform/CG_GL_BusinessEvents_Redirecting.md)**  


**Parent topic:**[Managing Items in a Project](../CustomizationPlatform/CG_GL_Items.md)

