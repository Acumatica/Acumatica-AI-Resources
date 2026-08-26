# To Use the Screen-Based API Wrapper {#_6bd1cc05-5d3d-49df-8ad9-089147d120ab .task}

The screen-based SOAP API depends on the user interface of Acumatica ERP forms. That is, each generated WSDL description of this API includes the API elements that correspond to the current names of UI elements of the system. Therefore, if any changes have been made to the user interface of the system after the WSDL file was generated, the WSDL description will not include these changes, and the client application that uses this WSDL will fail when it works with the system.

To prevent application failures and omit the regeneration of the WSDL description for each change of the user interface of the system, you can use the screen-based API wrapper, as described in this topic. You can find more information on the screen-based API wrapper in [Screen-Based API Wrapper](IS__con_Screen-Based_API_Wrapper.md#).

## To Use the Screen-Based Web Services API Wrapper in a Client Application {#_4cbaae0b-11d2-4ee3-ba2a-91b615b3f4e4 .section}

1.  Add to your project a reference to `PX.Soap.dll`.

    **Note:** The `PX.Soap.dll` file is installed automatically during Acumatica ERP installation. You can find this file in the `ScreenBasedAPIWrapper` folder of your Acumatica ERP installation folder.

2.  Use the Helper.GetSchema\(\) method from the `PX.Soap` library in the code of your application instead of the corresponding Screen.GetSchema\(\) method to obtain the schema of each form. For example, the following code retrieves the schema of the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form by using the screen-based API wrapper.

    ```
    Screen context = new Screen();
    context.CookieContainer = new System.Net.CookieContainer();
    context.Url = Properties.Settings.Default.MyStoreIntegration_MyStore_Screen;
    context.Login
    (
      Properties.Settings.Default.Login, 
      Properties.Settings.Default.Password
    );
    
    AR303000Content custSchema = 
      PX.Soap.Helper.GetSchema<AR303000Content>(context);
    ```

3.  Work with the retrieved Content object by using the standard screen-based web services API methods.

**Parent topic:**[Working with the Screen-Based SOAP API](../IntegrationDevelopmentGuide/IS__mng_Screen_Based_Web_Services.md)

