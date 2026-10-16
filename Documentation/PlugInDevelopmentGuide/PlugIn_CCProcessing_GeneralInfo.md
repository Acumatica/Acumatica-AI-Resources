# Credit Card Processing Plug-In: General Information

You can implement a custom credit card processing plug-in to connect Acumatica ERP with a payment processing center other than Acumatica Payments. Acumatica Framework provides asynchronous interfaces that you use to implement the plug-in.

These interfaces support tokenized processing. With tokenized processing, credit card information isn’t saved in the Acumatica ERP database. Instead, the processing center stores the credit card data, and the Acumatica ERP database stores only the identification tokens that link customers and payment methods with the credit card data at the processing center.

**Attention:** The built-in Acumatica Payments plug-in implements the interfaces described in this topic. For more information, see the [Configuring and Using Acumatica Payments](../UserGuide/AR__MNG_Acumatica_Payments.md) chapter.

## Applicable Scenario

You may need to implement a payment plug-in that works with a credit card payment processing center other than Acumatica Payments.

## Implementation of a Credit Card Processing Plug-In

The implementation of a credit card processing plug-in includes the following general steps:

1.  In a class library project, you define a class that implements the [PX.CCProcessingBase.Interfaces.V2.Async.ICCTransactionProcessor](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=d4040205-c041-a96b-274a-0613da726981) interface, which provides credit card processing functionality.
2.  If you need to implement additional functionality, such as tokenized processing or payment processing without the preliminary creation of payment profiles, you define additional classes. For details, see [Credit Card Processing Plug-In: Additional Functionality](PlugIn_CCProcessing_AdditionalInterfaces.md).
3.  You define a class that implements the [PX.CCProcessingBase.Interfaces.V2.Async.ICCProcessingPlugin](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=2bcbf126-b629-c0cf-b7c9-cd2861b75e4b) interface—the root interface for credit card payment processing. Acumatica ERP uses this interface to find the plug-in in the application libraries.
4.  You build the project, include the assembly in a customization project, and publish the customization project.

    During the publication, the assembly is copied to the `Bin` folder of the Acumatica ERP instance. During startup, the system automatically discovers the class that implements the ICCProcessingPlugin interface and includes it in the list in the **Payment Plug-In** box on the [Processing Centers](../UserGuide/CA_20_50_00.md#) \(CA205000\) form.

5.  You test your plug-in in Acumatica ERP.

## ICCProcessingPlugin Interface

The root interface for implementation of custom plug-ins for credit card processing is [PX.CCProcessingBase.Interfaces.V2.Async.ICCProcessingPlugin](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=2bcbf126-b629-c0cf-b7c9-cd2861b75e4b).

The class that implements this interface should have a public constructor that receives any required dependencies through constructor-based dependency injection. In the class, you implement the methods of the ICCProcessingPlugin interface as follows:

-   In the ExportSettings method, which exports the required settings from the plug-in to the [Processing Centers](../UserGuide/CA_20_50_00.md) \(CA205000\) form, return a collection that contains the settings that can be specified by the user on the form. The syntax of the method is shown in the following code.

    ```csharp
    IEnumerable<SettingsDetail> ExportSettings(); 
    ```

-   In the ValidateSettings method, validate the settings modified on the [Processing Centers](../UserGuide/CA_20_50_00.md) form, which are passed as the parameter of the method. Return `null` if validation was successful or an error message if validation failed. The syntax of the method is shown in the following code.

    ```csharp
    string ValidateSettings(SettingsValue setting);
    ```

-   In the TestCredentialsAsync method, check the connection to the payment gateway by using the credentials that are specified by the user on the [Processing Centers](../UserGuide/CA_20_50_00.md) form. The syntax of the method is shown in the following code.

    ```csharp
    Task TestCredentialsAsync(IEnumerable<SettingsValue> settingValues,
      CancellationToken ct = default);
    ```

-   In the CreateProcessor&lt;T&gt; method, return a new object of the T type and initialize the object with the settings passed to the method. The T type can be any of the asynchronous interfaces described in [Credit Card Processing Plug-In: Additional Functionality](PlugIn_CCProcessing_AdditionalInterfaces.md).

    If a particular T type is not supported by your plug-in, return `null` for this type. The following code shows a sample implementation of the method.

    ```csharp
    public T CreateProcessor<T>(IEnumerable<SettingsValue> settingValues)
      where T : class
    {
      if (typeof(T) == typeof(ICCProfileProcessor))
      {
        return new MyProfileProcessor(settingValues) as T;
      }
      if (typeof(T) == typeof(ICCHostedFormProcessor))
      {
        return new MyHostedFormProcessor(settingValues) as T;
      }
      if (typeof(T) == typeof(ICCHostedPaymentFormProcessor))
      {
        return new MyHostedPaymentFormProcessor(settingValues) as T;
      }
      if (typeof(T) == typeof(ICCHostedPaymentFormResponseParser))
      {
        return new MyHostedPaymentFormResponseParser(settingValues) as T;
      }
      if (typeof(T) == typeof(ICCTransactionProcessor))
      {
        return new MyTransactionProcessor(settingValues) as T;
      }
      if (typeof(T) == typeof(ICCTransactionGetter))
      {
        return new MyTransactionGetter(settingValues) as T;
      }
      if (typeof(T) == typeof(ICCProfileCreator))
      {
        return new MyProfileCreator(settingValues) as T;
      }
      if (typeof(T) == typeof(ICCWebhookResolver))
      {
        return new MyWebhookResolver() as T;
      }
      if (typeof(T) == typeof(ICCWebhookProcessor))
      {
        return new MyWebhookProcessor(settingValues) as T;
      }
      if (typeof(T) == typeof(ICCTranStatusGetter))
      {
        return new MyTranStatusGetter() as T;
      }
      return null;
    }
    ```


## ICCTransactionProcessor Interface

For the creation of a custom plug-in, you also must implement the [PX.CCProcessingBase.Interfaces.V2.Async.ICCTransactionProcessor](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=d4040205-c041-a96b-274a-0613da726981) interface to process credit card transactions. In the class, you implement the DoTransactionAsync method, which sends transaction data to the payment gateway and returns the processing result.

The following code shows the declaration of a class that implements the ICCTransactionProcessor interface.

```csharp
using System.Threading;
using System.Threading.Tasks;
using PX.CCProcessingBase.Interfaces.V2.Async;

public class MyTransactionProcessor : ICCTransactionProcessor
{
  public Task<ProcessingResult> DoTransactionAsync(ProcessingInput inputData,
    CancellationToken ct = default)
  {
    ...
  }
}
```

**Parent topic:**[Implementing Plug-Ins for Processing Credit Card Payments](../PlugInDevelopmentGuide/PlugIn_CCProcessing_Mapref.md)

