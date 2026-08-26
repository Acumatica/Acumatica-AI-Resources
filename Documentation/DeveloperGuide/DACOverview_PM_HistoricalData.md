# PM DACs: Historical Data {#_2cc804d8-5802-4a2a-b583-289177b47c57 .concept}

Historical data access classes \(DACs\) keep historical data on projects' actual amounts and actual quantities.

## Projects' Actual Amounts and Actual Quantities { .section}

The [PMHistory](https://help.acumatica.com/dacBrowser/PX.Objects.PM/PMHistory) DAC contains the projects' actual amounts and actual quantities aggregated by financial periods. The columns with the *Fin* prefix reflect totals for the company-specific financial period, which depends on the branch ID of the aggregated record. The columns with the *Tran* prefix reflect totals by the master financial period, which is global across the tenant.

The following example shows how to select data from the PMHistory DAC for the project with the specified account group.

```
SELECT 
    * 
FROM 
    PMHistory h 
WHERE 
    h.ProjectID = 3295 
    AND h.AccountGroupID = 23
```

## Change Orders' Amounts and Quantities { .section}

The [PMForecastHistory](https://help.acumatica.com/dacBrowser/PX.Objects.PM/PMForecastHistory) DAC holds period-based actual amounts and quantities, and change orders' amounts and quantities in the project budget structure. The data is stored only in the project currency. The data of this DAC is displayed on the [Project Budget Forecast](../UserGuide/PM_20_96_00.md) \(PM209600\) form. This form is available if the *Budget Forecast* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form. However, the balances are always calculated and stored in the PMForecastHistory table regardless of whether the feature is enabled. The data of this DAC is used for reporting.

**Tip:** [PMHistory](https://help.acumatica.com/dacBrowser/PX.Objects.PM/PMHistory) and PMForecastHistory DACs store different data. In the PMHistory DAC, the amounts are stored both in the base currency and in the project currency; no data on change orders or change requests is included.

## Actual-to-Date Amounts and Budget Amounts in Reports { .section}

You can retrieve actual-to-date values from the [PMHistory](https://help.acumatica.com/dacBrowser/PX.Objects.PM/PMHistory) DAC, which you can join with [PMBudget](https://help.acumatica.com/dacBrowser/PX.Objects.PM/PMBudget) for the respective budget amounts. To join PMHistory and PMBudget, you can use the project ID, project task ID, and account group ID. This join provides the reports at the project, project task, and account group levels of detail.

A project budget is updated according to the values that are selected in the **Cost Budget Level** and **Revenue Budget Level** boxes on the **Summary** tab of the [Projects](../UserGuide/PM_30_10_00.md) \(PM301000\) form and the **Cost Budget Update** and **Revenue Budget Update** boxes on the [Projects Preferences](../UserGuide/PM_10_10_00.md) \(PM101000\) form. A part of the information from project transactions is stored in the PMBudget records aggregated by InventoryID, CostCodeID, or TaskID. For these records, the inventory ID or the cost code ID \(or both identifiers\) can have a default value instead of the one in the transaction. PMHistory always contains the most detailed information from project transactions. Therefore, the InventoryID and CostCodeID values can be different between PMHistory and PMBudget. Thus, when joining these tables, you should consider the conditions of project budget levels.

**Parent topic:**[Reviewing Project Accounting DACs](../DeveloperGuide/DACOverview_PM_Mapref.md)

