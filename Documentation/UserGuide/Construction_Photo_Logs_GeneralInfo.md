# Photo Logs: General Information {#_45b24085-9951-4e4c-ac95-2a1f88583415 .concept}

In the construction industry, field superintendents and other employees may use mobile devices to take photos to document progress, and then they may need to store and share those photos. In Acumatica ERP Construction Edition, you can create photo logs. You can associate each photo log with a particular project and, optionally, a project task.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create a photo log
-   Upload photos to a photo log
-   Update a photo that has been uploaded to a photo log
-   Download a ZIP archive with all the photos and files of a photo log
-   Send an email with all the photos and files of a photo log

## Applicable Scenarios { .section}

You create a photo log when you have any number of photos taken at a construction site, and you want to associate the photos with one another and keep them for a project or project task.

## Creation of a Photo Log { .section}

On the [Photo Logs](PJ_40_50_00.md#) \(PJ405000\) form, you can view a table showing all the photo logs created in the system or only those that meet the criteria you have specified. You can also create a photo log by clicking **Add New Record** on the form toolbar. The system opens the [Photo Log](PJ_30_50_00.md#) \(PJ305000\) form with a new photo log. On this form, you need to specify the project for which the photo log is being created, the date, and the status. Also, you can specify a project task and a brief description of the photo log.

To upload the photos, on the left pane on the **Photos** tab, you click anywhere in the file upload area \(which has the *Upload Files* text\). In the dialog box that opens, you select all photos to be uploaded. The system uploads the photos as separate photo records and lists them on the **Photos** tab. If you want to mark one of the photos as the main photo of the entire photo log, you select the **Main Photo** check box in the corresponding line. If the row for this photo log is clicked in the table on the [Photo Logs](PJ_40_50_00.md#) form, the system will show this photo in the right pane of that form.

## Update of Photos in a Photo Log { .section}

You may need to update photos in a photo log with a newer version of these photos. To update a photo that has already been uploaded to a photo log, you open the photo log on the [Photo Log](PJ_30_50_00.md#) \(PJ305000\) form; in the row with the photo on the **Photos** tab, you click the link in the **Photo ID** column. The system opens the photo record on the [Photo](PJ_30_50_10.md#) \(PJ305010\) form. Then you click **Change Photo** on the form toolbar, and select the new photo to be uploaded instead of the current one. After uploading the new photo, you save your changes to the photo record.

In the Summary area of the [Photo](PJ_30_50_10.md) form, you can also select the **Main Photo** check box to make the photo the main photo of the photo log. In this case, if a user clicks the row with the photo log on the [Photo Logs](PJ_40_50_00.md) form, this photo will be displayed in the preview area \(in the right pane\).

**Tip:** Only one photo can be marked as the main photo of a photo log. If no photo is marked as the main photo of the selected photo log, the preview area remains empty.

To move a photo from one photo log to another, you can open the photo record on the [Photo](PJ_30_50_10.md) \(PJ305010\) form, select the destination photo log in the **Photo Log ID** box, and save your changes.

## Attaching of Files and Photos to a Photo Log { .section}

You can attach files and images to a photo log record by using standard Acumatica ERP functionality by clicking the **Files** button on the form title bar of a [Photo Log](PJ_30_50_00.md) \(PJ305000\) form. In the **Files** dialog box, which the system opens, you upload the file or files to be attached to the record.

When you upload the files and images in this way, the files are also attached to the record; the number of attached files is shown in parentheses right of the **Files** button on the form title bar. If needed, you can also upload files by using a registered mobile device with the Acumatica mobile app installed.

After you have uploaded files, you can move the uploaded photos from attachments to the photo log by clicking the **Upload Photos from Attachments** button on the table toolbar of the [Photo Log](PJ_30_50_00.md) form. The system creates separate photo records for each image and removes this image from the attached files.

## Downloading and Emailing Photos { .section}

When you are working with photo logs on the [Photo Logs](PJ_40_50_00.md) \(PJ405000\) form, you can also do the following:

-   Download photos from multiple photo logs at a time by selecting the unlabeled check boxes for the needed photo logs in the table in the left pane and clicking **Export Photos** on the form toolbar.
-   Email photos from multiple photo logs at a time by selecting the unlabeled check boxes for the needed photo logs in the table in the left pane and clicking **Email** on the form toolbar.

You can also perform the same operations for a particular photo log by opening it on the [Photo Log](PJ_30_50_00.md) \(PJ305000\) form and clicking **Export Photos** and **Email** commands in the More menu of this form.

**Parent topic:**[Working with Photo Logs](../UserGuide/Construction_Photo_Logs_Mapref.md)

