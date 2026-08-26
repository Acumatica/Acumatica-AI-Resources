# Combined Subaccounts: General Information {#_f9429f96-d2fb-45fe-bc49-d15b996f1f7f .concept}

With the combined subaccount functionality provided by Acumatica ERP, you can define masks that the system uses to form a combined subaccount from multiple subaccounts to track costs more specifically.

When a user enters a document, such as a vendor bill or a customer invoice, into the system, multiple subaccounts are involved, such as the subaccount associated with the product being purchased or sold in each line, the subaccount associated with the employee entering the document, and the subaccount associated with the vendor or customer involved. If you have configured the combined subaccount functionality, the system will insert a particular subaccount that is a combination of the involved subaccounts that you have specified. During this configuration, you specify the masks that the system uses to compose new subaccount identifiers by using the segment values of each of the specified subaccounts.

## Learning Objectives { .section}

In this chapter, you will learn how to specify combined subaccount masks for different types of documents.

## Applicable Scenarios { .section}

If subaccounts have been configured in your system, you can speed up the entry of subaccounts by setting up the combined subaccount functionality for the types of documents listed in the following table. The combined subaccounts will be inserted into the appropriate columns on the listed forms for the corresponding document types.

|Document Type|Forms and UI Elements Where Subaccounts Will Be Used|
|-------------|----------------------------------------------------|
|AP documents|[Bills and Adjustments](../UserGuide/AP_30_10_00.md) \(AP301000\): **Details** tab, **Subaccount** column|
|AR documents|[Invoices and Memos](../UserGuide/AR_30_10_00.md) \(AR301000\): **Details** tab, **Subaccount** column|
|Inventory transactions|[Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\): **GL Accounts** tab

 [Item Warehouse Details](../UserGuide/IN_20_45_00.md) \(IN204500\): **General** tab, **Inventory Sub.** box

|
|Invoices prepared for sales orders|[Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\): **Details** tab, **Subaccount** column|
|Bills prepared for purchase orders|[Bills and Adjustments](../UserGuide/AP_30_10_00.md) \(AP301000\): **Details** tab, **Subaccount** column|
|Expense claims and expense receipts|[Expense Claim](../UserGuide/EP_30_10_00.md) \(EP301000\): **Details** tab, **Expense Sub.** box

 [Expense Receipt](../UserGuide/EP_30_10_20.md) \(EP301020\): **Details** tab, **Expense Sub.** box

|
|Project transactions|[Project Transactions](../UserGuide/PM_30_40_00.md) \(PM304000\): **Details** tab, **Debit Subaccount** and **Credit Subaccount** columns|

## Configuration of Combined Subaccounts { .section}

For each type of documents for which you want to configure combined subaccounts, you specify the subaccount mask in the appropriate box on the Acumatica ERP form with the configuration settings for the functional area of the document type. \(In most cases, the needed form has a name that ends with *Preferences*.\) For example, to specify the combined expense subaccount to be used for AP document lines, you enter the mask in the **Combine Expense Sub. From** box on the [Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\) form.

**Tip:** If the *Inventory and Order Management* group of features is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, you instead specify the subaccount mask on the [Posting Classes](../UserGuide/IN_20_60_00.md) \(IN206000\) form for inventory transactions, sales orders, and purchase orders. You can also specify a mask for sales, freight, and discount subaccounts on the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form.

In the box for a combined subaccount, you enter a subaccount mask, such as *EEE-EEE*, in accordance with the segmented structure of subaccounts defined in the company. You specify the rule the system uses for selecting the values for the segments of a combined subaccount from the subaccounts involved.

**Tip:** For smooth implementation of the configuration of automatically combined subaccounts, we recommend that you select the *By Segment: All Avail. Segment Values* lookup mode in the **Lookup Mode** box for the *SUBACCOUNT* segmented key on the [Segmented Keys](../UserGuide/CS_20_20_00.md) \(CS202000\) form, so that the system can generate valid subaccounts segment by segment. Otherwise, all the subaccounts that may result from combining segments from multiple sources must be predefined in the system—that is, added to the list of valid subaccounts on the [Subaccounts](../UserGuide/GL_20_30_00.md) \(GL203000\) form.

To enter a rule for combined subaccounts, you can select one of the following options \(the available options in a particular list vary depending on the document type\) for each segment of the subaccount mask to indicate what subaccount is used as a source for this segment:

-   *C*: The subaccount associated with the company branch
-   *E*: The subaccount associated with the employee
-   *I*: The subaccount associated with the stock or non-stock item
-   *J*: The subaccount associated with the project
-   *L*: The subaccount associated with the customer location or vendor location
-   *P*: The subaccount associated with the posting class
-   *S*: The subaccount associated with the salesperson
-   *T*: The subaccount associated with the project task
-   *W*: The subaccount associated with the warehouse

Within a segment, you repeat the letter designating the option for each character in the segment. For example, you use *CCCC*, *EEEE*, *IIII*, or *LLLL* for a four-character segment, and *CC*, *EE*, *II*, or *LL* for a two-character segment. Then in the **Combine Expense Sub. From** box on the [Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\) form, you might type *LLLL-CCC*. This setting indicates that the system will use the vendor location as the source for the first segment and the company branch as the source for the second segment.

**Parent topic:**[Automatically Combined Subaccounts](../ImplementationGuide/config_Combined_Subaccounts_Mapref.md)

