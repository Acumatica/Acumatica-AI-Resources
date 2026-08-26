# Lien Waivers: To Configure Automatic Generation of Lien Waivers {#_cc0432dd-51f0-4312-bb8b-1bd94cca171d .task}

This activity will walk you through the process of configuring the mailing and generation of lien waivers.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the ToadGreen company requires conditional lien waivers to be automatically generated when payments of an amount greater than $2000 are submitted. Acting as a system administrator, you need to configure the mailing and automatic generation of lien waivers. Then you need to configure the automatic generation of lien waivers for a particular vendor.

## Configuration Overview {#section_aqt_pks_dpb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   The *Construction* and *Construction Project Management* features have been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   On the [Vendor Classes](AP_20_10_00.md) \(AP201000\) form, the *SUBCON* vendor class has been created.
-   On the [Projects](PM_30_10_00.md#) \(PM301000\) form, the *HOTEL* project has been defined.

## Process Overview {#section_qjw_hdr_v4b .section}

You will create a notification template to be used for sending lien waivers on the [Email Templates](SM_20_40_03.md#) \(SM204003\) form. Then you will configure mailing settings that will use this template for a particular vendor class on the [Vendor Classes](AP_20_10_00.md#) \(AP201000\) form. You will enable generation of conditional lien waivers on the [Compliance Preferences](CL_30_10_00.md#) \(CL301000\) form. Finally, you will create a new vendor for which the system will send lien waivers automatically based on the specified conditions.

## System Preparation { .section}

Launch the Acumatica ERP website, and sign in as a system administrator by using the *gibbs* username and the *123* password.

## Step 1: Configuring the Mailing of Lien Waivers { .section}

The processing of lien waivers includes the emailing of the documents to vendors who should return signed versions of them. In this step, you will perform the needed configuration of this mailing so that the system can generate emails with lien waivers attached.

To configure the mailing, do the following:

1.  Create a notification template for lien waivers as follows:
    1.  On the [Email Templates](SM_20_40_03.md#) \(SM204003\) form, add a new record.
    2.  In the Summary area, specify the following settings:
        -   **Description**: `Lien Waivers`
        -   **Screen**: *CL.50.20.00*,
        -   **Subject**: `Lien waiver`
    3.  In the text editor area on the **Message** tab, enter the following text:

        `Dear Vendor,`

        `Your lien waiver is attached. Please return a signed version of the document.`

        `Sincerely yours,`

        `ToadGreen Building Group`

    4.  Save your changes.
2.  On the [Vendor Classes](AP_20_10_00.md#) \(AP201000\) form, open the *SUBCON* vendor class.
3.  On the **Mailing &amp; Printing** tab, do the following:
    1.  In the row with the *Conditional Final* mailing in the **Mailings** table, select *Lien Waivers* in the **Email Template** column. Make sure that the **Active** check box is selected and that *CL.64.20.03* is specified in the **Report** box in the row.
    2.  In the **Recipients** table, add a new row, and select *Remittance* in the **Contact Type** column. Make sure that the **Active** check box is selected in the row.
    3.  In the row with the *Conditional Partial* mailing in the **Mailings** table, select *Lien Waivers* in the **Email Template** column. Make sure that the **Active** check box is selected and that *CL.64.20.01* is specified in the **Report** column in the row.
    4.  In the **Recipients** table, add a new row, and select *Remittance* in the **Contact Type** box. Make sure that the **Active** check box is selected in the row.
    5.  Save your changes.

        When generating emails with lien waivers, the system will insert the email address of the remittance contact of the vendor as the recipient address. Emails will be sent from the default system email account.


## Step 2: Configuring the Automatic Generation of Conditional Lien Waivers for a Vendor { .section}

To configure lien waivers for a vendor, do the following:

1.  On the **Lien Waiver Settings** tab of the [Compliance Preferences](CL_30_10_00.md#) \(CL301000\) form, do the following:
    1.  Select the **Automatically Generate Lien Waivers** check box in the **Conditional Lien Waivers** section.
    2.  Review the default settings, and click **Save** on the form toolbar.
2.  Open the *HOTEL* project on the [Projects](PM_30_10_00.md#) \(PM301000\) form.
3.  In the **Conditional Lien Waivers** section on the **Lien Waiver Settings** tab, make sure *Posting Period End Date* is specified in the **Through Date** box.
4.  In the **Vendor Classes** table, add a new row.
5.  Specify the following settings in the added row:
    -   **Vendor Class**: *SUBCON*

        This indicates that conditional lien waivers can be automatically generated for vendors that belong to this vendor class.

    -   **Minimum Commitment Amount**: *2000*

        Lien waivers will be automatically generated for commitments whose amount is greater than or equal to this amount.

6.  Save your changes.
7.  Open the *SUBCON* vendor class on the [Vendor Classes](AP_20_10_00.md#) \(AP201000\) form.
8.  On the **General** tab, select the **Generate Lien Waivers Based on Project Settings** check box to indicate that lien waivers will be automatically generated for vendors that belong to this vendor class. The lien waiver settings specified for the particular project will be used for generating the lien waivers.
9.  Save your changes.
10. On the [Vendors](AP_30_30_00.md#) \(AP303000\) form, add a new record.
11. In the Summary area, specify the following settings:
    -   **Vendor ID**: `ARCHCO`
    -   **Account Name**: `Architectural Design Company`
12. On the **General** tab, in the **Account Information** section, specify *SUBCON* in the **Vendor Class** box.
13. In the **Primary Contact** section, specify the following settings:
    -   **First Name**: `Evelyn`
    -   **Last Name**: `Stewart`
    -   **Email**: `eve.stewart@arc.example.com`
14. On the **Financial** tab, make sure that the **Generate Lien Waivers Based on Project Settings** check box is selected.
15. On the **Payment** tab, select the **Override** check box in the **Remit-To Info** section, and type `eve.stewart@arc.example.com` in the **Email** box.
16. Save the changes.

You have configured lien waivers and created a vendor for which the system will send lien waivers automatically based on the amount of the commitment.

**Parent topic:**[Processing Lien Waivers](../UserGuide/Construction_Lien_Waivers_Mapref.md)

