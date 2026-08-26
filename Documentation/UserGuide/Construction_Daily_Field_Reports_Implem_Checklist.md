# Daily Field Reports: Implementation Checklist {#_b5d17c15-2c4b-4ad3-ae4d-5aba74c9a891 .concept}

The following sections provide details you can use to ensure that the system is configured properly for working with daily field reports, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

Before you begin working with the daily field reports, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklists.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure that the *Projects*, *Construction*, and *Construction Project Management* features are enabled.|
|**Daily Field Reports** tab of the [Project Management Preferences](PJ_10_10_00.md) \(PJ101000\) form|Make sure that all necessary settings related to daily field reports have been specified.|
|[Projects](PM_30_10_00.md) \(PM301000\) form|Make sure that the necessary project has been created.|
|[Employees](EP_20_30_00.md) \(EP203000\) form|Make sure that the employee account for the project manager has been created.|

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure that the necessary features from the following list are enabled:-   *Time Management*: To be able to track employee activities on the project site
-   *Change Orders*: To be able to add change orders to the daily field report
-   *Change Requests*: To be able to add change requests to the daily field report
-   *Expense Management*: To be able to add the expense receipts related to the report
-   *Weather Services*: To be able to load weather conditions in daily field reports from weather API services

|
|[Vendors](AP_30_30_00.md#) \(AP303000\) form|If it is necessary to keep records about the subcontractor activities on the project site, make sure that accounts for all vendors that represent the necessary subcontractors have been created.|
|[Contacts](CR_30_20_00.md#) \(CR302000\) form|If it is necessary to send emails to the customer contacts, make sure that accounts for all necessary customer contacts have been created.|

## Approval Workflow Configuration {#section_mrr_jf3_s4b .section}

To make sure that an approval workflow is configured correctly for daily field reports, make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Tasks to Perform|
|----|----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure that the *Approval Workflow* feature is enabled.|
|[Assignment and Approval Maps](EP_20_55_00.md) \(EP205500\) form|Make sure that an approval map for daily field reports has been created, as described in [Daily Field Reports: To Configure Approval for Daily Field Reports](Construction_Daily_Field_Reports_Implem_Activity.md).|
|[Email Templates](SM_20_40_03.md) \(SM204003\) form|If an employee needs to receive notifications about a pending approval when daily field reports require approval from that employee, make sure that the notification template has been configured.|
|The **Daily Field Reports** tab of the [Project Management Preferences](PJ_10_10_00.md) \(PJ101000\) form|Make sure that the approval map for daily field reports is specified in the **DFR Approval Map** box.If an employee needs to receive notifications about daily field reports pending approval, make sure that the needed notification email is specified in the **DFR Approval Notification** box.

|

## Other Settings That Affect the Workflow {#section_hpn_w2y_l5b .section}

You can affect the workflow of daily field reports by specifying additional settings as follows:

-   To change the format of daily field report identifiers, adjust the *DFREPORT* numbering sequence on the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form, or create a new numbering sequence and select this sequence in the **DFR Numbering Sequence** box on the **Daily Field Reports** tab of the [Project Management Preferences](PJ_10_10_00.md) \(PJ101000\) form. For more information on numbering sequences, see [Use of Numbering Sequences](CS__con_Multiple_Numbering_Sequences.md).
-   To modify the copy-paste settings of the daily field reports, on the **Copy Settings** tab of the [Project Management Preferences](PJ_10_10_00.md) form, select the **Override Copy-Paste Settings in Daily Field Reports** check box. Then you select or clear the check boxes on the tab to define whether the specified information will be copied from an original daily field report when you create a copy of a daily field report by using the standard **Copy** and **Paste** commands on the form toolbar of the [Daily Field Report](PJ_30_40_00.md) \(PJ304000\) form.
-   To save revisions of a daily field report as PDF files, select the **Enable History Log** check box on the **Daily Field Reports** tab of the [Project Management Preferences](PJ_10_10_00.md) form. All new revisions of the daily field report will be saved as PDF files and listed on the **History** tab on the [Daily Field Report](PJ_30_40_00.md) form.

**Parent topic:**[Reporting On-Site Work Progress](../UserGuide/Construction_Daily_Field_Reports_Mapref.md)

