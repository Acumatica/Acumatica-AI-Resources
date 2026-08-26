# Screen-Based Web Services API {#_b7a98ec4-46c2-4a27-9687-c36c6d22a678 .concept}

The screen-based web services API is a part of Acumatica ERP integration services, which provides integration with external data sources and third-party systems by using a SOAP interface.

External applications and systems that use the Acumatica ERP web services API can access the data managed by Acumatica ERP and the business functionality of Acumatica ERP. For example, you can integrate Acumatica ERP with eCommerce or an online store system, so that an external system pushes all information about customers, sales orders, and payments to Acumatica ERP, and Acumatica ERP provides information on the availability of stock items and processes all incoming data.

The screen-based web services API works with Acumatica ERP forms. That is, it provides API objects and methods for working with elements on Acumatica ERP forms.

To upload data to and from Acumatica ERP by using the screen-based web services API, you define the sequence of commands for the system to work with elements on an Acumatica ERP form. This sequence of commands reflects the sequence of actions to be executed for a data record as if the record is being manipulated by a user through an Acumatica ERP form. That is, when you enter data into the system manually, you perform a sequence of actions. You open the needed data entry form and start entering data. As you add a new record, you use the UI elements one by one—you type text, select values from combo boxes, clear or select check boxes, and click buttons. In the sequence of commands for the web services, you compose exactly the same sequence of actions by specifying a command for each user action on the form. For more information on the commands you can use, see [Working with Commands of the Screen-Based SOAP API](IS__mng_Screen-Based_API_Commands.md#).

**Note:** This sequence of commands is similar to the sequence of commands you configure when you create import and export scenarios. You can find more information on import and export scenarios in [Configuring Import Scenarios](../UserGuide/IS__mng_Configuring_Import_Scenarios.md#) and [Configuring Export Scenarios](../UserGuide/IS__mng_Configuring_Export_Scenarios.md#).

To use screen-based web services API in your application, you should generate the WSDL file of the web service, as described in [To Generate the WSDL File of the Web Services](IS__how_Generate_SB_WSDL.md#), and import this file to your development project as described in [To Import the WSDL File Into the Development Environment](IS__how_Import_SB_WSDL_To_Development_Environment.md#). After that, you can start developing your application. You can find the description of the API methods in [Screen-Based SOAP API Reference](IS__IS_SB_API_Reference.md#).

**Parent topic:**[Working with the Screen-Based SOAP API](../IntegrationDevelopmentGuide/IS__mng_Screen_Based_Web_Services.md)

