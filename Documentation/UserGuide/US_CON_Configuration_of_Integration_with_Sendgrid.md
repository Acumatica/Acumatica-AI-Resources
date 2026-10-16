# Configuration of Integration with SendGrid

To start using SendGrid, you \(or another administrator in your company\) need to set up a SendGrid connection and create an email account that uses this connection. In Acumatica ERP, the same SendGrid connection can be used for multiple email accounts.

**Attention:** Using the SendGrid portal, for each API key, you should configure full access to the following API capabilities: *Mail Send*, *Scheduled Sends*, and *Event Notification*.

To make the integration functionality available in Acumatica ERP, enable the *SendGrid Integration* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Configuration of a SendGrid Connection

On the [SendGrid Connections](SG_20_50_00.md) \(SG205000\) form, you can create a connection and specify the settings needed to communicate with SendGrid. A new connection is active by default.

In the **Settings** section of the **General** tab, you must specify the API key obtained from SendGrid and the API key name. Additionally, you can specify SendGrid email categories that can be used for reporting purposes in your company's SendGrid portal.


To receive results of tracking subscription events, Acumatica ERP communicates with SendGrid through webhooks.

**Important:** For webhooks to be used, the Acumatica ERP instance must be accessible through the web, or a proxy server must be configured.

To receive SendGrid events, select the **Receive SendGrid Events via Webhooks** check box in the **Tracking Subscription Preferences** section of the **General** tab. Also, select a webhook ID and specify the URL of the webhook in the corresponding boxes.

**Tip:** You can review the details of a webhook or configure a new one manually on the [Webhooks](SM_30_40_00.md) \(SM304000\) form. For details about configuring webhooks, see [Configuring Webhooks](../IntegrationDevelopmentGuide/IntegrationDev_Webhooks_Mapref.md).

You can also select the corresponding check boxes to specify which SendGrid events should be sent to Acumatica ERP, including processed, delivered, bounced, opened, clicked, spam report, and unsubscribe events.

You can click **Test Connection** on the form toolbar to verify the connection settings. If you need to reload the default settings provided by the SendGrid plug-in, click **Reload Default Settings**.

On the **Email Accounts** tab of the [SendGrid Connections](SG_20_50_00.md) \(SG205000\) form, you can view the email accounts that use the selected connection.

## Configuration of a SendGrid Email Account

Your company may use multiple email addresses for sending emails with SendGrid. For each email address you can configure a corresponding email account in Acumatica ERP using the same API key.

On the [Email Accounts](SM_20_40_02.md) \(SM204002\) form, you create an email account and select *SendGrid* in the **Email Service Plug-In** box. With the plug-in selected, the system displays the **SendGrid Connection** box, in which you select a SendGrid connection that will be used for the email account.

Users of Acumatica ERP can send emails by using the email account. If the tracking of results is configured for the selected SendGrid connection, they can also review them by using the company's SendGrid portal.

To enable support of the SendGrid Reply-to functionality for the email account, you select the **Add Tags for the Incoming Processing** check box on the **Incoming Mail Processing** tab of the [Email Accounts](SM_20_40_02.md) form.

**Parent topic:**[Integrating Acumatica ERP with SendGrid](../UserGuide/US_MNG_Integrating_with_SendGrid.md)

