# To Integrate an External Application {#_c367a962-0e04-4ba6-b823-b809f9c5432c .task}

To integrate an external application with Acumatica ERP, you use [External Applications](SM_30_10_00.md) \(SM301000\) form. For more information about integrations with external applications, see [Integration with External Applications](SM__con_Integration_External_Applications.md).

## To Integrate an External Application { .section}

1.  Open the [External Applications](SM_30_10_00.md) \(SM301000\) form.
2.  Click **View Redirect URI** on the form toolbar.

    Note that the **Redirect URI** box in the dialog box, which opens, is populated automatically.

    **Tip:** Use the URL that is displayed in the **Redirect URI** box, in the Power BI registration tool, as a value of the **Redirect URI** box.

3.  In the **Application ID** box, leave default value.

    **Tip:** The unique identifier of the application integration is generated automatically by the system.

4.  In the **Type** box, you select the type of application to be used for the integration.
5.  In the **Application Name** box, you type a name that will be displayed in Acumatica ERP.
6.  In the **Client ID** box, you type the client ID that you obtain during registration of your Acumatica ERP instance on the external application side.
7.  In the **Client Secret** box, you type the client secret that you have obtained during the registration of your Acumatica ERP instance on the external application side.
8.  On the form toolbar, click **Save**.
9.  On the form toolbar, click **Sign In**.

    **Tip:** The **Bearer** and **Expires On** boxes are populated automatically. For more information, see [Authentication Tokens Section](SM_30_10_00.md#_731811d2-4cd5-4b96-976d-a34df05d268d).


**Parent topic:**[Managing Power BI Integration](../UserGuide/RP__Integration_Power_BI.md)

