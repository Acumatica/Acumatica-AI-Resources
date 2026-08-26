# Business Events: Subscribers {#_a0558ab9-930d-4a92-b40d-d8a428129d80 .concept}

You configure the system to perform some actions once a business event has occurred. In the system, these actions are defined as *subscribers*. The system can notify interested parties about the occurrence of the event by sending an email, push, or SMS notification. Also, the system can execute an import scenario or create and assign multiple tasks.

## Specification of a Subscriber {#section_ph5_rly_zrb .section}

To define the actions that the system should perform in the system once the business event has occurred, you specify the subscriber or subscribers of this business event on the **Subscribers** tab of the [Business Events](SM_30_20_50.md) \(SM302050\) form. If needed, you can specify multiple subscribers, with one in each row. You can add a subscriber that has already been created on the appropriate form or create a new subscriber.

The easiest way to create a new subscriber for a business event is to do so while you are creating the event on the [Business Events](SM_30_20_50.md) \(SM302050\) form: On the table toolbar of the **Subscribers** tab, you click **Create Subscriber** and click the menu command corresponding to the type of the subscriber. The system opens the corresponding Acumatica ERP form \(for the creation of an email or a push or SMS notification to a mobile device or a task\) or the dialog box and form \(for an import scenario script\) so that you can create the subscriber.

Also, you can open the appropriate Acumatica ERP form and configure a subscriber of the needed type by using the form. After you have saved the configured subscriber, you can link it to the business event on the **Send by Events** tab of the form. You add a row to the table and select the needed business event in the **Event ID** column. You can also create the needed business event by clicking **Create Business Event** on the table toolbar of the tab. Alternatively, you can return to the [Business Events](SM_30_20_50.md) form and add the configured subscriber on the **Subscribers** tab for the event.

**Attention:** You cannot link an import scenario to a business event on the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form because it does not have the **Send by Events** tab. Use the **Subscribers** tab on the [Business Events](SM_30_20_50.md) form instead.

If you plan to use a data entry form as a source for a business event, you can create a notification template \(for email, push, or SMS notifications\) directly from the entry form. You can link these notification templates as subscribers for business events created for the form. For details, see [Business Events: Use of a Data Entry Form as a Source](SA_Using_Business_Events_Data_Entry_Source_Concept.md).

## Configuration of an Import Scenario as a Subscriber {#section_a1z_wqx_bwb .section}

You configure a subscriber of the *Import Scenario* type on the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form. We recommend that you open this form to create the subscriber from the **Subscribers** tab of the [Business Events](SM_30_20_50.md) \(SM302050\) form: You click **Create Subscriber** &gt; **Import Scenario** on the table toolbar and specify the name of the scenario in the **Create Import Scenario Subscriber** dialog box, which opens.

When you enter the name and click **OK** to close the dialog box, the system automatically creates on the [Data Providers](SM_20_60_15.md) \(SM206015\) form a data provider of the *Business Process Provider* type for the import scenario \(if the provider has not been created earlier for the generic inquiry of the business event\). For this provider, the *ScreenID* parameter on the **Parameters** tab is set to the generic inquiry of the business event. The provider has two schema objects on the **Schema** tab: *Results* and *PreviousResults*. Each object includes all fields of the results of the generic inquiry. The *Results* object returns the values of these fields when the business event occurs. The *PreviousResults* object returns the values of these fields before the business event has occurred.

When the data provider has been created, the system opens the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form with the import scenario name and the data provider specified. On the form, you complete creation of the import scenario by specifying the following:

-   In the **Screen Name** box, the target Acumatica ERP form \(which can be any Acumatica ERP form\) on which the system should execute the sequence of instructions when the business event occurs.
-   In the **Provider Object** box, the *Results* provider object or the *PreviousResults* provider object, depending on whether you want the system to extract the values before the business event has occurred or the values when the business event has occurred. The system uses the specified results of the generic inquiry to perform the sequence of instructions on the target form.
-   On the **Mapping** tab, the mapping of the import scenario—that is, the sequence of instructions that the system should perform on the target form when the business event occurs. When you are mapping fields, you should first map the key fields: the fields that the system uses to distinguish records that belong to different documents. After you have mapped the key fields, you should map other fields in the order in which you would fill them in on the form. At the end of the mapping of the scenario that creates or updates data in the system, to save the record to the database, you have to insert a row with the *&lt;Action: Save&gt;* action. For details about import scenario mapping, see [Configuring Scenario Mapping](IS__mng_Scenario_Mapping.md).

You can also specify other parameters of the import scenario and source and target restrictions. For more information about import scenario configuration, see [Configuring Import Scenarios](IS__mng_Configuring_Import_Scenarios.md).

Alternatively, you can create an import scenario on the [Import Scenarios](SM_20_60_25.md) form and then add it as row in the table on the **Subscribers** tab of the [Business Events](SM_30_20_50.md) form.

**Tip:** You can add to a business event only an import scenario that has a data provider of the *Business Process Provider* type that uses the same generic inquiry as the business event uses.

## Configuration of an Action Execution as a Subscriber {#section_hqv_vwp_pwb .section}

You configure a subscriber of the *Action Execution* type on the [Action Executions](SM_20_40_07.md) \(SM204007\) form. We recommend that you open this form to create the subscriber from the **Subscribers** tab of the [Business Events](SM_30_20_50.md) \(SM302050\) form: You click **Create Subscriber** &gt; **Action Execution** on the table toolbar, and the system opens the [Action Executions](SM_20_40_07.md) \(SM204007\) form in a pop-up window with the data source \(inquiry or data entry form\) specified for the business event populated in the **Event Screen ID** box of the form.

First, you specify the data entry form in the **Action Screen ID** box. Then in the **Action Name** box, the you select the action that the system should execute when the business event is triggered. All actions defined in the code or in the workflow for the primary DAC of the selected form are available for selection in this box.

On the **Keys** tab of the form, the system displays the list of key fields that are required to identify a record for which the system will execute the action on the selected data entry form. The system will execute the action for the record. The values for these keys will be provided by the data source \(inquiry or data entry form\) specified for the business event, which is shown in the **Event Screen ID** box of the form.

If a selected action requires some additional data for the execution, on the **Field Values** tab, you specify the key fields and their values that are required for the action execution.

When all the needed settings are specified, you save the configured action execution and close the pop-up window. The system displays the configured subscriber on the **Subscribers** tab of the [Business Events](SM_30_20_50.md) form for the business event.

## Processing of a Subscriber {#section_ncg_nhy_zrb .section}

When the business event occurs, the system processes the subscribers specified on the **Subscribers** tab of the [Business Events](SM_30_20_50.md) \(SM302050\) form one by one. The system extracts the values of the fields used as placeholders and uses these values to compose the notification, task, import scenario, or action execution. Then the system processes the created record based on the subscriber type: sends the notifications to the recipients, assigns tasks to their owners, or executes a scenario or action.

If the processing of a subscriber has been successful, the system adds a record on the [Business Event History](SM_50_20_30.md) \(SM502030\) form. If any error has occurred during the processing, the system displays the error on this form for the business event.

If you have specified multiple subscribers on the **Subscribers** tab of the [Business Events](SM_30_20_50.md) form for the business event, you can select the **Stop on Error** check box in the row of each subscriber to direct the system to process subsequent subscribers in the list only if no error has occurred while the system was processing the current subscriber.

## Use of Data Fields as Placeholders {#section_cht_3xy_bwb .section}

When you configure a notification template \(for email, push, or SMS notifications\) or task template, you specify the data source \(a form or a generic inquiry\) that the system should use as a source of the data fields. You can use these data fields as placeholders to personalize the content of a notification or a task. Also, placeholders can be used to specify multiple recipients or task owners. When the business event occurs, if values for the used data fields are available in the record created with a data entry form or in the results of the generic inquiry, the system retrieves these values and uses them to compose the notification, task, or import scenario.

For example, for notifications and tasks that you configure by using the [Email Templates](SM_20_40_03.md) \(SM204003\), [Mobile Notifications](SM_20_40_04.md) \(SM204004\), and [Task Templates](SM_20_40_05.md) \(SM204005\) forms, you can use placeholders as follows:

-   To specify the recipients of a notification \(in the **To**, **CC**, and **BCC** boxes\) or the task owners, you use the data fields \(as the placeholders, separated with semicolons\) that hold users’ email addresses or phone numbers and whose values are retrieved when the business event occurs. Also, if some recipients should always receive a particular notification, you can specify their email addresses or phone numbers explicitly. If you need to specify multiple recipients, these values should be separated with semicolons.

    For example, if you want to send a text about a shipment confirmation to a customer, you can use a placeholder for the identifier of the customer's phone number, such as `((SOShipment_customerID!DefContactID!Phone1))`. If you need to monitor cases and send push notifications to assignees, you can use a placeholder for the identifier of the assignee, such as `((CRCase_ownerID!PKID))`.

-   To specify the subject of a notification or a task summary, you can use any data fields whose values are retrieved when the business event occurs. For example, the subject could be `Opportunity ((CROpportunity_opportunityID)) has been assigned to you`.
-   In the body of a notification or a task, you can click **Insert Data Field** on the formatting toolbar to insert as a placeholder any data field whose value is retrieved when the business event occurs. Also, you can click **Insert Previous Data Field** to insert as a placeholder any data field whose value was retrieved before the business event occurred.

    For example, suppose that you would like to notify a customer that the status of the case has changed to another one. In the body of a notification, you insert the `((CRCase_status))` data field, which represents the placeholder of the case status, whose value will be retrieved when the business event occurs. To show the previous status of the case, you click **Insert Previous Data Field** and select the same data field; the system inserts the placeholder with the `PREV` function, which in this example is `PREV((CRCase_status))`. When the event occurs, the system retrieves the value that the field had before the event occurred.

-   For a push notification, you use the needed fields to specify which record should be opened by the mobile app after a user taps the notification \(in the **Destination Entity ID** box\). You should make sure that the `NoteID` data field is present in the results of the generic inquiry for the record. For example, suppose that you selected *Sales Orders* in **Destination Screen ID** and want to open a particular order for the user; then you need to select the `NoteID` data field for the `SOOrder` object in **Destination Entity ID**.

**Attention:** If an email template is used as subscriber of a business event of the *Trigger by Record Change* type and a data field that contains a time value is used as a placeholder, the system converts the time value according to the time zone specified for the *admin* user in the **Time Zone** box on the **Personal Settings** tab of the [Users](../Shared/../UserGuide/SM_20_10_10.md) \(SM201010\) form or on the [User Profile](../Shared/../UserGuide/SM_20_30_10.md) \(SM203010\) form. Otherwise, the system uses the time zone specified in the **Login Time Zone** box of the [Site Preferences](../Shared/../UserGuide/SM_20_05_05.md) \(SM200505\) form.

## Attaching an Email as an Activity {#section_cj5_kxy_bwb .section}

For an email template that is used as a subscriber of a business event, you can specify whether the system should link a sent email as an activity of the *Email* type to a record defined in the system, such as a customer, a vendor, a contact, or a document.

To attach a sent email as activity to an account or a contact, you specify the data fields that contain a business account ID \(BAccountID\) or a contact ID \(ContactID\) in the **Link to Account** or **Link to Contact** box, respectively. The system creates an activity of the *Email* type and links this activity to the specified business account or contact.

To attach a sent email as an activity to a system record, you use one of the following settings:

-   **Attach Activity**: You select this check box to direct the system to link a sent email as an activity of the *Email* type to a record that was created by using the data entry form specified in the **Screen Name** box.

    For example, if the [Sales Orders](../Shared/../UserGuide/SO_30_10_00.md) \(SO301000\) form is specified in the **Screen Name** box and the notification template is used as subscriber of a business event configured to monitor data changes for this form, the system links the activity to a sales order that triggered the event.

-   **Link to Entity**: In this box, you specify the data field with the unique identifier of the record \(NoteID\) to direct the system to link a sent email as an activity of the *Email* type to the record that is in the results of a generic inquiry specified in the **Screen Name** box.

You can then view the activity on the **Activities** tab of the corresponding form or in the **Tasks &amp; Activities** dialog box, which opens if you click **Activities** on the form title bar. For details about activities, see [Emails and Activities: General Information](CRM_Mktg_Managing_Emails_Activities_GeneralInfo.md).

## Attaching a Task as an Activity {#section_vqx_nbk_sqb .section}

For a task template that is used as a subscriber of a business event, you can specify whether the system should link a created task as an activity of the *Task* type to a record defined in the system, such as a customer, a vendor, a contact, or a document.

To attach a created task as an activity to a system record, you use one of the following settings:

-   **Attach Activity**: You select this check box to direct the system to link a task as an activity of the *Task* type to a record that was created by using the data entry form specified in the **Screen ID** box.
-   **Link to Entity**: In this box, you specify the data field for the unique identifier of the record \(NoteID\) to direct the system to link a created task as an activity of the *Task* type to a record that is in the results of a generic inquiry specified in the **Screen ID** box.

You can then view the activity on the **Activities** tab of the corresponding form or in the **Tasks &amp; Activities** dialog box, which opens if you click **Activities** on the form title bar. For details about activities, see [Emails and Activities: General Information](CRM_Mktg_Managing_Emails_Activities_GeneralInfo.md).

## Attaching a Report to an Email Notification {#section_dj5_kxy_bwb .section}

For email templates that are used as subscribers of business events, you can select a report or multiple reports to attach to the email on the **Attached Reports** tab of the [Email Templates](SM_20_40_03.md) \(SM204003\) form. On the tab, you can specify the report format and parameters. If no parameter values are specified, the default values of the parameters will be used when the report is generated.

On the left pane, in the **Report ID** column of the **Reports Attached by Report ID** table, you can select the report to be attached. In the **Report Format** column, you can select the format of the attached report: *Excel*, *HTML*, or *PDF*. If you select the *HTML* format, the **Embedded** check box becomes available. When this check box is selected, the report will be inserted in the email body.

On the right pane, in the **Report Parameters** table, for each added report, you specify the parameters to be passed to the report at the moment of the report generation process.

Alternatively, you can use shared custom report templates to insert the preferred parameters into the **Report Parameters** table.

Additionally, you can select a report to be attached in the **Attach Report Opened by Action** box on the tab. The system uses the list of reports available under the **Reports** category of the More menu of the data entry form specified in the **Screen** box of the form.

If the added report has a report template, you can select this template in the **Report Template** box on the right pane. The system then inserts the values that have been specified in the report template into the **Report Parameters** table. \(Report templates, which can be configured for each report, include the typical settings for selecting, filtering, and sorting the data in the reports that users would otherwise specify manually before running the report.\)

**Attention:** A report template must have the **Shared** check box selected on the appropriate report form for this template to be available for selection.

You can change any of the values in the **Report Parameters** table. For parameters whose values have been modified, the system selects the **Overridden** check box. To reverse changes to a particular parameter, you clear this check box. The system then inserts the default value in the **Parameter Value** column for this parameter.

If you add a report but do not select any template for it, the **Report Parameters** table displays the default parameters of the added report. You can modify any default value.

**Parent topic:**[Using Business Events](../UserGuide/SA_Using_Business_Events_Mapref.md)

