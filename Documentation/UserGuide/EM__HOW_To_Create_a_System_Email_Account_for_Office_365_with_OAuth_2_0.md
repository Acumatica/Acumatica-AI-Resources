# To Create a System Email Account for Office 365 with OAuth 2.0 {#_7ea4c814-8b24-4a77-9ae0-9596012fbfab .task}

By using the [Email Accounts](SM_20_40_02.md) \(SM204002\) form, you can create an email account in Acumatica ERP that will be associated with the Microsoft Office 365 account.

**Tip:** Acumatica ERP uses the Microsoft Entra ID service for authentication. We recommend opening the [Microsoft Entra admin center](https://entra.microsoft.com/#home) in another browser tab because you will need to perform some configuration steps there.

**Attention:** This topic describes the configuration of third-party software. Please note the following:

-   The procedure below is designed for the most common usage scenarios. If you are implementing a more complicated scenario and you encounter difficulties, contact Acumatica ERP Support.
-   The vendor of the third-party software may change the user interface and settings. Therefore, the form elements and setting names you see may differ from the ones described in the procedure.
-   The procedure will be updated each time information is made available about new common scenarios and changes in the user interface and settings.

## Step 1: To Specify the General Settings of the Account { .section}

Do the following:

1.  Open the [Email Accounts](SM_20_40_02.md) \(SM204002\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the Summary area of the form, do the following:
    1.  In the **Account Name** box, type the name of the system email account.
    2.  In the **Email Address** box, type the email address of the account that will be used as the system email account.
    3.  Optional: In the **Reply Address** box, type the email address that will be used for automatic replies.

## Step 2: To Specify the Servers { .section}

To specify the settings of the servers, do the following:

1.  While you are still on the [Email Accounts](SM_20_40_02.md) \(SM204002\) form with the account you have created, be sure the **Service** tab of the form is opened.
2.  In the **Protocol** box \(**Incoming Mail Server** section\), select the protocol to be used to connect to the incoming mail server.

    **Note:** If you have selected *IMAP*, every email that has been successfully collected from the server will be marked as read on the server.

    If you have selected the *IMAP* protocol, in the **Root Folder** box, you need to type the path to the folder that will be used as the root folder for storing emails.

3.  In the **Incoming Mail Server** box, type `outlook.office365.com`.
4.  In the **Outgoing Mail Server** box, type `outlook.office365.com`.
5.  On the form toolbar, click **Save**.

## Step 3: To Configure Authentication Through Microsoft Entra ID { .section}

Now you will set up authentication through Microsoft Entra ID as follows:

1.  While you are still working with the account on the [Email Accounts](SM_20_40_02.md) \(SM204002\) form, in the **Authentication Method** box, select *OAuth 2.0 for Microsoft 365*.
2.  Click the magnifier button in the **External Application** box. The system opens the **External Application** lookup table.
3.  In the lookup table, click the Plus button on the table toolbar. The system opens the [External Applications](SM_30_10_00.md) \(SM301000\) form in a new browser window.
4.  On the [External Applications](SM_30_10_00.md) form, click **Add New Record**.
5.  In the **Type** box, select *OAuth 2.0*.
6.  In the **Application Name** box, type the name of the application, for example, Office365 Connector.
7.  Switch to the browser tab with the [Microsoft Entra admin center](https://entra.microsoft.com/#home) and complete the steps in [Register an application with the Microsoft identity platform](https://learn.microsoft.com/en-us/entra/identity-platform/quickstart-register-app?tabs=certificate%2Cexpose-a-web-api#register-an-application).
8.  On the *Overview* page of the registered application in the admin center, copy the **Application \(client\) ID** value and paste it into the **Client ID** box on the [External Applications](SM_30_10_00.md) form.
9.  On the [External Applications](SM_30_10_00.md) form, click **View Redirect URI** and copy the value from the **Redirect URI** box.
10. Switch to the browser tab with the [Microsoft Entra admin center](https://entra.microsoft.com/#home) and complete the steps from [Add a redirect URI](https://learn.microsoft.com/en-us/entra/identity-platform/quickstart-register-app?tabs=certificate%2Cexpose-a-web-api#add-a-redirect-uri).
11. On the **Overview** page of the registered application in the admin center, click **Endpoints** on the top menu.
12. Copy the **OAuth 2.0 authorization endpoint \(v2\)** value and paste it into the **Authorization Endpoint** box on the [External Applications](SM_30_10_00.md) form.
13. Copy the **OAuth 2.0 token endpoint \(v2\)** value and paste it into the **Token Endpoint** box on the [External Applications](SM_30_10_00.md) form.
14. Switch to the browser tab with the [Microsoft Entra admin center](https://entra.microsoft.com/#home) and complete the steps from [Add a client secret for an application](https://learn.microsoft.com/en-us/entra/identity-platform/quickstart-register-app?tabs=client-secret%2Cexpose-a-web-api#tabpanel_1_client-secret).
15. On the *Certificates and secrets* page of the registered application in the admin center, copy the client secret value and paste it into the **Client Secret** box on the [External Applications](SM_30_10_00.md) form.
16. Switch to the browser tab with the [Microsoft Entra admin center](https://entra.microsoft.com/#home) and complete the steps from [Delegated permission to Microsoft Graph](https://learn.microsoft.com/en-us/entra/identity-platform/quickstart-configure-app-access-web-apis#delegated-permission-to-microsoft-graph) to grant the following delegated permissions:
    -   *offline\_access*
    -   *IMAP.AccessAsUser.All*
    -   *SMTP.Send*
    -   *POP.AccessAsUser.All* if needed \(however, using POP3 is not recommended in Acumatica ERP\)
17. On the [External Applications](SM_30_10_00.md) form, click **Save and Close** on the form toolbar. The system closes the window with the form and specifies the configured application in the **External Application** box on the [Email Accounts](SM_20_40_02.md) form.
18. Optional: In the **OAuth2 Scopes** and **OAuth2 Parameters** boxes, modify the predefined values of scopes and parameters that the system will use when issuing access tokens.

## Step 4: To Configure Port Numbers { .section}

Finally, you need to specify the advanced settings email account. Do the following:

1.  While you are still working with the account on the [Email Accounts](SM_20_40_02.md) \(SM204002\) form, configure port numbers on the **Service** tab.
2.  In the **Incoming Mail Port** box, type the number of the port to be used for incoming mail.
3.  In the **Incoming Connection Encryption** box, select the type of encryption for the incoming mail server.
4.  In the **Outgoing Mail Port** box, type the number of the port to be used for outgoing mail server.
5.  In the **Outgoing Connection Encryption** box, select the *Explicit TLS* option.
6.  On the form toolbar, click **Save** and then click **Sign In** to test the settings of the email account.

**Parent topic:**[Configuring Email Accounts](../UserGuide/EM__con_Configuring_Email_Accounts.md)

