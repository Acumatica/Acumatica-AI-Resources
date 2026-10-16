# Functions

Functions are used in formulas that you create on the [Formula Editor Dialog Box](SM__ref_IS_Formula_Editor_Dialog.md), which you can invoke from the [Import Scenarios](SM_20_60_25.md) \(SM206025\) and [Export Scenarios](SM_20_70_25.md) \(SM207025\) forms.

To add functions to a formula, you can type them in the Formula Text pane of the dialog box or select them from the list of formula components available within the dialog box. \(Select a function type to view the list of functions of the type, and then select a function.\)

This topic describes and provides examples of the functions you can use in formulas, broken down by type.

## Conversion Functions

The available conversion functions, which are used to convert data from one data type to another, are listed below.

<table><thead><tr><th>

Function

</th><th>

Description and Example

</th></tr></thead><tbody><tr><td>

CBool\(x\)

</td><td>

Converts the expression used as the function argument into a Boolean expression. Returns *False* if the Boolean value is *0*; otherwise, returns *True*. The return type is `Boolean`.

 Example: `=CBool([CashDiscountAmount]`

 Here `[CashDiscountAmount]` is used as the function argument.

</td></tr><tr><td>

CDate\(x\)

</td><td>

Converts the expression used as the function argument into a value of the *Date* type. The argument should be a valid date expression according to the locale selected for the import or export scenario. The return type is `DateTime`.

 Example: `=CDate('24/12/2011')`

 Here a string is used as the function argument.

</td></tr><tr><td>

CStr\(x\)

</td><td>

Converts the expression used as the function argument into a string. If the argument is *Null*, the function returns a run-time error; otherwise, it returns a string. The return type is `String`.

 Example: `='(' +CStr([AreaCode])+')'+CStr([Phone])`

 Here `[AreaCode]` and `[Phone]` are used in the function argument.

</td></tr><tr><td>

CDbl\(x\)

</td><td>

Converts the expression defined in the function argument into a value of the `Double` type. The return type is `Double`.

 Example: `=CDbl(1.0/[ExchangeRate])`

 Here `[ExchangeRate]` is used in the function argument.

</td></tr><tr><td>

CSng\(x\)

</td><td>

Converts the expression used as the function argument into a value of the `Single` type. If the expression has a value outside the acceptable range for the `Single` type, this function returns an error. The return type is `Float`.

 Example: `=CSng([CashDiscountAmount]/[DocAmount])`

 Here `[CashDiscountAmount]` and `[DocAmount]` are used in the function argument.

</td></tr><tr><td>

CDec\(x\)

</td><td>

Converts the expression used as the function argument into a value of the `Decimal` type. The return type is `Decimal`.

 Example: `=CDec([DocAmount]*0.015)`

 Here `[DocAmount]` is used in the function argument.

</td></tr><tr><td>

CInt\(x\)

</td><td>

Converts the expression used as the function argument into a value of the `Integer` type. The return type is `Int32`.

 Example: `=CInt('2012')-Year([DocDate])`

 Here `[DocDate]` is used in the function argument.

</td></tr><tr><td>

CShort\(x\)

</td><td>

Converts a numeric value to a value of the `Short` type. The return type is `Int16`.

 Example: `=CShort([CashDiscountAmount])`

 Here `[CashDiscountAmount]` is used as the function argument.

</td></tr><tr><td>

CLong\(x\)

</td><td>

Converts a numeric value to a value of the `Long` type. The return type is `Int64`.

 Example: `=CLong([CashDiscountAmount])`

 Here `[CashDiscountAmount]` is used as the function argument.

</td></tr></tbody>
</table>

## Text Functions

Text functions are used to perform operations on text strings. The group of text functions includes the functions described below.

<table><thead><tr><th>

Function

</th><th>

Description and Example

</th></tr></thead><tbody><tr><td>

LTrim\(string\)

</td><td>

Removes all leading spaces or parsing characters from the specified string, or all leading *0* bytes from the specified binary expression. The return type is `String`.

 Example: `=LTrim(CStr([Phone]))`

 Here `[Phone]` is used as the function argument.

</td></tr><tr><td>

RTrim\(string\)

</td><td>

Removes all trailing spaces or parsing characters from the specified character expression, or all trailing *0* bytes from the specified binary expression. The return type is `String`.

 Example: `=RTrim(CStr([AreaCode]))`

 Here `[AreaCode]` is used as the function argument.

</td></tr><tr><td>

Trim\(string\)

</td><td>

Removes all leading and trailing spaces or parsing characters from the specified character expression, or all leading and trailing *0* bytes from the specified binary expression. The return type is `String`.

 Example: `=Iif(Trim([Country])`

 Here `[Country]` is used in the function argument.

</td></tr><tr><td>

Format\(format, argument\(s\)\)

</td><td>

Replaces the format item in a specified formatting string \(*format*\) with the text equivalent of the arguments \(*arguments*\). The return type is `String`.

 Example: `=Format('Currency: . . . . . . . . {0:C}; Account: . . . . . . . . {1:N}', [Currency], [AccountBalance])`

 Here `[Currency]` and `[AccountBalance]` are used in the function argument; 0 and 1 are the specifiers indicating where the arguments will be inserted, *C* is the *currency* format specifier, and *N* is the *number* format specifier.

</td></tr><tr><td>

UCase\(string\)

</td><td>

Returns a string that has been converted to uppercase. The *string* argument can be any valid string expression. The return type is `String`. If *string* contains *Null*, *Null* is returned.

 Example: `=UCase([CustomerName])`

 Here `[CustomerName]` is used as the function argument.

</td></tr><tr><td>

LCase\(string\)

</td><td>

Returns a string that has been converted to lowercase. The *string* argument can be any valid string expression. The return type is `String`. If *string* contains *Null*, *Null* is returned.

 Example: `=LCase(CStr([CustomerID])`

 Here `[CustomerID]` is used in the function argument.

</td></tr><tr><td>

InStr\(string, findString\)

</td><td>

Returns the position of the first occurrence of one string \(*findString*\) within another \(*string*\).The return type is `String`.

 Example: `=InStr([CustomerName], 'Inc')`

 Here `[CustomerName]` is used in the function argument.

</td></tr><tr><td>

Substring\(string, startIndex, length\)

</td><td>

Returns a string containing the specified number of characters \(*length*\) starting from the specified position \(*startIndex*\). The first character has the *0* index. The return type is `String`.

 Example: `=Substring( [Name], 3, 8)`

 Here `[Name]` is used in the function argument.

</td></tr><tr><td>

InStrRev\(string, findString\)

</td><td>

Returns the position of the last occurrence of one string \(*findString*\) within another \(*string*\). The return type is `String`.

 Example: `=InStrRev([CustomerName], 'Inc')`

 Here `[CustomerName]` is used in the function argument.

</td></tr><tr><td>

Len\(string\)

</td><td>

Returns an integer containing either the number of characters in the string or the nominal number of bytes required to store a variable. The return type is `Int32`.

 Example: `=Len([CustomerName])`

 Here `[CustomerName]` is used as the function argument.

</td></tr><tr><td>

Left\(string, length\)

</td><td>

Returns a string containing the specified number of characters from the left side of a string. The return type is `String`. If *string* contains *Null*, *Null* is returned.

 Example: `=Left(Trim([VendorName]), 10)`

 Here `[VendorName]` is used in the function argument.

</td></tr><tr><td>

Right\(string, length\)

</td><td>

Returns a string containing a specified number of characters from the right side of a string. The return type is `String`. If *string* contains *Null*, *Null* is returned.

 Example: `=Right(CustomerName, 3)`

 Here `[CustomerName]` is used in the function argument.

</td></tr><tr><td>

Replace\(string, oldValue, newValue\)

</td><td>

Returns a string in which the specified substring \(*oldValue*\) has been replaced with another substring \(*newValue*\). The return type is `String`.

Example: `=Replace([Description], 'rur', 'eur')` Here `[Description]` is used in the function argument.

</td></tr><tr><td>

PadLeft\(string, width, paddingChar\)

</td><td>

Right-aligns the characters in a specified string \(*string*\), padding with the specified character \(*paddingChar*\) on the left up to the specified total width \(*width*\). If the actual length of the *string* is less than the specified *width*, returns the original string. The return type is `String`.

 Example: `=PadLeft(CStr(Phone), 12, '_')`

 Here `[Phone]` is used in the function argument. If the actual length of the *string* is less than the specified *width*, returns the original string.

</td></tr><tr><td>

PadRight\(string, width, paddingChar\)

</td><td>

Left-aligns the characters in a specified string \(*string*\), padding with the specified character \(*paddingChar*\) on the right up to the specified total width \(*width*\). The return type is `String`.

 Example: `=PadRight(CStr([City]), 25, '_')`

 Here `[City]` is used in the function argument. If the actual length of the *string* is less than the specified *width*, returns the original string.

</td></tr></tbody>
</table>

## Math Functions

Mathematical functions, which are listed and described below, perform calculations, usually based on input values provided as arguments, and return numeric values.

<table><thead><tr><th>

Function

</th><th>

Description and Example

</th></tr></thead><tbody><tr><td>

Abs\(x\)

</td><td>

Returns the absolute value of the number.

 Example: `=Abs([TotalDebit]-[TotalCredit])`

 Here `[TotalDebit]` and `[TotalCredit]` are used in the function argument.

</td></tr><tr><td>

Floor\(x\)

</td><td>

Returns the largest integer that is not greater than the argument.

 Example: `=Floor([Price]/([Cost])`

 Here `[Price]` and `[Cost]` are used in the function argument.

</td></tr><tr><td>

Ceiling\(x\)

</td><td>

Returns the smallest integer that is not less than the argument.

 Example: `=Ceiling([Price]/[Cost])`

 Here `[Cost]` and `[Price]` are used in the function argument.

</td></tr><tr><td>

Round\(x, decimals\)

</td><td>

Returns a numeric expression, rounded to the specified precision \(*decimals*\).

 Example: `=Round(([Price]-[Cost])/[Cost], 2)`

 Here `[Cost]` and `[Price]` are used in a function argument, and *2* is the number of decimal places.

</td></tr><tr><td>

Min\(x, y\)

</td><td>

Returns the smaller of the two values.

 Example: `=Min([Price],[Cost])`

 Here `[Cost]` and `[Price]` are used in the function argument.

</td></tr><tr><td>

Max\(x, y\)

</td><td>

Returns the greater of the two values.

 Example: `=Max({StandardCost],[AvrCost])`

 Here `[StandardCost]` and `[AvrCost]` are used in the function argument.

</td></tr><tr><td>

Pow\(x, power\)

</td><td>

Computes the value of *x* raised to the specified power \(*power*\).

 Example: `=Pow(([Markup], 2))`

 Here `[Markup]` is used in the function argument; the function returns the markup value squared \(or to the second power\).

</td></tr></tbody>
</table>

## Date and Time Functions

The date and time functions, described below, perform operations on input values and return values of the following types: string, numeric, or date and time.

<table><thead><tr><th>

Function

</th><th>

Description and Example

</th></tr></thead><tbody><tr><td>

DateAdd\(date, interval, number\)

</td><td>

Returns a new date, which is calculated by adding the specified number \(*number*\) of time intervals \(*interval*\) to the date \(*date*\). The *interval* argument specifies the type of time interval and can be one of the following options:

-   *y*, *yy*, *yyyy*, or *year*: The specified number \(*number*\) of years will be added to the specified date \(*date*\).
-   *m*, *mm*, or *month*: The specified number \(*number*\) of months will be added to the specified date \(*date*\).
-   *d*, *dd*, or *day*: The specified number \(*number*\) of days will be added to the specified date \(*date*\).
-   *h*, *hh*, or *hour*: The specified number \(*number*\) of hours will be added to the specified date \(*date*\).
-   *n*, *mi*, or *minute*: The specified number \(*number*\) of minutes will be added to the specified date \(*date*\).
-   *s*, *ss*, or *second*: The specified number \(*number*\) of seconds will be added to the specified date \(*date*\).
-   *w*, *ww*, *wk*, or *week*: The specified number \(*number*\) of weeks will be added to the specified date \(*date*\).
-   *q*, *qq*, or *quarter*: The specified number \(*number*\) of quarters will be added to the specified date \(*date*\).

 The return type is `DateTime`.

 Examples:

-   `=DateAdd([StartPeriod], 'm', 12)`
-   `=DateAdd([CashDiscountDate], 'd', -2)`

 In these examples, `[CashDiscountDate]` and `[StartPeriod]` are the fields that are used as the function arguments.

</td></tr><tr><td>

DateDiff\(interval, date1, date2\)

</td><td>

Returns the count \(as a signed integer value\) of the specified *interval* boundaries that are crossed between the specified *date1* and *date2*. The *interval* argument, which specifies the type of time interval, can be one of the following options:

-   *y*, *yy*, *yyyy*, or *year*: The time interval is specified in years.
-   *m*, *mm*, or *month*: The time interval is specified in months.
-   *d*, *dd*, or *day*: The time interval is specified in days.
-   *h*, *hh*, or *hour*: The time interval is specified in hours.
-   *n*, *mi*, or *minute*: The time interval is specified in minutes.
-   *s*, *ss*, or *second*: The time interval is specified in seconds.
-   *w*, *ww*, *wk*, or *week*: The time interval is specified in weeks.
-   *q*, *qq*, or *quarter*: The time interval is specified in quarters.

 The return type is `Double`.

 Example: `=DateDiff('d', CDate('3/12/2018'), CDate('4/12/2018'))`

</td></tr><tr><td>

Day\(date\)

</td><td>

Returns the day \(as an integer\) extracted from the specified date \(`date`\). The return type is `Int32`.

 Example: `=Iif(Day([DueDate]-[LeadTime])=0, True, False`

 Here `[DueDate]` and `[LeadTime]` are used in the function argument.

</td></tr><tr><td>

DayOfWeek\(date\)

</td><td>

Returns the day of the week associated with the specified date \(`date`\) as an integer. The return type is `Int32`.

 Example: `=DayOfWeek([StartPeriod])`

 Here `[StartPeriod]` is used as the function argument.

</td></tr><tr><td>

DayOfYear\(date\)

</td><td>

Returns the day of the year calculated for the specified date \(`date`\). The return type is `Int32`.

 Example: `=DayOfYear([StartPeriod])`

 Here `[StartPeriod]` is used as the function argument.

</td></tr><tr><td>

DayOrdinal\(day\)

</td><td>

Converts the specified integer value \(*day*\) to a string that contains the ordinal number in the current locale. For example, for the English locale, the string contains the short form of the ordinal number, such as 1st or 2nd. For numbers that are less than 1 or greater than 31, the function returns an empty string.

 The return type is `String`.

 Example: `=DayOrdinal(1)`

</td></tr><tr><td>

Hour\(date\)

</td><td>

Returns the hours extracted from the specified date \(`date`\). The return type is `Int32`.

 Example: `=Hour([StartPeriod])`

 Here `[StartPeriod]` is used as the function argument.

</td></tr><tr><td>

Minute\(date\)

</td><td>

Returns the number of minutes extracted from the specified date \(`date`\). The return type is `Int32`.

 Example: `=Minute([StartPeriod])`

 Here `[StartPeriod]` is used as the function argument.

</td></tr><tr><td>

Month\(date\)

</td><td>

Returns the month, as an integer, extracted from the specified date \(`date`\). The return type is `Int32`.

 Example: `=Month([StartPeriod])`

 Here `[StartPeriod]` is used as the function argument.

</td></tr><tr><td>

MonthName\(date\)

</td><td>

Returns a string that contains the name of the month extracted from the specified date \(*date*\) in the current locale.

 The return type is `String`.

 Example: `=MonthName\(CDate\('3/12/2022'\)\)`

</td></tr><tr><td>

Now\(\)

</td><td>

Returns the business date and time according to the system date and time on the local computer. The return type is `DateTime`.

 Example: `=Now()`

</td></tr><tr><td>

NowUTC\(\)

</td><td>

Returns the business date and time in the user's time zone. The system extracts the user's time zone from one of the following sources, which are ordered by priority from the highest to the lowest:

1.  The time zone specified for the user in the **Time Zone** box \(**General Info** tab\) of the [User Profile](../Shared/../UserGuide/SM_20_30_10.md) \(SP203010\) form.
2.  The employee calendar selected for the user in the **Calendar** box of the **General Info** tab of the [Employees](../Shared/../UserGuide/EP_20_30_00.md) \(EP203000\) form. The time zone of the calendar is specified in the Summary area of the [Work Calendar](../Shared/../UserGuide/CS_20_90_00.md) \(CS209000\) form.
3.  The time zone specified for the site in the **Login Time Zone** box on the [Site Preferences](../Shared/../UserGuide/SM_20_05_05.md) \(SM200505\) form.

 The return type is `DateTime`.

 Example: `=NowUTC()`

</td></tr><tr><td>

Second\(date\)

</td><td>

Returns the seconds extracted from the specified date \(`date`\) as an integer. The return type is `Int32`.

 Example: `=Second([StartPeriod])`

 Here `[StartPeriod]` is used as the function argument.

</td></tr><tr><td>

Today\(\)

</td><td>

Returns the business date according to the system date and time on the local computer. The return type is `DateTime`.

 Example: `=Today()`

</td></tr><tr><td>

TodayUTC\(\)

</td><td>

Returns the business date in the user's time zone. The system extracts the user's time zone from one of the following sources, which are ordered by priority from the highest to the lowest:

1.  The time zone specified for the user in the **Time Zone** box \(**General Info** tab\) of the [User Profile](../Shared/../UserGuide/SM_20_30_10.md) \(SP203010\) form.
2.  The employee calendar selected for the user in the **Calendar** box \(**General Info** tab\) of the [Employees](../Shared/../UserGuide/EP_20_30_00.md) \(EP203000\) form. The time zone of the calendar is specified in the Summary area of the [Work Calendar](../Shared/../UserGuide/CS_20_90_00.md) \(CS209000\) form.
3.  The time zone in the site preferences, which are specified in the **Login Time Zone** box on the [Site Preferences](../Shared/../UserGuide/SM_20_05_05.md) \(SM200505\) form.

 The return type is `DateTime`.

 Example: `=TodayUTC()`

</td></tr><tr><td>

Year\(date\)

</td><td>

Returns the year, as an integer, extracted from the specified date \(`date`\). The return type is `Int32`.

 Example: `=Year([StartPeriod])`

 Here `[StartPeriod]` is used as the function argument.

</td></tr></tbody>
</table>

## Other Functions

This miscellaneous group of functions includes the following functions.

<table><thead><tr><th>

Function

</th><th>

Description and Example

</th></tr></thead><tbody><tr><td>

IIf\(expression, truePart, falsePart\)

</td><td>

Returns one of two values, depending on the evaluation of the expression: If the expression evaluates to `True`, the function returns the *truePart* value; otherwise, it returns the *falsePart* value.

 The return type is determined by the value that the function returns.

 Example: `=IIf(([CurrencyID]='', 'USD', [CurrencyID])`

 Here `[CurrencyID]` is used in the function argument.

 You can also use this function to set a field value to *Null*.

 Example: `=IIf([Document.OrderType]='QT', 'FEDEX', NULL)`

</td></tr><tr><td>

IsNull\(value, nullValue\)

</td><td>

Returns *nullValue* if *value* is NULL; otherwise, returns *value*.

 The return type is determined by the value that the function returns.

 Example: `=IsNull([CustomerID],'NULL value')` Here, `[CustomerID]` is used in the function argument.

</td></tr><tr><td>

NullIf\(value1, value2\)

</td><td>

Returns NULL if *value1* is equal to *value2*.

</td></tr><tr><td>

Provider.CalculateHash\( string\)

</td><td>

Calculates the hash string for the specified string.

 Example: `=Provider.CalculateHash([CUSTOMER ID] + [INVOICE REF NBR] + [LINE NBR])`

 In this example, the hash string is calculated for the string that contains concatenated values of the `[CUSTOMER ID]`, `[INVOICE REF NBR]`, and `[LINE NBR]` fields.

</td></tr><tr><td>

Provider.CalculateHashCode\( string\)

</td><td>

Calculates the hash code \(which is an `Integer` value\) for the specified string.

 Example: `=Provider.CalculateHash([CUSTOMER ID] + [INVOICE REF NBR] + [LINE NBR])`

 In this example, the hash code is calculated for the string that contains concatenated values of the `[CUSTOMER ID]`, `[INVOICE REF NBR]`, and `[LINE NBR]` fields.

</td></tr><tr><td>

SubstituteAll\(sourceField, substitutionList\)

</td><td>

Replaces all values of the `sourceField` field with the values from the `substitutionList` substitution list. If no substitution value is defined for a particular value of the field, the system displays an error.

 Example: `=SubstituteListed([COUNTRY], 'Country')`

 In this example, `[COUNTRY]` is a field defined in the data provider of the scenario, and 'Country' is a substitution list defined on the [Substitution Lists](SM_20_60_26.md) \(SM206026\) form.

 For details about how to create substitution lists, see [To Substitute Values During Data Import or Data Export](IS__HOW_Substitute_Values.md).

</td></tr><tr><td>

SubstituteListed\(sourceField, substitutionList\)

</td><td>

Replaces the values of the `sourceField` field with the values from the `substitutionList` substitution list if a substitution value is defined for a particular value of the field.

 Example: `=SubstituteListed([COUNTRY], 'Country')`

 In this example, `[COUNTRY]` is a field defined in the data provider of the scenario, and 'Country' is a substitution list defined on the [Substitution Lists](SM_20_60_26.md) \(SM206026\) form.

 For details about how to create substitution lists, see [To Substitute Values During Data Import or Data Export](IS__HOW_Substitute_Values.md).

</td></tr><tr><td>

MultiselectSubstituteAll\( sourceField, substitutionList, externalDelimiter \)

</td><td>

Replaces all values of the `sourceField` field with the values from the `substitutionList` substitution list, and uses `externalDelimiter` as a delimiter.

 You use this function to import or export records for which attributes of the *Multiselect Combo* type are specified. The function has the following parameters:

 -   `sourceField`: The name of the Acumatica ERP field for export scenarios. For import scenarios, this is the name of the field from which the values are imported \(for example, the name of the column in an Excel file\).
-   `substitutionList`: The name of the substitution list that is used for the attributes.
-   `externalDelimiter`: The external delimiter. For export scenarios, this is the delimiter in the downloaded file or in the external system. For import scenarios, this is the delimiter in the file for import or in the external system.

 In an export scenario, the function works as follows:

 1.  Parses the values from the source fields by using comma as a delimiter.
2.  Replaces every found value according to the substitution list.

If the system cannot find at least one value for a record, the system does not process this record \(that is, it does not substitute any values for it\) and displays an error.

3.  Exports the results to a file. The system uses the delimiter specified as the `externalDelimiter` parameter.

 In an import scenario, the function works as follows:

 1.  Parses the values from the source file with the delimiter specified as the `externalDelimiter` parameter.
2.  Replaces every found value according to the substitution list.

If the system cannot find at least one value for a record, the system does not process this record \(that is, it does not substitute any values for it\) and displays an error.

3.  Imports the records by using comma as a delimiter.

 Before you use the function, you need to copy the list of attribute values to a substitution list. You can do this by clicking **Export to Excel** on the table toolbar of the [Attributes](CS_20_50_00.md) \(CS205000\) form for the needed attribute, and then clicking **Load Records from File** on the table toolbar of the [Substitution Lists](SM_20_60_26.md) \(SM206026\) form.

 **Attention:** The function is available in the Formula Editor on multiple forms but is supported for only import and export scenarios.

</td></tr><tr><td>

MultiselectSubstituteListed\( sourceField, substitutionList, externalDelimiter \)

</td><td>

Replaces the values of the `sourceField` field with the values from the `substitutionList` substitution list if a substitution value is defined for a particular value of the field, and uses `externalDelimiter` as a delimiter.

 You use this function to import or export records for which attributes of the *Multiselect Combo* type are specified. The function has the following parameters:

 -   `sourceField`: The name of the Acumatica ERP field for export scenarios. For import scenarios, this is the name of the field from which the values are imported \(for example, the name of the column in an Excel file\).
-   `substitutionList`: The name of the substitution list that is used for the attributes.
-   `externalDelimiter`: The external delimiter. For export scenarios, this is the delimiter in the downloaded file or in the external system. For import scenarios, this is the delimiter in the file for import or in the external system.

 In an export scenario, the function works as follows:

 1.  Parses the values from the source fields by using comma as a delimiter.
2.  Replaces every found value according to the substitution list.

The system replaces only the values that it has found. If a value is not found, the system does not replace it. No error is displayed in this case.

3.  Exports the results to a file. The system uses the delimiter specified as the `externalDelimiter` parameter.

 In an import scenario, the function works as follows:

 1.  Parses the values from the source file with the delimiter specified as the `externalDelimiter` parameter.
2.  Replaces every found value according to the substitution list.

The system replaces only the values that it has found. If a value is not found, the system does not replace this value. No error is displayed in this case.

3.  Imports the records by using comma as a delimiter.

 **Attention:** The function is available in the Formula Editor on multiple forms but is supported for only import and export scenarios.

</td></tr><tr><td>

Switch\( expression\_1, value\_1, expression\_2, value\_2, ...\)

</td><td>

Returns the value \(*value\_n*\) that corresponds to the first expression \(*expression\_n*\) that evaluates to `True`. For example, *expression\_1* and *expression\_2* are Boolean expressions.

 The return type is determined by the value that the function returns.

 Example: `=Switch(([DocAmount]<100), 'small', (([DocAmount]>=100) And ([DocAmount]<500)), 'medium',(([DocAmount]>=500) And ([DocAmount]<1000)),'large')`

 Here `[DocAmount]` is used in the function argument.

</td></tr></tbody>
</table>

**Parent topic:**[Configuring Scenario Mapping](../UserGuide/IS__mng_Scenario_Mapping.md)

