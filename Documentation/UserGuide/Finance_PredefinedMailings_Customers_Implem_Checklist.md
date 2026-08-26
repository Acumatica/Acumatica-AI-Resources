# Mailings for Customers: Implementation Checklist {#_4d676b23-9e44-4612-a5bb-0f20a9104f22 .concept}

The following sections provide details you can use to ensure that the system is configured properly for setting up predefined mailings for customers, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially set up mailings, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure the minimum set of features has been enabled, as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md).

 Also, make sure that the *Inventory and Order Management* feature has been enabled.

|
|[Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\)|On the **Mailing &amp; Printing** tab of this form, in the **Default Sources** table, select the **Active** check box for the *INVOICE* mailing.|
|[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\)|On the **Mailing &amp; Printing** tab of this form, in the **Default Sources** table, select the **Active** check box for the *SALES ORDER* mailing.|
|[Customer Classes](AR_20_10_00.md) \(AR201000\)|Verify the existence of the customer classes for which you will define mailings. For details, see [Accounts Receivable: To Create a Customer Class](../ImplementationGuide/config_Basic_Company_Implem_Activity_Customer_Classes.md).|
|[Customers](AR_30_30_00.md) \(AR303000\)|Verify the existence of the customer accounts for the customers for which you will set up mailings. For details, see [Customers: Implementation Activity](Customer_Implem_Activity.md).|

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in [Mailings for Customers: To Set Up a Mailing for a Customer Class](Finance_PredefinedMailings_Customers_Activity1.md) and [Mailings for Customers: To Set Up a Mailing for a Customer](Finance_PredefinedMailings_Customers_Activity2.md).

**Parent topic:**[Configuring Predefined Mailings for Customers](../UserGuide/Finance_PredefinedMailings_for_Customers_Mapref.md)

