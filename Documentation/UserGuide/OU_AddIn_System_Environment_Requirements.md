# Acumatica Add-In for Outlook: System Requirements for the Add-In Installation {#_66c37967-4834-46f7-b0bb-36a41fc360df .concept}

This topic describes the software, configuration, and feature requirements for installing and using the Acumatica add-in for Outlook.

## Software Requirements { .section}

You must have a Microsoft 365 or Exchange account to use the Acumatica add-in for Outlook.

Other software requirements are listed in the following table.

|Software|Requirements|
|--------|------------|
|Outlook client|Outlook 2016 or Outlook 2019 with a retail license; Outlook 2021 or Outlook for Microsoft 365 with any type of license; Outlook on the web**Tip:** You can use the add-in with the [new Outlook for Windows](https://support.microsoft.com/en-us/office/getting-started-with-the-new-outlook-for-windows-656bb8d9-5a60-49b2-a98b-ba7822bc7627) if users and system administrators perform the additional steps described in [Additional Prerequisites with the New Outlook for Windows](#_894252cc-7d4c-451d-9da5-21ed7f5f8fc6). However, while the new Outlook is still in preview for commercial customers, full functionality can't be guaranteed.

|
|Operating system|Windows 7 or later; Windows Server 2016 or later; Mac OS|
|Browser|Safari 9 or later; the latest version of Google Chrome; the latest version of Mozilla Firefox; the latest version of Microsoft Edge|

## Prerequisites { .section}

The Acumatica add-in for Outlook works only if the *Outlook Integration* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

If you're using Exchange Server on-premises, you can install the add-in without enabling any additional features.

For a Microsoft 365 account, these additional requirements apply:

-   The *OpenID Connect* feature must be enabled.
-   Your Acumatica ERP instance must be registered in Microsoft Entra, as described in [To Register an Acumatica ERP Instance in Microsoft Entra](OU__how_To_Register_in_MS_Entra.md).
-   An OpenID provider must be configured in Acumatica ERP for use with the Acumatica add-in for Outlook. For an example of this setup, see [To Create an OpenID Provider](OU__how_To_Create_OpenID_Provider.md).
-   Pop-ups must be enabled in your browser.

By default, the add-in lets you create and view contacts from an email, log email activities, and attach logged activities to contacts. If you want to use additional capabilities of the add-in, you need to enable the following features, set up the related functionality, and make sure users can access the needed forms:

-   *Customer Management*: Lets users create and view leads and opportunities from a mailbox and attach communication activities to the related leads and opportunities.
-   *Case Management*: Gives users the ability to create and view cases and attach logged activities to the related cases.
-   *Projects*: Makes it possible for users to attach logged activities to the related projects.
-   *Construction Project Management*: Allows users to create and view project issues and requests for information \(RFIs\), as well as attach logged activities to the related project issues and RFIs.
-   *Document Recognition Service*: Gives users the ability to submit PDF attachments to the recognition service and view documents processed by the recognition service.

The add-in also requires your Acumatica ERP instance to be hosted over HTTPS. For more information, see [Preparation for the Acumatica ERP Installation: System Environment](INST_Preparing_Installation_System_Environment.md).

## Additional Prerequisites with the New Outlook for Windows {#_ee1a808c-0f58-4bf0-84a3-df478dc2188c .section}

The Acumatica add-in for Outlook can be used with the new Outlook for Windows only if both end users and administrators have performed additional steps.

Users need to select the **Turn on optional connected experiences** check box in the new Outlook app settings: **Settings** &gt; **General** &gt; **Privacy and Data** &gt; **Privacy settings** &gt; **Turn on optional connected experiences**.

System administrators need to modify the settings in the `web.config` file, which is located in the application instance folder, as described below.

**Attention:**

-   These instructions apply only to application servers running .NET Framework Version 4.7.2 or later.
-   The line numbers in these instructions refer to the lines of the `web.config` file before modifications.
-   When the administrator saves changes to the `web.config` file, the website is automatically restarted. All users must be warned about the restart beforehand so they can save their work.

1.  In line 97, add the text in bold to the `<formsAuth>` tag of the `<px.core>` section.

    ```
    <formsAuth loginUrl="Frames/Login.aspx" timeout="60" **requireSSL="true"** />
    ```

2.  In line 155, add the text in bold to the `<sessionState>` tag of the `<system.web>` section.

    ```
    <sessionState **cookieSameSite="None"** cookieless="UseCookies" mode="Custom" 
    customProvider="PXSessionStateStore" timeout="60" 
    sessionIDManagerType="PX.Owin.SessionIdManager, PX.Owin">
    ```

3.  In line 216 \(`<system.web>`\) section, add the following line before the `<compilation>` tag.

    ```
    <httpCookies sameSite="None" requireSSL="true" />
    ```

    **Attention:** When inserting the line:

    -   The first two occurrences of `<system.web>` \(in lines 64 and 103\) within the `<location>` tag are not the sections you need.
    -   Insert the line only once; otherwise, a compilation error may occur when the site is restarted.

**Parent topic:**[Add-In for Outlook: Modern UI](../UserGuide/OU_OU_ModernUI.md)

