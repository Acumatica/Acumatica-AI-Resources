# Purchase Requisition Configuration: Setup of Budget Validation {#_1d564e0e-2ff4-4e6d-b85e-1b4f39a6cec9 .concept}

If your company uses purchase requests for internal needs of employees, you can set up budget validation of purchase requests. This validation helps your company prevent cost overruns of requested goods and services. Before you set up this validation, you should make sure that both of the following tasks have been performed in the system:

-   At least one ledger with the *Budget* type has been prepared on the [Ledgers](../UserGuide/GL_20_15_00.md) \(GL201500\) form. You can create a separate budget for each company in the tenant or use one budget ledger in multiple companies. For each budget ledger, you specify associated companies on the **Companies** tab.

    If the *Multiple Base Currencies* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the currency of the budget ledger must be the same as the base currency of these companies. If companies with different base currencies use purchase requisitions, you must create a separate ledger for each currency.

-   The budgets for validating purchase requests have been created and released on the [Budgets](../UserGuide/GL_30_20_10.md) \(GL302010\) form. For more information about budgets preparation and release, see [Purchase Requisition Configuration: General Information](config_OrderMgmt_Purchase_Requisitions_GeneralInfo.md).

If these tasks have been performed, you can configure configuring request classes for employees and budget validation in their requests.

## Turning On Budget Validation in Request Classes { .section}

Purchase requests can be validated against the budget only if they are from employees. To prepare an existing employee request class for budget validation, do the following:

-   In the Summary area of the [Request Classes](../UserGuide/RQ_20_10_00.md) \(RQ201000\) form, make sure that the **Customer Request** check box is cleared.
-   On the **GL Accounts** tab, turn on budget validation by selecting one of the following options:
    -   *Warning*: A user will be able to save a purchase request with this class even if the requested amount exceeds the budgeted amount. The system will display a warning.
    -   *Error*: A user won't be able to save a purchase request with this class if the requested amount exceeds the budgeted amount. The system will show an error message.

On the [Requests](../UserGuide/RQ_30_10_00.md) \(RQ301000\) form, you can now select this class in purchase requests that you want to validate against the budget.

## Configuring Budget Validation in Request Preferences { .section}

To configure budget validation in request preferences, do the following on the **Budget** tab of the [Purchase Requisitions Preferences](../UserGuide/RQ_10_10_00.md) \(RQ101000\) form:

-   In the **Budget Calculation** box, specify the time interval over which the system calculates both the request amount and the budget amount:

    -   *YTD Values*: From the beginning of the financial year to the end of the current financial period
    -   *PTD Values*: From the beginning of the financial period
    -   *Annual*: During the current calendar year
    When the user creates a purchase request, the system compares the amount for all requests created within the selected period with the budget amount for the same period.

-   In the **Validate By** box, specify the level at which the system validates purchase requests against budgets:

    -   *Budget Ledger*: The system validates the requests of all branches in companies that use the same budget ledger—that is, the companies with the same value in the **Ledger ID** column on the **Budget** tab of the [Purchase Requisitions Preferences](../UserGuide/RQ_10_10_00.md) form—against the summarized budget of these companies.
    -   *Branch*: The system validates the requests of the branch against the branch budget. This option is available if the *Multibranch Support* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
    -   *Company*: For all branches of the company, the system validates requests against the summarized budget of the company's branches. This option is available if the *Multicompany Support* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
    This mandatory box appears only if the *Multibranch Support* or *Multicompany Support* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.

-   In the table, add a row for each company in which you are going to validate purchase requests and specify a budget ledger in the **Ledger ID** column. You can use the same budget ledger for multiple companies. If the *Multiple Base Currencies* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the currency of the budget ledger can't differ from the base currency of the company.

**Parent topic:**[Purchase Requisitions](../ImplementationGuide/config_OrderMgmt_Purchase_Requisitions_Mapref.md)

