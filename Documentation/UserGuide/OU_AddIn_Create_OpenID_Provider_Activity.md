# Acumatica Add-In for Outlook: To Create an OpenID Provider {#_4328d228-8a42-48a1-ad65-37dcd3ac3cc8 .task}

You need to create an OpenID provider that will be used for authentication in the Acumatica add-in for Outlook with Microsoft 365.

**Attention:** Only one provider per tenant can be set up for use with the add-in.

Do the following instructions:

1.  Open the [OpenID Providers](SM_30_30_20.md) \(SM303020\) form and add a new record.
2.  In the **Display Name** box, type a name for the new provider \(for example, `Add-in for Outlook`\).
3.  In Microsoft Entra, open the app you configured \(as described in [Acumatica Add-In for Outlook: To Register an Acumatica ERP Instance in Microsoft Entra](OU_AddIn_Register_in_MS_Entra_Activity.md)\) and do the following:
    1.  In the navigation pane, click **Overview**.
    2.  On the Overview page, copy the value of the **Directory \(tenant\) ID** box.
4.  Go back to the [OpenID Providers](SM_30_30_20.md) form in Acumatica ERP.
5.  In the **Issuer Identifier** box, enter the following, replacing `<tenant-id>` with the value you copied.

    ```
    https://login.microsoftonline.com/<tenant-id>/v2.0
    ```

    If your Entra tenant belongs to Microsoft Cloud for Government, enter the following:

    ```
    https://login.microsoftonline.us/<tenant-id>/v2.0
    ```

6.  In Microsoft Entra, open the app you configured and do the following:
    1.  In the navigation pane, click **Overview**.
    2.  On the Overview page, copy the value of the **Application \(client\) ID** box.
7.  Go back to the [OpenID Providers](SM_30_30_20.md) form in Acumatica ERP.
8.  Paste the copied value in the **Client ID** box.
9.  Paste the value saved in Instruction 9 of [Acumatica Add-In for Outlook: To Register an Acumatica ERP Instance in Microsoft Entra](OU_AddIn_Register_in_MS_Entra_Activity.md) in the **Client Secret** box.
10. Select the **Use Provider for Sign-In to Acumatica Add-In for Outlook** check box.
11. On the **Authentication Settings** tab, click **Autoconfiguration**.
12. Click **Save** on the form toolbar.

**Parent topic:**[Add-In for Outlook: Modern UI](../UserGuide/OU_OU_ModernUI.md)

