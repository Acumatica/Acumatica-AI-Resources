# Managing Tenants Locally {#_97ab7646-3f49-4990-a886-a6a2342c1076 .concept}

By using the Tenant Setup page of the Acumatica ERP Configuration wizard, you can do the following:

-   Add a new tenant to the selected instance. For more information, see [To Add a New Tenant by Using the Acumatica ERP Configuration wizard](Managing_Companies_Add_new.md).
-   Hide or display an existing tenant. For more details, please see [To Hide or Display an Existing Tenant](SM__how_Hide_Display_Tenant.md).
-   Delete an existing tenant. For details, see [To Delete an Existing Tenant by Using Acumatica ERP Configuration wizard](Managing_Companies_Deleting.md).

## The System Tenant and Tenant Hierarchy { .section}

When you deploy an Acumatica ERP application instance, the hidden System tenant is always created automatically. The System tenant has an **ID** of *1* in the **Parent Tenant ID** column on the Tenant Setup page of the Acumatica ERP Configuration wizard.

The System tenant contains predefined system data, such as preconfigured roles and numbering sequences, as well as wiki-based documentation. The system data is used by all tenants of the same application instance.

By default, the System tenant is hidden and all user-created tenants inherit the initial configuration and system \(predefined\) data from the System tenant. That is, in the tenant hierarchy, the System tenant serves as the root tenant and is the parent of all other tenants. All the data available in the System tenant is visible to other tenants in the same database.

When you create a new tenant, its parent tenant must be selected; the System tenant is inserted as a parent by default. If you create a new tenant by using the Acumatica ERP Configuration wizard, you can select any parent tenant for each of the child tenants by specifying its ID in the **Parent Tenant ID** column. If you create a tenant on the [Tenants](../Shared/../UserGuide/SM_20_35_20.md) \(SM203520\) form, the System tenant is assigned as its parent automatically and you cannot change it. For details, see [Managing Tenants by Using the Web Interface](../Shared/../UserGuide/SA_Managing_Tenants_Using_Web_Mapref.md).

**Important:** Users can sign in to only child tenants. If you select an existing tenant to be a parent, users will not be able to sign in to the parent tenant anymore.

You cannot delete the System tenant.

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


## Tenant Snapshot with Custom Parent Tenant { .section}

If you create a snapshot of a tenant based on a custom parent that is not the System tenant, this snapshot will not contain the parent's data; when the snapshot is restored in another database with no custom parent tenant, the custom parent's data will be replaced by the original system data. To fully restore such a tenant from its snapshot in another database, perform the following steps:

1.  Create the first new tenant.
2.  Restore the snapshot of the parent tenant in the first new tenant. This tenant will serve as the custom parent tenant.
3.  Create the second new tenant, and select the first tenant as the parent tenant for the second tenant.
4.  Restore the tenant snapshot with all the required data in this new tenant.

## Restoration of a Snapshot {#section_hhq_ypq_w1c .section}

Through the web interface, you can import snapshots only if their size does not exceed 1 GB, whether in binary or XML format. By using the Tenant Setup page of the Acumatica ERP Configuration wizard, you can restore snapshots larger than 1 GB, but only in XML format.

You save a snapshot file to the `%Program Files%\`Acumatica ERP`\Database\Data` folder. Then on the Tenant Setup page of the Acumatica ERP Configuration wizard, you can select the snapshot in the **Insert Data** column for a particular tenant and complete the deployment of the tenant by using the selected snapshot.

A snapshot may contain custom table columns that have been added through customization projects applied to the instance from which the snapshot was taken. It can also include custom data entered into these columns. By default, when the system restores the snapshot, it not only adds the custom table columns but also inserts the custom data associated with these columns.

-   **[To Add a New Tenant by Using the Acumatica ERP Configuration wizard](../UserGuide/Managing_Companies_Add_new.md)**  

-   **[To Hide or Display an Existing Tenant](../UserGuide/SM__how_Hide_Display_Tenant.md)**  

-   **[To Delete an Existing Tenant by Using Acumatica ERP Configuration wizard](../UserGuide/Managing_Companies_Deleting.md)**  


