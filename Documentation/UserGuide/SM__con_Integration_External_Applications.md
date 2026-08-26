# Integration with External Applications {#_acfa8a09-c6de-456c-9ea9-29a25fd3d932 .concept}

If you use Microsoft Power BI to visually display reports generated in Acumatica ERP, you can embed these Microsoft Power BI reports into Acumatica ERP. With this integration, users of your Acumatica ERP instance will have at hand the information that they need for their work.

In this topic, you will find information about the types of integration with Microsoft Power BI, the configuration steps for integration with Microsoft Power BI, and the refreshing of access tokens.

**Tip:** Embedding Power BI tiles in an Acumatica ERP dashboard is a different type of interaction between Acumatica ERP and Microsoft Power BI that is described in [Specific Widgets: To Register Your Acumatica ERP Instance for Power BI](DB__how_Registering_for_PowerBI.md) and [Specific Widgets: Power BI Tile Widgets](DB__con_PowerBI.md#) topics.

## Types of Integration with Microsoft Power BI { .section}

In Acumatica ERP, the following types of integration with Microsoft Power BI are supported:

-   *Power BI*: This type of integration is intended for reports created in the Microsoft Power BI. These reports are kept in a user's personal workspace. Acumatica ERP works with these reports on behalf of this user and uses the OAuth 2.0 protocol for integration. The configuration steps are described in [Configuration Steps for Power BI](#_6072cef1-6809-4088-ade7-44ca6758f433). For this integration type, you need to refresh access tokens periodically, as described in [Access Token Refreshment](#_78375a77-33e9-4a5d-bc3e-4a62a741de99).
-   *Power BI Embedded*: With this type of integration, the Microsoft Power BI Embedded tool is used for the integration of Microsoft Power BI reports. For the configuration steps, see [Configuration Steps for Power BI Embedded](#_e1423d93-eb7d-456c-96ca-596d3183ed79).

You can use either of these types for adding Microsoft Power BI reports in Acumatica ERP.

## Configuration Steps for Power BI {#_6072cef1-6809-4088-ade7-44ca6758f433 .section}

Before you integrate your Acumatica ERP instance with Microsoft Power BI, make sure of the following:

-   Your organization should be signed up for Microsoft Power BI. If your organization uses Microsoft Entra ID you can use your Entra ID account to sign in to Microsoft Power BI.
-   You have configured a Power BI report that you want to integrate in Acumatica ERP. For details, see [Power BI](https://powerbi.microsoft.com/).

To integrate your Acumatica ERP instance with Microsoft Power BI, you do the following:

1.  You obtain a client ID and client secret for your Acumatica ERP instance. For this procedure, see [Specific Widgets: To Register Your Acumatica ERP Instance for Power BI](DB__how_Registering_for_PowerBI.md).
2.  You set up integration on the [External Applications](SM_30_10_00.md) \(SM301000\) form.
3.  You sign in to the Microsoft Power BI website with the credentials of a user who is an owner of a report that you want to integrate in Acumatica ERP.
4.  You add a report from the integrated Microsoft Power BI workspace in Acumatica ERP on the [Application Resources](SM_30_10_10.md) \(SM301010\) form.
5.  You give user roles access rights to the integrated report on the [Application Resources](SM_30_10_10.md) form.

After you perform these steps, the Microsoft Power BI report you have added appears on the selected site map location and is visible to users with the defined roles.

## Configuration Steps for Power BI Embedded {#_e1423d93-eb7d-456c-96ca-596d3183ed79 .section}

Before you use Microsoft Power BI Embedded for integrating Microsoft Power BI reports with your Acumatica ERP instance, you should make sure of the following:

-   Your organization should have a Microsoft Entra ID instance configured. For more information, see [Microsoft Entra ID](https://www.microsoft.com/en-us/security/business/identity-access/microsoft-entra-id) and [Integration with Microsoft Entra ID](US__con_AzureAD_Integration.md).
-   You have imported a Power BI report to Microsoft Azure. For details, see [Get started with Power BI Embedded](https://docs.microsoft.com/en-us/azure/power-bi-embedded/get-started).

To integrate Microsoft Power BI reports with your Acumatica ERP instance by using Microsoft Power BI Embedded, you do the following:

1.  You create a capacity for a Power BI report that you want to integrate with Acumatica ERP on the Microsoft Azure portal. For details, see [Create Power BI Embedded capacity in the Azure portal](https://docs.microsoft.com/en-us/power-bi/developer/azure-pbie-create-capacity).
2.  You set up integration on the [External Applications](SM_30_10_00.md) \(SM301000\) form. For more details, see [To Integrate an External Application](RP__how_integrations_externalApps.md)
3.  You add a report from the integrated Power BI capacity in Acumatica ERP on the [Application Resources](SM_30_10_10.md) \(SM301010\) form. For more details, see [To Add an Integrated External Application Resource to Acumatica Site Map](RP__how_integrations_EXTtoAppResources.md)
4.  You assign user roles access rights to the integrated report on the [Application Resources](SM_30_10_10.md) form.

After you perform these steps, the Microsoft Power BI report you added appears on the specified site map location and is visible to users with the defined roles.

## Access Token Refreshment {#_78375a77-33e9-4a5d-bc3e-4a62a741de99 .section}

When you integrate an external application in Acumatica ERP by using the OAuth 2.0 protocol, access tokens are generated by the application. These tokens have a short lifetime for security reasons. The tokens are refreshed automatically if Acumatica ERP connects to the application before the expiration date and time. If the application is called from Acumatica ERP rarely and the access token becomes expired, you need to refresh it to continue using the integrated resources of this application. You use the [Refresh Application Access Tokens](SM_50_10_00.md) \(SM501000\) form to refresh tokens that are expired or about to expire. You can refresh tokens manually or schedule this process. We recommend that tokens be refreshed at least once a day.

**Tip:** You need to refresh tokens only for the *Power BI* integration type. Authentication tokens used by the *Power BI Embedded* integration type do not require manual refreshment.

**Parent topic:**[Managing Power BI Integration](../UserGuide/RP__Integration_Power_BI.md)

