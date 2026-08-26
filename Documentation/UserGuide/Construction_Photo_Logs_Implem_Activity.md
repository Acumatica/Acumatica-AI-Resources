# Photo Logs: Implementation Activity {#_4b78eeec-b783-45ff-a412-01960a9c0904 .task}

This activity will walk you through the process of specifying the statuses that can be used for photo logs.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the ToadGreen company needs to keep photo logs in the system. Acting as a system administrator, you need to define the statuses to be used for photo logs.

## Configuration Overview { .section}

For the purposes of this activity, the *Construction* and *Construction Project Management* features have been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Process Overview {#section_qjw_hdr_v4b .section}

You will specify the numbering sequences to be used for photo logs and photos on the [Project Management Preferences](PJ_10_10_00.md) \(PJ101000\) form. You will also configure a list of statuses to be used for the photo logs on the same form.

## System Preparation { .section}

Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as a system administrator by using the *gibbs* username and the *123* password.

## Step: Specifying Photo Log Settings { .section}

Specify the photo log settings by doing the following:

1.  Open the [Project Management Preferences](PJ_10_10_00.md) \(PJ101000\) form.
2.  On the **Photo Logs** tab, in the **Photo Log Numbering Sequence** box, make sure that *PHOTOLOG* is selected.
3.  In the **Photo Numbering Sequence** box, make sure that *PHOTO* is selected.
4.  In the **Photo Log Statuses** table, in the **Status** column of the only row, change the settings of the *N/A* predefined status as follows:

    -   **Status**: `In Progress`
    -   **Description**: `Work in progress`
    This is the status that the system will assign by default to a newly created photo log.

5.  On the table toolbar, click **Add Row**, and specify the following settings in the added row:
    -   **Status**: `Not Started`
    -   **Description**: `Work not started`
6.  On the table toolbar, click **Add Row**, and specify the following settings in the added row:
    -   **Status**: `Completed`
    -   **Description**: `Work completed`
7.  Click **Save** on the form toolbar to save the settings.

You can now create photo logs in the system.

**Parent topic:**[Working with Photo Logs](../UserGuide/Construction_Photo_Logs_Mapref.md)

