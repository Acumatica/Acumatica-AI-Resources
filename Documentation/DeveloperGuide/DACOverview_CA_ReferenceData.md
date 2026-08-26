# CA DACs: Reference Data {#_d279fe94-f27c-42d6-b9af-9f953843b0df .concept}

In this topic, you can find information about the data access classes \(DACs\) that contain reference data that is used in most of the DACs in cash management.

## Cash Management Setup { .section}

The following DACs are used for the configuration of the cash management functionality:

-   [CASetup](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CASetup): Stores the general settings of cash management. A user can edit these preferences on the [Cash Management Preferences](../UserGuide/CA_10_10_00.md) \(CA101000\) form.
-   [CASetupApproval](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CASetupApproval): Stores the map of persons that approve documents in cash management. The map contains a reference to the [EPAssignmentMap](https://help.acumatica.com/dacBrowser/PX.Objects.EP/EPAssignmentMap) DAC.
-   [CAEntryType](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CAEntryType): Stores the list of entry types that can be used in cash management.

## Reference DACs { .section}

The following table lists the reference DACs.

|DAC|Description|
|---|-----------|
|[CABankTranRule](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CABankTranRule)|Represents the rule that can be applied to [CABankTran](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CABankTran) in order to automatically create a cash transaction for that bank transaction.|
|[CashAccount](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CashAccount)|Stores the details and settings of cash accounts.|
|[CashAccountCheck](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CashAccountCheck)|Maintains the numbers of already printed check forms to avoid duplication of the used numbers.|
|[CashAccountETDetail](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CashAccountETDetail)|Defines the settings for deposit to the cash account from the clearing account or accounts. When this record is defined for the specific cash account–deposit account pair, users can post to the cash account from the specific clearing account.|
|[CashAccountPaymentMethodDetail](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CashAccountPaymentMethodDetail)|Links the CashAccount and PaymentMethodDetail DACs, and stores additional settings for a pair of a cash account and an entry type.|
|[PaymentMethod](https://help.acumatica.com/dacBrowser/PX.Objects.CA/PaymentMethod)|Holds the settings of the payment method.|
|[PaymentMethodAccount](https://help.acumatica.com/dacBrowser/PX.Objects.CA/PaymentMethodAccount)|Links the CashAccount and PaymentMethod DACs and stores additional settings for a pair of a cash account and a payment method.|
|[PaymentMethodDetail](https://help.acumatica.com/dacBrowser/PX.Objects.CA/PaymentMethodDetail)|Stores the additional settings that are required to use the payment method.|

**Parent topic:**[Reviewing Cash Management DACs](../DeveloperGuide/DACOverview_CA_Mapref.md)

