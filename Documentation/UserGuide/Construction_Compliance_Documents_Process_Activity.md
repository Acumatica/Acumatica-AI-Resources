# Compliance Documents: To Track Compliance Documents for a Vendor {#_a3163bc5-f0de-471a-9a2a-0e547ad13508 .task}

This activity will walk you through the process of working with compliance documents.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the Standard Hardware Company vendor has provided the ToadGreen company with its OSHA certificate and its general liability insurance. Acting as a construction project manager, you need to enter this information in the system.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Construction* feature has been enabled.
-   On the [Vendors](AP_30_30_00.md#) \(AP303000\) form, the *HARDCO - Standard Hardware Company* vendor has been added.

## Process Overview { .section}

You will add compliance documents on the [Compliance Management](CL_40_10_00.md#) \(CL401000\) form. You will then review the documents of a particular vendor on the [Vendors](AP_30_30_00.md#) \(AP303000\) form.

## System Preparation { .section}

To prepare to perform the instructions of this activity, do the following:

1.  As a prerequisite activity, complete the [Compliance Documents: To Create Attributes for Compliance Documents](Construction_Compliance_Documents_Implem_Activity.md) to configure custom attributes for compliance documents.
2.  Launch the Acumatica ERP website, and sign in as a construction project manager by using the *ewatson* username and the *123* password.
3.  In the info area at the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button and select *1/30/2026* from the calendar. For simplicity, you'll create and process all documents in this activity using this business date.

## Step 1: Entering Compliance Documents { .section}

To enter the OSHA certificate and general liability insurance documents, do the following:

1.  Open the [Compliance Management](CL_40_10_00.md#) \(CL401000\) form.
2.  On the **All Records** tab, click **Add Row** on the table toolbar, and specify the following settings in the added row:
    -   **Document Type**: *Certificate*
    -   **Creation Date**: *1/30/2026*
    -   **Document Category**: *Occupational Safety and Health Administration \(OHSA\)*
    -   **Status**: *Valid*
    -   **Required**: Selected
    -   **Received from Vendor**: Selected
    -   **Effective Date**: 1/1/2026
    -   **Expiration Date**: 1/31/2026
    -   **Vendor**: *HARDCO*
    -   **Certificate Number**: `235568`
3.  Save the changes.
4.  Again click **Add Row** on the table toolbar, and specify the following settings in the added row:
    -   **Document Type**: *Insurance*
    -   **Creation Date**: *1/30/2026*
    -   **Document Category**: *General Liability Coverage*
    -   **Status**: *Valid*
    -   **Required**: Selected
    -   **Received from Vendor**: Selected
    -   **Effective Date**: 1/1/2026
    -   **Expiration Date**: 1/31/2026
    -   **Limit**: `10,000,000`
    -   **Vendor**: *HARDCO*
    -   **Insurance Company**: `Insurance of NY`
    -   **Policy**: `865532`
5.  Save the changes.

## Step 2: Tracking the Compliance Documents { .section}

To track the compliance documents for the vendor, do the following:

1.  Open the [Vendors](AP_30_30_00.md#) \(AP303000\) form.
2.  Select the *HARDCO* vendor, and make sure the compliance documents are shown on the **Compliance** tab.
3.  In the info area, in the upper-right corner of the top pane, change the business date to 2/1/2026. On the **Compliance** tab, review the compliance expiration warnings for each line.

    Because you have specified the expiration date of the compliance documents as the last day of the current month, the system now marks those documents as expired.

4.  On the [Bills and Adjustments](AP_30_10_00.md#) \(AP301000\) form, add a new record.
5.  In the Summary area, specify the following settings:

    -   **Type**: *Bill*
    -   **Vendor**: *HARDCO*
    As soon as you select the *HARDCO* vendor, a warning about the expired compliance document appears next to the **Vendor** box.

6.  Close the form without saving your changes to the bill, which was created solely for testing purposes.

You have added compliance documents for the vendor and verified that the compliance is tracked.

**Parent topic:**[Tracking Compliance Documents](../UserGuide/Construction_Compliance_Documents_Mapref.md)

