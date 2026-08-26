# To Configure the Web.Config File for Integration with Microsoft Entra ID {#_21f5db19-a074-4fed-b71c-92884d6308ca .task}

After you have registered your Acumatica ERP instance with Microsoft Entra and obtained the necessary credentials, you should enable the integration with Microsoft Entra ID for your Acumatica ERP instance.

## Before You Begin { .section}

-   Register your Acumatica ERP instance on the Microsoft Entra ID portal, as described in [To Configure Microsoft Entra ID for Integration with Your Acumatica ERP Instance](US__how_AzureAD_Registering_with_Azure.md).
-   Be sure that you have a plain-text editor for editing the `web.config` file.

## To Enable Microsoft Entra ID for the Acumatica ERP Instance { .section}

1.  Open the `web.config` file, which is located in the folder that contains the application instance website.

    **Important:** When you save changes to the `web.config` file, the website is automatically restarted. Make sure that all users have been warned about the restart so that they can save their work in advance.

2.  In the file, find the `activeDirectory` section within the `system.web` section, and modify it to be similar to the following example.

    ```
    <activeDirectory 
        enabled="true"
        protocol="MicrosoftGraph" 
        path="Azure_Instance_Tenant_ID" 
        dc="Azure_Domain_Name"
        user="ApplicationClientID" 
        password="ClientSecret" />
    ```

    Note the following about the code shown above:

    -   `Azure_Instance_Tenant_ID` is the identifier of the Azure ID instance where your application is registered.
    -   `Azure_Domain_Name` is the Active Directory primary domain name—for example, *ad.domain*. This value is specified in Active Directory by an administrator.
    -   `ApplicationClientID` is the client ID that you obtained and copied when you registered your Acumatica ERP application on the Azure instance.
    -   `ClientSecret` is the client secret that you obtained and copied when you configured your Azure instance for integration with your Acumatica ERP instance.
    The following example shows the code you would use with sample parameter values.

    ```
    <activeDirectory 
    enabled="true" 
    protocol="MicrosoftGraph" 
    path="6b780bc5-ae33-4d54-80c0-8a6c4da1bf86" 
    dc="acumqahotmail.onmicrosoft.com" 
    user="b3f59ed5-70af-41de-94a7-13fe296a79cb" 
    password="AR97Q~tLWmFLUxUjkZe33yEGGWRAnctTOz0uh" />
    ```

3.  In the `audienceUris` element within the `system.identityModel` section, specify the URL of your Acumatica ERP instance, as shown in the following example.

    ```
    <audienceUris>
        <add value="Full_Acumatica_Instance_URL" />
    </audienceUris>
    ```

    In the code shown above, `Full_Acumatica_Instance_URL` is the full URL of your Acumatica ERP instance—for example, *https://app.site.net/instance\_name*, *http://localhost/Acumatica192000078*,or *api://&lt;Application\_Client\_ID&gt;*.

    **Attention:** The value of the `audienceUris` element should be the same as the *Application ID URI* that you have specified on the Microsoft Azure Portal.

4.  In the `federationConfiguration` element within the `system.identityModel.services` section, modify its child `wsFederation` element to be similar to the following example.

    ``` {#codeblock_v5n_t41_5rb}
    <federationConfiguration>
      <wsFederation passiveRedirectEnabled="false" 
      issuer="https://login.windows.net/Azure_Instance_Tenant_ID/wsfed" 
      realm="Full_Acumatica_Instance_URL" 
      requireHttps="false" 
      PersistentCookiesOnPassiveRedirects="false"/>
    </federationConfiguration>
    ```

    In the code shown above, `Full_Acumatica_Instance_URL` is the full URL of your Acumatica ERP instance—for example, *https://app.site.net/instance\_name*, *http://localhost/Acumatica192000078*,or *api://&lt;Application\_Client\_ID&gt;*.

    **Attention:** During the configuration of the application ID URI, you may have used the default scheme provided by Microsoft Entra ID, with the value of `Full_Acumatica_Instance_URL` having the `api://<Application_Client_ID>` format. In this case, you should also add the following line to the `wsFederation` element: `reply="Acumatica_Redirect_URI"`, where `Acumatica_Redirect_URI` is the redirect URI that you have specified in the Microsoft Azure Portal.

5.  Save the `web.config` file. The website restarts automatically.

After you have enabled integration with Microsoft Entra ID, you need to map its groups to Acumatica ERP roles, as described in [To Map Microsoft Entra ID Groups to Roles in Acumatica ERP](US__how_AzureAD_Integration_Map_Roles.md).

**Parent topic:**[Integrating Acumatica ERP with Microsoft Entra ID](../UserGuide/US__mng_AzureAD_Integration.md)

