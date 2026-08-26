# Deferral Code Setup {#_ed7fb7ff-efb4-43d4-a8f6-989a11011dd3 .concept}

In Acumatica ERP, you use deferral codes to make possible the recognition of revenues and expenses over multiple financial periods. You configure the required deferral codes and assign them to the appropriate stock items and non-stock items. The system will then use them to create deferral transactions on release of documents \(such as invoices or bills\) in which these deferral codes are specified.

## Configuring a Deferral Code {#section_o4b_3jv_vxb .section}

You configure a deferral code by using the [Deferral Codes](DR_20_20_00.md) \(DR202000\) form. For each code, you specify the following settings:

-   **Recognition Method**: The method that defines how an amount will be distributed over the specified financial periods.
-   **Code Type**: The type of the code, which indicates whether it will be used for expense or revenue deferrals.
-   **Deferral Account**: The general ledger account to hold the deferred revenue \(liability account\) or expense \(asset account\) amount.
-   **Deferral Sub.**: The subaccount \(if applicable in your system\), for proper tracking of deferral transactions.
-   **Recognize Now %**: The percentage of the document amount \(or line amount\) that can be recognized immediately.
-   **Schedule Settings**, **Every x Period\(s\)**: The frequency of generating the recognition transactions.
-   **Schedule Options** \(**On Start of Financial Period**, **On End of Financial Period**, or **On Fixed Day of Financial Period**\): The exact day when the documents for a recognition transaction will be generated.

Once you have specified all required settings based on the selected recognition method, you can save a deferral code. After that, this code will be available in the list of deferral codes that can be assigned to documents and used by the system for generating recognition schedules.

## Assigning a Deferral Code to a Stock Item or Non-Stock Item {#section_r4b_3jv_vxb .section}

Any deferral code can be assigned to a stock item or non-stock item. The deferral code specifies how the revenue or expense amount of a document with this item should be deferred over the specified date range. The list of available deferral codes that you have created in Acumatica ERP are available on the **Deferral** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) or [Stock Items](IN_20_25_00.md) \(IN202500\) form. If you do not assign a deferral code to an item, you can still add a deferral code to the required line of a document on the **Document Details** tab when you enter a document into the system.

**Parent topic:**[Setting Up the Recognition Process](../UserGuide/DR__con_Setting_Up_Deferral_Process.md)

