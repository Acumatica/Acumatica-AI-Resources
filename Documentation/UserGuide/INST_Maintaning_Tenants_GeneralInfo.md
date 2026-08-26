# Tenant Maintenance: General Information {#_c1cd9475-be30-40fb-855e-565c14386071 .concept}

Acumatica ERP provides you with the ability to create additional tenants, maintain them, and delete them by using the Acumatica ERP Configuration wizard.

This topic describes the ways of adding tenants by using the Acumatica ERP Configuration wizard, provides an overview of the System and custom parent tenants, and explains various changes that can be made to tenants.

## Learning Objectives { .section}

In this chapter, you will do the following:

-   Become familiar with the process of adding more tenants
-   Become familiar with the System tenant, a custom parent tenant, and the tenant hierarchy
-   Create an additional tenant
-   Deploy a multitenant Acumatica ERP instance
-   Explore the visibility of tenants
-   Learn about restrictions on tenant access
-   Delete a tenant

## Applicable Scenarios { .section}

You may need to learn how to maintain tenants of the Acumatica ERP instance in scenarios that include the following:

-   You are an implementation consultant who needs to add an additional tenant to the existing Acumatica ERP instance.
-   You are an implementation consultant who needs to know what the System tenant is and how to create a custom parent tenant.
-   You are a system administrator who needs to restrict access to some tenants within the Acumatica ERP instance for employees of the company.

## The System Tenant and Tenant Hierarchy { .section}

When you deploy an Acumatica ERP application instance, the hidden System tenant is always created automatically. The System tenant has an **ID** of *1* in the **Parent Tenant ID** column on the Tenant Setup page of the Acumatica ERP Configuration wizard.

The System tenant contains predefined system data, such as preconfigured roles and numbering sequences, as well as wiki-based documentation. The system data is used by all tenants of the same application instance.

By default, the System tenant is hidden and all user-created tenants inherit the initial configuration and system \(predefined\) data from the System tenant. That is, in the tenant hierarchy, the System tenant serves as the root tenant and is the parent of all other tenants. All the data available in the System tenant is visible to other tenants in the same database.

When you create a new tenant, its parent tenant must be selected; the System tenant is inserted as a parent by default. If you create a new tenant by using the Acumatica ERP Configuration wizard, you can select any parent tenant for each of the child tenants by specifying its ID in the **Parent Tenant ID** column. If you create a tenant on the [Tenants](../Shared/../UserGuide/SM_20_35_20.md) \(SM203520\) form, the System tenant is assigned as its parent automatically and you cannot change it. For details, see [Managing Tenants by Using the Web Interface](../Shared/../UserGuide/SA_Managing_Tenants_Using_Web_Mapref.md).

**Important:** Users can sign in to only child tenants. If you select an existing tenant to be a parent, users will not be able to sign in to the parent tenant anymore.

You cannot delete the System tenant.

## Creation of Additional Tenants { .section}

For an Acumatica ERP instance, you can create additional tenants on the Tenant Setup page of the Acumatica ERP Configuration wizard during or after the initial deployment of an instance.

You can add an additional tenant to the instance by clicking **Create** on the Application Maintenance page of the wizard. For details, see [Tenant Maintenance: To Create an Additional Tenant](INST_Maintaning_Tenants_Creating_Additional_Tenant_Activity.md).

Also, you can create tenants and view information about their settings on the [Tenants](SM_20_35_20.md) \(SM203520\) form. For details, see [Managing Tenants by Using the Web Interface](SA_Managing_Tenants_Using_Web_Mapref.md).

## A Custom Parent Tenant { .section}

An application update or upgrade replaces all the data available in the System tenant, while the data created by users in user-created tenants remains unchanged. If you would like to replace preconfigured data, such as roles and numbering sequences, similarly for multiple new tenants, you can create a *custom parent tenant*: a parent tenant that will be used instead of the System tenant for your new tenants.

To configure a custom parent tenant, you create a new tenant on the Tenant Setup page of the Acumatica ERP Configuration wizard and provide a name that clearly indicates how this tenant will be used \(for example, *NewParent* or *MyParent*\). This tenant is a child of the System tenant and inherits all its data. In the custom parent tenant, you can override the preconfigured settings as needed and specify other configuration settings to be used in all the new tenants. Then when you create a new tenant by using the Acumatica ERP Configuration wizard, you specify the custom parent tenant as the parent tenant of the new tenant. The new tenant will inherit all the data from the custom parent tenant rather than from the System tenant.

You can create a custom parent tenant that is a child of another parent tenant. Note that users cannot sign in to a parent tenant.

**Tip:** You can create new tenants based on the custom parent tenant only by using the Acumatica ERP Configuration wizard. If you create new tenants on the [Tenants](../Shared/../UserGuide/SM_20_35_20.md) \(SM203520\) form, the System tenant is assigned as its parent automatically. Due to technical limitations, you can have a maximum of 127 tenants on an Acumatica ERP instance. This includes all types of tenants, irrespective of their statuses.

## Restriction of Access to Tenants { .section}

In a multitenant Acumatica ERP instance, the tenant selection box appears on the Sign-In page by default, allowing users to select the tenant to sign in from the list of all available tenants.

If you want to restrict the list of tenants a user can see to only those the user has access to, select the **Secure Tenant on the Sign-In Page** check box on the Tenant Setup page of the Acumatica ERP Configuration wizard. In this case, the tenant selection box does not appear on the Sign-In page by default, and all users must first authenticate themselves by entering their username and password. Depending on the user, one of the following occurs:

-   A user who has access to only one tenant will be automatically signed in to that tenant after entering their username and password.
-   A user who has access to multiple tenants and has the same credentials for these tenants must select a tenant in the tenant selection box, which appears after the user has been authenticated and contains the list of tenants available to the user.
-   A user who has access to multiple tenants and has different credentials for different tenants is signed in to the tenant whose credentials the user entered on the Sign-In page.
-   If a user who has access to multiple tenants and signs in to an Acumatica ERP instance by using single sign-on \(SSO\) with an external identity provider, the user is signed in to the first tenant that is listed on the [Tenant List](../Shared/../UserGuide/SM_20_35_30.md) \(SM203530\) form with SSO enabled.

    **Attention:** If you are using multiple tenants and SSO authentication and the **Secure Tenant on the Sign-In Page** check box is selected, ensure that all users can sign in to the first tenant listed on the [Tenant List](../Shared/../UserGuide/SM_20_35_30.md) \(SM203530\) form. If a user cannot sign in to the first listed tenant, they will not be able to select a different tenant to sign in to.


## Visibility of Tenants { .section}

You can define the visibility of tenants for users on the Sign-In page of the Acumatica ERP instance. You do this by clearing or selecting the check box in the **Visible** column in the row of the tenant on the Tenant Setup page of the Acumatica ERP Configuration wizard. For details, see [Tenant Maintenance: To Change Tenant Visibility](INST_Maintaning_Tenants_Changing_Visibility_Tenants_Activity.md)

## Deletion of Tenants { .section}

You may need to delete an existing tenant. You can do this by using the Acumatica ERP Configuration wizard. On the Tenant Setup page of the wizard, you can select the tenant you want to remove and click **Delete**. For details, see [Tenant Maintenance: To Delete a Tenant](INST_Maintaning_Tenants_Deleting_Tenants_Activity.md).

**Attention:** Because any tenant you see on the Tenant Setup page may be in production, you should create backups before making any changes.

**Parent topic:**[Maintaining Tenants](../UserGuide/INST_Maintaning_Tenants_Mapref.md)

