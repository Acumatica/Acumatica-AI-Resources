# Lien Waivers: Implementation Checklist {#_1115135f-0fd9-4d9c-83a9-81af7f68f78e .concept}

The following sections provide details you can use to ensure that the system is configured properly for sending lien waivers, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you start working with lien waivers, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure that the *Construction* feature is enabled.|
|[Compliance Preferences](CL_30_10_00.md#) \(CL301000\) form|Make sure that you have selected the **Automatically Generate Lien Waivers** check box in the **Conditional Lien Waivers** section or **Unconditional Lien Waivers** section, depending on which type of lien waivers that you are going to issue.Also, review the following settings and update them, if needed:

-   In the **Through Date** box, leave *Posting Period End Date*, or select another option to specify the end date of the period for which the vendor signs a lien waiver.
-   In the **Calculate Amount By** box, leave *Commitment, Project*, or select another option to specify how the system will aggregate the payment amounts.

|
|[Projects](PM_30_10_00.md#) \(PM301000\) form|In the projects for which lien waivers should be tracked, make sure of the following on the **Lien Waiver Settings** tab: -   In the **Through Date** box, you have specified the end date of the period for which the vendor signs a lien waiver for the project.
-   In the table, the vendor classes and minimum commitment amounts have been specified.

|
|[Vendors](AP_30_30_00.md) \(AP303000\)|For each vendor that requires the generation of lien waivers, make sure of the following:

 -   On the **Financial** tab, the **Generate Lien Waivers Based on Project Settings** check box is selected.
-   On the **Mailing &amp; Printing** tab, mailing settings have been configured, as illustrated in [Lien Waivers: To Configure Automatic Generation of Lien Waivers](Construction_Lien_Waivers_Implem_Activity.md).

|

## Outstanding Lien Waiver Checklist { .section}

An outstanding lien waiver is a lien waiver that has not been marked as received and whose **Through Date** on the [Compliance Management](CL_40_10_00.md) \(CL401000\) form is earlier than the current business date in the system. The following settings affect the processing of AP documents for which outstanding lien waivers exist.

|Form|Criteria to Check|
|----|-----------------|
|[Compliance Preferences](CL_30_10_00.md#) \(CL301000\) form|Make sure that the **Warn Users During AP Bill Entry** check box is selected if you want the system to show a warning indicating that outstanding lien waiver exists for a vendor when a user enters an accounts payable bill|
|[Compliance Preferences](CL_30_10_00.md#) \(CL301000\) form|Make sure that the **Warn Users During Bill Selection for Payment** check box is selected if you want the system to show a warning indicating that outstanding lien waiver exists for a bill when a user attempts to pay this bill.|
|[Compliance Preferences](CL_30_10_00.md#) \(CL301000\) form|Make sure that the **Prevent AP Bill Payment** check box is selected if you want to completely prevent the payment of bills for which linked outstanding lien waivers exist.|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of lien waiver generation by specifying additional settings as follows:

-   To make the system automatically generate lien waivers on paying AP bills that are not related to project commitments \(that is, to project-related purchase orders or subcontracts\), select the **Generate for AP Documents Not Linked to Commitments** check box in the **Conditional Lien Waivers** section or the **Unconditional Lien Waivers** section of the [Compliance Preferences](CL_30_10_00.md#) \(CL301000\) form.
-   To make the system generate lien waivers for the vendors of a particular vendor class automatically, select the **Generate Lien Waivers Based on Project Settings** check box for this vendor class on the **General** tab of the [Vendor Classes](AP_20_10_00.md) \(AP201000\) form.
-   To disable the generation of lien waivers for a particular vendor, clear the **Generate Lien Waivers Based on Project Settings** check box on the **Financial** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form.

**Parent topic:**[Processing Lien Waivers](../UserGuide/Construction_Lien_Waivers_Mapref.md)

