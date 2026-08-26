# Functions {#_3eacd492-e7bb-4bf9-888d-fa3c9155329f .concept}

Functions are used in formulas that you create on the [Formula Editor Dialog Box](SM__ref_IS_Formula_Editor_Dialog.md), which you can invoke from the [Import Scenarios](SM_20_60_25.md) \(SM206025\) and [Export Scenarios](SM_20_70_25.md) \(SM207025\) forms.

To add functions to a formula, you can type them in the Formula Text pane of the dialog box or select them from the list of formula components available within the dialog box. \(Select a function type to view the list of functions of the type, and then select a function.\)

This topic describes and provides examples of the functions you can use in formulas, broken down by type.

## Conversion Functions { .section}

The available conversion functions, which are used to convert data from one data type to another, are listed below.

|Function|Description and Example|
|--------|-----------------------|
|CBool\(x\)|Converts the expression used as the function argument into a Boolean expression. Returns *False* if the Boolean value is *0*; otherwise, returns *True*. The return type is `Boolean`.

 Example: `=CBool([CashDiscountAmount]`

 Here `[CashDiscountAmount]` is used as the function argument.

|
|CDate\(x\)|Converts the expression used as the function argument into a value of the *Date* type. The argument should be a valid date expression according to the locale selected for the import or export scenario. The return type is `DateTime`.

 Example: `=CDate('24/12/2011')`

 Here a string is used as the function argument.

|
|CStr\(x\)|Converts the expression used as the function argument into a string. If the argument is *Null*, the function returns a run-time error; otherwise, it returns a string. The return type is `String`.

 Example: `='(' +CStr([AreaCode])+')'+CStr([Phone])`

 Here `[AreaCode]` and `[Phone]` are used in the function argument.

|
|CDbl\(x\)|Converts the expression defined in the function argument into a value of the `Double` type. The return type is `Double`.

 Example: `=CDbl(1.0/[ExchangeRate])`

 Here `[ExchangeRate]` is used in the function argument.

|
|CSng\(x\)|Converts the expression used as the function argument into a value of the `Single` type. If the expression has a value outside the acceptable range for the `Single` type, this function returns an error. The return type is `Float`.

 Example: `=CSng([CashDiscountAmount]/[DocAmount])`

 Here `[CashDiscountAmount]` and `[DocAmount]` are used in the function argument.

|
|CDec\(x\)|Converts the expression used as the function argument into a value of the `Decimal` type. The return type is `Decimal`.

 Example: `=CDec([DocAmount]*0.015)`

 Here `[DocAmount]` is used in the function argument.

|
|CInt\(x\)|Converts the expression used as the function argument into a value of the `Integer` type. The return type is `Int32`.

 Example: `=CInt('2012')-Year([DocDate])`

 Here `[DocDate]` is used in the function argument.

|
|CShort\(x\)|Converts a numeric value to a value of the `Short` type. The return type is `Int16`.

 Example: `=CShort([CashDiscountAmount])`

 Here `[CashDiscountAmount]` is used as the function argument.

|
|CLong\(x\)|Converts a numeric value to a value of the `Long` type. The return type is `Int64`.

 Example: `=CLong([CashDiscountAmount])`

 Here `[CashDiscountAmount]` is used as the function argument.

|

## Text Functions { .section}

Text functions are used to perform operations on text strings. The group of text functions includes the functions described below.

|Function|Description and Example|
|--------|-----------------------|
|LTrim\(string\)|Removes all leading spaces or parsing characters from the specified string, or all leading *0* bytes from the specified binary expression. The return type is `String`.

 Example: `=LTrim(CStr([Phone]))`

 Here `[Phone]` is used as the function argument.

|
|RTrim\(string\)|Removes all trailing spaces or parsing characters from the specified character expression, or all trailing *0* bytes from the specified binary expression. The return type is `String`.

 Example: `=RTrim(CStr([AreaCode]))`

 Here `[AreaCode]` is used as the function argument.

|
|Trim\(string\)|Removes all leading and trailing spaces or parsing characters from the specified character expression, or all leading and trailing *0* bytes from the specified binary expression. The return type is `String`.

 Example: `=Iif(Trim([Country])`

 Here `[Country]` is used in the function argument.

|
|Format\(format, argument\(s\)\)|Replaces the format item in a specified formatting string \(*format*\) with the text equivalent of the arguments \(*arguments*\). The return type is `String`.

 Example: `=Format('Currency: . . . . . . . . {0:C}; Account: . . . . . . . . {1:N}', [Currency], [AccountBalance])`

 Here `[Currency]` and `[AccountBalance]` are used in the function argument; 0 and 1 are the specifiers indicating where the arguments will be inserted, *C* is the *currency* format specifier, and *N* is the *number* format specifier.

|
|UCase\(string\)|Returns a string that has been converted to uppercase. The *string* argument can be any valid string expression. The return type is `String`. If *string* contains *Null*, *Null* is returned.

 Example: `=UCase([CustomerName])`

 Here `[CustomerName]` is used as the function argument.

|
|LCase\(string\)|Returns a string that has been converted to lowercase. The *string* argument can be any valid string expression. The return type is `String`. If *string* contains *Null*, *Null* is returned.

 Example: `=LCase(CStr([CustomerID])`

 Here `[CustomerID]` is used in the function argument.

|
|InStr\(string, findString\)|Returns the position of the first occurrence of one string \(*findString*\) within another \(*string*\).The return type is `String`.

 Example: `=InStr([CustomerName], 'Inc')`

 Here `[CustomerName]` is used in the function argument.

|
|Substring\(string, startIndex, length\)|Returns a string containing the specified number of characters \(*length*\) starting from the specified position \(*startIndex*\). The first character has the *0* index. The return type is `String`.

 Example: `=Substring( [Name], 3, 8)`

 Here `[Name]` is used in the function argument.

|
|InStrRev\(string, findString\)|Returns the position of the last occurrence of one string \(*findString*\) within another \(*string*\). The return type is `String`.

 Example: `=InStrRev([CustomerName], 'Inc')`

 Here `[CustomerName]` is used in the function argument.

|
|Len\(string\)|Returns an integer containing either the number of characters in the string or the nominal number of bytes required to store a variable. The return type is `Int32`.

 Example: `=Len([CustomerName])`

 Here `[CustomerName]` is used as the function argument.

|
|Left\(string, length\)|Returns a string containing the specified number of characters from the left side of a string. The return type is `String`. If *string* contains *Null*, *Null* is returned.

 Example: `=Left(Trim([VendorName]), 10)`

 Here `[VendorName]` is used in the function argument.

|
|Right\(string, length\)|Returns a string containing a specified number of characters from the right side of a string. The return type is `String`. If *string* contains *Null*, *Null* is returned.

 Example: `=Right(CustomerName, 3)`

 Here `[CustomerName]` is used in the function argument.

|
|Replace\(string, oldValue, newValue\)|Returns a string in which the specified substring \(*oldValue*\) has been replaced with another substring \(*newValue*\). The return type is `String`.

Example: `=Replace([Description], 'rur', 'eur')` Here `[Description]` is used in the function argument.

|
|PadLeft\(string, width, paddingChar\)|Right-aligns the characters in a specified string \(*string*\), padding with the specified character \(*paddingChar*\) on the left up to the specified total width \(*width*\). If the actual length of the *string* is less than the specified *width*, returns the original string. The return type is `String`.

 Example: `=PadLeft(CStr(Phone), 12, '_')`

 Here `[Phone]` is used in the function argument. If the actual length of the *string* is less than the specified *width*, returns the original string.

|
|PadRight\(string, width, paddingChar\)|Left-aligns the characters in a specified string \(*string*\), padding with the specified character \(*paddingChar*\) on the right up to the specified total width \(*width*\). The return type is `String`.

 Example: `=PadRight(CStr([City]), 25, '_')`

 Here `[City]` is used in the function argument. If the actual length of the *string* is less than the specified *width*, returns the original string.

|

## Math Functions { .section}

Mathematical functions, which are listed and described below, perform calculations, usually based on input values provided as arguments, and return numeric values.

|Function|Description and Example|
|--------|-----------------------|
|Abs\(x\)|Returns the absolute value of the number.

 Example: `=Abs([TotalDebit]-[TotalCredit])`

 Here `[TotalDebit]` and `[TotalCredit]` are used in the function argument.

|
|Floor\(x\)|Returns the largest integer that is not greater than the argument.

 Example: `=Floor([Price]/([Cost])`

 Here `[Price]` and `[Cost]` are used in the function argument.

|
|Ceiling\(x\)|Returns the smallest integer that is not less than the argument.

 Example: `=Ceiling([Price]/[Cost])`

 Here `[Cost]` and `[Price]` are used in the function argument.

|
|Round\(x, decimals\)|Returns a numeric expression, rounded to the specified precision \(*decimals*\).

 Example: `=Round(([Price]-[Cost])/[Cost], 2)`

 Here `[Cost]` and `[Price]` are used in a function argument, and *2* is the number of decimal places.

|
|Min\(x, y\)|Returns the smaller of the two values.

 Example: `=Min([Price],[Cost])`

 Here `[Cost]` and `[Price]` are used in the function argument.

|
|Max\(x, y\)|Returns the greater of the two values.

 Example: `=Max({StandardCost],[AvrCost])`

 Here `[StandardCost]` and `[AvrCost]` are used in the function argument.

|
|Pow\(x, power\)|Computes the value of *x* raised to the specified power \(*power*\).

 Example: `=Pow(([Markup], 2))`

 Here `[Markup]` is used in the function argument; the function returns the markup value squared \(or to the second power\).

|

## Date and Time Functions { .section}

The date and time functions, described below, perform operations on input values and return values of the following types: string, numeric, or date and time.

|Function|Description and Example|
|--------|-----------------------|
|DateAdd\(date, interval, number\)|Returns a new date, which is calculated by adding the specified number \(*number*\) of time intervals \(*interval*\) to the date \(*date*\). The *interval* argument specifies the type of time interval and can be one of the following options:

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

|
|DateDiff\(interval, date1, date2\)|Returns the count \(as a signed integer value\) of the specified *interval* boundaries that are crossed between the specified *date1* and *date2*. The *interval* argument, which specifies the type of time interval, can be one of the following options:

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

|
|Day\(date\)|Returns the day \(as an integer\) extracted from the specified date \(`date`\). The return type is `Int32`.

 Example: `=Iif(Day([DueDate]-[LeadTime])=0, True, False`

 Here `[DueDate]` and `[LeadTime]` are used in the function argument.

|
|DayOfWeek\(date\)|Returns the day of the week associated with the specified date \(`date`\) as an integer. The return type is `Int32`.

 Example: `=DayOfWeek([StartPeriod])`

 Here `[StartPeriod]` is used as the function argument.

|
|DayOfYear\(date\)|Returns the day of the year calculated for the specified date \(`date`\). The return type is `Int32`.

 Example: `=DayOfYear([StartPeriod])`

 Here `[StartPeriod]` is used as the function argument.

|
|DayOrdinal\(day\)|Converts the specified integer value \(*day*\) to a string that contains the ordinal number in the current locale. For example, for the English locale, the string contains the short form of the ordinal number, such as 1st or 2nd. For numbers that are less than 1 or greater than 31, the function returns an empty string.

 The return type is `String`.

 Example: `=DayOrdinal(1)`

|
|Hour\(date\)|Returns the hours extracted from the specified date \(`date`\). The return type is `Int32`.

 Example: `=Hour([StartPeriod])`

 Here `[StartPeriod]` is used as the function argument.

|
|Minute\(date\)|Returns the number of minutes extracted from the specified date \(`date`\). The return type is `Int32`.

 Example: `=Minute([StartPeriod])`

 Here `[StartPeriod]` is used as the function argument.

|
|Month\(date\)|Returns the month, as an integer, extracted from the specified date \(`date`\). The return type is `Int32`.

 Example: `=Month([StartPeriod])`

 Here `[StartPeriod]` is used as the function argument.

|
|MonthName\(date\)|Returns a string that contains the name of the month extracted from the specified date \(*date*\) in the current locale.

 The return type is `String`.

 Example: `=MonthName\(CDate\('3/12/2022'\)\)`

|
|Now\(\)|Returns the business date and time according to the system date and time on the local computer. The return type is `DateTime`.

 Example: `=Now()`

|
|NowUTC\(\)|Returns the business date and time in the user's time zone. The system extracts the user's time zone from one of the following sources, which are ordered by priority from the highest to the lowest:

1.  The time zone specified for the user in the **Time Zone** box \(**General Info** tab\) of the [User Profile](../Shared/../UserGuide/SM_20_30_10.md) \(SP203010\) form.
2.  The employee calendar selected for the user in the **Calendar** box of the **General Info** tab of the [Employees](../Shared/../UserGuide/EP_20_30_00.md) \(EP203000\) form. The time zone of the calendar is specified in the Summary area of the [Work Calendar](../Shared/../UserGuide/CS_20_90_00.md) \(CS209000\) form.
3.  The time zone specified for the site in the **Login Time Zone** box on the [Site Preferences](../Shared/../UserGuide/SM_20_05_05.md) \(SM200505\) form.

 The return type is `DateTime`.

 Example: `=NowUTC()`

|
|Second\(date\)|Returns the seconds extracted from the specified date \(`date`\) as an integer. The return type is `Int32`.

 Example: `=Second([StartPeriod])`

 Here `[StartPeriod]` is used as the function argument.

|
|Today\(\)|Returns the business date according to the system date and time on the local computer. The return type is `DateTime`.

 Example: `=Today()`

|
|TodayUTC\(\)|Returns the business date in the user's time zone. The system extracts the user's time zone from one of the following sources, which are ordered by priority from the highest to the lowest:

1.  The time zone specified for the user in the **Time Zone** box \(**General Info** tab\) of the [User Profile](../Shared/../UserGuide/SM_20_30_10.md) \(SP203010\) form.
2.  The employee calendar selected for the user in the **Calendar** box \(**General Info** tab\) of the [Employees](../Shared/../UserGuide/EP_20_30_00.md) \(EP203000\) form. The time zone of the calendar is specified in the Summary area of the [Work Calendar](../Shared/../UserGuide/CS_20_90_00.md) \(CS209000\) form.
3.  The time zone in the site preferences, which are specified in the **Login Time Zone** box on the [Site Preferences](../Shared/../UserGuide/SM_20_05_05.md) \(SM200505\) form.

 The return type is `DateTime`.

 Example: `=TodayUTC()`

|
|Year\(date\)|Returns the year, as an integer, extracted from the specified date \(`date`\). The return type is `Int32`.

 Example: `=Year([StartPeriod])`

 Here `[StartPeriod]` is used as the function argument.

|

## Other Functions { .section}

This miscellaneous group of functions includes the following functions.

|Function|Description and Example|
|--------|-----------------------|
|IIf\(expression, truePart, falsePart\)|Returns one of two values, depending on the evaluation of the expression: If the expression evaluates to `True`, the function returns the *truePart* value; otherwise, it returns the *falsePart* value.

 The return type is determined by the value that the function returns.

 Example: `=IIf(([CurrencyID]='', 'USD', [CurrencyID])`

 Here `[CurrencyID]` is used in the function argument.

 You can also use this function to set a field value to *Null*.

 Example: `=IIf([Document.OrderType]='QT', 'FEDEX', NULL)`

|
|IsNull\(value, nullValue\)|Returns *nullValue* if *value* is NULL; otherwise, returns *value*.

 The return type is determined by the value that the function returns.

 Example: `=IsNull([CustomerID],'NULL value')` Here, `[CustomerID]` is used in the function argument.

|
|NullIf\(value1, value2\)|Returns NULL if *value1* is equal to *value2*.|
|Provider.CalculateHash\( string\)|Calculates the hash string for the specified string.

 Example: `=Provider.CalculateHash([CUSTOMER ID] + [INVOICE REF NBR] + [LINE NBR])`

 In this example, the hash string is calculated for the string that contains concatenated values of the `[CUSTOMER ID]`, `[INVOICE REF NBR]`, and `[LINE NBR]` fields.

|
|Provider.CalculateHashCode\( string\)|Calculates the hash code \(which is an `Integer` value\) for the specified string.

 Example: `=Provider.CalculateHash([CUSTOMER ID] + [INVOICE REF NBR] + [LINE NBR])`

 In this example, the hash code is calculated for the string that contains concatenated values of the `[CUSTOMER ID]`, `[INVOICE REF NBR]`, and `[LINE NBR]` fields.

|
|SubstituteAll\(sourceField, substitutionList\)|Replaces all values of the `sourceField` field with the values from the `substitutionList` substitution list. If no substitution value is defined for a particular value of the field, the system displays an error.

 Example: `=SubstituteListed([COUNTRY], 'Country')`

 In this example, `[COUNTRY]` is a field defined in the data provider of the scenario, and 'Country' is a substitution list defined on the [Substitution Lists](SM_20_60_26.md) \(SM206026\) form.

 For details about how to create substitution lists, see [To Substitute Values During Data Import or Data Export](IS__HOW_Substitute_Values.md).

|
|SubstituteListed\(sourceField, substitutionList\)|Replaces the values of the `sourceField` field with the values from the `substitutionList` substitution list if a substitution value is defined for a particular value of the field.

 Example: `=SubstituteListed([COUNTRY], 'Country')`

 In this example, `[COUNTRY]` is a field defined in the data provider of the scenario, and 'Country' is a substitution list defined on the [Substitution Lists](SM_20_60_26.md) \(SM206026\) form.

 For details about how to create substitution lists, see [To Substitute Values During Data Import or Data Export](IS__HOW_Substitute_Values.md).

|
|MultiselectSubstituteAll\( sourceField, substitutionList, externalDelimiter \)|Replaces all values of the `sourceField` field with the values from the `substitutionList` substitution list, and uses `externalDelimiter` as a delimiter.

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

|
|MultiselectSubstituteListed\( sourceField, substitutionList, externalDelimiter \)|Replaces the values of the `sourceField` field with the values from the `substitutionList` substitution list if a substitution value is defined for a particular value of the field, and uses `externalDelimiter` as a delimiter.

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

|
|Switch\( expression\_1, value\_1, expression\_2, value\_2, ...\)|Returns the value \(*value\_n*\) that corresponds to the first expression \(*expression\_n*\) that evaluates to `True`. For example, *expression\_1* and *expression\_2* are Boolean expressions.

 The return type is determined by the value that the function returns.

 Example: `=Switch(([DocAmount]<100), 'small', (([DocAmount]>=100) And ([DocAmount]<500)), 'medium',(([DocAmount]>=500) And ([DocAmount]<1000)),'large')`

 Here `[DocAmount]` is used in the function argument.

|

**Parent topic:**[Configuring Scenario Mapping](../UserGuide/IS__mng_Scenario_Mapping.md)

