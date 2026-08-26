# Intercompany Sales Setup: Mapping Rules {#_038d4d1f-9554-487e-a3b8-1bc509e98a76 .concept}

This topic provides a list of values inserted into the UI elements of an AP document created from an AR document. After the creation of a new AP document, the relation between the AR document and the AP document is saved to the database.

|UI Element|Value|
|----------|-----|
|Summary area|
|**Type**|-   *Bill* if the AR document's type is *Invoice*
-   *Credit Adj.* if the AR document's type is *Debit Memo*.
-   *Debit Adj.* if the AR document's type is *Credit Memo*.

|
|**Date**|The value from the **Date** box on the [Invoices and Memos](../UserGuide/AR_30_10_00.md) \(AR301000\) form.|
|**Post Period**|-   If the AP document was generated on the [Generate Intercompany Documents](../UserGuide/AP_50_35_00.md) \(AP503500\) form, this is the value specified in the **Post Period** box on the [Invoices and Memos](../UserGuide/AR_30_10_00.md) form. If this setting has not been specified, the post period is calculated as the period from the calendar of the AP document's originating branch that corresponds to the AR document's **Post Period** in the master calendar.
-   If the AP document was generated on the [Invoices and Memos](../UserGuide/AR_30_10_00.md) form, the post period is calculated as the period from the calendar of the AP document's originating branch that corresponds to the AR document's **Post Period** in the master calendar. If the period does not exist in the calendar of the AP document's originating branch, the value is empty. If the period is *Inactive* or *Locked*, the system displays an error message. If posting to closed periods is allowed for the user, an AP document is created with a warning in the **Post Period** box on the [Bills and Adjustments](../UserGuide/AP_30_10_00.md) \(AP301000\) form. If posting to closed periods is not allowed, the AP document is not created.

|
|**Vendor Ref**|The reference number of the AR document specified in the **Reference Number** box on the [Invoices and Memos](../UserGuide/AR_30_10_00.md) form.|
|**Vendor**|The originating branch of the AR document.|
|**Location**|The vendor's default location.|
|**Currency**|The currency of the AR document.|
|**Currency Rate Type**|The currency rate type of the AR document.|
|**Currency Exchange Rate**|The exchange rate of the AR document.|
|**Terms**|The credit terms of the AR document.|
|**Due Date**|The due date of the AR document.|
|**Cash Discount Date**|The cash discount date of the AR document.|
|**Pay by Line** check box|The state of the **Pay by Line** check box on the [Vendors](../UserGuide/AP_30_30_00.md) \(AP301000\) form for the vendor.|
|**Description**|The description of the AR document.|
|**Discount Total**|-   If the *Vendor Discounts* feature has been enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, an automatically calculated value based on the values on the **Discount Details** tab on the [Bills and Adjustments](../UserGuide/AP_30_10_00.md) form.
-   If the *Vendor Discount* feature has been disabled:
    -   If the *Customer Discounts* feature has been enabled, the sum of the **Discount Amount** values of all lines on the **Discount Details** tab on the [Invoices and Memos](../UserGuide/AR_30_10_00.md) form.
    -   If the *Customer Discounts* feature has been disabled, the **Discount Total** of the AR document.

|
|**Amount**|The value of the **Amount** box on the [Invoices and Memos](../UserGuide/AR_30_10_00.md) form.|
|**Cash Discount**|If the AP document's amount is the same as the AR document's amount, the value of the **Cash Discount** box of the [Invoices and Memos](../UserGuide/AR_30_10_00.md) form. Otherwise, this value is calculated based on the credit terms of the AR document.|
|**Financial** tab|
|**Branch**|The customer specified in the **Customer** box of the [Invoices and Memos](../UserGuide/AR_30_10_00.md) form.|
|**Vendor Tax Zone**|The tax zone specified for the vendor location in the **Tax Zone** box on the **Purchase Settings** tab of the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form.|
|**Tax Calculation Mode**|The tax calculation mode specified in the **Tax Calculation Mode** box on the **Financial** tab of the [Invoices and Memos](../UserGuide/AR_30_10_00.md) form.|
|**Details** tab|
|**Branch**|The customer specified in the **Customer** box of the [Invoices and Memos](../UserGuide/AR_30_10_00.md) form.|
|**Inventory ID**|The **Inventory ID** of the AR document line.|
|**Transaction Description**|The **Transaction Description** of the AR document line.|
|**Quantity**|The **Quantity** of the AR document line.|
|**UOM**|The **UOM** of the AR document line.|
|**Unit Cost**|The **Unit Cost** of the AR document line.|
|**Ext. Cost**|The **Ext. Cost** of the AR document line.|
|**Account**|One of the following, depending on the value of the **Use Intercompany Expense Account From** box on the [Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\) form:

 -   If *Vendor Location* is selected, the expense account specified in the **Expense Account** box on the **GL Accounts** tab of the [Vendor Locations](../UserGuide/AP_30_30_10.md) \(AP303010\) form for the customer location selected for this AR document.
-   If *Inventory Item* is selected, the expense account specified in the **Expense Account** box on the **GL Accounts** tab of the [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form for a non-stock item specified in the AR document line.

|
|**Project**|If the **Copy Project Information to AP Document** check box has been selected on the [Generate Intercompany Documents](../UserGuide/AP_50_35_00.md) form or you clicked **Yes** in the confirmation message on the [Invoices and Memos](../UserGuide/AR_30_10_00.md) form, the **Project** of the AR document. Otherwise, the non-project code specified on the [Projects Preferences](../UserGuide/PM_10_10_00.md) \(PM101000\) form \(*X* by default\) is inserted.|
|**Project Task**|If the **Copy Project Information to AP Document** check box has been selected on the [Generate Intercompany Documents](../UserGuide/AP_50_35_00.md) form or you clicked **Yes** in the confirmation message on the [Invoices and Memos](../UserGuide/AR_30_10_00.md) form, the **Project Task** of the AR document. Otherwise, the value is empty.|
|**Cost Code**|If the **Copy Project Information to AP Document** check box has been selected on the [Generate Intercompany Documents](../UserGuide/AP_50_35_00.md) form or you clicked **Yes** in the confirmation message on the [Invoices and Memos](../UserGuide/AR_30_10_00.md) form, the **Cost Code** of the AR document. Otherwise, the value is empty.|
|**Discount Amount**|The **Discount Amount** of the AR document line.|
|**Discount Percent**|The **Discount Percent** of the AR document line.|
|**Manual Discount** check box|Selected.|
|**Deferral Code**|Empty. Because deferral codes cannot be used simultaneously in AR and AP documents, if at least one deferral code is specified in at least one line of the related AR document, the system displays a warning that deferral codes cannot be copied.|
|**Tax Category**|The **Tax Category** of the AR document line.|
|**Discounts** tab**Note:** Lines are created if the *Vendor Discounts* feature has been enabled. If the *Customer Discounts* feature has been enabled, each discount line in the AP document corresponds to a discount line of the AR document and contains the following column values.

|
|**Manual Discount** check box|Selected.|
|**Discount Amount**|The **Discount Amount** of the AR document’s discount line.|
|**Description**|The **Description** of the AR document's discount line.|
|If the *Customer Discounts* feature has been disabled, one discount line is created in the AP document with the following column values.|
|**Manual Discount** check box|Selected.|
|**Discount Amount**|The **Discount Total** of the AR document.|

**Parent topic:**[Intercompany Sales](../ImplementationGuide/Finance_Intercompany_Sales_Setup_Mapref.md)

