# Opportunity Management: Currency in Opportunities and Sales Quotes {#_2e591d9a-a887-4c33-9462-7672069ba73c .concept}

On the [Opportunities](CR_30_40_00.md) \(CR304000\) and [Sales Quotes](CR_30_45_00.md) \(CR304500\) forms, the **Currency** box of the Summary area is shown if the *Multicurrency Accounting* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Insertion of the Currency Depending on the Business Account { .section}

Suppose that at least one non-base currency is set up for accounting on the [Currencies](CurrenciesCM_20_20_00.dita) \(CM202000\) form and you have entered or changed the business account for an opportunity or sales quote. The system determines the currency it inserts in the **Currency** box of the [Opportunities](CR_30_40_00.md) \(CR304000\) and [Sales Quotes](CR_30_45_00.md) \(CR304500\) forms based on these settings of the business account on the [Business Accounts](Business AccountsCR_30_30_00.dita) \(CR303000\) form:

-   The specified currency
-   The state of the **Enable Currency Override** check box

Initially, before you select a business account for the opportunity or sales quote, the system inserts the base currency of the record's branch, which is specified in the **Branch** box of the [Opportunities](CR_30_40_00.md) or [Sales Quotes](CR_30_45_00.md) form. The system also does this if you clear the **Business Account** box.

**Tip:** The base currency of the branch is specified for the company on the **Company Details** tab of the [Companies](CS_10_15_00.md) \(CS101500\) form.

When you enter or change the business account, if it has a different currency than the opportunity or sales quote currently has, the system sets the currency of the opportunity or sales quote as follows:

-   If the opportunity or sales quote has no lines on the **Details** tab, the currency is changed to the currency of the business account.
-   If the opportunity or sales quote has at least one line on the **Details** tab, the currency of the opportunity or sales quote does not change if the **Enable Currency Override** check box is selected for the business account. If the check box is cleared, the system displays an error message, and you cannot save the changes to the opportunity or sales quote.

If you enter or select a business account and it has the same currency as the opportunity or sales quote currently has, the currency of the opportunity or sales quote remains unchanged. This is true whether or not the opportunity or sales quote has lines on the **Details** tab.

The system also applies these currency determination rules if you create an opportunity by converting a lead on the [Leads](CR_30_10_00.md) \(CR301000\) form.

## Ability to Change the Currency in an Opportunity { .section}

Depending on the **Currency** and **Enable Currency Override** settings on the [Business Accounts](CR_30_30_00.md) \(CR303000\) form for the business account selected for an opportunity, you can override the currency the system inserts in the **Currency** box on the [Opportunities](CR_30_40_00.md) \(CR304000\) form if all of the following conditions are met:

-   The business account has a different currency than the opportunity currently has, and the **Enable Currency Override** check box is selected for the business account on the [Business Accounts](../Shared/../UserGuide/CR_30_30_00.md) \(CR303000\).
-   The opportunity has the *New* or *Open* status.
-   The opportunity has no primary quotes.
-   If the opportunity has a primary sales or project quote—that is, if the **Primary** check box is selected in the Summary area of the [Sales Quotes](../Shared/../UserGuide/CR_30_45_00.md) \(CR304500\) or [Project Quotes](../Shared/../UserGuide/PM_30_45_00.md) \(PM304500\) form—the quote has the *Draft* status.

If no business account is specified for the opportunity and the base currency of the branch is inserted, the **Currency** box is unavailable for editing.

## Ability to Change the Currency in a Sales Quote { .section}

Depending on the **Currency** and **Enable Currency Override** settings on the [Business Accounts](CR_30_30_00.md) \(CR303000\) form for the business account selected for the sales quote, you can override the currency the system inserts in the **Currency** box on the [Sales Quotes](CR_30_45_00.md) \(CR304500\) form if both of the following conditions are met:

-   The business account has a different currency than the sales quote currently has, and the **Enable Currency Override** check box is selected for the business account.
-   If the opportunity has a primary sales quote—that is, if the **Primary** check box is selected in the Summary area of the [Sales Quotes](CR_30_45_00.md) form—and the quote has the *Draft* status.

If no business account is specified for the sales quote and the base currency of the branch is inserted, the **Currency** box is unavailable for editing.

**Parent topic:**[Managing Opportunities](../UserGuide/CRM_Sales_Managing_Opportunities_Mapref.md)

