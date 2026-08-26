# Basic Project Configuration: Implementation Activity {#_95fc5aa8-7625-46ed-b233-8624245f7b3a .task}

You perform the following implementation activity to prepare the system for users to create and process projects.

## Story { .section}

Suppose that you, as the implementation manager of the SweetLife Fruits &amp; Jams company, need to configure the minimum required functionality to prepare the system for accounting for projects.

## System Preparation { .section}

Before you start configuring the basic project functionality, you perform the following instructions:

1.  In a new tenant, prepare a company with the basic settings, as described in the [Company Without Branches: General Information](config_Basic_Company_GeneralInfo.md).
2.  Launch the Acumatica ERP website, and sign in to a company.
3.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, enable the *Projects* feature.

## Step: Configuring Basic Project Accounting Functionality { .section}

To perform basic configuration of the project accounting functionality, proceed as follows:

1.  Open the [Projects Preferences](../UserGuide/PM_10_10_00.md) \(PM101000\) form.
2.  On the **General** tab \(**Default Settings** section\), make sure that *X* is specified in the **Non-Project Code** box. This is the code that will be used by default in all transactions and documents that are not related to any projects.
3.  Make sure that *&lt;N/A&gt;* is selected in the **Empty Item Code** box, and select *HOUR* in the **Empty Item UOM** box. The system will insert this item and unit of measure, respectively, in project-related lines that are not associated with a specific item.
4.  Make sure the **Automatically Post on Release** check box is selected.
5.  Make sure the **Automatically Release Allocations** check box is selected.
6.  In the **Visibility Settings** section, make sure the check boxes are selected for all areas in which the projects will be used.
7.  Save your changes to the form.

You have configured the basic project accounting functionality. Now you can proceed with creating account groups.

**Parent topic:**[Basic Project Accounting](../ImplementationGuide/config_Project_Basic_Config_Mapref.md)

