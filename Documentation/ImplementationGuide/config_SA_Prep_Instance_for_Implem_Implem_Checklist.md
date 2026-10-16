# Preparing an Instance: Implementation Checklist

You can use the tables in this topic to quickly check whether the preparation steps are being performed in Acumatica ERP. The following tables cover both mandatory and recommended preparation steps.

**Attention:** The person who performs the initial configuration uses the *admin* username and the initial password only until the accounts for the persons participating in implementation are created \(in the last task of initial configuration\). We recommend that after initial configuration, the users use their personal usernames and passwords to access the system.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\)

</td><td>

The default set of features has been enabled for the instance.

</td></tr><tr><td>

[Activate License](../UserGuide/SM_20_15_10.md#) \(SM201510\)

</td><td>

A license key has been entered and activated. The license details are correct.

</td></tr></tbody>
</table>

<table id="_11cfed57-4631-4a40-9475-653618321c0a"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Security Preferences](../UserGuide/SM_20_10_60.md) \(SM201060\)

</td><td>

The system-wide security policy has been configured to ensure that access to the tenant in implementation is secure and to track activities performed with the tenant by people involved in the process.

</td></tr><tr><td>

[Users](../UserGuide/SM_20_10_10.md) \(SM201010\)

</td><td>

User accounts for people involved in the implementation have been created, by using the [Users](../UserGuide/SM_20_10_10.md) \(SM201010\) form.

 For each user, at least the following settings have been specified:

 -   Username \(login\)
-   Initial password to be changed on the first sign-in
-   Email address
-   Set of predefined roles that allow access to all system resources

</td></tr></tbody>
</table>

**Parent topic:**[Preparing an Instance for Implementation](../ImplementationGuide/config_SA_Prep_Instance_for_Implem_Mapref.md)

