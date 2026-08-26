# To Enable AD FS Integration with Acumatica ERP {#_0ddbd558-916f-4e38-b7ea-05035740fb92 .task}

After you have configured the Microsoft Active Directory Federation Services \(AD FS\) server, you should enable AD FS integration with your Acumatica ERP instance, as described in this topic. For a description of all steps required for AD FS server configuration, see [Integration with AD FS](US__con_ADFS_Integration.md).

**Attention:** This functionality is available only if the *Active Directory and Other External SSO* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form.

## To Enable AD FS Integration with Acumatica ERP { .section}

1.  Open the `web.config` file, which is located in the folder that contains the application instance website.

    **Important:** When you save changes to the `web.config` file, the website is automatically restarted. Make sure that all users have been warned about the restart so that they can save their work in advance.

2.  In the file, find the `externalAuth` section within the `px.core` section and set the `claimsAuth` attribute to `True`.
3.  In the `audienceUris` element within the `system.identityModel` section, specify the URL of the Acumatica ERP instance similarly to the example shown below.

    ```
    <audienceUris>
        <add value="Full_Instance_URL" />
    </audienceUris>
    ```

    In the code shown above, *Full\_Instance\_URL* is the full URL of your Acumatica ERP instance—for example, *http://app.site.net/instance\_name/*.

4.  In the `federationConfiguration` element within the `system.identityModel.services` section, edit its child `wsFederation` element similarly to the example shown below.

    ```
    <wsFederation
        passiveRedirectEnabled="false" 
        issuer="https://adfs.site.com/adfs/ls/idpinitiatedsignon.aspx" 
        realm="Full_Instance_URL"
        requireHttps="false"
        PersistentCookiesOnPassiveRedirects="false" />
    ```

    In the code shown above:

    -   *https://adfs.site.com/adfs/ls/idpinitiatedsignon.aspx* is the URL of the sign-in page of your AD FS server.
    -   *Full\_Instance\_URL* is the full URL of the Acumatica ERP instance—for example, *http://app.site.net/instance\_name*.

        **Tip:** Automatic redirect to the AD FS sign-in page may not work if there is a slash at the end of the URL: *http://app.site.net/instance\_name/*. To avoid this situation, you can specify the URL without this slash.

5.  Save the `web.config` file. The website restarts automatically.

After you have enabled AD FS integration for your Acumatica ERP instance, you need to map AD FS claims to Acumatica ERP roles, as described in [To Map AD FS Claims to Roles in Acumatica ERP](US__how_ADFS_map_claims.md).

**Parent topic:**[Integrating Acumatica ERP with AD FS](../UserGuide/US__mng_ADFS_Integration.md)

