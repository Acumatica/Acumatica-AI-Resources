# Configuration of Rate Types and Rates: Ability to Refresh Rates {#_735e4b6d-c0b1-4980-b75a-ec98bd8f7da1 .concept}

In Acumatica ERP, you can set up the ability to refresh currency rates by using the [Open Exchange Rates API](https://openexchangerates.org) currency rate update service. Also, you can set up the system to automatically refresh the currency rates according to a schedule that meets your business needs. If needed, you can configure the system to adjust a currency rate upward or downward for a particular rate type during the automatic updating of rates.

## Setting Up Updates of Currency Rates { .section}

You can turn on this functionality for a particular currency rate type by selecting the **Refresh Online** check box for the type on the [Currency Rate Types](../UserGuide/CM_20_10_00.md) \(CM201000\) form.

If the **Refresh Online** check box is selected for the particular rate type, you can refresh the currency exchange rates for the currencies of this rate type each time you need to by processing the needed rates on the [Refresh Currency Rates](../UserGuide/CM_50_70_00.md) \(CM507000\) form. When the process of refreshing rates has been completed, the list of updated currency rates appears in the table of this form, and the rates are updated on the **Currency Rate Entry** tab of the [Currency Rates](../UserGuide/CM_30_10_00.md) \(CM301000\) form.

**Attention:** The currency ID of the currency whose rate you refresh online must match the definition from the [Open Exchange Rates API](https://openexchangerates.org) service. For the list of supported currencies, see [https://docs.openexchangerates.org/reference/supported-currencies](https://docs.openexchangerates.org/reference/supported-currencies).

## Scheduling the Currency Rate Update Process { .section}

You can automate the process of updating the currency exchange rates by scheduling this process. To create a schedule, on the form toolbar of the [Refresh Currency Rates](../UserGuide/CM_50_70_00.md) \(CM507000\) form, click **Schedules** &gt; **Add**. On the [Automation Schedules](../UserGuide/SM_20_50_20.md) \(SM205020\) form, which opens, you create the schedule by specifying the appropriate settings and saving the schedule.

For details, see [Automated Processing: General Information](../UserGuide/SA_Scheduling_Automated_Processing_GeneralInfo.md).

## Exchange Rate Consistency Across Tenants { .section}

When exchange rates are retrieved through the [Open Exchange Rates API](https://openexchangerates.org) integration, the system requests data directly from the external provider at the time of processing. The provider updates live exchange rates approximately every 10 minutes. Because of this, requests made for the same date—even within a short time interval—can return slightly different values.

This behavior is expected and may result in differences in exchange rates between tenants.

**Tip:** To ensure consistent exchange rates across tenants, configure the system to retrieve rates for the previous day. Previous-day rates are finalized by the provider and remain unchanged, regardless of when they are requested. Using these rates ensures that all tenants receive identical values for the same date.

## Adjusting a Currency Rate { .section}

You may need to make the effective rates of the currencies less or more than the rates downloaded from the Open Exchange Rates API online service. To do so, on the [Currency Rate Types](../UserGuide/CM_20_10_00.md) \(CM201000\) form, for the particular rate type, you select the **Refresh Online** check box and specify the appropriate adjustment value in the **Online Rate Adjustment \(%\)** column. The exchange rates of currencies of that type received during the update process will be adjusted upward or downward by the adjustment percent specified here. You can create as many currency rate types as you need, each with a different adjustment percent.

For example, suppose that for the reimbursement of expense claims, a company wants to take into account the fees incurred by the employee for exchanging the currency, or adjust for the rate fluctuation between the date of the expenses and the date of the expense reimbursement. For such cases, you can create a special rate type \(for example, the *EXPENSES* rate type\) and specify the adjustment value \(expressed as a percent\) for that rate type, so that this adjustment will always be applied to the rates of the currencies of that type during the update process.

**Parent topic:**[Currency Rate Types and Current Rates](../ImplementationGuide/config_Multicurrency_Configuring_Rates_Mapref.md)

