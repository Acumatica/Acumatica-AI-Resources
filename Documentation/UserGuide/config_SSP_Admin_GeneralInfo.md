# Configuring the Self-Service Portal: General Information {#_a19ddb75-02df-43ff-8a31-e632f3ec81f8 .concept}

The Acumatica Self-Service Portal provides tools that you can use to configure and maintain your Self-Service Portal instance.

## Learning Objectives { .section}

In this chapter, you will do the following:

-   Activate the license of the Self-Service Portal
-   Delete the license of the Self-Service Portal
-   Specify the general settings of the Self-Service Portal

## Applicable Scenarios { .section}

You may need to configure the Self-Service Portal in the following cases:

-   You want to create a special site for your customers for better communication and to work with them.
-   You want each customer to have access to the customer's own documents, such as sales orders, invoices, credit memos, and statements.

## Administration of the Self-Service Portal { .section}

By using the system management tools of the Self-Service Portal, you can activate the license of your Self-Service Portal instance, specify the default settings, configure access to the functionality, set up single sign-on \(SSO\) with the supported identity providers, and customize your Self-Service Portal instance.

To access the system management functionality of the Self-Service Portal, you must sign in to your Self-Service Portal instance with a user account to which the *Administrator* or *Portal Admin* role is assigned.

## Roles for Self-Service Portal Management { .section}

In Acumatica ERP, you configure all access by using roles. For your company's internal users to perform configuration and management tasks in the Self-Service Portal, these users must have sufficient access rights to the Self-Service Portal. Generally, the users who work with the Self-Service Portal need access rights to do the following:

-   Configure and manage the Self-Service Portal instance: You assign these users the *Portal Admin* role, which has been specifically designed for those users who will configure and manage the Self-Service Portal.
-   Initially configure the Self-Service Portal instance: You can assign these users the *Administrator* role, which gives these users full access to all system objects.

    **Attention:** We recommend that you assign this role to users only during the initial Self-Service Portal setup. After the setup, you should assign the role to users only in extraordinary cases.


For more information on Acumatica ERP roles, see [Managing User Access](SA_Managing_User_Access_Mapref.md).

## Licensing of the Self-Service Portal { .section}

The Acumatica Self-Service Portal is a separate application instance that requires licensing. The Self-Service Portal instance and the standard Acumatica ERP instance use different types of licenses.

By default, the Self-Service Portal is installed in trial mode, which means that only two users may concurrently use the system. Each time a third user signs in to the Self-Service Portal, one of the current users is forcibly signed out.

You use the [Activate License](SM_20_15_10.md) \(SM201510\) form to enter a product key or upload a license file and then activate the system. When you obtain and activate the license for using the Self-Service Portal, the trial mode restrictions are removed.

## External Identity Provider for the Self-Service Portal { .section}

The Acumatica Self-Service Portal supports single sign-on \(SSO\) with external identity providers. With SSO enabled, any user of the Self-Service Portal who specified their account with the identity provider for their user account in the Self-Service Portal will be able to sign in with their external account.

For more information on SSO in Acumatica ERP, see [Integrating Acumatica ERP with OpenID Identity Providers](US__MNG_Integrating_with_Open_ID_Identity_Providers.md).

**Parent topic:**[Configuring the Self-Service Portal](../UserGuide/config_SSP_Admin_Mapref.md)

