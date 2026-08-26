# Drawing Logs: Implementation Activity {#_d6c3d2b8-a925-483b-a91a-8feec9113761 .task}

This activity will walk you through the process of configuring drawing logs and defining their disciplines and statuses.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the ToadGreen company needs to maintain drawing logs in the system and track their statuses. Acting as a system administrator, you need to perform the necessary configuration in the system.

## Configuration Overview { .section}

For the purposes of this activity, the *Construction* and *Construction Project Management* features have been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Process Overview {#section_qjw_hdr_v4b .section}

You will configure a list of statuses to be used for the drawing logs on the [Project Management Preferences](PJ_10_10_00.md) \(PJ101000\) form.

## System Preparation { .section}

Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as a system administrator by using the *gibbs* username and the *123* password.

## Step: Specifying the Settings to Be Used for Drawing Logs { .section}

To specify the drawing log settings, do the following:

1.  Open the [Project Management Preferences](PJ_10_10_00.md) \(PJ101000\) form.
2.  In the **Drawing Log Discipline** table on the **Drawing Logs** tab, review the predefined list of disciplines, and make sure that there is a line with the *Architectural* discipline specified and the **Active** check box selected in this line.
3.  In the **Drawing Log Statuses** table, in the **Status** column of the only row, rename the predefined *N/A* status to `Active`, and change the description to `New drawing log`. This status will be assigned by default to each newly created drawing log.
4.  On the table toolbar, click **Add Row**, and specify the following settings in the added row:
    -   **Status**: `Inactive`
    -   **Description**: `The document is obsolete`
5.  Add three more rows with the settings listed in the following table.

    |Status|Description|
    |------|-----------|
    |`Submitted`|`The drawing log needs to be reviewed by the project manager`|
    |`Accepted`|`The project manager has accepted the drawing log`|
    |`Rejected`|`The project manager has rejected the drawing log`|

6.  Click **Save** on the form toolbar.

You can now create drawing logs in the system.

**Parent topic:**[Working with Drawing Logs](../UserGuide/Construction_Drawing_Logs_Mapref.md)

