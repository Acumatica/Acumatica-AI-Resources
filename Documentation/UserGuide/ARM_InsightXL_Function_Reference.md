# InsightXL: Function Reference

The following tables summarize the financial functions available with InsightXL. You can find these functions in the **Insert Function** wizard in Excel under the **Acumatica** category.

## Functions for Financial Entities: Lists and Descriptions

<table id="_156e4e2a-a3ef-453b-b727-d7c0d25016ae"><thead><tr><th>

Name

</th><th>

Description

</th></tr></thead><tbody><tr><td>

COMPANYDESCR \(Tenant, Company\)

</td><td>

Returns the description for the specified company.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Company` &lt;single value or array&gt;: The company to retrieve the description for.

</td></tr><tr><td>

BRANCHLIST \(Tenant, Company\)

</td><td>

Returns the list of branches for the specified company.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Company` &lt;single value or array&gt;: The company to retrieve the branch list for. If the argument is omitted, the default of *?* is used.

</td></tr><tr><td>

BRANCHDESCR \(Tenant, Branch\)

</td><td>

Returns the branch description for the specified branch.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Branch` &lt;single value or array&gt;: The branch to retrieve the description for.

</td></tr><tr><td>

ACCCLASSDESCR \(Tenant, AccountClass\)

</td><td>

Returns the account class description for the specified account class.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `AccountClass` &lt;single value or array&gt;: The account class to retrieve the description for.

</td></tr><tr><td>

ACCCLASSFORACC \(Tenant, Account\)

</td><td>

Returns the account class for the specified account.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Account` &lt;single value or array&gt;: The account to retrieve the account class for.

</td></tr><tr><td>

ACCCLASSLIST \(Tenant, AccountClass\)

</td><td>

Returns the list of GL account classes within the specified range.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `AccountClass` &lt;single value, list, range, array, or wildcard&gt;: The account class value, list, range, or wildcard to retrieve the list of account classes for. If the argument is omitted, the default of *?* is used.

</td></tr><tr><td>

ACCLIST \(Tenant, Account, AccountClass, IncludeInactive\)

</td><td>

Returns the list of GL account numbers that belong to the specified range of accounts or are assigned to the specified account classes.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Account` &lt;single value, list, range, array, or wildcard&gt;: The account value, list, range, or wildcard to retrieve the accounts for. If the argument is omitted, the default of*?* is used.
-   `AccountClass` &lt;single value, list, range, array, or wildcard&gt;: The account class value, list, range, or wildcard to retrieve the accounts for. If the argument is omitted, the default of *?* is used.

 An array may be used for only one of the arguments.

</td></tr><tr><td>

ACCDESCR \(Tenant, Account\)

</td><td>

Returns the account description for the specified account.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Account` &lt;single value or array&gt;: The account to retrieve the description for.

</td></tr><tr><td>

SUBACCLIST \(Tenant, SubAccount, IncludeInactive\)

</td><td>

Returns the list of GL subaccounts within the specified range.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Subaccount` &lt;single value, list, range, array, or wildcard&gt;: The subaccount value, list, range, or wildcard to retrieve the list of the subaccounts for. If the argument is omitted, the default of *?* is used.
-   `IncludeInactive` *&lt;TRUE/FALSE&gt;*: *TRUE* to include inactive subaccounts; otherwise, *FALSE* \(default\).

</td></tr><tr><td>

SUBACCDESCR \(Tenant, SubAccount\)

</td><td>

Returns the subaccount description for the specified subaccount.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `SubAccount` &lt;single value or array&gt;: The subaccount to retrieve the description for.

</td></tr></tbody>
</table>

## Functions for Financial Entities: Expands

<table id="_629dad02-214e-4d2e-8c94-e4956df20133"><thead><tr><th>

Name

</th><th>

Description

</th></tr></thead><tbody><tr><td>

EXPANDCOMPANY \(Tenant, Company, AddDescr\)

</td><td>

Returns the array of companies and their descriptions.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Company` &lt;single value, list, range, or wildcard&gt;: The company value, list, range, or wildcard to retrieve the array of companies for. If the argument is omitted, the default of *?* is used.
-   `AddDescr` *&lt;TRUE/FALSE&gt;*: *TRUE* to include the description of each company; otherwise, *FALSE* \(default\).

</td></tr><tr><td>

EXPANDBRANCH \(Tenant, Company, Branch, AddDescr\)

</td><td>

Returns the array of branches assigned to the specified company and their descriptions.**Arguments:**

-   `Tenant`: The tenant to retrieve data for.
-   `Company` &lt;single value or array&gt;: The company to retrieve the array of branches for. If the argument is omitted, the default of *?* is used.
-   `Branch` &lt;single value, list, range, or wildcard&gt;: The branch value, list, range, or wildcard to retrieve the array of branches for.
-   `AddDescr` *&lt;TRUE/FALSE&gt;*: *TRUE* to include the description of each branch; otherwise, *FALSE* \(default\).

</td></tr><tr><td>

EXPANDLEDGER \(Tenant, Ledger, AddDescr\)

</td><td>

Returns the array of ledgers and their descriptions.**Arguments:**

-   `Tenant`: The tenant to retrieve data for.
-   `Ledger` &lt;single value, list, range, or wildcard&gt;: The ledger value, list, range, or wildcard to retrieve the array of ledgers for. If the argument is omitted, the default of *?* is used.
-   `AddDescr` *&lt;TRUE/FALSE&gt;*: *TRUE* to include the description of each ledger; otherwise, *FALSE* \(default\).

</td></tr><tr><td>

EXPANDACCCLASS \(Tenant, AccountClass, AddDescr\)

</td><td>

Returns the array of GL account classes within the specified range and their descriptions.**Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `AccountClass` &lt;single value, list, range, or wildcard&gt;: The account class value, list, range, or wildcard to retrieve the array of account classes for. If the argument is omitted, the default of *?* is used.
-   `AddDescr` *&lt;TRUE/FALSE&gt;*: *TRUE* to include the description of each account class; otherwise, *FALSE* \(default\).

</td></tr><tr><td>

EXPANDACC \(Tenant, Account, AccountClass, IncludeInactive, AddDescr\)

</td><td>

Returns the array of GL account numbers within the specified range of accounts or account classes, along with their descriptions.**Arguments:**

-   `Tenant`: The tenant to retrieve data for.
-   `Account` &lt;single value, list, range, or wildcard&gt;: The account value, list, range, or wildcard to retrieve the array of accounts for. If the argument is omitted, the default of *?* is used.
-   `AccountClass` &lt;single value, list, range, or wildcard&gt;: The account class value, list, range, or wildcard to retrieve the array of accounts for. If the argument is omitted, the default of *?* is used.
-   `IncludeInactive` *&lt;TRUE/FALSE&gt;*: *TRUE* to include inactive accounts; otherwise, *FALSE* \(default\).
-   `AddDescr` *&lt;TRUE/FALSE&gt;*: *TRUE* to include the description of each account; otherwise, *FALSE* \(default\).

</td></tr><tr><td>

EXPANDSUBACC \(Tenant, SubAccount, IncludeInactive, AddDescr\)

</td><td>

Returns the array of GL subaccounts within the specified range and their descriptions.**Arguments:**

-   `Tenant`: The tenant to retrieve data for.
-   `SubAccount` &lt;single value, list, range, or wildcard&gt;: The subaccount value, list, range, or wildcard to retrieve the array of subaccounts for. If the argument is omitted, the default of *?* is used.
-   `IncludeInactive` *&lt;TRUE/FALSE&gt;*: *TRUE* to include inactive subaccounts; otherwise, *FALSE* \(default\).
-   `AddDescr` *&lt;TRUE/FALSE&gt;*: *TRUE* to include the description of each subaccount; otherwise, *FALSE* \(default\).

</td></tr><tr><td>

EXPANDFINPERIOD \(Tenant, Company, FinPeriod, UseMasterFinCalendar\)

</td><td>

Returns the array of financial periods within the specified range.**Arguments:**

-   `Tenant`: The tenant to retrieve data for.
-   `Company`: The company to retrieve the array of financial periods for. If the argument is omitted, the default of *?* is used.
-   `FinPeriod` &lt;single value, list, range, or wildcard&gt;: The financial period value, range, or wildcard to retrieve the array of financial periods for.
-   `UseMasterFinCalendar` *&lt;TRUE/FALSE&gt;*: *TRUE* \(default\) if the master financial calendar must be used; otherwise, *FALSE*.

</td></tr></tbody>
</table>

## Functions for Amount Types

<table id="_11e7b7c8-aca8-4513-b71a-a0351672fd17"><thead><tr><th>

Name

</th><th>

Description

</th></tr></thead><tbody><tr><td>

BEGBALANCE \(Tenant, Company, Branch, Ledger, AccountClass, Account, SubAccount, FinPeriod, UseAccountCurrency, UseMasterFinCalendar\)

</td><td>

Returns the beginning balance in the base currency or the account currency of the specified GL accounts for the specified branch and financial period.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Company`: The company to retrieve data for.
-   `Branch` &lt;single value, list, range, or array&gt;: The branch or branches to retrieve data for.
-   `Ledger` &lt;single value or array&gt;: The ledger to retrieve data for.
-   `AccountClass` &lt;single value or array&gt;: The account class or classes to retrieve data for.
-   `Account` &lt;single value, list, range, array, or wildcard&gt;: The account or accounts to retrieve data for.
-   `SubAccount` &lt;single value, list, range, array, or wildcard&gt;: The subaccount or subaccounts to retrieve data for.
-   `FinPeriod` &lt;single value, array or range&gt;: The financial period or periods to retrieve data for.
-   `UseAccountCurrency` *&lt;TRUE/FALSE&gt;*: *TRUE* to return the amount in the account's currency; *FALSE* \(default\) to return the amount in the company's base currency.
-   `UseMasterFinCalendar` *&lt;TRUE/FALSE&gt;*: *TRUE* \(default\) if the master financial calendar must be used; otherwise, *FALSE*.

 An array may be used for only one of the arguments at a time.

</td></tr><tr><td>

ENDBALANCE \(Tenant, Company, Branch, Ledger, AccountClass, Account, SubAccount, FinPeriod, UseAccountCurrency, UseMasterFinCalendar\)

</td><td>

Returns the ending balance in the base currency or the account currency of the specified GL accounts for the specified branch and financial period.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Company`: The company to retrieve data for.
-   `Branch` &lt;single value, list, range, or array&gt;: The branch or branches to retrieve data for.
-   `Ledger` &lt;single value or array&gt;: The ledger to retrieve data for.
-   `AccountClass` &lt;single value or array&gt;: The account class or classes to retrieve data for.
-   `Account` &lt;single value, list, range, array, or wildcard&gt;: The account or accounts to retrieve data for.
-   `SubAccount` &lt;single value, list, range, array, or wildcard&gt;: The subaccount or subaccounts to retrieve data for.
-   `FinPeriod` &lt;single value, array or range&gt;: The financial period or periods to retrieve data for.
-   `UseAccountCurrency` *&lt;TRUE/FALSE&gt;*: *TRUE* to return the amount in the account's currency; *FALSE* \(default\) to return the amount in the company's base currency.
-   `UseMasterFinCalendar` *&lt;TRUE/FALSE&gt;*: *TRUE* \(default\) if the master financial calendar must be used; otherwise, *FALSE*.

 An array may be used for only one of the arguments at a time.

</td></tr><tr><td>

DEBIT \(Tenant, Company, Branch, Ledger, AccountClass, Account, SubAccount, FinPeriod, UseAccountCurrency, UseMasterFinCalendar\)

</td><td>

Returns the debit balance in the base currency or the account currency of the specified GL accounts for the specified branch and financial period.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Company`: The company to retrieve data for.
-   `Branch` &lt;single value, list, range, or array&gt;: The branch or branches to retrieve data for.
-   `Ledger` &lt;single value or array&gt;: The ledger to retrieve data for.
-   `AccountClass` &lt;single value or array&gt;: The account class or classes to retrieve data for.
-   `Account` &lt;single value, list, range, array, or wildcard&gt;: The account or accounts to retrieve data for.
-   `SubAccount` &lt;single value, list, range, array, or wildcard&gt;: The subaccount or subaccounts to retrieve data for.
-   `FinPeriod` &lt;single value, array or range&gt;: The financial period or periods to retrieve data for.
-   `UseAccountCurrency` *&lt;TRUE/FALSE&gt;*: *TRUE* to return the amount in the account's currency; *FALSE* \(default\) to return the amount in the company's base currency.
-   `UseMasterFinCalendar` *&lt;TRUE/FALSE&gt;*: *TRUE* \(default\) if the master financial calendar must be used; otherwise, *FALSE*.

 An array may be used for only one of the arguments at a time.

</td></tr><tr><td>

CREDIT \(Tenant, Company, Branch, Ledger, AccountClass, Account, SubAccount, FinPeriod, UseAccountCurrency, UseMasterFinCalendar\)

</td><td>

Returns the credit balance in the base currency or the account currency of the specified GL accounts for the specified branch and financial period.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Company`: The company to retrieve data for.
-   `Branch` &lt;single value, list, range, or array&gt;: The branch or branches to retrieve data for.
-   `Ledger` &lt;single value or array&gt;: The ledger to retrieve data for.
-   `AccountClass` &lt;single value or array&gt;: The account class or classes to retrieve data for.
-   `Account` &lt;single value, list, range, array, or wildcard&gt;: The account or accounts to retrieve data for.
-   `SubAccount` &lt;single value, list, range, array, or wildcard&gt;: The subaccount or subaccounts to retrieve data for.
-   `FinPeriod` &lt;single value, array or range&gt;: The financial period or periods to retrieve data for.
-   `UseAccountCurrency` *&lt;TRUE/FALSE&gt;*: *TRUE* to return the amount in the account's currency; *FALSE* \(default\) to return the amount in the company's base currency.
-   `UseMasterFinCalendar` *&lt;TRUE/FALSE&gt;*: *TRUE* \(default\) if the master financial calendar must be used; otherwise, *FALSE*.

 An array may be used for only one of the arguments at a time.

</td></tr><tr><td>

TURNOVER \(Tenant, Company, Branch, Ledger, AccountClass, Account, SubAccount, FinPeriod, UseAccountCurrency, UseMasterFinCalendar\)

</td><td>

Returns the turnover amount in the base currency or the account currency for the specified GL accounts for the specified branch and financial period.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Company`: The company to retrieve data for.
-   `Branch` &lt;single value, list, range, or array&gt;: The branch or branches to retrieve data for.
-   `Ledger` &lt;single value or array&gt;: The ledger to retrieve data for.
-   `AccountClass` &lt;single value or array&gt;: The account class or classes to retrieve data for.
-   `Account` &lt;single value, list, range, array, or wildcard&gt;: The account or accounts to retrieve data for.
-   `SubAccount` &lt;single value, list, range, array, or wildcard&gt;: The subaccount or subaccounts to retrieve data for.
-   `FinPeriod` &lt;single value, array or range&gt;: The financial period or periods to retrieve data for.
-   `UseAccountCurrency` *&lt;TRUE/FALSE&gt;*: *TRUE* to return the amount in the account's currency; *FALSE* \(default\) to return the amount in the company's base currency.
-   `UseMasterFinCalendar` *&lt;TRUE/FALSE&gt;*: *TRUE* \(default\) if the master financial calendar must be used; otherwise, *FALSE*.

 An array may be used for only one of the arguments at a time.

</td></tr></tbody>
</table>

## Functions for Financial Periods

<table id="_6e7d246f-170a-4faf-995f-a94f858780af"><thead><tr><th>

Name

</th><th>

Description

</th></tr></thead><tbody><tr><td>

FINPERIODLIST \(Tenant, Company, FinPeriod, UseMasterFinCalendar\)

</td><td>

Returns the list of financial periods within the specified range.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Company`: The company to retrieve the list of financial periods for. If the argument is omitted, the default company is used.
-   `FinPeriod` &lt;single value, list, range, array, or wildcard&gt;: The financial period's value, range, or wildcard to retrieve the list of financial periods for.
-   `UseMasterFinCalendar` *&lt;TRUE/FALSE&gt;*: `TRUE` \(default\) if the master financial calendar must be used; otherwise, `FALSE`.

</td></tr><tr><td>

FINPERIODSTART \(Tenant, Company, FinPeriod, UseMasterFinCalendar\)

</td><td>

Returns the Excel date value for the start date of the specified financial period.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Company`: The company to retrieve the financial period's start date for. If the argument is omitted, the default company is used.
-   `FinPeriod` &lt;single value or array&gt;: The financial period to retrieve the start date for.
-   `UseMasterFinCalendar` *&lt;TRUE/FALSE&gt;*: *TRUE* \(default\) if the master financial calendar must be used; otherwise, *FALSE*.

</td></tr><tr><td>

FINPERIODEND \(Tenant, Company, FinPeriod, UseMasterFinCalendar\)

</td><td>

Returns the Excel date value for the end date of the specified financial period.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Company`: The company to retrieve the financial period's end date for. If the argument is omitted, the default company is used.
-   `FinPeriod` &lt;single value or array&gt;: The financial period to retrieve the end date for.
-   `UseMasterFinCalendar` *&lt;TRUE/FALSE&gt;*: *TRUE* \(default\) if the master financial calendar must be used; otherwise, *FALSE*.

</td></tr><tr><td>

FINPERIODBYDATE \(Tenant, Company, Date, UseMasterFinCalendar\)

</td><td>

Returns the financial period for the specified date, if it exists in the company's calendar.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Company`: The company to retrieve the financial period for. If the argument is omitted, the default company is used.
-   `Date` &lt;single value or array&gt;: The date to retrieve the financial period for.
-   `UseMasterFinCalendar` *&lt;TRUE/FALSE&gt;*: *TRUE* \(default\) if the master financial calendar must be used; otherwise, *FALSE*.

</td></tr><tr><td>

FINPERIODBYPERIOD \(Tenant, Company, Year, FinPeriod, UseMasterFinCalendar\)

</td><td>

Returns the matching financial period for the specified year and period number.

**Arguments:**

-   `Tenant`: The tenant to retrieve data for.
-   `Company`: The company to retrieve the financial period for. If the argument is omitted, the default company is used.
-   `Year` &lt;single value or array&gt;: The year to retrieve the financial period for.
-   `FinPeriod` &lt;single value or array&gt;: The financial period number to retrieve the financial period for.
-   `UseMasterFinCalendar` *&lt;TRUE/FALSE&gt;*: *TRUE* \(default\) if the master financial calendar must be used; otherwise, *FALSE*.

An array may be used for only one of the arguments at a time.**Examples:**

-   `FINPERIODBYPERIOD(,, "2025", 1, FALSE)` returns *01-2025*
-   `FINPERIODBYPERIOD(,, "2025", 0, FALSE)` returns *12-2024*
-   `FINPERIODBYPERIOD(,, "2025", -1, FALSE)` returns *11-2024*
-   `FINPERIODBYPERIOD(,, "2025", 13, FALSE)` returns *01-2026*

</td></tr></tbody>
</table>

## Examples of Argument Syntax

The following table shows syntax examples for the argument types used in functions.

<table id="_14bc8d95-a722-4880-ba44-11b045140126"><thead><tr><th>

Argument Type or Parameter

</th><th>

Examples of Syntax

</th></tr></thead><tbody><tr><td>

&lt;single value&gt;

</td><td>

A single text or numeric value entered directly: *"CAPITAL"*

 A cell reference containing a single value: *A1*

</td></tr><tr><td>

&lt;list&gt;

</td><td>

A list of comma-separated values:*"PRODRETAIL, PRODWHOLE, SERVWEST"*

 A list of values in an Excel range: *A1:A8*

</td></tr><tr><td>

&lt;range&gt;

</td><td>

All accounts whose numbers fall between two values: *"10000:40000"*

 All accounts except the specified values: *"\*,-22000,-24000"*

</td></tr><tr><td>

&lt;wildcard&gt;

</td><td>

A pattern where *?* matches any single character: *"7??00"*

</td></tr><tr><td>

&lt;array&gt;

</td><td>

A reference to all values in a spilled array, starting at the specified cell: *A53\#***Tip:** The function is applied to each value in turn, returning a matching array of results.

</td></tr><tr><td>

`Date`

</td><td>

A date value in *MM/DD/YYYY* or *DD Month YYYY* format, regardless of regional settings:

 -   *12/25/2024*
-   *25 December 2024*

</td></tr><tr><td>

`FinPeriod`

</td><td>

A financial period in *MM-YYYY* format:*"10-2024"*

</td></tr><tr><td>

`FinPeriod` &lt;range&gt;

</td><td>

A range spanning multiple financial periods, from start to end: *\("10-2024:10-2025"\)*

</td></tr><tr><td>

`MasterFinCalendar`

</td><td>

A Boolean value indicating whether to use the master financial calendar: *TRUE* if the master financial calendar must be used; otherwise, *FALSE*

</td></tr><tr><td>

Absolute cell reference

</td><td>

A reference to a fixed cell that does not change when formulas are moved or copied: *$A$1*

</td></tr><tr><td>

Absolute column reference

</td><td>

A reference where the column is fixed but the row can change when formulas are moved or copied: *$A1*

</td></tr></tbody>
</table>

**Parent topic:**[Using InsightXL to Work with ARM Reports in Excel](../UserGuide/ARM_InsightXL_Mapref.md)

