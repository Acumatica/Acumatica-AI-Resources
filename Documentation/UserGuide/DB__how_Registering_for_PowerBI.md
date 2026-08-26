# Specific Widgets: To Register Your Acumatica ERP Instance for Power BI {#_0b174aab-ae96-4b7d-aa8d-df83bdb06292 .task}

To embed a Power BI tile on a dashboard in Acumatica ERP, you should first register your Acumatica ERP instance on Microsoft Azure for Power BI to obtain the client ID and client secret. When you have obtained these values for your Acumatica ERP instance, you can add a Power BI tile on a dashboard. For information on adding Power BI tile widgets, see [Specific Widgets: Power BI Tile Widgets](DB__con_PowerBI.md).

**Tip:** Integrating Microsoft Power BI reports into Acumatica ERP to be used as Acumatica ERP forms is a different type of interaction between Acumatica ERP and Microsoft Power BI than the integration described in the [Managing Power BI Integration](RP__Integration_Power_BI.md) and [To Integrate an External Application](RP__how_integrations_externalApps.md) topics.

**Attention:** Note the following:

-   The procedure below covers the most common usage scenarios. If you’re implementing a more complicated scenario and you encounter difficulties, contact Acumatica ERP technical support.
-   The vendor of the third-party software may change the user interface and settings. The labels you see in the UI may differ from the ones described in the procedure.
-   The procedure will be updated to describe new common scenarios and UI changes arise.

## Before You Begin { .section}

-   Be sure that your company has a Microsoft Entra ID instance configured. For more information, see [Integration with Microsoft Entra ID](US__con_AzureAD_Integration.md).
-   Make sure that you have at least one configured Power BI dashboard with tiles that you want to embed in Acumatica ERP. For details, see [Power BI](https://powerbi.microsoft.com/).

## To Register Your Acumatica ERP Instance {#_681ea30a-0755-42c8-bf9c-67c888d64b9d .section}

You register a new instance on the [Azure portal](https://portal.azure.com/). If you already have any registered instances and configured Power BI tiles, you can view them on the [https://app.powerbi.com/home?experience=power-bi](https://app.powerbi.com/home?experience=power-bi) website.

**Tip:** The registration of Power BI embedded is also described in [Set up Power BI Embedded](https://learn.microsoft.com/en-us/power-bi/developer/embedded/register-app?tabs=customers).

Do the following to register the instance:

1.  Sign in to the [Microsoft Azure portal](https://portal.azure.com).
2.  On the left menu, click the Microsoft Entra ID icon. If you have one Microsoft Entra ID instance, it will be opened automatically. If you have multiple instances, click the Microsoft Entra ID instance where you want to register the application.
3.  In the left pane, expand the **Manage** node and click **App registrations**. You will see a list of applications or an empty list, as shown below, depending on whether any applications have been registered previously.

    ![](Images/SSO_Azure_app_reg_01.png "Microsoft Azure: No registered applications in Microsoft Entra ID")

4.  On the pane toolbar, click **New registration**.
5.  In the **Register an application** pane \(which is shown in the following screenshot\), do the following:

    1.  In the **Name** box, type a name for your Acumatica ERP instance. This name will be displayed in the application list.
    2.  In the **Supported account types** section, select the **Accounts in this organizational directory only \(&lt;Your\_Entra\_ID\_Instance\_Name&gt; only - Single tenant\)** option button.
    3.  In the **Redirect URI** section, select *Web* in the first box. In the second box enter the URL of your Acumatica ERP site in the following format: *https://&lt;full URL of your Acumatica ERP site&gt;/powerBI/auth* \(for example, *https://app.site.net/powerBI/auth*\)

        **Tip:** This URL is case sensitive.

    4.  Click **Register**.
    ![](Images/SSO_Azure_app_reg_02.png "Microsoft Azure: Registration of an application")

    Now your Acumatica ERP instance is registered with Microsoft Entra ID, and an **Application \(Client\) ID** value is generated \(see the following screenshot\).

    ![](Images/SSO_Azure_app_reg_ID.png "Microsoft Azure: Application registered with Microsoft Entra ID")

6.  On the left menu, click **Certificates &amp; secrets**.
7.  On the **Client secrets** tab, click **New client secret**.
8.  In the **Add a client secret** dialog box, type the name of your client secret, select its expiration period, and click **Add**.
9.  Copy the client ID and client secret values for later retrieval.

    **Important:** You must copy the client secret value right after clicking **Add** and before you leave the page. If you leave the page and return to it, the value will be hidden and will not be shown anymore.

10. In the left pane, expand the **Manage** node and click **App registrations**.
11. Select your application on the **Owned applications** tab.
12. Click **View API permissions**.
13. In the **API permissions** pane, click **Add a permission** \(see the following screenshot\).

    ![](Images/SSO_Azure_app_reg_API_Permissions.png "Microsoft Azure: New API permissions")

14. On the **Microsoft APIs** tab, select **Power BI service**.
15. Select **Delegated Permissions** and add the following permissions:

    -   **Read all datasets**
    -   **Read all dashboards**
    -   **Read all reports**
    Other permissions are optional and may be granted for your customers' additional needs and at your company's risk.

16. Click **Add permissions** to save your changes.

**Parent topic:**[Configuring Widgets](../UserGuide/RPT_Configuring_Widgets_Mapref.md)

