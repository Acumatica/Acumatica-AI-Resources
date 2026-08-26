# Custom SMS Provider: General Information {#_c344c57d-1a0c-4d5f-a707-a808d2e70549 .concept}

To send SMS notifications, the system uses SMS providers, which are available on the [SMS Providers](../UserGuide/SM_20_35_35.md) \(SM203535\) form. By default, the system includes the Twilio and Amazon SMS providers. You can add a custom SMS provider by using the platform API.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create a custom SMS provider
-   Register the custom SMS provider in the system

## Applicable Scenarios { .section}

You add a custom SMS provider in the following cases:

-   Your company has a business relationship with an SMS provider that is not available by default, and you need to support two-factor authentication through SMS notifications sent by this provider. For details about the use of SMS notifications for two-factor authentication, see [Two-Factor Authentication: General Information](../UserGuide/SA_Two_Factor_Auth_GeneralInfo.md).
-   Your company has a business relationship with an SMS provider that is not available by default and you need to support notifications about business events through SMS sent by this provider. For details about SMS notifications for business events, see [Business Events: Subscribers](../UserGuide/SA_Using_Business_Events_Subscribers_Concept.md).

## Implementation of a Custom SMS Provider { .section}

Acumatica ERP provides a set of interfaces for the implementation of SMS providers. To add a custom SMS provider, you need to implement the [PX.SmsProvider.ISmsProvider](https://help.acumatica.com/(W(1))/Help?ScreenId=ShowWiki&pageid=9483d8b6-ec79-9e25-855b-5caa6d011a7d) and [PX.SmsProvider.ISmsProviderFactory](https://help.acumatica.com/(W(1))/Help?ScreenId=ShowWiki&pageid=7af9ed30-2abd-4048-a85b-79282c5aeb9b) interfaces.

On the [SMS Providers](../UserGuide/SM_20_35_35.md) \(SM203535\) form, Acumatica ERP automatically discovers each class that implements the PX.SmsProvider.ISmsProvider interface and displays the SMS provider type that corresponds to the class in the **Provider Type** box.

**Attention:** A custom SMS provider can be implemented in a project of your Acumatica ERP extension library. You cannot include the custom SMS provider in a *Code* item of a customization project.

## ISmsProvider Interface {#section_vv2_1y4_y4b .section}

The class that implements the [PX.SmsProvider.ISmsProvider](https://help.acumatica.com/(W(1))/Help?ScreenId=ShowWiki&pageid=9483d8b6-ec79-9e25-855b-5caa6d011a7d) interface defines the parameters of the SMS provider and the logic for SMS processing.

In this class, you implement the following elements of the ISmsProvider interface:

-   ExportSettings: You use this property to define the list of parameters that are displayed on the **Parameters** tab of the [SMS Providers](../UserGuide/SM_20_35_35.md) \(SM203535\) form.
-   LoadSettings: By using this property, you obtain the values that a user has assigned to the parameters on the **Parameters** tab and assign them to variables in the class.
-   SendMessageAsync: You use this method to implement the logic of SMS processing.

## ISmsProviderFactory Interface { .section}

The class that implements the [PX.SmsProvider.ISmsProviderFactory](https://help.acumatica.com/(W(1))/Help?ScreenId=ShowWiki&pageid=7af9ed30-2abd-4048-a85b-79282c5aeb9b) interface is a factory class for the initialization of the SMS provider.

In this class, you implement the following elements of the ISmsProviderFactory interface:

-   Create: You define two methods for the creation of the SMS provider, one without parameters and another with the specified list of parameters, which are displayed on the **Parameters** tab of the [SMS Providers](../UserGuide/SM_20_35_35.md) \(SM203535\) form.
-   Description: You use this property to specify the description of the SMS provider, such as *Plivo SMS provider*, to be displayed in the **Description** column of the **Select - Provider Type** lookup table \(which is displayed when a user clicks the magnifier button in the **Provider Type** box on the [SMS Providers](../UserGuide/SM_20_35_35.md) form\).
-   Name: By using this property, you specify the type of the SMS provider, such as *PX.SmsProvider.Plivo.PlivoSmsProvider*, to be displayed in the **Type Name** column of the **Select - Provider Type** lookup table \(which is displayed when a user clicks the magnifier button in the **Provider Type** box on the [SMS Providers](../UserGuide/SM_20_35_35.md) form\).

**Parent topic:**[Adding a Custom SMS Provider](../PlugInDevelopmentGuide/PlugIn_SmsProvider_Mapref.md)

