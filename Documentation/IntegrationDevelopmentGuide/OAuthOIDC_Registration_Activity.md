# Registration of an OAuth 2.0 or OIDC ApplicationActivity 1.1.1: To Register the Application in Acumatica ERP {#_3ab47faf-6e35-415d-88ba-f8b5a8f8c67e .task}

This activity will walk you through the process of registering of a connected application on the [Connected Applications](../UserGuide/SM_30_30_10.md) \(SM303010\) form.

## Story { .section}

Suppose that you want to provide secure access of the MyStoreIntegration application to Acumatica ERP through the REST API. You want the MyStoreIntegration application to use the Resource Owner Password Credentials flow. With this flow, the credentials \(username and password\) of an Acumatica ERP user are provided directly to the client application, which uses the credentials to obtain the access token. Before the application can work with an Acumatica ERP instance, you need to register the application in this instance.

## Process Overview { .section}

To register the MyStoreIntegration application in Acumatica ERP as a connected application that uses the OAuth 2.0 authorization, you will use the [Connected Applications](../UserGuide/SM_30_30_10.md) \(SM303010\) form.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Deploy a new Acumatica ERP instance with the *T100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *MYSTORE* branch.

When you are registering the client application, you have to be signed in to the tenant whose data the client application needs to access, because the client ID that is generated during the application registration includes the name of the tenant.

**Attention:** According to the OAuth 2.0 specification, a secure connection between an OAuth 2.0 client application and the Acumatica ERP website with a Secure Socket Layer \(SSL\) certificate is required.

## Step: Registering a Connected Application { .section}

Proceed as follows:

1.  In the Summary area of the [Connected Applications](../UserGuide/SM_30_30_10.md) \(SM303010\) form, specify the following values:
    -   **Client Name**: `MyStoreIntegration`
    -   **Flow**: *Resource Owner Password Credentials*
2.  On the **Secrets** tab, click **Add Shared Secret**.
3.  In the **Add Shared Secret** dialog box, which opens, do the following:
    1.  In the **Description** box, type `MyStoreIntegration Secret`.
    2.  Copy and save the value from the **Value** box.

        **Attention:** For security reasons, the value of the secret is displayed only once: when you create the secret by invoking this dialog box. Therefore, if you do not save the secret, you will not be able to obtain its value in the future.

    3.  Click **OK**.
4.  On the form toolbar, click **Save**. Notice that the client ID has been generated and inserted in the **Client ID** box. The name of the tenant to which you are signed in is appended to this client ID. The MyStoreIntegration application will use this client ID along with the client secret for authentication in Acumatica ERP.

**Parent topic:**[Registering Client Applications That Support OAuth 2.0 or OIDC](../IntegrationDevelopmentGuide/OAuthOIDC_Registration_Mapref.md)

