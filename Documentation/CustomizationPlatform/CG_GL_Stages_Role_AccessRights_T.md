# User Access Rights for Customization {#_819684d9-5f4d-488c-b6cb-7e7d991b63af .concept}

A user account must be granted the *Customizer* role to have the appropriate access needed for customization of Acumatica ERP.

The default *admin* user account is granted this role. Therefore, if you are a developer who is going to work with a customization project, you can install an application instance of Acumatica ERP on the local computer and use the *admin* user account to start doing the customization. For testing and deployment of the customization, you should also assign the *Customizer* role to the appropriate user accounts on the test instance of the application and on the production instance. On the production instance, only the users who manage the deployment of customization packages should be granted the *Customizer* role.

The users who will be granted the *Customizer* role must be Acumatica ERP internal users. You cannot assign the *Customizer* role to a user if either of the following conditions is true \(or if both are true\):

-   The user has a guest account—that is, the user account has the **Guest Account** check box selected on the [Users](../UserGuide/SM_20_10_10.md) \(SM201010\) form.
-   The user is assigned to a guest role. A guest role has the **Guest Role** check box selected on the [User Roles](../UserGuide/SM_20_10_05.md) \(SM201005\) form. The default guest roles are *Anonymous*, *Guest*, and *Portal User*.

A user account that is assigned to the *Customizer* role has access to the following objects of the system:

-   The [Customization Menu](../UserGuide/AU_CustomizationMenu.md) and [Element Inspector](../UserGuide/AU_ElementInspector.md), which give this user the ability to inspect the element properties on every form of Acumatica ERP and to add items to a customization project.
-   The [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form, which is used to manage and publish multiple customization projects.
-   The [Customization Project Editor](../UserGuide/SM_20_45_10.md), which is used to manage and develop the content of a selected customization project.

**Parent topic:**[To Assign the Customizer Role to a User Account](../CustomizationPlatform/CG_GL_Stages_Role.md)

