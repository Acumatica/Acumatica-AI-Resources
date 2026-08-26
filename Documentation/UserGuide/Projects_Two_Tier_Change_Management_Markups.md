# Change Requests: Configuration of Markups {#_9c4c3432-b12a-132c-b9f2-46d728aff234 .concept}

You can configure markups to charge the customer with each created change request.

The following types of markup can be applied to a change request on the [Change Requests](PM_30_85_00.md) \(PM308500\) form:

-   Line-level markups: These markups apply to an individual estimation line on the **Estimation** tab and affect the **Line Amount** value. This type includes the **Price Markup \(%\)** and **Line Markup \(%\)**.
-   Document-level markups: These markups apply to the total line amount of the change request on the **Markups** tab.

You can override all markups and delete document-level markups at the change request level.

## Line-Level Markups { .section}

A price markup is an item-specific markup. When you select an inventory item in an estimation line on the **Estimation** tab of the [Change Requests](PM_30_85_00.md) \(PM308500\) form, the markup percent specified for the item is retrieved as the **Price Markup \(%\)** value. You can specify the price markup for the item on the **Price/Cost** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form or on the **Price/Cost** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.

If no price markup is specified for the item, the system uses the default price markup specified in the **Default Price Markup \(%\)** box \(**Markup** section\) on the **General** tab of the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form. If no default price markup is specified, the price markup of the estimation line is 0.

A line markup is defined at the account group level. For an account group of the *Expense* type, you specify the default line markup percentage in the **Default Line Markup \(%\)** box on the **Change Request Settings** tab of the [Account Groups](PM_20_10_00.md) \(PM201000\) form. When you select an account group in an estimation line on the **Estimation** tab of the [Change Requests](PM_30_85_00.md) form, the system specifies the default markup specified for the account group as the **Line Markup \(%\)** value in this line. If no default markup is specified in the account group, the line markup of the estimation line is 0.

The line amount of an estimation line considers the line-level markups and is calculated as follows:

`Unit Price = Unit Price + Unit Price * Price Markup (%) / 100`

`Ext. Price = Quantity * Unit Price`

`Line Amount = Ext. Price + Ext. Price * Line Markup (%) / 100`

## Document-Level Markups { .section}

On the **Markups** tab of the [Change Requests](PM_30_85_00.md) \(PM308500\) form, for a change request, you can define any number of document-level markups of the following types as well as define no markups:

-   *%*: A markup whose amount is calculated as follows:

    `Markup Amount = Line Total * % Markup Value / 100`

    You can define as many markups of this type as necessary.

-   *Cumulative \(%\)*: A markup whose amount is calculated as follows:

    `Markup Amount = (all the previously applied % markups) * *Cumulative \(%\) Value* / 100`

    A markup of this type requires at least one markup of the *%* type.

-   *Flat Fee*: A markup whose amount is specified manually to be added to the total markup.

    You can define as many markups of this type as necessary.


For each applicable markup shown on the **Markups** tab, the **Amount Subject to Markup** is calculated based on the **Line Amount** values in the estimation lines of the change request. A document-level markup applies to the total line amount of a change request if all the project budget key attributes in this line—project task, account group, and optionally, inventory item and cost code—are defined for the markup on the **Markups** tab of the [Change Requests](PM_30_85_00.md) form.

A change request inherits the default document-level markup specified for the project on the **Defaults** tab \(**Document Markups** table\) of the [Projects](PM_30_10_00.md) \(PM301000\) form. The project inherits the default document markups from the **General** tab \(**Markup** section\) of the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form. You can override any of the default markups.

**Parent topic:**[Processing Change Requests](../UserGuide/Projects_Two_Tier_Change_Management_Mapref.md)

