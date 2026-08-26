# System Health: System Event Log {#_d961c37f-0ec3-43f1-9773-9da3f975cdc4 .concept}

By using the elements in the Selection area of the **System Events** tab of the [System Monitor](SM_20_15_30.md) \(SM201530\) form, you can narrow the list of events by the sources of the event, the severity level of the event, and the date range.

To view the details of an event, you select the event in the table and the system displays these details in the bottom pane of the form.

## Event Sources { .section}

On the **System Events** tab of the [System Monitor](SM_20_15_30.md) \(SM201530\) form, the system logs events triggered by the following sources \(with the source of each event noted in the **Source** column\):

-   *Active Directory*
-   *Business Events*
-   *Commerce*
-   *Customization*
-   *Data Consistency*
-   *Email*
-   *License*
-   *Push Notifications*
-   *Resource Governor*
-   *Scheduler*
-   *System*

By using the **Source** multiselect drop-down box in the Selection area of the tab, you can narrow the list of events by selecting any number of sources. By default, the *All* option is selected.

## Severity Levels of Events { .section}

On the **System Events** tab of the [System Monitor](SM_20_15_30.md) \(SM201530\) form, the **Level** column shows the severity level of each listed event, which is *Information*, *Warning*, *Error*, or *Fatal*. By selecting an option in the **Level** box of the Selection area, you can narrow the list of events by severity level. When you select any severity level, the system lists only events with the selected level and higher \(that is, more severe\) severity levels. The box contains the following options, which are listed from the least to most severe:

-   *Information* \(default\): Events of all levels are shown in the table; this is the least severe level.
-   *Warning*: The table displays events with the *Warning* severity and with the higher levels, which are *Error* and *Fatal*.
-   *Error*: Events of only the *Error* and *Fatal* levels are listed in the table.
-   *Fatal*: The table shows only events with the *Fatal* level.

## Logged System Events { .section}

In the table below, you can find a list of the events that are logged by the system.

|Source|Severity Level|Event|
|------|--------------|-----|
|*Active Directory*|*Error*|*Failed to authorize Active Directory integration*|
|*Business Events*|*Warning*|*Business event queue dispatcher has been restarted*|
|*Processing of a business event took longer than expected*|
|*Error*|*Business event queue dispatcher failed*|
|*Business event queue has issues*|
|*Processing of a business event has failed*|
|*Commerce*|*Warning*|*Commerce queue dispatcher has been restarted*|
|*Error*|*Commerce queue dispatcher failed*|
|*Customization*|*Information*|*A customization project has been published*|
|*A customization project has been published \(except plug-ins\)*|
|*A customization project has been unpublished*|
|*Execution of customization project plug-ins has been completed*|
|*Publishing via the customization API has started*|
|*Validation of a customization project has been completed*|
|*Error*|*Publishing of a customization project failed with an error*|
|*Publishing via the customization API has started*|
|*Validation failed*|
|*Data Consistency*|*Error*|*A data corruption state has been detected*|
|*Email*|*Information*|*An email has been successfully received*|
|*Error*|*An error occurred during the receiving of email*|
|*License*|*Information*|*License has been activated*|
|*License has been deleted*|
|*Warning*|*Sign-In limit exceeded*|
|*An API request has been throttled*|
|*Push Notifications*|*Warning*|*Push notification queue dispatcher has been restarted*|
|*Processing of a push notification took longer than expected*|
|*Error*|*Push notification queue dispatcher failed*|
|*Push notification queue has issues*|
|*Sending of push notification has failed*|
|*Processing of a push notification has failed*|
|*Resource Governor*|*Warning*|*Memory working set exceeded threshold*|
|*Error*|*A request has been terminated*|
|*An API request has been terminated*|
|*Scheduler*|*Information*|*Automation Scheduler has been initialized*|
|*Warning*|*Automation Scheduler has been aborted*|
|*At least one record has not been processed successfully*|
|*Automation Schedule scenario has not been performed due to the database lockout*|
|*Error*|*Automation Scheduler has failed with an exception*|
|*System*|*Information*|*The site has started*|
|*The site is shutting down*|
|*Site upgrade has started*|
|*Site upgrade has been applied successfully*|
|*Database upgrade has started*|
|*Database upgrade has been applied successfully*|
|*New tenant has been created*|
|*A snapshot has been successfully restored*|
|*A snapshot has been created*|
|*A tenant copy has been created*|
|*A time-consuming task has finished*|
|*Warning*|*Database upgrade completed with errors*|
|*A time-consuming task has started*|
|*Error*|*Site upgrade failed with exception*|
|*Database upgrade failed with exception*|
|*Snapshot restoration failed*|
|*Failed to create a snapshot*|
|*Creating of a tenant copy has failed*|

## Storage of Event Logs { .section}

Logged event details are stored in the database. By default, all events older than 30 days are removed from the database. The built-in removal process launches automatically every day and when a website is restarted.

You can change the default frequency of event log deletion by modifying the value of the SystemEventDBSink:CleansingPeriod key in the web.config file. The value should be set in the TimeSpan format; for example, *0.1:0:0* represents the database being cleaned every hour.

Also, if there are performance issues, you can turn off the logging of the events by changing the value for the SystemEventsDbSink:Enabled key to false in the web.config file.

**Parent topic:**[Monitoring System Health](../UserGuide/SA_Monitoring_System_Health_Mapref.md)

