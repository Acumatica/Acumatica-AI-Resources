# Requirements and Prerequisites {#_0c5ef3eb-7743-46ab-8381-31a65d1caab4 .concept}

## Software Requirements { .section}

You must have a Microsoft 365 or Exchange account to be able to use the Acumatica add-in for Outlook.

Other software requirements are listed in the table below.

|Software|Requirements|
|--------|------------|
|Outlook client|Outlook 2016 or Outlook 2019 with a retail license, Outlook 2021 and Outlook for Microsoft 365 with any type of license, Outlook on the Web**Tip:** The Acumatica add-in for Outlook may be used with the [new Outlook for Windows](https://support.microsoft.com/en-us/office/getting-started-with-the-new-outlook-for-windows-656bb8d9-5a60-49b2-a98b-ba7822bc7627) if users and system administrators perform the additional steps described in [Additional Prerequisites with the New Outlook for Windows](#_ee1a808c-0f58-4bf0-84a3-df478dc2188c). However, while the new Outlook remains in preview for commercial customers, we cannot guarantee that the add-in will function correctly with it.

|
|Operating system|Windows 7 or later, Windows Server 2016 or later, Mac OS|
|Browser|Safari 9 or later, latest version of Google Chrome, latest version of Mozilla Firefox, latest version of Microsoft Edge|

## Prerequisites { .section}

The Acumatica add-in for Outlook works only if the *Outlook Integration* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

If you're using Exchange Server on-premises, you can install the add-in without enabling any additional features.

With a Microsoft 365 account, the Acumatica add-in for Outlook has these additional requirements:

-   The *OpenID Connect* feature must be enabled on the [Enable/Disable Features](CS_10_00_00.md) form.
-   Your Acumatica ERP instance must be registered in Microsoft Entra. For detailed guidelines, see [To Register an Acumatica ERP Instance in Microsoft Entra](OU__how_To_Register_in_MS_Entra.md).
-   An OpenID provider must be configured in Acumatica ERP for use with the Acumatica add-in for Outlook. For an example, see [To Create an OpenID Provider](OU__how_To_Create_OpenID_Provider.md).

For the add-in to function correctly, the following prerequisites must be completed:

-   Pop-ups must be enabled in your browser.
-   You must be granted sufficient access rights to view the Outlook Add-In \(OU201000\) form, which is located in the *Hidden* folder of the site map.

By default, the add-in provides basic functionality, and you can use it to create and view contacts from an email, log email activities, and attach logged activities to contacts. If you want to use additional capabilities of the add-in, the following conditions must be met:

-   The *Customer Management* feature must be enabled and the customer relationship functionality must be configured—that is, all necessary settings should be specified and saved on the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form and access to necessary entry forms should be granted to users—so that users can create and view leads and opportunities from a mailbox and attach communication activities to the related leads and opportunities.
-   The *Case Management* feature must be enabled so that users can create and view cases and attach logged activities to the related cases.
-   The *Projects* feature must be enabled and the projects functionality must be configured so that users can attach logged activities to the related projects.
-   The *Construction Project Management* feature must be enabled and the construction functionality must be configured so that users can create and view project issues and requests for information and attach logged activities to the related project issues and requests for information.
-   The *Document Recognition Service* feature must be enabled and the accounts payable functionality must be configured so that users can submit PDF attachments to the recognition service and view documents processed by the recognition service.

The Acumatica add-in for Outlook requires that your Acumatica ERP instance is hosted over HTTPS. For more information, see [Preparation for the Acumatica ERP Installation: System Environment](INST_Preparing_Installation_System_Environment.md).

## Additional Prerequisites with the New Outlook for Windows {#_ee1a808c-0f58-4bf0-84a3-df478dc2188c .section}

The Acumatica add-in for Outlook may be used with the new Outlook for Windows if the following additional steps have been performed:

-   By end users: The **Turn on optional connected experiences** check box has been selected in the new Outlook app settings at the following path: **Settings** &gt; **General** &gt; **Privacy and Data** &gt; **Privacy settings** &gt; **Turn on optional connected experiences**.
-   By system administrators: Settings in the `web.config` file, which is located in the application instance folder, have been modified as described below.

    **Attention:** Instructions below are applicable to an application server only with .NET Framework Version 4.7.2 and later.

    **Attention:** The line numbers in these instructions refer to the lines of the `web.config` file prior to any modifications.

    **Attention:** When an administrator saves changes to the `web.config` file, the website is automatically restarted. All users must be warned about the restart beforehand so that they can save their work.

    1.  In line 97, the text in bold has been added to the `<formsAuth>` tag of the `<px.core>` section.

        ```
        <formsAuth loginUrl="Frames/Login.aspx" timeout="60" **requireSSL="true"** />
        ```

    2.  In line 155, the text in bold has been added to the `<sessionState>` tag of the `<system.web>` section.

        ```
        <sessionState **cookieSameSite="None"** cookieless="UseCookies" mode="Custom" 
        customProvider="PXSessionStateStore" timeout="60" 
        sessionIDManagerType="PX.Owin.SessionIdManager, PX.Owin">
        ```

    3.  In line 216, in the `<system.web>` section, the following line has been added:

        ```
        <httpCookies sameSite="None" requireSSL="true" />
        ```

        **Attention:** When inserting the line, pay attention to the following:

        -   The first two occurrences of `<system.web>` \(in line 64 and 103\) located within the `<location>` tag are not the needed sections.
        -   The new line must be added before the `<compilation>` tag.
        -   The line must not be duplicated; otherwise, a compilation error may occur when the site is restarted.

**Parent topic:**[Installing and Updating the Acumatica Add-In for the AcumaticaClassic UI](../UserGuide/OU__MNG_Installing_Add_In.md)

