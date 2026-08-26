# Compliance Documents: To Create Attributes for Compliance Documents {#_142aa17d-3fef-45e4-ae5e-62338fef170c .task}

This activity will walk you through the process of specifying custom attributes for compliance documents.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the ToadGreen company needs to keep track of the insurance documents and certificates in the system. Acting as a ToadGreen system administrator, you need to specify the values for the custom attributes of the *Insurance*, *Certificate*, and *Status* compliance type, so that users can specify their values for the compliance documents.

## Configuration Overview { .section}

For the purposes of this activity, the *Construction* feature has been enabled in the *Projects* group of features on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Process Overview {#section_qjw_hdr_v4b .section}

You will specify the values for the custom attributes on the [Compliance Preferences](CL_30_10_00.md#) \(CL301000\) form.

## System Preparation { .section}

Launch the Acumatica ERP website, and sign in as a system administrator by using the *gibbs* username and the *123* password.

## Step: Creating Document Categories and Statuses { .section}

To create document categories and statuses, do the following:

1.  Open the [Compliance Preferences](CL_30_10_00.md#) \(CL301000\) form.
2.  On the **Custom Attributes** tab, in the **Attribute** box, select *Insurance* to specify the possible types for the insurance documents.
3.  In the table, add five rows \(by clicking **Add Row** on the table toolbar for each\), and specify the following values in the **Value** column of each row:
    -   `General Liability Coverage`
    -   `Worker's Compensation Insurance`
    -   `Commercial Automotive Insurance`
    -   `Surety Bonds`
    -   `Asset Protection`
4.  In the **Attribute** box, select *Certificate* to specify the possible types for the certificate documents.
5.  In the table, add five rows, and specify the following values in the **Value** column of each row:
    -   `Safety Certification`
    -   `Hazardous Materials Certification`
    -   `Occupational Safety and Health Administration (OHSA)`
    -   `Project Management Institute (PMI)`
    -   `Leadership in Energy & Environmental Design (LEED)`
6.  In the **Attribute** box, select *Status* to specify the possible statuses for all compliance documents.
7.  In the table, add two rows, and specify the following values in the **Value** column of each row:
    -   `Valid`
    -   `Expired`
8.  Save your changes.

You have created the types of compliance documents and defined the applicable statuses for them.

**Parent topic:**[Tracking Compliance Documents](../UserGuide/Construction_Compliance_Documents_Mapref.md)

