# Credit Card Processing Plug-In: Additional Functionality

Depending on what your plug-in needs to support, you can use additional aynchronous interfaces beyond the required ICCTransactionProcessor. The Acumatica Framework provides interfaces you can use to implement particular functionality, as described in the sections below.

## Tokenized Credit Card Processing

Tokenized credit card processing lets a payment gateway store sensitive credit card details and return identification tokens that can be used for future payments. If you need to implement tokenized processing, implement the following interfaces:

-   [ICCProfileProcessor](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=4e877d94-09de-4fad-bac5-b7046daa7297): To manage customer and payment profiles
-   [ICCHostedFormProcessor](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=91adab38-a120-ff6f-368e-3ee0cd274622): To work with hosted forms for the creation and management of payment profiles

## Processing of Payments from New Credit Cards

You can implement the processing of payments from new credit cards without the preliminary creation of payment profiles. If this functionality is implemented in a custom plug-in, a user can select the **Accept Payments from New Cards** check box on the [Processing Centers](../UserGuide/CA_20_50_00.md#) \(CA205000\) form for the processing centers that use this custom plug-in.

Use the following interfaces to implement this functionality:

-   [ICCProfileCreator](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=c10d53af-3016-8310-2d45-800fa03909df): To create the payment profile for a new credit card
-   [ICCHostedPaymentFormProcessor](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=33eef930-14f2-c241-a591-7fd5c871118f): To work with hosted forms for processing payments without the preliminary creation of payment profiles
-   [ICCHostedPaymentFormResponseParser](https://help.acumatica.com/(W(29))/Help?ScreenId=ShowWiki&pageid=c8ee412d-1a12-731e-b5d5-57609898427f): To parse the response after a successful operation on a hosted form that processes payments without the preliminary creation of payment profiles
-   [ICCTransactionGetter](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=b811e539-2bb6-deca-7f43-524ee5b761f4): To obtain information about transactions by transaction ID

## Synchronization of Transactions

You can implement the retrieval of detailed information about transactions, which can be used for the synchronization of transactions with the processing center. If this functionality is implemented, on the [Synchronize Cards](../UserGuide/CA_20_60_00.md) \(CA206000\) form, users can work with the processing centers that use this custom plug-in.

To implement this functionality, use the [ICCTransactionGetter](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=b811e539-2bb6-deca-7f43-524ee5b761f4) interface. It provides the methods to obtain information about transactions by transaction ID.

## Suspicious Credit Card Transactions

You can implement the retrieval of the information about suspicious credit card transactions with the *Held for Review* status without the use of the hosted form that accepts payments.

You do this by using the [ICCTranStatusGetter](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=fa6971c0-73a8-4347-8c43-7e5779de7663) interface. It provides the method to obtain the transaction status after the execution of the ICCTransactionProcessor.DoTransactionAsync method.

## Webhooks

You may need to support webhooks as a way to obtain a response from the processing center.

To implement this functionality, use the following interfaces:

-   [ICCWebhookProcessor](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=f2bfef95-f2b9-babe-39ae-53fa7b6c400c): To add, update, and delete webhooks and retrieve the list of webhooks
-   [ICCWebhookResolver](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=4c27bbff-8c11-9509-8e7c-87608b71c355): To parse the information that comes from the processing center through webhooks

## Retrieval of Transactions and Batches

You can implement retrieval of transactions and batches from the processing center by using the following interfaces:

-   ICCTransactionFinder: To find a transaction from the processing centers by using search parameters
-   [ICCBatchTransactionGetter](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=4b362e6c-5382-4bca-dbc9-de0f8146d450): To get batches of transactions from the processing centers
-   [ICCSettledBatchGetter](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=c0faba3b-ebc9-786d-5743-a6ce8ca1b190): To get settled batches from the processing centers

## Pay Link Processing

To implement functionality for getting, creating, updating, and closing pay links in the processing center, use the ICCPayLinkProcessor interface.

## Card Data Entry Forms for Payments and Profiles

You can use the following interfaces to implement card data entry forms:

-   [ICCPaymentFormProcessor](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=338b4aa9-1816-a2f5-2457-f324e53f13f8): To work with a card data entry form for payment handling
-   [ICCProfileFormProcessor](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=58fac62a-9c3a-4e66-2c70-375318ca6774): To work with a card data entry form for profile handling

## Mobile Terminal Processing

To work with mobile terminals, use the following interfaces:

-   ICCMobileTerminalProcessor: To prepare data for mobile terminals and parse responses from them
-   [ICCTerminalGetter](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=b71e818d-cde0-3b7f-4438-d7507c4f19fb): To get terminals from the processing center

## Helper Functionality

You can also use the following interfaces:

-   ICCOauthProcessor: To process OAuth authorization for payment gateways that require it
-   [ICCFeatureManager](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=1f179977-bf8b-85fb-6770-8de52037f66c): To manage the features of the processing center plug-in
-   ICCFeeTypeProvider: To get fee types from the processing centers
-   [ICCSurchargeProcessor](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=64bb4ae9-8fd7-c141-a6eb-9d4ec120c050): To calculate a surcharge amount
-   [ICCLevel3Processor](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=0f768ed4-5d1f-7127-643b-c944d1a0e9b9): Provides the functionality for processing transactions’ level 3 data

**Parent topic:**[Implementing Plug-Ins for Processing Credit Card Payments](../PlugInDevelopmentGuide/PlugIn_CCProcessing_Mapref.md)

