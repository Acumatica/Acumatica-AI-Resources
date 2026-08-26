# To Create an OpenID Provider {#_13b2500e-e093-46d4-849d-3e6c1b12f85d .task}

To create an OpenID provider that will be used for authentication in the Acumatica add-in for Outlook with Microsoft 365, perform the steps below.

**Attention:** Only one provider within a tenant can be set up for use with the Acumatica add-in for Outlook.

1.  Open the [OpenID Providers](SM_30_30_20.md) \(SM303020\) form and add a new record.
2.  In the **Display Name** box, type a name for the new provider \(for example, `Add-in for Outlook`\).
3.  In Microsoft Entra, open the app you configured as described in [To Register an Acumatica ERP Instance in Microsoft Entra](OU__how_To_Register_in_MS_Entra.md), and do the following:
    1.  In the app navigation pane, click **Overview**.
    2.  On the app overview page, copy the value of the **Directory \(tenant\) ID** box.
4.  Go back to the [OpenID Providers](SM_30_30_20.md) form in Acumatica ERP.
5.  In the **Issuer Identifier** box, enter the following value, replacing `<tenant-id>` with the value copied on the Microsoft Entra app overview page:

    ```
    https://login.microsoftonline.com/<tenant-id>/v2.0
    ```

6.  In Microsoft Entra, open the app you configured as described in [To Register an Acumatica ERP Instance in Microsoft Entra](OU__how_To_Register_in_MS_Entra.md), and do the following:
    1.  In the app navigation pane, click **Overview**.
    2.  On the app overview page, copy the value of the **Application \(client\) ID** box.
7.  Go back to the [OpenID Providers](SM_30_30_20.md) form in Acumatica ERP.
8.  Paste the copied value in the **Client ID** box.
9.  Paste the value saved in Step 9 of [To Register an Acumatica ERP Instance in Microsoft Entra](OU__how_To_Register_in_MS_Entra.md) in the **Client Secret** box.
10. Select the **Use Provider for Sign-In to Acumatica Add-In for Outlook** check box.
11. On the **Authentication Settings** tab, click **Autoconfiguration**.
12. Click **Save** on the form toolbar.

**Parent topic:**[Installing and Updating the Acumatica Add-In for the AcumaticaClassic UI](../UserGuide/OU__MNG_Installing_Add_In.md)

