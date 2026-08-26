# To Create a Rate Type {#_fc67d767-2d11-4049-b853-682dfc54b44c .task}

You use the [Currency Rate Types](../UserGuide/CM_20_10_00.md) \(CM201000\) form to create a rate type in Acumatica ERP.

## To Create a Rate Type { .section}

1.  Open the [Currency Rate Types](../UserGuide/CM_20_10_00.md) \(CM201000\) form.
2.  On the table toolbar, click **Add Row**.
3.  In the **Rate Type ID** column, enter the unique identifier you want to use for the rate type being created.
4.  In the **Description** column, enter a detailed description of the rate type that will help users to identify this type later.
5.  Optional: In the **Days Effective** column, specify the number of days during which the rate is considered current for currencies of the type, starting from the date specified in the **Currency Effective Date** box on the [Currency Rates](../UserGuide/CM_30_10_00.md) \(CM301000\) form for the particular currency.
6.  Optional: Select the **Refresh Online** check box for the rate type if currency exchange rates for the type can be updated \(manually or automatically\) by using [Open Exchange Rates API](https://openexchangerates.org). For details, see [Configuration of Rate Types and Rates: Ability to Refresh Rates](config_Multicurrency_Configuring_Rates_Refresh_CurrencyRates.md).

    **Note:** If the check box is selected for the rate type, all active currencies that are associated with this rate type on the [Currency Rates](../UserGuide/CM_30_10_00.md) \(CM301000\) form, will appear in the table on the [Refresh Currency Rates](../UserGuide/CM_50_70_00.md) \(CM507000\) form. You can refresh the exchange rates manually or automatically \(according to a schedule\).

7.  Optional: In the **Online Rate Adjustment \(%\)** box, specify the adjustment percent that will be applied to the exchange rate returned from the Open Exchange Rates API currency rate update service. The rate applied to the documents will be increased \(if you specify a positive number\) or decreased \(if you specify a negative number\) by the percent you specify in this box.
8.  On the form toolbar, click **Save**.

**Parent topic:**[Currency Rate Types and Current Rates](../ImplementationGuide/config_Multicurrency_Configuring_Rates_Mapref.md)

