# Resource Owner Password Credentials Flow: To Configure a REST Application to Use OAuth 2.0 {#_638b2743-8ca8-49a8-96d5-e2f0601b0827 .task}

This activity will walk you through the process of configuring a Postman collection to use the OAuth 2.0 authorization for the requests to Acumatica ERP.

## Story { .section}

Suppose that you need to configure the MyStoreIntegration application, which is a Postman collection, to use the Resource Owner Password Credentials flow.

## Process Overview { .section}

You will connect to the token endpoint, pass the client ID and client secret in the authorization header, and request access to the web service APIs \(that is, you will request the api scope\). You will receive the access token from Acumatica ERP to use it in subsequent requests to Acumatica ERP. You will not request the refresh token, which the client application can use to request a new access token when the access token has expired.

**Tip:** In Postman, you cannot use the discovery endpoint, because Postman does not support OpenID Connect Discovery.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Deploy a new Acumatica ERP instance with the *T100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *MYSTORE* branch.
3.  Complete the following prerequisite activity: [Registration of an OAuth 2.0 or OIDC ApplicationActivity 1.1.1: To Register the Application in Acumatica ERP](OAuthOIDC_Registration_Activity.md).

## Step: Configuring a Postman Collection { .section}

To configure a Postman collection to use the OAuth 2.0 authorization in Acumatica ERP, do the following:

1.  If you use a self-signed certificate for HTTPS, in Postman settings, turn off SSL certificate verification.
2.  In Postman, create a collection.
3.  On the **Authorization** tab of the collection properties window, which opens when the collection has been created, select the following values:
    -   **Auth Type**: *OAuth 2.0*
    -   **Add auth data to**: *Request Headers*
4.  In the **Configure New Token** section, specify the following values:
    -   **Token Name**: `MyStoreIntegration`
    -   **Grant Type**: *Password Credentials*
    -   **Access Token URL**: The token endpoint address, such as `https://localhost/MyStoreInstance/identity/connect/token`
    -   **Username**: `admin`
    -   **Password**: The password for the `admin` user
    -   **Client ID**: The client ID of the application, which you can copy from the **Client ID** box on the [Connected Applications](../UserGuide/SM_30_30_10.md) \(SM303010\) form for the MyStoreIntegration client \(which you have created in [Registration of an OAuth 2.0 or OIDC ApplicationActivity 1.1.1: To Register the Application in Acumatica ERP](OAuthOIDC_Registration_Activity.md)\)
    -   **Client Secret**: The client secret that you have received and saved during the registration of the MyStoreIntegration client on the [Connected Applications](../UserGuide/SM_30_30_10.md) form
    -   **Scope**: `api`
    -   **Client Authentication**: *Send client credentials in body*
5.  Click **Get New Access Token**. Once the token is received, the **Manage Access Tokens** dialog box opens.

    **Tip:** In certain versions of Postman, the approach described in this section does not work. Instead of this approach, you can send a direct `POST` request to the token endpoint. In the body of the request, you should pass the client ID, the client secret, Acumatica ERP username and password, the type of the authorization flow, and the requested scope. For details about the parameters passed in the request body, see [Resource Owner Password Credentials Flow: Obtaining of an Access Token](OAuthOIDC_ResourceOwner_AccessToken.md).

6.  In the **Manage Access Tokens** dialog box, click **Use Token**.

**Parent topic:**[Implementing the Resource Owner Password Credentials Flow](../IntegrationDevelopmentGuide/OAuthOIDC_ResourceOwner_Mapref.md)

