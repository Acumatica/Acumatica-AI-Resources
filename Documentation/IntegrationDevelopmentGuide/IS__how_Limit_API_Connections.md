# To Limit the Number of API Connections of Integrated Applications {#_a226e24d-6f61-47e7-b19b-3fb7cf78df06 .task}

On the [User Types](../UserGuide/EP_20_25_00.md) \(EP202500\) form, you limit the number of sessions \(that is, API connections\) used by each of the integrated applications. You can also specify a different limit for a particular integrated application as described in [To Limit API Connections of a Particular Application](IS__how_Limit_API_Connections_for_Particular_App.md).

## Before You Proceed {#_c2e24184-7cae-4f51-b518-16e840d61657 .section}

On the [User Roles](../UserGuide/SM_20_10_05.md) \(SM201005\) form, create a user role that will be used by integrated applications. For details about user roles, see [Configuring User Roles](../UserGuide/User_Roles_Mapref.md).

## To Limit API Connections of Each Integrated Application { .section}

1.  Open the [User Types](../UserGuide/EP_20_25_00.md) \(EP202500\) form.
2.  Create a user type that will be used by integrated applications as described in [To Add a User Type](../UserGuide/US__how_Add_Contact_User_Type.md#). On the **Security Policies** tab, add the role that you created in the preliminary instructions \([Before You Proceed](#_c2e24184-7cae-4f51-b518-16e840d61657)\).
3.  On the **Security Policies** tab, specify the following settings:
    -   **Allowed Sign-In Type**:
        -   *API* if your integration application uses the Login method of one of the web services API to sign in to Acumatica ERP
        -   *Unrestricted* if your integration application uses OAuth 2.0 or OpenID Connect
    -   **Allowed Concurrent Sign-Ins**: The maximum number of sessions \(API connections\) you want to allow for each integration application
    -   **Turn Off Two-Factor Authentication**: Selected
4.  Save your changes.
5.  On the [Users](../UserGuide/SM_20_10_10.md) \(SM201010\) form, create a user account for each integrated application that can work with this Acumatica ERP instance. For each user account, specify the type that you have created in the previous steps and add the role that you have created in the preliminary instructions \([Before You Proceed](#_c2e24184-7cae-4f51-b518-16e840d61657)\). For details about the creation of a user account, see [User Access: To Add a User Account](../UserGuide/SA_Managing_User_Access_To_Add_User_Account_Activity.md).
6.  In each of the integrated applications, implement the signing in to Acumatica ERP with its own user account \(one of the user accounts created in the previous step\). For details about the implementation of signing in, see the following sources:
    -   [Sign In to the Service](IntegrationDev_RESTExample_Basic_Login.md) for the REST API
    -   [Login\(\) Method](IS__con_SB_Login.md) for the screen-based SOAP API

**Parent topic:**[Limiting Connections of Integrated Applications](../IntegrationDevelopmentGuide/IS__mng_Licensing_API.md)

