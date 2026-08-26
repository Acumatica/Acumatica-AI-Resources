# To Implement a Plug-In for Processing Credit Card Payments {#_927a2a44-ebe5-4c98-a277-7027f4e073a0 .task}

In Acumatica ERP, the built-in *Acumatica Payments Plug-In* processes transactions in the Acumatica Payments processing center. For more information on this plug-in, see [Configuring and Using Acumatica Payments](../UserGuide/AR__MNG_Acumatica_Payments.md). You can implement your own plug-in for working with processing centers other than Acumatica Payments, as described in this topic.

## To Implement a Credit Card Processing Plug-In { .section}

1.  In a class library project, define a class that implements the [PX.CCProcessingBase.Interfaces.V2.ICCTransactionProcessor](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=e4451df7-beda-24e3-664e-58a53507bbc2) interface, which provides credit card processing functionality. In the class, implement the DoTransaction method, which processes the transaction in the payment gateway.

    The following code shows the declaration of a class that implements the ICCTransactionProcessor interface.

    ```
    using PX.CCProcessingBase.Interfaces.V2;
    
    public class MyTransactionProcessor : ICCTransactionProcessor
    {
      public ProcessingResult DoTransaction(ProcessingInput inputData)
      {
        ...
      }
    }
    ```

2.  If you need to implement tokenized processing, define the following classes:

    -   A class that implements the [PX.CCProcessingBase.Interfaces.V2.ICCProfileProcessor](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=b7f72635-4c12-ae82-9ab5-6fa2a673b83a) interface \(which provides methods to manage customer and payment profiles\)
    -   A class that implements the [PX.CCProcessingBase.Interfaces.V2.ICCHostedFormProcessor](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=c10bc726-a09a-0d63-1d37-d6a134f6e072) interface \(which provides methods to work with hosted forms for the creation and management of payment profiles\)
    In the classes, implement the methods of the interfaces.

3.  If you need to implement payment processing without the preliminary creation of payment profiles, define the following classes:

    -   A class that implements the [PX.CCProcessingBase.Interfaces.V2.ICCProfileCreator](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=03b1d979-613f-8750-4fb4-0525e0935da4) interface \(which provides the method to create the payment profile for a new credit card\)
    -   A class that implements the [PX.CCProcessingBase.Interfaces.V2.ICCHostedPaymentFormProcessor](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=bcba45d8-956f-1975-d0a6-1350d8ea424a) interface \(which provides methods to work with hosted forms for processing payments without preliminary creation of payment profiles\)
    -   A class that implements the [PX.CCProcessingBase.Interfaces.V2.ICCHostedPaymentFormResponseParser](https://help.acumatica.com/(W(29))/Help?ScreenId=ShowWiki&pageid=cde9384d-067f-2304-ed25-bf5384728798) interface \(which provides a method to parse the response after a successful operation on a hosted form that processes payments without preliminary creation of payment profiles\)
    -   A class that implements the [PX.CCProcessingBase.Interfaces.V2.ICCTransactionGetter](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=c7472684-7355-d028-7456-e2101bd0ee21) interface \(which provides the methods to obtain information about transactions by transaction ID\)
    In the classes, implement the methods of the interfaces.

4.  If you need to implement the retrieval of detailed information about transactions, which can be used for the synchronization of transactions with the processing center, define a class that implements the [PX.CCProcessingBase.Interfaces.V2.ICCTransactionGetter](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=c7472684-7355-d028-7456-e2101bd0ee21) interface \(which provides the methods to obtain information about transactions by transaction ID\).
5.  If you need to retrieve the information about suspicious credit card transactions with the *Held for Review* status \(without the use of the hosted form that accepts payments\), define a class that implements the supplementary [PX.CCProcessingBase.Interfaces.V2.ICCTranStatusGetter](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=8c7081fc-df3c-3b2b-bd6e-5789bd61a6ae) interface \(which provides the method to obtain the transaction status after the execution of the ICCTransactionProcessor.DoTransaction method\). In the class, implement the methods of the interface.
6.  If you need to support webhooks as a way to obtain a response from the processing center, define the following classes:

    -   A class that implements the [PX.CCProcessingBase.Interfaces.V2.ICCWebhookProcessor](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=048e277f-07b5-70b0-679a-170282e41aa9) interface \(which provides the methods to add, update, and delete webhooks and retrieve the list of webhooks\)
    -   A class that implements the [PX.CCProcessingBase.Interfaces.V2.ICCWebhookResolver](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=5b8b4883-e644-c1e7-a8c8-fbaa6608f46b) interface \(which parses the information that comes from the processing center through webhooks\)
    In the classes, implement the methods of the interfaces.

7.  Define a class that implements the PX.CCProcessingBase.Interfaces.V2.ICCProcessingPlugin interface, which is the root interface for credit card payment processing and is used by Acumatica ERP to find the plug-in in the application libraries. The class should have a public parameterless constructor \(either explicit or default\). In the class, implement the methods of the [ICCProcessingPlugin](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=8e6c3962-2ae0-63b9-ab25-2e32abeb701f) interface as follows:
    -   In the ExportSettings method, which exports the required settings from the plug-in to the [Processing Centers](../UserGuide/CA_20_50_00.md) \(CA205000\) form, return a collection that contains the settings that can be configured by the user on the form. The syntax of the method is shown in the following code.

        ```
        IEnumerable<SettingsDetail> ExportSettings(); 
        ```

    -   In the ValidateSettings method, validate the settings modified on the [Processing Centers](../UserGuide/CA_20_50_00.md) form, which are passed as the parameter of the method, and return `null` if validation was successful or an error message if validation failed. The syntax of the method is shown in the following code.

        ```
        string ValidateSettings(SettingsValue setting);
        ```

    -   In the TestCredentials method, check the connection to the payment gateway by using the credentials that are specified by the user on the [Processing Centers](../UserGuide/CA_20_50_00.md) form. The syntax of the method is shown in the following code.

        ```
        void TestCredentials(IEnumerable<SettingsValue> settingValues);
        ```

    -   In the CreateProcessor&lt;T&gt; method, return a new object of the T type, and initialize the object with the settings passed to the method. The T type can be any of the following:

        -   ICCTransactionProcessor
        -   ICCProfileProcessor
        -   ICCHostedFormProcessor
        -   ICCProfileCreator
        -   ICCHostedPaymentFormProcessor
        -   ICCTransactionGetter
        -   ICCTranStatusGetter
        -   ICCWebhookResolver
        -   ICCWebhookProcessor
        If a particular T type is not supported by your plug-in, return `null` for this type. The following code shows a sample implementation of the method.

        ```
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

8.  Build your project.
9.  To add your plug-in to Acumatica ERP, include the assembly in the customization project. \(When the customization project is published, the assembly is copied to the `Bin` folder of the Acumatica ERP website automatically.\) During startup, the system automatically discovers the class that implements the ICCProcessingPlugin interface and includes it in the list in the **Payment Plug-In \(Type\)** box on the [Processing Centers](../UserGuide/CA_20_50_00.md#) form.

**Parent topic:**[Implementing Plug-Ins for Processing Credit Card Payments](../PlugInDevelopmentGuide/CC__mng_Implementing_CC_Paymet_Plug-ins.md)

