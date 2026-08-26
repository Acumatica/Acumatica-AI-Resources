# To Enable Silent Logon {#_6ceebd42-6612-4f81-80fd-4cb608c6d2e3 .task}

To make your users authenticate themselves with a selected identity provider, you enable the silent logon capability and select the identity provider to be used by default. This topic describes how to enable silent logon for Microsoft Entra ID or Active Directory Federation Services.

## Before You Proceed { .section}

Before you enable silent logon, you need to configure your Acumatica ERP instance to use the external identity provider with which you want to set up silent logon.

## To Enable Silent Logon { .section}

1.  Open the `web.config` file for the site instance.

    **Tip:** Usually the file is located in **%Program Files%\\Acumatica ERP\\&lt;instance name&gt;**, where *&lt;instance name&gt;* is the name of the application instance website.

    **Important:** When you save changes to the `web.config` file, the website is automatically restarted. Make sure that all users have been warned about the restart so that they can save their work in advance.

2.  Add the `Silentlogin` parameter to the `<externalAuth>` section, as shown below.

    ```
    <externalAuth returnUrl="Main.aspx" authUrl="Frames/AuthDock.ashx" 
    **silentLogin="Federation"** />
    ```

3.  Save your changes to `web.config`.

## To Disable Silent Logon { .section}

1.  Open the `web.config` file for the site instance.

    **Tip:** Usually the file is located in **%Program Files%\\Acumatica ERP\\&lt;instance name&gt;**, where *&lt;instance name&gt;* is the name of the application instance website.

    **Important:** When you save changes to the `web.config` file, the website is automatically restarted. Make sure that all users have been warned about the restart so that they can save their work in advance.

2.  Specify the `none` value for the `Silentlogin` parameter in the `<externalAuth>` section, as shown below.

    ```
    <externalAuth returnUrl="Main.aspx" authUrl="Frames/AuthDock.ashx" 
    silentLogin="none" />
    ```

3.  Save your changes to `web.config`.

## To Override Silent Logon Settings with URL Parameters { .section}

You can specify a different external identity provider or disable silent logon by using the `SilentLogin` URL parameter with a corresponding value in the URL of your Acumatica ERP instance or a particular form. It overrides the value of the `SilentLogin` parameter specified in the `web.config` file.

The `SilentLogin` URL parameter can take the following values.

|Parameter|Identity Provider|
|---------|-----------------|
|*None*|Acumatica ERP|
|*Federation*|Microsoft Entra ID or Active Directory Federation Services|

**Example**

To sign in to an Acumatica ERP instance by using silent logon for Microsoft Entra ID account, you use the following URL:

*http://app.site.com/instance/Login.aspx?SilentLogin=Federation*.

**Parent topic:**[Integrating Acumatica ERP with AD FS](../UserGuide/US__mng_ADFS_Integration.md)

