# Setting Up the Recognition Process {#_9206441e-ec45-4062-8b65-38b6e5d6c953 .concept}

To set up the process of the revenue or expense recognition in Acumatica ERP, you need to first enable the *Deferred Revenue Management* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, and then configure the required deferral codes on the [Deferral Codes](DR_20_20_00.md) form.

**Attention:** When the *Deferred Revenue Management* and *Multibranch Support* features are both enabled on the [Enable/Disable Features](CS_10_00_00.md) form, you can report and track deferrals separately for particular company branches and reconcile balance sheet accounts for deferred amounts. For details, see [Multiple Branch Support](CS__con_Multiple_Branch_Support.md).

Also, in the **Deferred Schedule Numbering Sequence** box on the [Deferred Revenue Preferences](DR_10_10_00.md) \(DR101000\) form, you can specify a different numbering sequence to be used for numbering schedules. By default, the *Deferral Schedule* sequence is specified. You can modify this sequence on the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form.

For each deferral code, you define such settings as the recognition method to be applied, GL accounts to be used, and schedule settings. You then assign a deferral code to the applicable stock items and non-stock items, or add the code to the required line of a document that requires deferrals. On release of documents with deferral codes specified, the system generates recognition transactions in accordance with the schedules defined by the deferral codes. To make the system release and post recognition transactions that come due, you need to run the recognition process on the [Run Recognition](DR_50_10_00.md) form, so that the transactions are posted in each specified period and a portion of the revenue or expenses is recognized. For details, see [Recognition Methods for Deferred Revenues or Expenses](DR__con_Recognition_Methods.md).

In this chapter, you can find information on configuring deferral codes, and examples of creating various recognition scenarios that you can consider while configuring the required deferral codes.

-   **[Deferral Code Setup](../UserGuide/DR__con_Configuring_Deferral_Codes.md)**  

-   **[Recognition Methods for Deferred Revenues or Expenses](../UserGuide/DR__con_Recognition_Methods.md)**  


