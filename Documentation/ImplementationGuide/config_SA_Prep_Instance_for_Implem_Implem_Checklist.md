# Preparing an Instance: Implementation Checklist {#_8a33bfff-9379-4e03-aa5c-9be1bb4748cf .concept}

You can use the tables in this topic to quickly check whether the preparation steps are being performed in Acumatica ERP. The following tables cover both mandatory and recommended preparation steps.

**Attention:** The person who performs the initial configuration uses the *admin* username and the initial password only until the accounts for the persons participating in implementation are created \(in the last task of initial configuration\). We recommend that after initial configuration, the users use their personal usernames and passwords to access the system.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\)|The default set of features has been enabled for the instance.|
|[Activate License](../UserGuide/SM_20_15_10.md#) \(SM201510\)|A license key has been entered and activated. The license details are correct.|

|Form|Criteria to Check|
|----|-----------------|
|[Security Preferences](../UserGuide/SM_20_10_60.md) \(SM201060\)|The system-wide security policy has been configured to ensure that access to the tenant in implementation is secure and to track activities performed with the tenant by people involved in the process.|
|[Users](../UserGuide/SM_20_10_10.md) \(SM201010\)|User accounts for people involved in the implementation have been created, by using the [Users](../UserGuide/SM_20_10_10.md) \(SM201010\) form.

 For each user, at least the following settings have been specified:

 -   Username \(login\)
-   Initial password to be changed on the first sign-in
-   Email address
-   Set of predefined roles that allow access to all system resources

|

**Parent topic:**[Preparing an Instance for Implementation](../ImplementationGuide/config_SA_Prep_Instance_for_Implem_Mapref.md)

