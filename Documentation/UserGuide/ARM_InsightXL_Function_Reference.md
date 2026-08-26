# InsightXL: Function Reference {#_87b0df2c-7b8e-431e-9d21-a4bb52a461cb .concept}

The tables below provide an overview of all financial functions available with InsightXL. You can find these functions in the **Insert Function** wizard in Excel under the **Acumatica** category.

## Functions for Financial Entities: Lists and Descriptions { .section}

|Name|Description|
|----|-----------|
|COMPANYDESCR \(Tenant, Company\)|Returns the company description for the specified company.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Company` &lt;single value or array&gt;: The company to retrieve the description for.

|
|BRANCHLIST \(Tenant, Company\)|Returns the list of branches for the specified company.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Company` &lt;single value or array&gt;: The company to retrieve the description for. If omitted, defaults to *?*.

|
|BRANCHDESCR \(Tenant, Branch\)|Returns the branch description for the specified branch.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Branch` &lt;single value or array&gt;: The branch to retrieve the description for.

|
|ACCCLASSDESCR \(Tenant, AccountClass\)|Returns the account class description for the specified account class.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `AccountClass` &lt;single value or array&gt;: The account class to retrieve the description for.

|
|ACCCLASSFORACC \(Tenant, Account\)|Returns the account class for the specified account.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Account` &lt;single value or array&gt;: The account to retrieve the account class for.

|
|ACCCLASSLIST \(Tenant, AccountClass\)|Returns the list of GL account classes within the specified range.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `AccountClass` &lt;single value, list, range, array or wildcard&gt;: The account class's value, list, range, or wildcard to retrieve the list of account classes for. If omitted, defaults to *?*.

|
|ACCLIST \(Tenant, Account, AccountClass, IncludeInactive\)|Returns the list of GL account numbers that belong to the specified range of accounts or are assigned to the specified account classes.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Account` &lt;single value, list, range, array or wildcard&gt;: The account's value, list, range, or wildcard to retrieve the accounts for. If omitted, defaults to *?*.
-   `AccountClass` &lt;single value, list, range, array or wildcard&gt;: The account class's value, list, range, or wildcard to retrieve the accounts for. If omitted, defaults to *?*.

 An array may be used for only one of the arguments.

|
|ACCDESCR \(Tenant, Account\)|Returns the account description for the specified account.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Account` &lt;single value or array&gt;: The account to retrieve the description for.

|
|SUBACCLIST \(Tenant, SubAccount, IncludeInactive\)|Returns the list of GL subaccounts within the specified range.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Subaccount` &lt;single value, list, range, array or wildcard&gt;: The subaccount's value, list, range, or wildcard to retrieve the list of the subaccounts for. If omitted, defaults to *?*.
-   `IncludeInactive` *&lt;TRUE/FALSE&gt;*: *TRUE* if inactive subaccounts are included; otherwise, *FALSE* \(default\).

|
|SUBACCDESCR \(Tenant, SubAccount\)|Returns the subaccount description for the specified subaccount.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `SubAccount` &lt;single value or array&gt;: The subaccount to retrieve the description for.

|

## Functions for Financial Entities: Expands { .section}

|Name|Description|
|----|-----------|
|EXPANDCOMPANY \(Tenant, Company, AddDescr\)|Returns the array of companies and their descriptions.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Company` &lt;single value, list, range, or wildcard&gt;: The company's value, list, range, or wildcard to retrieve the array of companies for. If omitted, defaults to *?*.
-   `AddDescr` *&lt;TRUE/FALSE&gt;*: *TRUE* to include the description of each company; otherwise, *FALSE* \(default\).

|
|EXPANDBRANCH \(Tenant, Company, Branch, AddDescr\)|Returns the array of branches assigned to the specified company and their descriptions.**Arguments:**

-   `Tenant`: The tenant to retrieve data for.
-   `Company` &lt;single value or array&gt;: The company to retrieve the array of branches for. If omitted, defaults to *?*.
-   `Branch` &lt;single value, list, range, or wildcard&gt;: The branch's value, list, range, or wildcard to retrieve the array of branches for.
-   `AddDescr` *&lt;TRUE/FALSE&gt;*: *TRUE* to include the description of each branch; otherwise, *FALSE* \(default\).

|
|EXPANDLEDGER \(Tenant, Ledger, AddDescr\)|Returns the array of ledgers and their descriptions.**Arguments:**

-   `Tenant`: The tenant to retrieve data for.
-   `Ledger` &lt;single value, list, range, or wildcard&gt;: The ledger's value, list, range, or wildcard to retrieve the array of ledgers for. If omitted, defaults to *?*.
-   `AddDescr` *&lt;TRUE/FALSE&gt;*: *TRUE* to include the description of each ledger; *FALSE* \(default\).

|
|EXPANDACCCLASS \(Tenant, AccountClass, AddDescr\)|Returns the array of GL account classes within the specified range and their descriptions.**Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `AccountClass` &lt;single value, list, range, or wildcard&gt;: The account class's value, list, range, or wildcard to retrieve the array of account classes for. If omitted, defaults to *?*.
-   `AddDescr` *&lt;TRUE/FALSE&gt;*: *TRUE* to include the description of each account class; otherwise, *FALSE* \(default\).

|
|EXPANDACC \(Tenant, Account, AccountClass, IncludeInactive, AddDescr\)|Returns the array of GL account numbers within the specified range of accounts or account classes, along with their descriptions.**Arguments:**

-   `Tenant`: The tenant to retrieve data for.
-   `Account` &lt;single value, list, range, or wildcard&gt;: The account's value, list, range, or wildcard to retrieve the array of accounts for. If omitted, defaults to *?*.
-   `AccountClass` &lt;single value, list, range, or wildcard&gt;: The account class's value, list, range, or wildcard to retrieve the array of accounts for. If omitted, defaults to *?*.
-   `IncludeInactive` *&lt;TRUE/FALSE&gt;*: *TRUE* if inactive accounts are included; otherwise, *FALSE* \(default\).
-   `AddDescr` *&lt;TRUE/FALSE&gt;*: *TRUE* to include the description of each account; otherwise, *FALSE* \(default\).

|
|EXPANDSUBACC \(Tenant, SubAccount, IncludeInactive, AddDescr\)|Returns the array of GL subaccounts within the specified range and their descriptions.**Arguments:**

-   `Tenant`: The tenant to retrieve data for.
-   `SubAccount` &lt;single value, list, range, or wildcard&gt;: The subaccount's value, list, range, or wildcard to retrieve the array of subaccounts for. If omitted, defaults to *?*.
-   `IncludeInactive` *&lt;TRUE/FALSE&gt;*: *TRUE* if including inactive subaccounts; otherwise, *FALSE* \(default\).
-   `AddDescr` *&lt;TRUE/FALSE&gt;*: *TRUE* to include the description of each subaccount; otherwise, *FALSE* \(default\).

|
|EXPANDFINPERIOD \(Tenant, Company, FinPeriod, UseMasterFinCalendar\)|Returns the array of financial periods within the specified range.**Arguments:**

-   `Tenant`: The tenant to retrieve data for.
-   `Company`: The company to retrieve the array of financial periods for. If omitted, defaults to *?*.
-   `FinPeriod` &lt;single value, list, range, or wildcard&gt;: The financial period's value, range, or wildcard to retrieve the array of financial periods for.
-   `UseMasterFinCalendar` *&lt;TRUE/FALSE&gt;*: *TRUE* \(default\) if the master financial calendar must be used; otherwise, *FALSE*.

|

## Functions for Amount Types { .section}

|Name|Description|
|----|-----------|
|BEGBALANCE \(Tenant, Company, Branch, Ledger, AccountClass, Account, SubAccount, FinPeriod, UseAccountCurrency, UseMasterFinCalendar\)|Returns the beginning balance in the base currency or the account currency of the specified GL accounts for the specified branch and financial period.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Company`: The company to retrieve data for.
-   `Branch` &lt;single value, list, range, or array&gt;: The branch or branches to retrieve data for.
-   `Ledger` &lt;single value or array&gt;: The ledger to retrieve data for.
-   `AccountClass` &lt;single value or array&gt;: The account class or classes to retrieve data for.
-   `Account` &lt;single value, list, range, array or wildcard&gt;: The account or accounts to retrieve data for.
-   `SubAccount` &lt;single value, list, range, array or wildcard&gt;: The subaccount or subaccounts to retrieve data for.
-   `FinPeriod` &lt;single value, array or range&gt;: The financial period or periods to retrieve data for.
-   `UseAccountCurrency` *&lt;TRUE/FALSE&gt;*: *TRUE* to return the amount in the account's currency; *FALSE* \(default\) to return the amount in the company's base currency.
-   `UseMasterFinCalendar` *&lt;TRUE/FALSE&gt;*: *TRUE* \(default\) if the master financial calendar must be used; otherwise, *FALSE*.

 An array may be used for only one of the arguments at a time.

|
|ENDBALANCE \(Tenant, Company, Branch, Ledger, AccountClass, Account, SubAccount, FinPeriod, UseAccountCurrency, UseMasterFinCalendar\)|Returns the ending balance in the base currency or the account currency of the specified GL accounts for a given branch and financial period.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Company`: The company to retrieve data for.
-   `Branch` &lt;single value, list, range, or array&gt;: The branch or branches to retrieve data for.
-   `Ledger` &lt;single value or array&gt;: The ledger to retrieve data for.
-   `AccountClass` &lt;single value or array&gt;: The account class or classes to retrieve data for.
-   `Account` &lt;single value, list, range, array or wildcard&gt;: The account or accounts to retrieve data for.
-   `SubAccount` &lt;single value, list, range, array or wildcard&gt;: The subaccount or subaccounts to retrieve data for.
-   `FinPeriod` &lt;single value, array or range&gt;: The financial period or periods to retrieve data for.
-   `UseAccountCurrency` *&lt;TRUE/FALSE&gt;*: *TRUE* to return the amount in the account's currency; *FALSE* \(default\) to return the amount in the company's base currency.
-   `UseMasterFinCalendar` *&lt;TRUE/FALSE&gt;*: *TRUE* \(default\) if the master financial calendar must be used; otherwise, *FALSE*.

 An array may be used for only one of the arguments at a time.

|
|DEBIT \(Tenant, Company, Branch, Ledger, AccountClass, Account, SubAccount, FinPeriod, UseAccountCurrency, UseMasterFinCalendar\)|Returns the debit balance in the base currency or the account currency of the specified GL accounts for a given branch and financial period.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Company`: The company to retrieve data for.
-   `Branch` &lt;single value, list, range, or array&gt;: The branch or branches to retrieve data for.
-   `Ledger` &lt;single value or array&gt;: The ledger to retrieve data for.
-   `AccountClass` &lt;single value or array&gt;: The account class or classes to retrieve data for.
-   `Account` &lt;single value, list, range, array or wildcard&gt;: The account or accounts to retrieve data for.
-   `SubAccount` &lt;single value, list, range, array or wildcard&gt;: The subaccount or subaccounts to retrieve data for.
-   `FinPeriod` &lt;single value, array or range&gt;: The financial period or periods to retrieve data for.
-   `UseAccountCurrency` *&lt;TRUE/FALSE&gt;*: *TRUE* to return the amount in the account's currency; *FALSE* \(default\) to return the amount in the company's base currency.
-   `UseMasterFinCalendar` *&lt;TRUE/FALSE&gt;*: *TRUE* \(default\) if the master financial calendar must be used; otherwise, *FALSE*.

 An array may be used for only one of the arguments at a time.

|
|CREDIT \(Tenant, Company, Branch, Ledger, AccountClass, Account, SubAccount, FinPeriod, UseAccountCurrency, UseMasterFinCalendar\)|Returns the credit balance in the base currency or the account currency of the specified GL accounts for a given branch and financial period.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Company`: The company to retrieve data for.
-   `Branch` &lt;single value, list, range, or array&gt;: The branch or branches to retrieve data for.
-   `Ledger` &lt;single value or array&gt;: The ledger to retrieve data for.
-   `AccountClass` &lt;single value or array&gt;: The account class or classes to retrieve data for.
-   `Account` &lt;single value, list, range, array or wildcard&gt;: The account or accounts to retrieve data for.
-   `SubAccount` &lt;single value, list, range, array or wildcard&gt;: The subaccount or subaccounts to retrieve data for.
-   `FinPeriod` &lt;single value, array or range&gt;: The financial period or periods to retrieve data for.
-   `UseAccountCurrency` *&lt;TRUE/FALSE&gt;*: *TRUE* to return the amount in the account's currency; *FALSE* \(default\) to return the amount in the company's base currency.
-   `UseMasterFinCalendar` *&lt;TRUE/FALSE&gt;*: *TRUE* \(default\) if the master financial calendar must be used; otherwise, *FALSE*.

 An array may be used for only one of the arguments at a time.

|
|TURNOVER \(Tenant, Company, Branch, Ledger, AccountClass, Account, SubAccount, FinPeriod, UseAccountCurrency, UseMasterFinCalendar\)|Returns the turnover amount in the base currency or the account currency for the specified GL accounts for a given branch and financial period.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Company`: The company to retrieve data for.
-   `Branch` &lt;single value, list, range, or array&gt;: The branch or branches to retrieve data for.
-   `Ledger` &lt;single value or array&gt;: The ledger to retrieve data for.
-   `AccountClass` &lt;single value or array&gt;: The account class or classes to retrieve data for.
-   `Account` &lt;single value, list, range, array or wildcard&gt;: The account or accounts to retrieve data for.
-   `SubAccount` &lt;single value, list, range, array or wildcard&gt;: The subaccount or subaccounts to retrieve data for.
-   `FinPeriod` &lt;single value, array or range&gt;: The financial period or periods to retrieve data for.
-   `UseAccountCurrency` *&lt;TRUE/FALSE&gt;*: *TRUE* to return the amount in the account's currency; *FALSE* \(default\) to return the amount in the company's base currency.
-   `UseMasterFinCalendar` *&lt;TRUE/FALSE&gt;*: *TRUE* \(default\) if the master financial calendar must be used; otherwise, *FALSE*.

 An array may be used for only one of the arguments at a time.

|

## Functions for Financial Periods { .section}

|Name|Description|
|----|-----------|
|FINPERIODLIST \(Tenant, Company, FinPeriod, UseMasterFinCalendar\)|Returns the list of financial periods within the specified range.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Company`: The company to retrieve the list of financial periods for. If omitted, the default company is used.
-   `FinPeriod` &lt;single value, list, range, array, or wildcard&gt;: The financial period's value, range, or wildcard to retrieve the list of financial periods for.
-   `UseMasterFinCalendar` *&lt;TRUE/FALSE&gt;*: `TRUE` \(default\) if the master financial calendar should be used; otherwise, `FALSE`.

|
|FINPERIODSTART \(Tenant, Company, FinPeriod, UseMasterFinCalendar\)|Returns the Excel date value for the start date of the specified financial period.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Company`: The company to retrieve the financial period's start date for. If omitted, the default company is used.
-   `FinPeriod` &lt;single value or array&gt;: The financial period to retrieve the start date for.
-   `UseMasterFinCalendar` *&lt;TRUE/FALSE&gt;*: *TRUE* \(default\) if the master financial calendar must be used; otherwise, *FALSE*.

|
|FINPERIODEND \(Tenant, Company, FinPeriod, UseMasterFinCalendar\)|Returns the Excel date value for the end date of the specified financial period.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Company`: The company to retrieve the financial period's end date for. If omitted, the default company is used.
-   `FinPeriod` &lt;single value or array&gt;: The financial period to retrieve the end date for.
-   `UseMasterFinCalendar` *&lt;TRUE/FALSE&gt;*: *TRUE* \(default\) if the master financial calendar must be used; otherwise, *FALSE*.

|
|FINPERIODBYDATE \(Tenant, Company, Date, UseMasterFinCalendar\)|Returns the financial period for the specified date, if it exists in the company's calendar.

 **Arguments:**

 -   `Tenant`: The tenant to retrieve data for.
-   `Company`: The company to retrieve the financial period for. If omitted, the default company is used.
-   `Date` &lt;single value or array&gt;: The date to retrieve the financial period for.
-   `UseMasterFinCalendar` *&lt;TRUE/FALSE&gt;*: *TRUE* \(default\) if the master financial calendar must be used; otherwise, *FALSE*.

|
|FINPERIODBYPERIOD \(Tenant, Company, Year, FinPeriod, UseMasterFinCalendar\)|Returns the matching financial period for the specified year and period number.

**Arguments:**

-   `Tenant`: The tenant to retrieve data for.
-   `Company`: The company to retrieve the financial period for. If omitted, the default company is used.
-   `Year` &lt;single value or array&gt;: The year to retrieve the financial period for.
-   `FinPeriod` &lt;single value or array&gt;: The financial period number to retrieve the financial period for.
-   `UseMasterFinCalendar` *&lt;TRUE/FALSE&gt;*: *TRUE* \(default\) if the master financial calendar must be used; otherwise, *FALSE*.

An array may be used for only one of the arguments at a time.**Examples:**

-   `FINPERIODBYPERIOD(,, "2025", 1, FALSE)` returns *01-2025*
-   `FINPERIODBYPERIOD(,, "2025", 0, FALSE)` returns *12-2024*
-   `FINPERIODBYPERIOD(,, "2025", -1, FALSE)` returns *11-2024*
-   `FINPERIODBYPERIOD(,, "2025", 13, FALSE)` returns *01-2026*

|

## Argument Syntax { .section}

The following table shows syntax examples for argument types used in functions.

|Argument Type or Parameter|Examples of Syntax|
|--------------------------|------------------|
|&lt;single value&gt;|A single text or numeric value entered directly: *"CAPITAL"*

 A cell reference containing a single value: *A1*

|
|&lt;list&gt;|A list of comma-separated values:*"PRODRETAIL, PRODWHOLE, SERVWEST"*

 A list of values in an Excel range: *A1:A8*

|
|&lt;range&gt;|All accounts whose numbers fall between two values: *"10000:40000"*

 All accounts except the specified values: *"\*,-22000,-24000"*

|
|&lt;wildcard&gt;|A pattern where *?* matches any single character: *"7??00"*|
|&lt;array&gt;|A reference to all values in a spilled array, starting at the specified cell : *A53\#*. The function is applied to each value in turn, returning a matching array of results.|
|`Date`|A date value in *MM/DD/YYYY* or *DD Month YYYY* format, regardless of regional settings:

 -   *12/25/2024*
-   *25 December 2024*

|
|`FinPeriod`|A financial period in *MM-YYYY* format:*"10-2024"*|
|`FinPeriod` &lt;range&gt;|A range spanning multiple financial periods, from start to end: *\("10-2024:10-2025"\)*|
|`MasterFinCalendar`|A Boolean value indicating whether to use the master financial calendar: *TRUE* if the master financial calendar must be used; otherwise, *FALSE*|
|Absolute cell reference|A reference to a fixed cell that does not change when formulas are moved or copied: *$A$1*|
|Absolute column reference|A reference where the column is fixed but the row can change when formulas are moved or copied: *$A1*|

**Parent topic:**[Working with ARM Reports in Excel](../UserGuide/ARM_InsightXL_Mapref.md)

