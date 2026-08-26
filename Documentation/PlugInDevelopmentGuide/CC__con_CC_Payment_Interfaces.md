# Interfaces for Processing Credit Card Payments {#_53da199c-4dbc-44a7-8f73-93292f723b81 .concept}

Acumatica ERP provides the interfaces for the implementation of plug-ins for credit card payment processing.

By using these interfaces, you can implement tokenized processing plug-ins. When a tokenized processing plug-in is used, the credit card information is not saved to the application database; this information is stored only at the processing center. The Acumatica ERP database stores only the identification tokens that link customers and payment methods in the application with the credit card data at the processing center.

For details on how to implement custom plug-ins, see [To Implement a Plug-In for Processing Credit Card Payments](CC__how_Implement_CC_Processing_Plug-in_V2.md).

**Attention:** In Acumatica ERP, the *Acumatica Payments Plug-In* implements the interfaces described in the sections below. For more information about the built-in plug-in, see [Configuring and Using Acumatica Payments](../UserGuide/AR__MNG_Acumatica_Payments.md).

## Mandatory Interfaces { .section}

The root interface for implementation of custom plug-ins for credit card processing is PX.CCProcessingBase.Interfaces.V2.ICCProcessingPlugin. The system automatically discovers the class that implements the ICCProcessingPlugin interface in the `Bin` folder of the Acumatica ERP instance and includes it in the list in the **Payment Plug-In \(Type\)** box on the [Processing Centers](../UserGuide/CA_20_50_00.md#) \(CA205000\) form. For creation of a custom plug-in, you also need to implement the ICCTransactionProcessor interface to process credit card transactions.

## Additional Interfaces { .section}

You can implement the following additional functionality:

-   Tokenized credit card processing: Implement the ICCProfileProcessor and ICCHostedFormProcessor interfaces.
-   Processing of payments from new credit cards: To use this functionality, implement the ICCProfileCreator, ICCHostedPaymentFormProcessor, ICCHostedPaymentFormResponseParser, and ICCTransactionGetter interfaces. If this functionality is implemented in a custom plug-in, a user can select the **Accept Payment from New Card** check box on the [Processing Centers](../UserGuide/CA_20_50_00.md#) form for the processing centers that use this custom plug-in.
-   Synchronization of credit cards with the processing center: Implement the ICCTransactionGetter interface in a custom plug-in. If this functionality is implemented, on the [Synchronize Cards](../UserGuide/CA_20_60_00.md) \(CA206000\) form, users can work with the processing centers that use this custom plug-in.
-   Retrieval of the information about suspicious credit card transactions \(without the use of the hosted form that accepts payments\): To use this functionality, implement the ICCTranStatusGetter interface.
-   Webhooks as a way to obtain a response from the processing center: Implement the ICCWebhookProcessor and ICCWebhookResolver interfaces.

**Parent topic:**[Implementing Plug-Ins for Processing Credit Card Payments](../PlugInDevelopmentGuide/CC__mng_Implementing_CC_Paymet_Plug-ins.md)

