# Project Quotes: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for the creation of project quotes and projects based on project quotes, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist

We recommend that before you initially create project quotes, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Tasks to Perform

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form

</td><td>

Make sure that the *Projects* and *Project Quotes* features are enabled.

</td></tr><tr><td>

[Projects Preferences](PM_10_10_00.md) \(PM101000\) form

</td><td>

Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see [Basic Project Configuration: General Information](../ImplementationGuide/config_Project_Basic_GeneralInfo.md).

</td></tr><tr><td>

[Project Templates](PM_20_80_00.md) \(PM208000\) form

</td><td>

Make sure that all needed project templates have been configured. For more information about project templates, see [Project Templates and Common Tasks: General Information](Projects_Templates_GeneralInfo.md).

</td></tr><tr><td>

[Business Account Classes](CR_20_80_00.md) \(CR208000\)

</td><td>

Make sure that business account classes with the necessary settings and attributes have been created, as described in [Defining Business Account Classes](CRM_Bus_Account_Classes_Mapref.md).

</td></tr><tr><td>

[Business Accounts](CR_30_30_00.md) \(CR303000\)

</td><td>

Make sure that business accounts with the necessary settings and attributes have been created, as described in [Creating Business Accounts](CRM_Sales_Creating_Bus_Accounts_Mapref.md).

</td></tr></tbody>
</table>

## CRM Settings Checklist

If you want to use the functionality of opportunities to create project quotes, make sure that the needed features have been enabled and settings have been specified, as summarized in the following checklist.

<table id="_cde419ea-232c-44c9-8b2a-b032a5eb3cfe"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form

</td><td>

Make sure that the *Customer Management* feature is enabled.

</td></tr><tr><td>

[Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form

</td><td>

Make sure that all necessary settings related to customer management have been specified.

</td></tr><tr><td>

[Opportunity Classes](CR_20_90_00.md) \(CR209000\)

</td><td>

Make sure that opportunity classes with the necessary settings, attributes, and stages have been created, as described in [Defining Opportunity Classes](CRM_Opportunity_Classes_Mapref.md).

</td></tr></tbody>
</table>

## Other Settings That Affect the Workflow

You can affect the workflow of processing project quotes by specifying additional settings as follows:

-   To change the format of project quote identifiers, adjust the *PMQUOTE* numbering sequence on the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form or create a new numbering sequence and select this sequence in the **Quote Numbering Sequence** box on the **General** tab \(**Numbering Sequence** section\) of the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form. Project quote identifiers must be assigned only automatically. For more information on numbering sequences, see [Use of Numbering Sequences](CS__con_Multiple_Numbering_Sequences.md).

    By default, the *PMQUOTE* numbering sequence specifies that the project quote identifier is an automatically generated alphanumeric string that starts with the *PQ* prefix and followed by six digits, such as *PQ000001*.

-   To cause the system to automatically select a project template on creation of project quotes, select the project template in the **Default Quote Template** box on the **General** tab \(**Default Settings** section\) of the [Projects Preferences](PM_10_10_00.md) form.
-   To cause the system to automatically select the revenue account group for new estimation lines of a project quote if there are multiple income account groups defined on the [Account Groups](PM_20_10_00.md) \(PM201000\) form, specify the **Default Revenue Account Group** for expense account groups in the Summary area of the [Account Groups](PM_20_10_00.md) form. For more information on account groups, see [Account Groups: General Information](Account_Groups_GeneralInfo.md).

## Validation of Configuration

To make sure that all configuration has been performed correctly, we recommend that in your system, you process a project quote by performing instructions similar to those described in [Project Quotes: To Process a Project Quote Based on an Opportunity](Projects_Project_Quotes_Process_Activity.md).

**Parent topic:**[Processing Project Quotes](../UserGuide/Projects_Project_Quotes_Mapref.md)

