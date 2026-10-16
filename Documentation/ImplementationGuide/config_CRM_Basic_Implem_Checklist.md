# Configuring CRM Functionality: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for the customer relationship management \(CRM\) functionality in Acumatica ERP, and to specify settings that affect the CRM workflows.

## Mandatory Configuration

To ensure that the basic CRM configuration has been implemented properly, make sure that the necessary features have been enabled and settings have been specified, as described in the following checklist.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

Multiple forms

</td><td>

The following tasks have been performed:

 1.  The initial configuration of the instance has been performed, as described in [Preparing an Instance for Implementation](config_SA_Prep_Instance_for_Implem_Mapref.md)
2.  The minimum company settings have been specified and at least the minimum required functionality has been implemented for all other functional areas to be integrated with the CRM functionality as described in [Company Without Branches: General Information](config_Basic_Company_GeneralInfo.md)
3.  The system email accounts to be used for CRM have been configured, as described in [System Email Accounts](../UserGuide/EM__con_System_Email_Accounts.md).

</td></tr><tr><td>

[Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\)

</td><td>

The *Customer Management* feature has been enabled. This feature provides the customer relationship management functionality, including lead and customer tracking, as well as the handling of sales opportunities, contacts, marketing lists, and marketing campaigns.

</td></tr></tbody>
</table>

<table id="_cf9f1fa8-89e1-4a19-a5f3-7e1c5da327d4"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\)

</td><td>

The following features have been enabled:

 -   *Duplicate Validation* in the *Customer Management* group of features: Provides the duplicate validation functionality, which you can use to set up and perform automatic validation of lead and contact records for duplicates. For an example of configuration, see [Duplicate Validation](config_CRM_Duplicate_Validation_Mapref.md).
-   *Sales Quotes* in the *Customer Management* group of features: Gives you the ability to create opportunity-based sales quotes, send them to customers for review, and create sales orders and invoices based on these quotes.
-   *Address Lookup Integration* in the *Customer Management* group of features: Gives you the ability to use the address enrichment functionality. With this feature enabled, integration with a web map service can be set up, and you can add new addresses, update existing addresses, and fill in the missing address information on the forms that have address information. For details, see [Integrating Acumatica ERP with Web Map Services](../UserGuide/config_Web_Map_Services_Mapref.md).
-   *Scheduled Processing* in the *Monitoring &amp; Automation* group of features: Gives you the ability to create schedules for the automatic processing of documents. For details, see [Scheduling Automated Processing](../UserGuide/SA_Scheduling_Automated_Processing_Mapref.md).

</td></tr><tr><td>

[Lead Classes](../UserGuide/CR_20_70_00.md) \(CR207000\)

</td><td>

Lead classes with the necessary details and attributes have been created.

</td></tr><tr><td>

[Contact Classes](../UserGuide/CR_20_50_00.md) \(CR205000\)

</td><td>

Contact classes with the necessary details and attributes have been created.

</td></tr><tr><td>

[Business Account Classes](../UserGuide/CR_20_80_00.md) \(CR208000\)

</td><td>

Business account classes with the necessary details and attributes have been created.

</td></tr><tr><td>

[Campaign Classes](../UserGuide/CR_20_25_00.md) \(CR202500\)

</td><td>

Campaign classes with the necessary details and attributes have been created.

</td></tr><tr><td>

[Opportunity Classes](../UserGuide/CR_20_90_00.md) \(CR209000\)

</td><td>

Opportunity classes with the necessary details and attributes have been created.

</td></tr><tr><td>

[Customer Management Preferences](../UserGuide/CR_10_10_00.md) \(CR101000\)

</td><td>

On the **General** tab \(**Numbering Sequences**\) section, numbering sequences have been saved and classes with the necessary settings have been specified.

</td></tr></tbody>
</table>

**Parent topic:**[Basic Customer Relationship Management](../ImplementationGuide/config_CRM_Basic_Mapref.md)

