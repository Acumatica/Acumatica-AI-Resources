# Photo Logs: Process Activity {#_fc284dc9-47de-4a6c-ae9f-dbb96ee1bc3b .task}

This activity will walk you through the process of working with a photo log.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that on March 15, 2026, the construction foreman has inspected the project site and taken progress photos. Acting as the construction foreman, you will create a photo log for the particular project and project task and upload the photos to this photo log. Then you will send the photos to the responsible person.

## Configuration Overview {#section_k44_tw5_gnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Construction* and *Construction Project Management* features have been enabled.
-   On the [Projects](PM_30_10_00.md#) \(PM301000\) form, the *HOTEL* project has been created, and the project tasks for the project have been specified on the **Tasks** tab, including the *02 – SITEWORK* project task.

## Process Overview { .section}

You will create the photo log on the [Photo Log](PJ_30_50_00.md#) \(PJ305000\) form and upload the progress photos to the log by using the [Photo](PJ_30_50_10.md#) \(PJ305010\) form. You will then select the photos to be sent, prepare an email on the [Email Activity](CR_30_60_15.md#) \(CR306015\) form, and send the email with the attached ZIP archive with the photos.

## System Preparation { .section}

To prepare to perform the instructions of this activity, do the following:

1.  As a prerequisite to this activity, prepare the system for using photo logs by completing the [Photo Logs: Implementation Activity](Construction_Photo_Logs_Implem_Activity.md).
2.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as a construction foreman by using the *epsmith* username and the *123* password.
3.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *3/15/2026*. If a different date is displayed, click the Business Date menu button, and select *3/15/2026* on the calendar. For simplicity, in this activity, you will create and process all documents in the system on this business date.
4.  Download the [Photo\_Log\_Concrete\_Headwall.jpg](Files/Photo_Log_Concrete_Headwall.jpg), [Photo\_Log\_Erosion.jpg](Files/Photo_Log_Erosion.jpg), and [Photo\_Log\_Culvert.jpg](Files/Photo_Log_Culvert.jpg) files to your device.

## Step 1: Creating a Photo Log {#section_khz_jlq_hnb .section}

To create the photo log, do the following:

1.  Open the [Photo Logs](PJ_40_50_00.md#) \(PJ405000\) form.
2.  On the form toolbar, click **Add New Record**.
3.  On the [Photo Log](PJ_30_50_00.md) \(PJ305000\) form, which opens, specify the following settings in the Summary area:
    -   **Status**: *In Progress* \(inserted automatically\)
    -   **Date**: *3/15/2026* \(inserted automatically\)
    -   **Project**: *HOTEL*
    -   **Project Task**: *02 - SITEWORK*
    -   **Description**: `Problem with the drainage system`
4.  On the form toolbar, click **Save**.

    Notice that an identifier has been automatically generated for the photo log. The system generates this identifier in accordance with the numbering sequence specified on the **Photo Logs** tab of the [Project Management Preferences](PJ_10_10_00.md) \(PJ101000\) form.


## Step 2: Uploading Photos to the Photo Log {#section_lhz_jlq_hnb .section}

While you are still viewing the photo log that you have created on the [Photo Log](PJ_30_50_00.md) \(PJ305000\) form, upload the photos to the photo log by doing the following:

1.  On the **Photos** tab, click the file upload area \(which has the *Upload Files* text\).
2.  In the dialog box that opens, select the `Photo_Log_Concrete_Headwall.jpg`, `Photo_Log_Culvert.jpg`, and `Photo_Log_Erosion.jpg` files \(which you have downloaded earlier\), and click **Open** to upload the selected photos to the photo log.

    Notice that the uploaded photos are now listed in the table on the tab. The system has uploaded each file as a separate photo record.

3.  Select the **Main Photo** check box in the row with the *Photo\_Log\_Culvert.jpg* photo.
4.  Save your changes.

You have created a photo log with multiple photos for the project.

## Step 3: Sending an Email with the Photos {#section_ivj_qmt_dpb .section}

To send the email, do the following:

1.  Open the [Photo Logs](PJ_40_50_00.md#) \(PJ405000\) form.
2.  In the left pane, select the Included check box in the row of the photo log you have created.
3.  On the form toolbar, click **Email**.

    The system opens the [Email Activity](CR_30_60_15.md) \(CR306015\) form with a single ZIP file attached. The ZIP file contains all the photos \(and any attached files\) associated with the selected photo log. The automatically generated subject of the email includes information about the photo log and the related project.

4.  In the **To** box, select *Ricky Thompson*.
5.  On the form toolbar, click **Send**, close the form, and return to the [Photo Logs](PJ_40_50_00.md#) \(PJ405000\) form.
6.  In the table, click the link to the photo log that you have created in the **Photo Log ID** column.
7.  On the [Photo Log](PJ_30_50_00.md) \(PJ305000\) form, which opens, select *Completed* in the **Status** box, and save your changes.

You have created the photo log, uploaded photos, and sent these photos by email.

**Parent topic:**[Working with Photo Logs](../UserGuide/Construction_Photo_Logs_Mapref.md)

