# Vendor Visibility: Implementation Checklist {#_7fea3b8a-0a2d-40c0-b2a7-2a84a0b5a54b .concept}

The following sections provide details you can use to ensure that the system is configured properly for restricting the visibility of vendor records, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially restrict visibility of vendors, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\)|Make sure the minimal features have been enabled, as described in [Company Without Branches: General Information](config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](config_Company_with_Branches_with_Balancing_GeneralInfo.md).|
|Make sure that the *Multibranch Support*, *Multicompany Support*, and *Customer and Vendor Visibility Restriction* features have been enabled, if you need to restrict the visibility of vendor records for particular companies or branches. For details, see [Vendor Visibility: To Restrict Visibility to a Branch](Finance_Restricting_Vendor_Visibility_Activity.md).|
|Enable the *Multibranch Support*, *Multicompany Support*, *Customer and Vendor Visibility Restriction*, *Multicurrency Accounting*, and *Multiple Base Currencies* features, if you need to restrict the visibility of vendor records for a particular company with the base currency different from the tenant's base currency. For details, see [Vendor Visibility: To Restrict Visibility to a New Company](Finance_Restricting_Vendor_Visibility_Activity2.md).|
|[Vendor Classes](../UserGuide/AP_20_10_00.md) \(AP201000\)|Be sure that the vendor classes whose visibility you want to restrict have been defined.|
|[Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\)|Be sure that the vendor accounts have been defined for the vendors whose visibility you want to restrict.|
|[Branches](../UserGuide/CS_10_20_00.md) \(CS102000\)|Make sure that for each branch to which the visibility of any vendors should be limited, the appropriate role associated with the branch is specified in the **Access Role** box \(**Configuration Settings** section\) on the **Branch Details** tab.|
|[Companies](../UserGuide/CS_10_15_00.md) \(CS101500\)|Make sure that for each company to which the visibility of any vendor should be limited, the appropriate role associated with the company is specified in the **Access Role** box \(**Configuration Settings** section\) on the **Company Details** tab.|
|[Users](../UserGuide/SM_20_10_10.md) \(SM201010\) or [User Roles](../UserGuide/SM_20_10_05.md) \(SM201005\)|Make sure that the needed users have been assigned to the roles specified for branches and companies. For details, see [User Roles: General Information](../UserGuide/User_Roles_GeneralInfo.md).|

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in [Vendor Visibility: To Restrict Visibility to a Branch](Finance_Restricting_Vendor_Visibility_Activity.md) and [Vendor Visibility: To Restrict Visibility to a New Company](Finance_Restricting_Vendor_Visibility_Activity2.md).

**Parent topic:**[Visibility of Vendor Records](../ImplementationGuide/Finance_Restricting_Vendor_Visibility_Mapref.md)

