# Customer Visibility: Implementation Checklist {#_37d454d8-1494-4edd-b41d-23ede71e2046 .concept}

The following sections provide details you can use to ensure that the system is configured properly for restricting the visibility of customer records, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially restrict visibility of customer records, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\)|Make sure the minimal features have been enabled, as described in [Company Without Branches: General Information](config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](config_Company_with_Branches_with_Balancing_GeneralInfo.md).|
|Make sure that the *Multibranch Support* feature has been enabled, if you need to restrict the visibility of customer records for particular branches.|
|Enable the *Customer and Vendor Visibility Restriction* feature to perform [Customer Visibility: To Restrict Visibility to a Company](Finance_Restricting_Customer_Visibility_Implem_Activity.md).|
|Enable the *Multicurrency Accounting* and *Multiple Base Currencies* features to perform [Customer Visibility: To Restrict Visibility to a New Company](Finance_Restricting_Customer_Visibility_Implem_Activity2.md).|
|[Customer Classes](../UserGuide/AR_20_10_00.md) \(AR201000\)|Be sure that the customer classes whose visibility you want to restrict have been defined.|
|[Customers](../UserGuide/AR_30_30_00.md) \(AR303000\)|Be sure that the customer accounts have been defined for the customers whose visibility you want to restrict.|
|[Branches](../UserGuide/CS_10_20_00.md) \(CS102000\)|Make sure that for each branch to which the visibility of any customers should be limited, the appropriate role associated with the branch is specified in the **Access Role** box \(**Configuration Settings** section\) on the **Branch Details** tab.|
|[Companies](../UserGuide/CS_10_15_00.md) \(CS101500\)|Make sure that for each company to which the visibility of any customers should be limited, the appropriate role associated with the company is specified in the **Access Role** box \(**Configuration Settings** section\) on the **Company Details** tab.|
|[Users](../UserGuide/SM_20_10_10.md) \(SM201010\) or [User Roles](../UserGuide/SM_20_10_05.md) \(SM201005\)|Make sure that the needed users have been assigned to the roles specified for branches and companies. For details, see [User Roles: General Information](../UserGuide/User_Roles_GeneralInfo.md).|

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in [Customer Visibility: To Restrict Visibility to a Company](Finance_Restricting_Customer_Visibility_Implem_Activity.md) and [Customer Visibility: To Restrict Visibility to a New Company](Finance_Restricting_Customer_Visibility_Implem_Activity2.md).

**Parent topic:**[Visibility of Customer Records](../ImplementationGuide/Finance_Restricting_Customer_Visibility_Mapref.md)

