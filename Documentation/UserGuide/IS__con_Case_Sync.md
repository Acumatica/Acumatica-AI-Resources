# Synchronization of Case Records {#_08e4b1ee-6b40-4767-9bc6-d40f65f500ea .concept}

In Salesforce, a case record cannot be saved if it has no owner specified. In Acumatica ERP, only a user that is linked to an employee can be assigned to a case as its owner. Thus, the following should be done for the successful synchronization of case records between the systems:

1.  The *Full Data Resync* operation should be executed on the [Salesforce Data Resync](SF_20_50_35.md) \(SF205035\) form for the *User* entity.
2.  The results of the synchronization should be reviewed on the [Salesforce Sync State](SF_20_50_40.md) \(SF205040\) form.

    Only user records that have the *Synchronized* status and are linked to employees can be used in the subsequent synchronization of case records.


**Note:**

During the synchronization process, the usernames of Salesforce users are compared with the email addresses of Acumatica ERP users. If for a particular Salesforce user, no matching email address is found among the email addresses of Acumatica ERP users, no corresponding user is created in Acumatica ERP. However, the built-in import scenario, *Import User from Salesforce*, can be configured so that a user is created in Acumatica ERP if no matching email address is found.

Also, you can create a specific export scenario and export user records from Acumatica ERP to Salesforce by using the [Export by Scenario](SM_20_70_36.md) \(SM207036\) form for full synchronization of user records between the systems.

**Parent topic:**[Overview of Synchronization with Salesforce](../UserGuide/IS__con_Integration_with_Salesforce.md)

