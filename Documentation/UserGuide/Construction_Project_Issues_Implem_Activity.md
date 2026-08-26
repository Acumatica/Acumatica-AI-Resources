# Project Issues: Implementation Activity {#_81d8a6c1-7379-49ad-a28f-10106896d29a .task}

In the following implementation activity, you will learn how to prepare the system for creating and processing project issues.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you, a system administrator of a construction company, ToadGreen Building Group, need to define the types of project issues for the company. You need to track design issues, violations of safety regulations, and problems with equipment, materials, or people. You also need to configure a project management class that is going to be used for creating project issues so that the due date for resolving a newly created project issue will be set to seven days by default.

## Configuration Overview {#section_uhq_1ct_vpb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Construction* and *Construction Project Management* features have been enabled in the *Projects* group of features.
-   On the [Project Management Classes](PJ_20_10_00.md#) \(PJ201000\) form, the *FIELD* class has been defined with the **Project Issues** check box selected in the **Use For** section.

## Process Overview {#section_qjw_hdr_v4b .section}

You will configure a list of types to be used for the project issues on the [Project Management Preferences](PJ_10_10_00.md) \(PJ101000\) form. Then you will review and update the settings of a project management class to be used for the project issues on the [Project Management Classes](PJ_20_10_00.md#) \(PJ201000\) form.

## System Preparation { .section}

Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as a system administrator by using the *gibbs* username and the *123* password.

## Step 1: Specifying System Settings for Project Issues { .section}

To specify system preferences related to project issues, do the following:

1.  Open the [Project Management Preferences](PJ_10_10_00.md) \(PJ101000\) form.
2.  On the **Project Issues** tab, in the **Project Issue Numbering Sequence** box, make sure *PROISSUE* is specified.
3.  In the **Project Issue Types** table, click **Add Row**, and specify the following settings in the added row:
    -   **Project Issue Type**: `Accident`
    -   **Description**: `Accidents and emergencies`
4.  Add three more rows with the following settings.

    |Project Issue Type|Description|
    |------------------|-----------|
    |`Safety Violation`|`Violation of safety regulations`|
    |`Design Issue`|`Design issues`|
    |`Resource`|`Problems with equipment, materials, or people`|

5.  Save your changes.

## Step 2: Configuring a Project Management Class { .section}

Review the project management class that has been configured for processing project issues by doing the following:

1.  On the [Project Management Classes](PJ_20_10_00.md#) \(PJ201000\) form, open the *FIELD* class.
2.  In the **Use For** section, make sure the **Project Issues** check box is selected.
3.  On the **Details** tab, set **Answer Days Default** \(under **Project Issue Settings**\) to *7*.
4.  Save you changes.

You have prepared the system for processing project issues.

**Parent topic:**[Processing Project Issues](../UserGuide/Construction_Project_Issues_Mapref.md)

