# Multicurrency Projects: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for managing projects in different currencies, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist

We recommend that before you configure multicurrency projects, you make sure the needed features have been enabled and settings have been specified, as summarized in the following checklist.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)

</td><td>

Make sure that the *Multicurrency Accounting* and *Multicurrency Projects* features have been enabled. Optionally, you may also want to enable the *Multiple Base Currencies* feature.

</td></tr><tr><td>

[Currency Management Preferences](CM_10_10_00.md) \(CM101000\)

</td><td>

Make sure that the minimum required settings have been specified, as described in [Multicurrency Functionality: General Information](../ImplementationGuide/config_Multicurrency_Basic_GeneralInfo.md).

</td></tr><tr><td>

[Currencies](CM_20_20_00.md) \(CM202000\)

</td><td>

Make sure that the foreign currencies in which you want to manage projects have been configured and activated for use in accounting.

</td></tr><tr><td>

[Currency Rates](CM_30_10_00.md) \(CM301000\)

</td><td>

Make sure that a currency rate for each currency to be used for projects has been defined, as described in [Configuration of Rate Types and Rates: General Information](../ImplementationGuide/config_Multicurrency_Configuring_Rates_GeneralInfo.md).

</td></tr><tr><td>

[Projects](PM_30_10_00.md) \(PM301000\)

</td><td>

Specify the following project settings:-   In the **Project Currency** box on the **Summary** tab, the project currency to be used for project budget and accounting operations
-   In the **Currency Rate Type** on the **Summary** tab, the rate type to be used in the project
-   In the **Budget Currency Rate** box, the exchange rate from the project currency to base currency
-   In the **Billing Currency** box on the **Summary** tab, the currency in which the invoices will be prepared
-   If the project is related to a particular company branch, the branch in the **Branch** box on the **Summary** tab

</td></tr></tbody>
</table>

**Parent topic:**[Managing Multicurrency Projects](../UserGuide/Projects_Multicurrency_Projects_Mapref.md)

