# Working with Exceptions {#_49288669-f234-440e-92d6-ce59e4edee7e .concept}

The Acumatica Framework provides you with a comprehensive set of exceptions that you may use for various development scenarios while you are implementing business logic on your Acumatica ERP instance. All of these exceptions are derived from the PXException base class. This base class provides the localization of error messages, as well as a number of helper methods. For details, see [PXException](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=5f3dd9b1-1d2b-10e8-fc00-bd51fc71c8ee). For a list of all the available exceptions, see the [Platform API Reference](https://help.acumatica.com/Help?ScreenId=00000000).

Here are some common development scenarios in which you should use the exceptions provided by the framework:

-   Handling failed data validation: You throw an exception of the PXSetPropertyException type to interrupt an insert, update, or delete operation that the system performs on a data field if the validation criteria for this field is not met. This exception displays an error message next to the corresponding UI element of the data field. Alternatively, if you want to avoid interrupting the operation, you may do so by passing an instance of PXSetPropertyException to the RaiseExceptionHandling&lt;&gt;\(\) method of the PXCache&lt;&gt; type. For details, see [Data Validation: Validation of Field Values](CodeCustomization_DataValidation_FieldValuesValidation.md).
-   Redirecting the user to a webpage: You throw an exception by using a descendent of the PXBaseRedirectException type to redirect a user from one webpage to another. The framework provides you with a number of exceptions that are derived from the PXBaseRedirectException base class, such as [PXPopupRedirectException](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=d9f44c15-aad4-407a-205c-b38138a8d451) and [PXRedirectWithReportException](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=1c494034-939c-fefb-7a79-3b735cbf4b88). All the exceptions derived from PXBaseRedirectException perform a redirection operation for specific contexts. For details, see [Redirection to Webpages: General Information](CodeCustomization_Redirection_GeneralInfo.md).

In some rare cases, you may need to write your own custom exceptions. For details, see [Creating a Custom Exception](BL__con_Creating_CustomExceptions.md).

-   **[Creating a Custom Exception](../StudioDeveloperGuide/BL__con_Creating_CustomExceptions.md)**  


**Parent topic:**[Implementing Business Logic](../StudioDeveloperGuide/BL__mng.md)

