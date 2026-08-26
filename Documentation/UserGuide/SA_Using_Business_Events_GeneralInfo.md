# Business Events: General Information {#_3a9bf075-594c-41c5-90e4-aff1c5db6510 .concept}

In Acumatica ERP, various business processes are executed, which may require the monitoring of particular activities and conditions in the system. To eliminate the need for a user to monitor these business processes, you can configure the system to monitor the company data and to perform an action \(such as sending an email notification or performing the instructions defined by an import scenario\) or multiple actions in the system.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create business events to monitor data changes of a selected set of database fields and notify the involved parties about the changes
-   Create business events to monitor events on a particular data entry form and notify the involved parties about the events
-   Configure the system to monitor on a schedule whether a set of conditions has been met and perform the specified actions
-   Configure the system to send notifications for the list of all, selected, or filtered records of an inquiry

## Applicable Scenarios { .section}

You use business events in the following cases:

-   You need to monitor specific data being changed in the system and make the system perform some actions based on the change. For example, in contract management, you can configure the system to send an email notification to the customer when the customer's contract is activated.
-   You need to monitor the meeting of particular conditions, which the system checks for at the schedule you specify, and make the system perform some actions in this case. For example, in the management of opportunities, you can configure the system to send an email to the owner of an opportunity when it is one month from its estimated close date and the opportunity hasn't been updated for more than seven days; the system performs this monitoring once a day.
-   You need to help your employees and selected external contacts to track key developments that occur within the organization. Some examples include the following:
    -   A sales manager may want the system to notify a customer contact when a sales order has been shipped to the customer.
    -   Your company might want to tell customers about changes in their blanket purchase orders.
    -   A manager may want to know when a specific purchase order has received all the required approvals.
    -   A credit manager may want to know when a sales order is created for a particular customer that is approaching its credit limit.
    -   A customer service manager may want to be informed when a new employee is assigned a case of a specific type, to give the employee assistance with this type of case.

## Types of Business Events { .section}

To configure the system to monitor a business process, on the [Business Events](SM_30_20_50.md) \(SM302050\) form, you define a *business event* that relates to this business process and that causes the system to perform an action or multiple actions in the system.

The business event can be one of the following:

-   A data change: You create a business event of the *Trigger by Record Change* type.
-   An occurrence of a particular event \(fulfillment of a set of conditions\), which the system checks for at the schedule: You create a business event of the *Trigger by Schedule* type.
-   An event triggered by a user: You create a business event of the *Trigger by Action* type.

Then for each business event, you specify a source for monitoring, conditions to trigger actions, and actions \(event subscribers\) to be performed when conditions are met. If you want the system to monitor a business process at scheduled days and times, you also specify a schedule for the event.

## Source for Monitoring { .section}

The system needs a source to monitor data changes or the occurrence of particular events. The source defines a set of database fields whose values are to be monitored. The system triggers the event processing if a value changes or a set of values meet the specified conditions.

In Acumatica ERP, you can use the following sources to retrieve the data you want to monitor:

-   Generic inquiry: You can create a generic inquiry to retrieve data from the database fields that you want the system to monitor. Also, you can instead use an existing generic inquiry if one exists that retrieves the needed data. For details, see [Business Events: Generic Inquiry as Source](SA_Using_Business_Events_GI_Source_Concept.md).

    **Attention:** You can use a generic inquiry as a data source for all available types of business events and subscribers.

-   Data entry form: You can use a data entry form—for example, [Invoices and Memos](AR_30_10_00.md) \(AR301000\), [Customers](AR_30_30_00.md) \(AR303000\), or [Sales Orders](SO_30_10_00.md) \(SO301000\)—as a source of the data that you need to monitor. The created business events act as notifications for the events on the forms. For details, see [Business Events: Use of a Data Entry Form as a Source](SA_Using_Business_Events_Data_Entry_Source_Concept.md).

    **Attention:**

    You can use a data entry form as a source for business events of the *Trigger by Record Change* and *Trigger by Action* type only. You cannot use an import scenario as a subscriber if this type of source is selected.


To start the creation of a business event, in the **Screen Name** box on the [Business Events](SM_30_20_50.md) \(SM302050\) form, you specify a generic inquiry or a data entry form that defines the data for the system to monitor. For a generic inquiry, you can also select an advanced filter \(if one has been defined for the inquiry\). For details on advanced filters, see [Managing Advanced Filters](GI_Reusable_Filters_Mapref.md).

**Tip:** If a business event needs to be triggered by the changes made in Acumatica Self-Service Portal, the related generic inquiry must be added to the Self-Service Portal site map. If the related generic inquiry is used as an entry point, then the entry point form should be added to the Self-Service Portal site map. In Acumatica Self-Service Portal, forms are added to the site map on the [Portal Map](SM_20_05_21.md#) \(SM200521\) form.

## Conditions to Trigger Actions { .section}

After you have specified a data source for the event, on the **Trigger Conditions** tab of the [Business Events](SM_30_20_50.md) \(SM302050\) form, you configure the conditions when the system should perform actions related to the business process.

**Tip:** You do not need to configure the conditions for the business events of the *Trigger by Action* type. The system starts processing configured subscribers when a user initiates the action. For details, see [Business Events: User-Triggered Processing of Subscribers](SA_Using_Business_Events_Action_Processing_Concept.md).

You can configure the conditions that are applied to any of the following:

-   The results of the monitoring before the data change \(the old field values\).
-   The results of the monitoring after the data has been changed \(the new field values\).
-   The comparison of these results. That is, the condition can check whether a field value has been changed, or a record has been added, removed, or updated.

The action is performed if the values of monitored fields have been changed according to the specified conditions.

In the **Raise Event** box of the Summary area of the [Business Events](SM_30_20_50.md) form, you can also select how the system should generate the business event: for each record that satisfies the trigger conditions, or for the whole set of records that satisfy the trigger conditions.

You can also use formulas when you configure conditions on the **Trigger Conditions** tab. This can be useful if you want the system to compare the values of two boxes or to check the time value in a box to determine whether a business event should be triggered. For example, you might want to notify the owner of a case with the *High* priority that the last activity related to this case took place more than eight hours ago. You specify formulas by using the Formula Editor in the **Value 1**, **Value 2**, and **Field Name** columns on the this tab.

## Actions to Perform on Event Occurrence \(Event Subscribers\) {#_1c954a86-79a2-48b0-821d-a52b1e41b6d8 .section}

To define the actions that the system should perform in the system once the business event has occurred, you specify the *subscribers* of this business event on the **Subscribers** tab of the [Business Events](SM_30_20_50.md) \(SM302050\) form. A subscriber of a business event is an entity that the system processes when the business event occurs. The following types of subscribers are supported:

-   *Import Scenario*: For a subscriber of this type, the system executes the sequence of instructions defined by the import scenario whose name you specify in the **Subscriber ID** column of the row of the subscriber.

    **Attention:** The *Import Scenario* type is not available for a business event if a data entry form is selected as a source for monitoring.

-   *Action Execution*: The system executes an action defined by the subscriber of this type whose name you specify in the **Subscriber ID** column of the row of the subscriber.
-   *Task*: The system creates the needed tasks for a subscriber of this type based on the settings of the task template whose ID you specify in the **Subscriber ID** column of the row of the subscriber.
-   *Email Notification*: The system sends the needed emails for a subscriber of this type based on the settings of the notification template whose ID you specify in the **Subscriber ID** column of the row of the subscriber.
-   *Mobile Push Notifications*: For a subscriber of this type, the system sends the needed push notifications based on the settings of the notification template whose ID you specify in the **Subscriber ID** column of the row of the subscriber.
-   *Mobile SMS Notifications*: For this subscriber, the system sends the SMS notifications based on the settings of the notification template whose ID you specify in the **Subscriber ID** column of the row of the subscriber.
-   *Teams Notification*: For this subscriber, the system sends a notification from Acumatica ERP to a Teams channel.

    **Attention:** The *Teams Notification* type is available only if the *Teams Integration* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.


You can configure a subscriber on the appropriate form before you create a business event and then specify the subscriber on the **Subscribers** tab; if needed, you can select multiple subscribers \(one in each row\).

To create a new subscriber, you click **Create Subscriber** on the table toolbar and click the menu command corresponding to the type of the subscriber, which causes the system to open the corresponding Acumatica ERP form \(for the creation of an email or a push or SMS notification to a mobile device or task or action execution\) or the dialog box and form \(for an import scenario script\) to create the subscriber.

If you have specified multiple subscribers on the **Subscribers** tab for the business event, you can select the **Stop on Error** check box in the row of a subscriber to direct the system to process subsequent subscribers in the list only if no error has occurred while the system was processing the current subscriber.

For more details, see [Business Events: Subscribers](SA_Using_Business_Events_Subscribers_Concept.md).

## Schedules to Monitor Business Process { .section}

To dictate when the system should check whether the data meets the specified conditions, you configure a schedule or schedules. You can monitor a business process on schedule only if a generic inquiry is selected as the data source in the **Screen ID** box of the [Business Events](SM_30_20_50.md) \(SM302050\) form.

On the **Schedules** tab, you select a schedule that has been configured; if needed, you can select multiple schedules \(one in each row\).

If the needed schedule has not been configured beforehand, you click **Create Schedule**, which causes the system to open the [Automation Schedules](SM_20_50_20.md) \(SM205020\) form. On this form, you configure the schedule by which the system should check the conditions on the data for monitoring.

**Tip:** You can review the list of business events that trigger a schedule on the **Events** tab of the [Automation Schedules](SM_20_50_20.md) \(SM205020\) form. You may want to deactivate or delete schedules that are no longer triggered by an active business event.

For details on configuring schedules, see [Scheduling Automated Processing](SA_Scheduling_Automated_Processing_Mapref.md).

## Data Field Tracking {#section_ncz_srk_qsb .section}

For the business events with the *Trigger by Record Change* type, the system monitors data changes made to the data included in the generic inquiry form or provided by a data entry form. If a value for a data field has been changed, the system stores new and previous value of a data field.

You can review and modify the list of tracked fields on the **Fields to Track** tab of the [Business Events](SM_30_20_50.md) form. The system monitors the changes made only to those fields that are listed on the **Fields to Track** tab of the [Business Events](SM_30_20_50.md) form.

To make the system track all the data fields, you select the **Track All Fields** check box in the Parameters area of the tab, which is cleared by default. In this case, the system displays the warning that this action may cause queue overflow and reduce performance.

By default, the system tracks the following fields:

-   Key fields
-   All the data fields used to configure conditions on the **Trigger Conditions** tab.
-   Fields used in the `where` conditions of generic inquiries or within the primary views of data entry screens

**Attention:** On the **Fields to Track** tab, the system does not add the fields that you have used in the formulas on the **Trigger Conditions** tab. If these fields should be tracked, you need add them to this tab manually.

You can add other data fields to the table, to make the system track these fields. For example, if you plan to use previous value of a data field for configuring a subscriber, you should add this field to the table. Otherwise, the system will not store and return a previous value for the field. If a generic inquiry is specified in the **Screen Name** box of the form, you can add only data fields that were added to the **Results Grid** tab of the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form.

## History of Business Events { .section}

You use the [Business Event History](SM_50_20_30.md) \(SM502030\) form to review the history of both the occurrence of business events and the processing of each event. On this form, you can also make the system resume the processing of failed events and clear the history of processing.

Alternatively, for the business events triggered by action, you can view processing details using the **Business Events** dialog box that can be accessed from the **Settings** menu on the form title bar. If at least one business event has been configured for the form, you can view its processing details on the **History** tab for a document currently selected on the form.

**Parent topic:**[Using Business Events](../UserGuide/SA_Using_Business_Events_Mapref.md)

