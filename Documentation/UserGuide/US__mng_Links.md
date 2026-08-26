# Integrating Acumatica ERP Forms on Your Website {#_4d85b149-4ead-4f05-9b1b-cf367fa5e7b3 .concept}

Acumatica ERP gives you the ability to embed particular forms on a website that is used by employees of your organization in their daily work. For example, you can embed the Tasks \(EP4040PL\) form within your Office 365 page to view and access your Acumatica ERP task list directly in Office 365.

To display an Acumatica ERP form on your website, you use the URL of the Acumatica ERP form. You can include additional parameters in the URL for more convenient display and use of the form. These parameters are described in this topic.

## Appearance of the Embedded Acumatica ERP Form { .section}

When you integrate an Acumatica ERP form on your website, the form area, the main menu, and the navigation pane are displayed by default. To simplify the appearance of the form, you can hide the main menu and the navigation pane and display only the form area by using the `HidePageTitle` URL parameter with the *true* value.

**Example**

To embed the [Contacts](CR_30_20_00.md) \(CR302000\) form of the *http://app.site.com/instance/* instance on a website with only the form area displayed, you use the following URL:

*http://app.site.com/instance/CR/CR302000.aspx?HidePageTitle=true*

## Silent Login in the URL of Acumatica ERP Forms { .section}

Users access an Acumatica ERP form embedded on your website by using an authentication method that you set up during the system configuration \(for details, see [Managing User Access](SA_Managing_User_Access_Mapref.md)\). If you have enabled single sign-on with an external identity provider, such as Microsoft Entra ID \(formerly known as Microsoft Azure Active Directory\), you can use the `SilentLogin` URL parameter to automatically redirect your users to the sign-in page of this identity provider.

**Note:** Before you use the `SilentLogin` URL parameter, confirm on the [Users](SM_20_10_10.md) \(SM201010\) form that your users have registered their external accounts with the Acumatica ERP instance.

The `SilentLogin` parameter can take the following values.

|Parameter|Identity Provider|
|---------|-----------------|
|*None*|Acumatica ERP|
|*Federation*|Microsoft Entra ID|
|*Google*|Google|
|*MicrosoftAccount*|Microsoft Account|

**Example**

To give users who access the [Contacts](CR_30_20_00.md) \(CR302000\) form on the external website the ability to authenticate themselves with Google, you use the following URL:

[http://app.site.com/instance/CR/CR302000.aspx?silentLogon=Google](http://app.site.com/instance/CR/CR302000.aspx?silentLogon=Google)

