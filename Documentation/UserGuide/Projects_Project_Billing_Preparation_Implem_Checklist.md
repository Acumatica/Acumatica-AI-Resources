# Project Billing Preparation: Implementation Checklist {#_a53a0b58-16a1-4385-a86e-d9aead34d4c0 .concept}

To ensure that the system is configured properly for billing a project, make sure that the features and settings listed in the table are configured as described in the following table.

|Form|Task to Perform|
|----|---------------|
|[Billing Rules](PM_20_70_00.md) \(PM207000\) form|Make sure that billing rules are configured as described in the topics of the [Creating Billing Rules](Billing_Rules_Mapref.md) chapter. Also, make sure that the appropriate billing rules are assigned to needed project tasks.|
|[Projects](PM_30_10_00.md) \(PM301000\)|Determine how the project should be billed as follows:

 -   To cause pro forma invoices to be created during the project billing, select the **Create Pro Forma Invoice on Billing** check box on the **Summary** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form.
-   To cause accounts receivable invoices to be created during the project billing, clear the **Create Pro Forma Invoice on Billing** check box on the **Summary** tab of the [Projects](PM_30_10_00.md) form.

 Before you run the billing procedure, make sure that the project is pending billing.

|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of project billing by specifying additional settings as follows:

-   To cause the system to include the project transactions with a date that is the same as the invoice date in project billing, select *Include Transactions with Billing Date* in the **Billing Cutoff** box on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form. If you select *Include Only Transactions Before Billing Date*, the system instead skips the transactions whose date is the same as the billing date.
-   To define billing limit amounts for revenue budget lines of a project billed for time and material, select the **Use T&amp;M Revenue Budget Limits** check box on the **Summary** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form. Then you can specify billing limits for particular budget lines on the **Revenue Budget** tab of the same form. For more information, see [Project Billing Preparation: Billing Limits](Projects_Project_Billing_Preparation_Limit_Validation.md).

**Parent topic:**[Preparing Projects to Billing](../UserGuide/Projects_Project_Billing_Preparation_Mapref.md)

