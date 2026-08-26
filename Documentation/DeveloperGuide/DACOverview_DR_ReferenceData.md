# DR DACs: Reference Data {#_f8f59be6-2e93-44a3-887c-21bbe6e8851d .concept}

In this topic, you can find information about the data access classes \(DACs\) that contain reference data that is used in most of the DACs in deferred revenue functionality.

## Deferred Revenue Preferences { .section}

The preferences for the deferred revenue documents are stored in the [DRSetup](https://help.acumatica.com/dacBrowser/PX.Objects.DR/DRSetup) DAC. A user can edit these preferences on the [Deferred Revenue Preferences](../UserGuide/DR_10_10_00.md) \(DR101000\) form.

## Deferred Codes { .section}

A deferral code \(which is represented by a [DRDeferredCode](https://help.acumatica.com/dacBrowser/PX.Objects.DR/DRDeferredCode) record\) is a basic entity of Acumatica ERP deferred revenue functionality. The deferral code determines multiple aspects of how revenue should be recognized, such as the following:

-   How the full deferred amount should be distributed between recognition transactions \(which is specified in the Method field\)
-   Onto which liability account \(the AccountID field\) and subaccount \(the SubID field\) the deferred amount should be posted upon document line release
-   What percentage of revenue \(the ReconNowPct field\) should be recognized immediately upon document line release and posted to the relevant income account
-   How many financial periods should pass \(the StartOffset field\) between the document line release and the moment of first revenue recognition
-   How many times \(the Occurrences field\) the revenue should be recognized for the full deferral amount to transfer from the deferred revenue account to the income account
-   How often \(Frequency\) the revenue should be recognized

A user can specify a deferred code in the document line \(that is, in an [ARTran](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARTran) record\), which indicates that the sales amount associated with the line should not be posted directly to the income account upon release. Instead, it will be deferred and then recognized according to the schedule and rules defined by the deferral code.

**Parent topic:**[Reviewing Deferred Revenue DACs](../DeveloperGuide/DACOverview_DR_Mapref.md)

