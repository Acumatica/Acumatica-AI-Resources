# Form Title Bar

The form title bar, located at the top of every Acumatica ERP form, includes general buttons you can use to manage the related data of the form—such as attaching a file to the form and adding the form to your favorites. The form title bar is slightly different depending on the type of form you are viewing:

-   A data entry form or class creation form showing a single record \(see the first screenshot below\). This form title bar is shown in the following screenshot below; the numbered elements are noted below.


-   Any other type of form, such as a processing form, configuration form, list of records, or other inquiry form. The following screenshot shows the form title bar for a list of records.



You can find the following numbered elements on the screenshots above:

1.  Form name button \(Item 1\). You can click it to return to the list of records, which in the example above is Journal Transactions \(GL3010PL\).
2.  Record title \(Item 2\). This element is shown for only data entry or class forms to provide more information about the specific record that is being viewed on the form.
3.  Menu buttons \(Item 3\). As the screenshots above show, various menu buttons appear on the right side of the form title bar, depending on the particular form.
4.  **Add to Favorites** button \(Item 4\). Notice that this button is shown on the form title bar in only the second screenshot above; it is not shown on data entry forms or forms used to create classes.

A form title bar on a particular form may include some or all of the standard buttons, which are described in more detail in the next section.

## Standard Form Title Bar Elements

The following table lists the standard elements that a form title bar might include.

<table id="table_od5_rnd_f3"><thead><tr><th>

Element

</th><th>

Description

</th></tr></thead><tbody><tr><td>

Form Name

</td><td>

Shows the name of the current form.

 If you are on a data entry form or a form used to create a class, you can click the form name to navigate to the list of records of this type. For example, if you are viewing a particular customer, you click this button to view the list of customers defined in the system, and if you are viewing a particular customer class, you click this button to view the list of customer classes defined in the system.

 For all other forms, clicking the form name causes the system to refresh the form.

</td></tr><tr><td>

Record Title

</td><td>

For a data entry form or class form, shows the record title, which represents the ID and name, description, or additional information about the specific record.

 For a new record, the system may display **New Record** as the record title. If the form boxes used for creating a caption are populated when the form is opened, the system will display the limited record details. For example, if you initiate the creation of a AP bill on the [Bills and Adjustments](../UserGuide/AP_30_10_00.md) \(AP301000\) form, the system will display **Bill** as the record title because the required **Type** box is filled by default with the *Bill* option. If you change the value of the **Type** box to *Credit Adj.*, the system will change the record title to **Credit Adj.**. However, if you initiate the creation of a task on the [Task](../UserGuide/CR_30_60_20.md) \(CR306020\) form, the system will display **New Record** in the record title because all elements the system uses for creating a caption are empty by default.

</td></tr><tr><td>

**Add to Favorites**

</td><td>

Adds the form to your favorites. If you frequently work with the current form, you can add it to your favorites for quicker access.

 This button does not appear on the form title bar for data entry or class creation forms; it appears for other types of forms, including lists of records, configuration forms, and inquiry forms.

</td></tr><tr><td>

**Notes**

</td><td>

Gives you the ability to attach notes to records. For more information, see [To Attach a Note to a Record](Attaching_Notes_to_Records.md).

</td></tr><tr><td>

**Activities**

</td><td>

Opens the [Tasks and Activities](#_e6cf65bd-7be8-42e2-bc3f-6c6958151635) dialog box, which gives you the ability to create and manage form-related activities, such as tasks, events, emails, phone calls, and appointments.

</td></tr><tr><td>

**Files**

</td><td>

Opens the [Files](#_8a62f1ec-6260-4cf7-bc47-cc722212ec33) dialog box, which gives you the ability to attach files to the form and manage the attached files.

</td></tr><tr><td>

**Customization**

</td><td>

Provides access to the functionality that you can use to customize the Acumatica ERP instance. For more information, see [Customization Menu](../UserGuide/AU_CustomizationMenu.md).

</td></tr><tr><td>

**Tools**

</td><td>

Provides the following commands, which give you form-related information:

-   **Get Link**: Displays the link to the current form, which you can send to another user.
-   **Web Service**: Navigates to the page with the Web Service Definition Language \(WSDL\) for the Screen-Based API access methods for the currently open Acumatica ERP form.
-   **DAC Schema Browser**: Opens the [DAC Schema Browser](../UserGuide/DAC_Schema_Browser_Reference.md), which displays detailed information about DACs and the relationships between DACs. If you are on a form that has a primary view DAC, the DAC Schema Browser displays the primary view DAC of this form. If you are on a form that does not have a primary view DAC, the DAC Schema Browser opens with an empty page.
-   **Notifications**: Opens the **Notifications** dialog box, which lists the notifications configured for the form and provides options that you can use to configure notification templates that can be used as subscribers of business events. For details, see [Using Business Events](../UserGuide/SA_Using_Business_Events_Mapref.md) in the Acumatica ERP System Administration Guide.
-   **Business Events**: Opens the **Business Events** dialog box, which lists the business events configured for the form and provides options that you can use to create and send notifications about data changes on a data entry form. For details, see [Using Business Events](../UserGuide/SA_Using_Business_Events_Mapref.md) in the Acumatica ERP System Administration Guide.
-   **Access Rights**: Navigates to the [Access Rights by Screen](../UserGuide/SM_20_10_20.md) form where the form from which you initiated the **Access Rights** command is open by default in the company tree.
-   **Audit History**: If the field level auditing of the form is turned on, then in a separate tab, the system opens the **Audit History** page with the full history of changes of the form or the record opened on the form. If the field level auditing is turned off, then the system opens the **Update History** dialog box with the limited information about the form or record creation and its last update.
-   **Share Column Configuration**: Opens the **Share Column Configuration** dialog box, which is described below. This item is visible for only users with the *Administrator* role.

**Attention:** This item is not displayed on dashboard pages, wiki pages, pivot tables, or report forms.

-   **Trace**: Opens the Trace page, where you can view recent operations performed by the current user, all messages, SQL statements, exceptions logged in the system, information about system performance, and logs that will be sent to Acumatica.
-   **Profiler**: Opens the **Profiler** dialog box, in which you can turn on or turn off the Request Profiler and export the information about the latest requests in the current user's session. For details about the Request Profiler, see [System Health: Request Profiler](../UserGuide/SA_Monitoring_System_Health_Request_Profiler_Concept.md).
-   **About**: Opens the **About Acumatica** dialog box, which displays information about the current version and build of the application and some copyright information.

</td></tr></tbody>
</table>

## Share Column Configuration Dialog Box

You can use the **Share Column Configuration** dialog box to set the current layout of a table on a particular form as the default layout and to share the settings with multiple users. To open the dialog box in the **Tools** menu on the form title bar you select **Share Column Configuration**.

**Attention:** This item is not displayed on dashboard pages, wiki pages, pivot tables, or report forms.

The **Share Column Configuration** dialog box contains two pages, which are described in detail below.

|Element|Description|
|-------|-----------|
|Included|A check box that you select to make the system apply the current configuration of columns to this table.|
|**Table ID**|The identifier of the table on this form to which the current configuration of columns can be applied.|
|The dialog box has the following buttons.|
|**Cancel**|Cancels your changes and closes the dialog box.|
|**Next**|Goes to the next page of the **Share Column Configuration** dialog box.|

<table id="_2528aa95-8f4b-4b81-a843-974db805e1a8"><thead><tr><th>

Element

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Set as the Default**

</td><td>

A check box that you select to set the current column configurations of the table or tables you have selected on Page 1 as the default column configurations. With this check box selected, the system applies the current column configuration for users of the system who have the default table layout. =

 If you clear the check box, in the Users table, you can select the particular users for which the system will apply the current layout of the table or tables.

</td></tr><tr><td>

**Override Users' Personal Configurations**

</td><td>

A check box that you select to replace the column configuration of the selected table or tables for users who have changed the default layout of the table or tables \(that is, they have a personalized configuration of the table or tables\).

 This box is selected and unavailable when you clear the **Set as the Default** check box; with these settings, you apply the column configuration to only users selected in the Users table, and the system always overrides any personalized column layouts the users might have configured for the selected tables.

</td></tr><tr><td>

**User Role**

</td><td>

The user role, which you can select to filter the list of users displayed in the Users table.

 This box is available only when you clear the **Set as the Default** check box.

</td></tr><tr><td colspan="2">

The dialog box has the following buttons.

</td></tr><tr><td>

**Cancel**

</td><td>

Cancels your changes and closes the dialog box.

</td></tr><tr><td>

**Prev**

</td><td>

Returns to the previous page of the dialog box without saving your changes.

</td></tr><tr><td>

**Finish**

</td><td>

Saves your changes and closes the dialog box.

</td></tr></tbody>
</table>

<table id="_e27b3c57-e4bd-4bfc-8af9-2460df691da2"><thead><tr><th>

Column

</th><th>

Description

</th></tr></thead><tbody><tr><td>

Included

</td><td>

A check box that you select to indicate that the system should apply the current column settings to the user.

</td></tr><tr><td>

**Login**

</td><td>

Read-only. The login name of the user in the system.

</td></tr><tr><td>

**Display Name**

</td><td>

Read-only. For the user specified in the **Login** column, the combination of the **First Name** and **Last Name** on the [Users](../UserGuide/SM_20_10_10.md) \(SM201010\) form.

</td></tr><tr><td>

**Email**

</td><td>

Read-only. The email address of the user.

</td></tr><tr><td>

**Guest Account**

</td><td>

Read-only. A check box that indicates \(if selected\) that the user account is a guest account.

</td></tr><tr><td>

**Status**

</td><td>

Read-only. The current status of the user \(*Active*, *Online*, *Disabled*, or *Temporarily Locked*\).

</td></tr></tbody>
</table>

## Profiler Dialog Box

You use this dialog box to turn on the Request Profiler, which starts the logging of URL requests, SQL queries, exceptions, and warnings and errors; you can also turn off the Request Profiler and export a ZIP archive with the log files.

<table id="_e07990ab-a88c-487f-9778-56fb966e8fef"><thead><tr><th>

Element

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Start Logging**

</td><td>

Causes the Request Profiler to start logging URL requests, SQL queries, exceptions, and warnings and errors.

</td></tr><tr><td>

**Stop and Export**

</td><td>

Causes the Request Profiler to return to the default monitoring and to export a ZIP archive with the log files that contain information in JSON format about the performed URL requests, SQL requests, and stack trace.

</td></tr><tr><td>

**Profiler**

</td><td>

Opens the [Request Profiler](../UserGuide/SM_20_50_70.md) \(SM205070\) form.

</td></tr></tbody>
</table>

## Tasks and Activities Dialog Box

You use this dialog box to create tasks, emails, and activities, such as events, phone calls, and appointments, associated with the particular record or to view and manage existing tasks, emails, and activities listed in a table. Tasks, emails, and activities with the *Canceled* status are not shown in the table.

The table toolbar includes the buttons described below.

<table id="_81c3e0e7-00df-4d36-88ca-4c865230c356"><thead><tr><th>

Button

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Add Task**

</td><td>

Opens the [Task](../UserGuide/CR_30_60_20.md) \(CR306020\) form so you can create a new task.

</td></tr><tr><td>

**Add Event**

</td><td>

Opens the [Event](../UserGuide/CR_30_60_30.md) \(CR306030\) form so you can create a new event.

</td></tr><tr><td>

**Add Email**

</td><td>

Opens the [Email Activity](../UserGuide/CR_30_60_15.md) \(CR306015\) form so you can create a new email.

</td></tr><tr><td>

**Add Activity**

</td><td>

Provides menu commands that correspond to the list of activity types configured on the [Activity Types](../UserGuide/CR_10_20_00.md) \(CR102000\) form. By clicking on a menu command, you open the [Activity](../UserGuide/CR_30_60_10.md) \(CR306010\) form, which you use to create an activity of the corresponding type.

</td></tr></tbody>
</table>

The table includes the following unlabeled columns.

<table id="_a406320f-796d-4b16-ad2f-164ea31a7413"><thead><tr><th>

Column

</th><th>

Description

</th></tr></thead><tbody><tr><td>

Activity Type

</td><td>

An icon that indicates the type of the activity.

</td></tr><tr><td>

Start Date

</td><td>

The start date of the activity.

 The start date is shown in red font in the following cases:

 -   For an event that begins in less than an hour or whose start date has already passed, regardless of the status of the event
-   For a task whose due date matches the current date

</td></tr><tr><td>

Summary

</td><td>

The description provided for the activity.

</td></tr><tr><td>

Duration

</td><td>

The planned duration of the activity.

 The duration is shown in red font in the following cases:

 -   For an event that begins in less than an hour or whose start date has already passed, regardless of the status of the event
-   For a task whose due date matches the current date

</td></tr></tbody>
</table>

## Files Dialog Box

You use this dialog box for uploading files and attaching them to records and record details.

<table id="table_bq2_fdp_xp"><thead><tr><th>

Element

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**File Name**

</td><td>

The name of the selected file to be uploaded.

</td></tr><tr><td colspan="2">

The dialog box has the following buttons.

</td></tr><tr><td>

**Browse**

</td><td>

Opens the system dialog box you can use to look for the file to be uploaded.

</td></tr><tr><td>

**Upload**

</td><td>

Uploads the selected file.

</td></tr><tr><td colspan="2">

The dialog box has a table that displays all files that have been attached to the record or record detail for which you have opened the dialog box. The table toolbar includes the buttons described below.

</td></tr><tr><td>

**Add Link**

</td><td>

Adds a link to a file that is stored in Acumatica ERP but attached to another record in the system to the table. For more information on managing files in Acumatica ERP, see [Attachments: File Upload and Attachment](../UserGuide/GS_Working_With_Attachments_File_Upload_Concept.md).

</td></tr><tr><td>

**Remove Link**

</td><td>

Removes a link to a file from the table.

</td></tr><tr><td>

**Scan**

</td><td>

Runs the scanning of a document.

 This button is available only if the *DeviceHub* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form and at least one scanner is configured in the DeviceHub application.

</td></tr><tr><td>

**Upload from Teams**

</td><td>

Opens the [Upload from Teams](../UserGuide/SM_40_40_00.md) \(SM404000\) form, where you can select files that have been shared with you in Microsoft Teams and add them to the record.

 This button is available only if the *Teams Integration* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.

</td></tr><tr><td>

**Upload Using Mobile App**

</td><td>

If you have a mobile device with the installed Acumatica mobile app, when clicking this button, the system sends a push notification to the linked device.

 Opening this push notification on the mobile device, navigates you to the Attachments screen. On this screen, you can either upload the existing files or take a photo of the needed entity. After you complete the upload on the mobile app, the selected files will appear in the Acumatica ERP site.

</td></tr><tr><td colspan="2">

The table contains the following columns.

</td></tr><tr><td>

**File Name**

</td><td>

The name of the uploaded file.

</td></tr><tr><td>

**Comment**

</td><td>

Any comment that has been provided related to the uploaded file.

</td></tr><tr><td>

**Last Date**

</td><td>

The date when the uploaded file was last modified.

</td></tr></tbody>
</table>

