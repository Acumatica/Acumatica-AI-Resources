# Configuration of Salesforce {#_58fa2865-bb7f-4688-8531-b07ea5fd1346 .concept}

To configure your Salesforce instance, you need to log in to Salesforce with an administrator account and perform the following steps:

1.  Create a connected app to integrate Acumatica ERP with Salesforce through the Salesforce API. For details, see [To Create a Connected App in Salesforce](IS__how_Configure_App_Salesforce.md) or [To Create a Connected App in Salesforce Lightning](IS__how_Configure_App_Salesforce_Lightning.md).
2.  Create custom fields that correspond to the `NoteID` fields in Acumatica ERP, which are used as keys for identifying Acumatica ERP entities during synchronization with Acumatica ERP. For details, see [To Create Custom Fields in Salesforce](IS__how_Configure_Custom_Fields.md) or [To Create Custom Fields in Salesforce Lightning](IS__how_Configure_Custom_Fields_Lightning.md).
3.  Because Acumatica ERP validates the values specified in the **Country**, **State**, and **Postal/Zip Code** boxes on the [Business Accounts](CR_30_30_00.md) \(CR303000\), [Leads](CR_30_10_00.md) \(CR301000\), and [Contacts](CR_30_20_00.md) \(CR302000\) forms, configure appropriate validation rules to avoid errors during the real-time synchronization. For details, see [To Configure Validation Rules in Salesforce](IS__how_Configure_Validation_Rules.md) or [To Configure Validation Rules in Salesforce Lightning](IS__how_Configure_Validation_Rules_Lightning.md).

**Parent topic:**[Quick Configuration Steps](../UserGuide/IS__con_Configuration_of_Integration.md)

