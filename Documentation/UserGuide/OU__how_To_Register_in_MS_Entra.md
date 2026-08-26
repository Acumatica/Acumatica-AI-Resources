# To Register an Acumatica ERP Instance in Microsoft Entra {#_68425de3-861e-4330-8fae-04ea4acd61e9 .task}

You can sign in to the Acumatica add-in for Outlook using secure, modern OpenID Connect authentication, which requires that you first register your Acumatica ERP instance in Microsoft Entra.

The Acumatica add-in for Outlook uses Microsoft Entra access tokens to securely retrieve email body content, attachments, and metadata.

**Attention:** Note the following:

-   The procedure below covers the most common usage scenarios. If you’re implementing a more complicated scenario and you encounter difficulties, contact Acumatica ERP technical support.
-   The vendor of the third-party software may change the user interface and settings. The labels you see in the UI may differ from the ones described in the procedure.
-   The procedure will be updated to describe new common scenarios and UI changes arise.

## To Register an Instance in Microsoft Entra { .section}

1.  Sign in to [Microsoft Entra](https://entra.microsoft.com/) with an account that has sufficient permissions to manage app registrations and grant admin consent for application permissions.
2.  In the left navigation pane, go to **Identity &gt; Applications** and select **App registrations**.
3.  On the **App registrations** page, click **New registration**.
4.  On the **Register an application** page that opens, do the following:
    1.  Enter the application name \(for example, `Acumatica ERP`\).
    2.  In the **Redirect URI** section, select *Web* in the drop-down list.
    3.  Open the [OpenID Providers](SM_30_30_20.md) \(SM303020\) form of Acumatica ERP in a separate browser tab.
        1.  On the form, click **View Redirect URIs**.
        2.  In the **Redirect URIs** dialog that opens, copy the value of the **Redirect URI** box.
    4.  Go back to the browser tab with the Entra app registration page and paste the copied URI into the text box in the **Redirect URI** section.
5.  Click **Register** at the bottom of the page.
6.  On the app page that opens, click **Clients &amp; secrets** in the navigation pane.
7.  On the **Clients &amp; secrets** page, go to the **Client secret** tab and click **New client secret** above the table.
8.  In the right panel that opens, type in the new secret name, select the expiration period, and click **Add** button at the panel bottom. As a result, a row with the new secret should appear in the table.
9.  Copy the value in the **Value** column of the new secret and save it somewhere. You will need it later when configuring an OpenID provider in Acumatica ERP, as described in [To Create an OpenID Provider](OU__how_To_Create_OpenID_Provider.md).
10. In the app navigation pane, click **Expose an API**.
11. On the **Expose an API** page, click **Add** near the **Application ID URI** box at the top of the page.
12. In the right panel that opens, edit the application ID URI so that it includes the fully qualified domain name \(FQDN\) of the Acumatica ERP instance before the app-id \(which is a GUID\):

    `api://<fully-qualified-domain-name>/<app-id>`

    For example, if your Acumatica ERP instance is `https://erp.example.com/instance`, then the FQDN is `erp.example.com`. In this case, the result will be `api://erp.example.com/<app-id>`, where `<app-id>` is a GUID that you should not edit.

    When finished, click **Save** at the bottom of the panel.

13. On the **Expose an API** page, click **Add a scope**.
14. In the **Add a scope** panel that opens on the right:
    1.  Type `access_as_user` in the **Scope name** box.
    2.  Select *Admins and users* in the **Who can consent?** box.
    3.  In the **Admin consent display name** box, specify either your own display name or the following: `Access Outlook data as the current user`.
    4.  In the **Admin consent description** box, specify either your own description or the following: `Access Outlook data via Office APIs as the current user`.
    5.  In the **User consent display name** box, specify either your own display name or the following: `Access your Outlook data`.
    6.  In the **User consent description** box, specify either your own description or the following: `Access your Outlook data, including email and email attachments`.
    7.  Ensure that the **State** switch is enabled.
    8.  Click **Add scope** at the bottom of the panel.
15. On the **Expose an API** page, click **Add a client application**.
16. In the right panel that opens, enter `ea5a67f6-b6f3-4338-b240-c655ddc3cc8e` in the **Client ID** box.
17. Select the check box against the *access\_as\_user* scope in the **Authorized scopes** section.
18. Click **Add application** at the bottom of the panel.
19. In the app navigation pane, click **API Permissions**.
20. On the **API permissions** page that opens, click **Add a permission**.
21. In the right panel that opens, click the **Microsoft Graph** tile and then the **Delegated permissions** tile.
22. Select the check boxes against the permissions listed below. You can use the search box in the **Select permissions** section to find them \(or browse through the tree\).
    -   openid
    -   profile
23. Click **Add permissions** at the panel bottom.
24. In the app navigation pane, click **Manifest**.
25. In the manifest that opens, find the `requiredResourceAccess` section.

    After the section opening square brackets \(\[\), paste the following:

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

    **Attention:** Notice the comma at the end, separating the pasted element from the existing elements in the section.

26. In the manifest, find the `requestedAccessTokenVersion` element in the `api` section and change its value after the colon to `2`.
27. Click **Save** on the manifest toolbar.
28. In the app navigation pane, click **API Permissions** again. Notice the new `EWS.AccessAsUser.All` permission has been added to the **Office 365 Exchange Online** group.
29. Click **Grant admin consent for ...**.

    **Attention:** This is a required step! The delegated permissions you have added above tell Entra that the users of the application do not need to provide their consent for the application to access their data—administrators have granted consent for them.


**Parent topic:**[Installing and Updating the Acumatica Add-In for the AcumaticaClassic UI](../UserGuide/OU__MNG_Installing_Add_In.md)

