# Webhooks: General Information {#_f4e3f753-3408-409a-b797-1f6d1adf6182 .concept}

A webhook helps you to integrate external applications that provide data in their own format and need to submit this data to Acumatica ERP. For example, HubSpot collects data about email clicks and can export this data in a specific format to a particular URL. By using a webhook, you can configure Acumatica ERP to process the data submitted to a particular URL and save the data in Acumatica ERP.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create a webhook handler that will process the webhook requests from the external application
-   Register the webhook on the [Webhooks](../UserGuide/SM_30_40_00.md) \(SM304000\) form of Acumatica ERP
-   Include the webhook handler and the registered webhook in a customization project

## Applicable Scenarios { .section}

You configure the processing of webhooks in Acumatica ERP if you need to implement an integration with an external application that provides data in its own format, and if this format is not compatible with the web services APIs of Acumatica ERP.

## Configuration of Webhooks { .section}

To configure webhooks, you perform the following general steps:

1.  You create a webhook handler that processes the requests from the external application.
2.  You register a webhook that is supported with the webhook handler on the [Webhooks](../UserGuide/SM_30_40_00.md) \(SM304000\) form of Acumatica ERP.
3.  You copy the URL that is generated during the registration of the webhook handler, and then specify this URL in the external application so that it sends requests to this URL.
4.  You test the processing of the requests.
5.  Optional: You include the webhook implementation in a customization project.

## Webhook Handler { .section}

A webhook handler is a custom class that processes the requests passed to a particular URL. This class must implement the PX.Api.Webhooks.IWebhookHandler interface.

**Tip:** The PX.Api.Webhooks.IWebhookHandler interface is available in the `PX.Api.Webhooks.Abstractions.dll` assembly.

The IWebhookHandler interface has one method with the following signature.

```
Task HandleAsync(WebhookContext context, CancellationToken cancellation);
```

In the HandleAsync method, you perform the following general steps:

1.  You process authentication information in the request.
2.  You transform the data in the external format to the data that can be saved in Acumatica ERP.
3.  You invoke graph methods that save the data in Acumatica ERP.

**Tip:** You can write unit tests for your webhook handler. In a test, you can override only the `virtual` properties and methods of Webhook\* classes that are relevant to the test.

## Registration of the Webhook { .section}

After you have created a webhook handler and placed the DLL of the class in the `Bin` folder of your Acumatica ERP instance, you need to register the webhook handler on the [Webhooks](../UserGuide/SM_30_40_00.md) \(SM304000\) form. In the **Webhook Name** box, you enter the name of the webhook. In the **Implementation Class** box, you enter the name of the webhook handler that you have created.

After the new webhook is saved on the form, the **URL** box contains the URL that can be used by an external application to send data to Acumatica ERP.

**Tip:** Webhook requests are summed with other API requests in the Acumatica ERP license restrictions.

## Preparation of the External Application { .section}

For an external application to send requests to Acumatica ERP, you need to prepare the external application by specifying in it the URL generated on the [Webhooks](../UserGuide/SM_30_40_00.md) \(SM304000\) form.

You also need to implement requests to Acumatica ERP that satisfy the following requirements:

-   The request type must be POST or GET.
-   The body must contain only data that can be transferred with the HTTP protocol.
-   The body of the request must be no longer than the value specified by the webhook:maxrequestsize key of the `web.config` file of the Acumatica ERP instance. By default, this value is 1 MB. You can change the default value by specifying a different value in the key of the `web.config` file.

**Tip:** If an error occurs during the processing of a webhook, the error is returned in JSON format, no matter which `Accept` header is submitted in the request.

## Request Log { .section}

On the **Request History** tab of the [Webhooks](../UserGuide/SM_30_40_00.md) \(SM304000\) form, you can remove requests from the log and check the statuses of the processing of requests. You can also specify the type and amount of requests to be stored in the log.

In the log, the system stores the request body as a string. If the system can determine the encoding of the request body, the system reads the body as a string in this encoding. \(The system determines the encoding based on the `charset` parameter in the `Content-Type` header. If there is no `charset` parameter, the system tries to use the default encoding for the media type in `Content-Type`.\)

**Tip:** You can limit the length of the body of each request that is stored in the history by using the webhook:maxbodysizetolog key of the `web.config` file of the Acumatica ERP instance. By default, the length is 10 KB. The system trims the part of the body that exceeds the specified length.

## Webhooks in a Customization Project {#_384c7952-eba3-4109-924f-ba44994867d4 .section}

If the webhook must be used in multiple Acumatica ERP instances, you can include the webhook in a customization project and publish this project to the needed Acumatica ERP instances. For details about working with customization projects, see [Managing Customization Projects](../CustomizationPlatform/CG_GL_Projects.md).

To include the webhook in a customization project, you need to include the following project items:

-   *Webhook*, which includes the webhook registered on the [Webhooks](../UserGuide/SM_30_40_00.md) \(SM304000\) form. You use the [Webhooks](../UserGuide/AU_21_00_20.md) \(AU210020\) page of the Customization Project Editor to manage webhooks in the customization project.
-   *File*, which includes the DLL file with code of the webhook handler. You use the [Files](../UserGuide/AU_20_45_00.md) \(AU202500\) page of the Customization Project Editor to manage files.

If you want to make the implementation class of the webhook unavailable for editing in the instance where the customization project is published, select the **Predefined** check box, and click **Save**. In this instance, an administrative user can still make the webhook inactive and modify the request history settings.

**Parent topic:**[Configuring Webhooks](../IntegrationDevelopmentGuide/IntegrationDev_Webhooks_Mapref.md)

