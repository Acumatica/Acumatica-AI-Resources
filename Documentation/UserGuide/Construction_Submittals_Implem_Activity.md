# Submittals: Implementation Activity {#_ed7cee18-ad44-41e2-b195-b509eaf4738b .task}

This activity will walk you through the process of creating submittal types, which are used to categorize submittals in the system.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the ToadGreen company needs to track submittals. Also, the construction project manager wants to be able to categorize the submittals for which photos have been provided, and those for which product samples have been provided. Thus, you need to create these types of submittals in the system. Acting as a system administrator, you need to configure the submittal types to be used for the categorization of submittals in the system.

## Configuration Overview {#section_q5x_ybs_xpb .section}

For the purposes of this activity, the *Construction* and *Construction Project Management* features have been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Process Overview {#section_qjw_hdr_v4b .section}

You will update the list of types to be used for the submittals on the [Project Management Preferences](PJ_10_10_00.md) \(PJ101000\) form.

## System Preparation { .section}

Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as an administrator by using the *gibbs* username and the *123* password.

## Step: Creating Submittal Types { .section}

To create submittal types, do the following:

1.  Open the [Project Management Preferences](PJ_10_10_00.md) \(PJ101000\) form.
2.  On the **Submittals** tab, on the table toolbar of the **Submittal Types** table, click **Add Row**. In the row, specify the following settings:
    -   **Submittal Type**: `Photos`
    -   **Description**: `Photos`
3.  Again click **Add Row**, and specify the following settings in the new row:
    -   **Submittal Type**: `Product Samples`
    -   **Description**: `Product Samples`
4.  On the form toolbar, click **Save**.

You have created the types of submittals that can be created and processed in the system.

**Parent topic:**[Processing Submittals](../UserGuide/Construction_Submittals_Mapref.md)

