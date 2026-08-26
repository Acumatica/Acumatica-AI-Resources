# To Generate the WSDL File of the Web Services {#_1eac8817-c782-4610-b7e1-dc2e831dcb42 .task}

The WSDL description of the Acumatica ERP screen-based web services API contains the descriptions of the API objects and methods that you can use to access Acumatica ERP forms.

Because of the connection of the API with Acumatica ERP forms, each generated WSDL description of this API reflects the current state of the system. That is, the WSDL description does not include any changes made to the system after the WSDL file was generated, and each time you change the system, you should regenerate the WSDL description and update your application accordingly.

**Note:** You can prevent breaking changes in your application and omit regeneration of the WSDL description for each change in the system by using the screen-based API wrapper. For details on how to use the wrapper, see [To Use the Screen-Based API Wrapper](IS__how_Prevent_Breaking_Changes.md#).

For example, suppose that you have generated a WSDL description of the web service that contains the definition of the `CustomerID` property, which corresponds to the **Customer ID** element on the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form. Further, suppose that you changed the name of the **Customer ID** element to **Customer Identifier** in a customization project. To access the **Customer Identifier** element on the form through the screen-based web services API, you need to regenerate the WSDL description so that it contains the definition of the `CustomerIdentifier` property \(which corresponds to the **Customer Identifier** element\) and update your application accordingly.

**Note:** For any container \(that is, a form, tab, grid, tree, or panel\), element, or action with the **\#** or **%** title, the generated WSDL file contains `NUMBER` instead of the `#` symbol, and `PERCENT` instead of the `%` symbol.

You can generate the WSDL file of an Acumatica ERP web service in one of the following ways.

## To Generate a WSDL File for One Acumatica ERP Form { .section}

If your application needs to work with only one Acumatica ERP form, you can generate the web service that provides access to only this form.

To generate a WSDL file for a form, on the title bar of this form, click **Tools** &gt; **Web Service** on the UI. This opens the page that contains the description of the web service, with the following URL: `http(s)://<ApplicationPath>/Soap/<FormID>.asmx`. In this URL, `<ApplicationPath>` is replaced with the actual URL of your application, and `<FormID>` is replaced with the ID of the form. For example, suppose that you generated a web service for the [Customers](../UserGuide/AR_30_30_00.md) form of the *WebServiceAPITest* application, which is accessed under a secure connection and is running on a local computer. The URL of this service is `https://localhost/WebServiceAPITest/Soap/AR303000.asmx`.

## To Generate a WSDL File for Multiple Acumatica ERP Forms { .section}

If your application needs to work with multiple Acumatica ERP forms, you can generate one web service that provides access to all needed forms.

To generate a WSDL file for multiple forms, on the [Web Services](../UserGuide/SM_20_70_40.md) \(SM207040\) form, you should do the following:

1.  Type the ID of the web service in the **Service ID** box of the Summary area of the form. This ID will be used in the URL of the generated service.
2.  Select the Acumatica ERP forms that your application needs to use on the left pane of the form, and click **Add to Grid** for each form.
3.  Select the types of integration these forms should provide \(which can include importing data, exporting data, and submitting data\) by selecting the appropriate check boxes \(any combination of **Import**, **Export**, or **Submit**\) for corresponding rows on the right pane of the form.
4.  Click **Generate**.

**Note:** The functional areas that expose the selected forms should be properly configured and the forms should open in a web browser. If a form could not be opened in a web browser, the web service definition will not be generated for this form.

After the web service is generated, you can view the WSDL description by clicking **View Generated** on the form toolbar. This opens the page that contains the description of the web service with the following URL: `http(s)://<ApplicationPath>/Soap/<ServiceID>.asmx`. In this URL, `<ApplicationPath>` is replaced with the actual URL of your application, and `<ServiceID>` is replaced with the ID of the service that you specified in the **Service ID** box when configuring the service. For example, suppose that you generated a web service for multiple forms with the `MYSTORE` service ID for the *WebServiceAPITest* application, which is accessed under a secure connection and is running on a local computer. The URL of this service is `https://localhost/WebServiceAPITest/Soap/MYSTORE.asmx`.

**Parent topic:**[Working with the Screen-Based SOAP API](../IntegrationDevelopmentGuide/IS__mng_Screen_Based_Web_Services.md)

