# Multicurrency Projects: Project-Related Documents in Multiple Currencies {#_0cc5adef-6f1e-40ee-b328-fc67a9924a45 .concept}

If the *Multicurrency Projects* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can use multiple currencies in projects. The following sections describe how different types of documents for projects are created and processed if the currency of these documents differs from the base currency of the project.

## Project Transactions with Multicurrency Accounting {#section_mhw_xjj_lsb .section}

On the [Project Transactions](PM_30_40_00.md) \(PM304000\) form, you can create project transactions whose amounts are in any currency. When you create a project transaction manually, you select the project in the transaction line on the **Details** tab. You enter the amount of the project transaction in the transaction currency, which you select in the **Currency** column. By default, in this column, the system inserts the base currency of the current branch; you can change this value to any other currency configured in the system. The system uses the amount in the transaction currency to calculate the transaction amounts in the project currency and in the base currency. The system also updates the actual amounts of the project budget in the project currency and in the base currency with the corresponding amounts of the project transaction.

When the system creates a group of project transactions on release of a general ledger transaction, the system uses the base currency of the project selected in the general ledger transaction line as the base currency of the project transaction line it creates. The system calculates the amount of the project transaction line in the base and project currencies by using the default exchange rate type specified in the selected project in the **Currency Rate Type** box on the **Summary** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form. If this box is empty for the project, in the project transaction, the system uses the rate type from the **PM Rate Type** box on the [Currency Management Preferences](CM_10_10_00.md) \(CM101000\) form. The same rules are used for the project transactions created during the running of an allocation process, and for the project transactions created on release of employee time cards.

When the system creates a general ledger transaction on release of a project transaction, in the created GL transaction on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, the system uses the base currency of the branch from the project transaction line as the base currency in the created GL batch. The system copies the project transaction line amount in the transaction currency \(that is, in the currency selected by the user in the project transaction line\) and recalculates this amount in the base currency of the GL batch by using the default exchange rate type specified in the **GL Rate Type** box on the [Currency Management Preferences](CM_10_10_00.md) form.

## Project Quotes with Multicurrency Accounting {#section_xwm_zjj_lsb .section}

For a new project quote created on the [Project Quotes](PM_30_45_00.md) \(PM304500\) form, the system fills in the **Currency** box in the Summary area with the currency of the customer selected in the **Business Account** box. If no currency is specified for the customer, the system inserts the base currency as the project quote currency. If a project quote is created based on an opportunity that has been created on the [Opportunities](CR_30_40_00.md) \(CR304000\) form, the system inserts the opportunity currency as the project quote currency.

You can change the project quote currency if for the customer, the **Enable Currency Override** check box is selected on the **Financial** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form. If you change the project quote currency and the project quote is the primary quote of an opportunity, the system changes the opportunity currency accordingly.

For project quotes, the system uses the default exchange rate type of the customer and customer location that are selected in the document to determine the exchange rate for calculating the billing amounts in the base currency. You can override the exchange rate for a project quote if for the customer, the **Enable Rate Override** check box is selected on the **Financial** tab of the [Customers](AR_30_30_00.md) form.

For the estimation lines of a project quote on the **Estimation** tab of the [Project Quotes](PM_30_45_00.md) form, you specify the amounts in the project currency. The system converts the retrieved unit prices and unit costs of the selected inventory items to the project quote currency by using the exchange rate of the project quote.

When a project is created based on the project quote, the system specifies the currency of the branch selected in the quote as the project currency. If the branch is not specified, the system specifies the currency of the current branch as the project currency.

**Parent topic:**[Managing Multicurrency Projects](../UserGuide/Projects_Multicurrency_Projects_Mapref.md)

