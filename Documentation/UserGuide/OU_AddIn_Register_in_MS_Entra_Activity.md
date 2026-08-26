# Acumatica Add-In for Outlook: To Register an Acumatica ERP Instance in Microsoft Entra {#_42e140d7-6aa6-43cb-8cfa-ad313d8595ec .task}

You can sign in to the Acumatica add-in for Outlook by using secure, modern OpenID Connect authentication. First, you need to register your Acumatica ERP instance in Microsoft Entra. The add-in uses Microsoft Entra access tokens to securely retrieve email body content, attachments, and metadata.

**Attention:** Note the following:

-   The procedure below covers the most common usage scenarios. If you’re implementing a more complicated scenario and you encounter difficulties, contact Acumatica ERP technical support.
-   The vendor of the third-party software may change the user interface and settings. The labels you see in the UI may differ from the ones described in the procedure.
-   The procedure will be updated to describe new common scenarios and UI changes arise.

## To Register an Instance in Microsoft Entra { .section}

1.  Sign in to [Microsoft Entra](https://entra.microsoft.com/) with an account that has sufficient permissions to manage app registrations and grant admin consent for application permissions.
2.  In the left navigation pane, go to **Identity &gt; Applications** and select **App registrations**.
3.  On the **App registrations** page, click **New registration**.
4.  On the **Register an application** page, do the following:
    1.  Enter the application name \(for example, `Acumatica ERP`\).
    2.  In the **Redirect URI** section, select *Web* in the drop-down list.
    3.  In a separate browser tab, open the [OpenID Providers](SM_30_30_20.md) \(SM303020\) form of Acumatica ERP and do the following:
        1.  On the form toolbar, click **View Redirect URIs**.
        2.  In the **Redirect URIs** dialog box, copy the value in the **Redirect URI** box.
    4.  Go back to the browser tab with the Entra app registration page and paste the copied URI into the text box in the **Redirect URI** section.
5.  Click **Register** at the bottom of the page.
6.  On the app page that opens, click **Clients &amp; secrets** in the navigation pane.
7.  On the **Clients &amp; secrets** page, go to the **Client secret** tab and click **New client secret** above the table.
8.  In the right panel that opens, type in the new secret name, select the expiration period, and click **Add** at the bottom of the panel. As a result, a row with the new secret should appear in the table.
9.  Copy the value of the new secret and save it securely. You will need it later when configuring an OpenID provider in Acumatica ERP, as described in [Acumatica Add-In for Outlook: To Create an OpenID Provider](OU_AddIn_Create_OpenID_Provider_Activity.md).
10. In the app navigation pane, click **Expose an API**.
11. On the **Expose an API** page, click **Add** near the **Application ID URI** box at the top of the page.
12. In the right panel, edit the application ID URI so that it includes the fully qualified domain name \(FQDN\) of the Acumatica ERP instance before `<app-id>`, which is a globally unique identifier \(GUID\) that you should not edit.

    `api://<fully-qualified-domain-name>/<app-id>`

    For example, if your Acumatica ERP instance is `https://erp.example.com/instance`, then the FQDN is `erp.example.com`. In this case, the result will be `api://erp.example.com/<app-id>`.

13. Click **Save** at the bottom of the panel.

14. On the **Expose an API** page, click **Add a scope**.
15. In the **Add a scope** panel, which opens on the right:
    1.  Type `access_as_user` in the **Scope name** box.
    2.  Select *Admins and users* in the **Who can consent?** box.
    3.  In the **Admin consent display name** box, specify either your own display name or the following: `Access Outlook data as the current user`.
    4.  In the **Admin consent description** box, specify either your own description or the following: `Access Outlook data via Office APIs as the current user`.
    5.  In the **User consent display name** box, specify either your own display name or the following: `Access your Outlook data`.
    6.  In the **User consent description** box, specify either your own description or the following: `Access your Outlook data, including email and email attachments`.
    7.  Ensure that the **State** switch is turned on.
    8.  Click **Add scope** at the bottom of the panel.
16. On the **Expose an API** page, click **Add a client application**.
17. In the right panel, enter `ea5a67f6-b6f3-4338-b240-c655ddc3cc8e` in the **Client ID** box.
18. Select the check box against the *access\_as\_user* scope in the **Authorized scopes** section.
19. Click **Add application** at the bottom of the panel.
20. In the app navigation pane, click **API Permissions**.
21. On the **API permissions** page, click **Add a permission**.
22. In the right panel, click the **Microsoft Graph** tile and then the **Delegated permissions** tile.
23. Select the check boxes against the permissions listed below. You can use the search box in the **Select permissions** section to find them \(or browse through the tree\).
    -   openid
    -   profile
24. Click **Add permissions** at the bottom of the panel.
25. In the app’s navigation pane, click **Manifest**.
26. In the manifest that opens, find the `requiredResourceAccess` section.

    After the opening square bracket \(\[\), paste the following block.

    ```
    
     {
        "resourceAppId": "00000002-0000-0ff1-ce00-000000000000",
        "resourceAccess": [
            {
                "id": "3b5f3d61-589b-4a3c-a359-5dd4b5ee5bd5",
                "type": "Scope"
            }
        ]
    },
    ```

    **Attention:** Notice the comma at the end, which separates the pasted element from the existing elements in the section.

27. In the manifest, find the `requestedAccessTokenVersion` element in the `api` section and change its value after the colon to `2`.
28. Click **Save** on the manifest toolbar.
29. In the app’s navigation pane, click **API Permissions** again. Notice that the new `EWS.AccessAsUser.All` permission has been added to the **Office 365 Exchange Online** group.
30. Click **Grant admin consent for ...**.

    **Attention:** This instruction is required. The delegated permissions you’ve added above tell Entra that the users of the application don’t need to provide their consent for the application to access their data—administrators have granted this consent for them.


**Parent topic:**[Add-In for Outlook: Modern UI](../UserGuide/OU_OU_ModernUI.md)

