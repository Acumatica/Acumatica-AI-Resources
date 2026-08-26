# Integration with HubSpot: Lead and Contact Synchronization Issues {#_2f569718-ed90-40ee-98f3-dd2eaacdc126 .concept}

In HubSpot, contact objects are used to represents both contacts and leads. If a contact is a lead, it is indicated by the lead status. In Acumatica ERP, there is a separate entity for leads, which can be converted to contacts, opportunities, or accounts.

If you decide to synchronize both Acumatica ERP leads and Acumatica ERP contacts with HubSpot, you to need to correctly specify whether a contact in HubSpot is a lead or a contact in Acumatica ERP in the related integration scenarios. Otherwise, you may end up in a situation in which one contact in HubSpot synchronizes to both a lead and a contact in Acumatica ERP.

The appropriate source restriction and field mapping settings of lead and contact import and export scenarios define whether a HubSpot contact synchronizes to a lead or a contact in Acumatica ERP.

## Example of Integration Scenario Settings { .section}

Acumatica ERP contains preconfigured integration scenarios to which the *Lead Status* custom field has been added. This field can be used to distinguish leads and contacts. If the Lead Status of the record is *Converted*, the record is a contact. Otherwise it is a lead.

The following settings have been preconfigured for *HubSpot Enhanced Provider* data provider:

1.  On the **Source Restriction** tab of the [Import Scenarios](../UserGuide/SM_20_60_25.md) \(SM206025\) form, for the *Import Contacts From Hubspot* import scenario, the following settings have been specified:

    -   **Active**: Selected
    -   **Field Name**: *Lead Status*
    -   **Condition**: *Equals*
    -   **Value**: *CONNECTED*
    These settings specify that only HubSpot contacts that have the *Connected* lead status are imported as contacts.

2.  For the *Import Leads From Hubspot* import scenario, the following settings have been specified:

    -   **Active**: Selected
    -   **Field Name**: *Lead Status*
    -   **Condition**: *Does Not Equal*
    -   **Value**: *CONNECTED*
    These settings specify that only HubSpot contacts that do not have the *Connected* lead status are imported as leads.

3.  On the **Source Restriction** tab of the [Export Scenarios](../UserGuide/SM_20_70_25.md) \(SM207025\) form, for the *Export Leads to HubSpot Realtime* export scenario, the following settings have been specified:

    -   **Active**: Selected
    -   **Source Object**: *Lead Summary*
    -   **Field Name**: *Status*
    -   **Condition**: *Does Not Equal*
    -   **Value**: *Converted*
    These settings specify that converted leads are not exported as leads because they are exported as contacts.

4.  On the **Mapping** tab of the [Export Scenarios](../UserGuide/SM_20_70_25.md) form, for the *Export Contacts to HubSpot Realtime* export scenario, the following settings have been specified:

    -   **Active**: Selected
    -   **Source Object**: *Contact Summary*
    -   **Field/Action Name**: *='CONNECTED'*
    -   **Target Field/Value**: *Lead Status \(hs\_lead\_status\)*
    These settings specify that during the export of contacts from Acumatica ERP, the lead status of the HubSpot contacts is set to *Connected*.


Similarly, you can configure other integration scenarios that you plan to use for HubSpot integration.

**Parent topic:**[Integration with HubSpot](../ImplementationGuide/config_HubSpot_Mapref.md)

