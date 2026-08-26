# Formula Functions {#_00a69dbb-c06b-4ce4-8b29-e86ee0e8ed47 .concept}

You use functions to perform specific tasks that facilitate data processing for the reports. Many functions available in the Analytical Report Manager process the data selected from the data source and return the values to be used in the report.

To use functions in the formula, you can enter them directly in the formula editing area or select them from the list of functions provided in the Formula Editor dialog box \([Formulas](CS__ARM_Formulas.md)\).

The groups of functions in the formulas are described below.

## Conversion Functions { .section}

You use conversion functions, summarized in the following table, to convert data from one data type to another.

|Function|Description and Examples|
|--------|------------------------|
|CBool\(x\)|Converts an expression defined in a function argument into the Boolean expression. If the expression's values is *0*, *False* is returned; otherwise, *True* is returned. The return type is `Boolean`.

 **Example:** `=CBool(A11+B11-C11*0.05)` \(where *A11*, *B11* and *C11* are the links used in a function argument\)

|
|CDate\(x\)|Converts an expression defined in a function argument to a value of the *Date* type. The *CDate* function argument should be a valid date expression. *CDate* recognizes date formats according to the locale setting of the system. The return type is `DateTime`.

 **Example:** `=CDate(A2-B2)` \(where *A2* and *B2* are the links used in a function argument\)

|
|CStr\(x\)|Converts an expression defined in a function argument to a string. If the *CStr* function argument equals null, CStr returns a run-time error; otherwise, it returns a string of characters. The return type is `String`.

 **Example:** `=CStr(A12)` \(where *A12* is the link used in a function argument\)

|
|CDbl\(x\)|Converts an expression defined in a function argument to a value of the *Double* type. The return type is `Double`.

 **Example:** `=CDbl(A12/B2)` \(where *A12* and *B2* are the links used in a function argument\)

|
|CSng\(x\)|Converts an expression defined in a function argument to a value of the *Single* type. If the expression defined in the function argument lies outside the acceptable range for the *Single* type, an error occurs. The return type is `Float`.

 **Example:** `=CSng(A12)` \(where *A12* is the link used in a function argument\)

|
|CDec\(x\)|Converts an expression defined in a function argument to a value of the *Decimal* type. The return type is `Decimal`.

 **Example:** `=CDec(A12*0.15)` \(where *A12* is the link used in a function argument\)

|
|CInt\(x\)|Converts an expression defined in a function argument to a value of the *Integer* type. The return type is `Int32`.

 **Example:** `=CInt(A10)` \(where *A10* is the link used in a function argument\)

|
|CShort\(x\)|Converts a numeric value to a value of the *Short* type. The return type is `Int16`.

 **Example:** `=CShort(B2)` \(where *B2* is the link used in a function argument\)

|
|CLong\(x\)|Converts a numeric value to a value of the *Long* type. The return type is `Int64`.

 **Example:** `=CLong(B12)` \(where *B12* is the link used in a function argument\)

|

## Text Functions { .section}

Text functions, described in the following table, are used to perform operations with text strings.

|Function|Description and Examples|
|--------|------------------------|
|LTrim\(string\)|Removes all leading spaces or parsing characters from the specified character expression, or all leading *0* bytes from the specified binary expression. The return type is `String`.

 **Example:** `=LTrim(CStr(A12))` \(where *A12* is the link used in a function argument\)

|
|RTrim\(string\)|Removes all trailing spaces or parsing characters from the specified character expression, or all trailing *0* bytes from the specified binary expression. The return type is `String`.

 **Example:** `=RTrim(CStr(A12))` \(where *A12* is the link used in a function argument\)

|
|Trim\(string\)|Removes all leading and trailing spaces or parsing characters from the specified character expression, or all leading and trailing *0* bytes from the specified binary expression. The return type is `String`.

 **Example:** `=Trim(CStr(A12))` \(where *A12* is the link used in a function argument\)

|
|Format\(format, argument\(s\)\)|Replaces the format item in a specified formatting string \(*format*\) with the text equivalent of the arguments \(*arguments*\). The return type is `String`.

 **Example:** `=Format('Currency: . . . . . . . . {0:C}; Account: . . . . . . . . {1:N}', A1, B1)` \(where *A1* and *B1* are the links used as a function arguments; 0, 1 are the specifiers indicating where the arguments will be inserted; *C* is the *currency* format specifier; and *N* is the *number* format specifier\)

|
|UCase\(string\)|Returns a string that has been converted to uppercase. The *string* argument is any valid string expression. The return type is `String`. If *string* contains a null value, the null value is returned.

 **Example:** `=UCase(CStr(A12))` \(where *A12* is the link used in a function argument\)

|
|LCase\(string\)|Returns a string that has been converted to lowercase. The *string* argument is any valid string expression. The return type is `String`. If *string* contains a null value, the null value is returned.

 **Example:** `=LCase(CStr(A12))` \(where *A12* is the link used in a function argument\)

|
|InStr\(string, findString\)|Returns the position of the first occurrence of one string \(*findString*\) within another \(*string*\). The return type is `String`.

 **Example:** `=InStr(CStr(A12), 'rur')` \(where *A12* is the link used in a function argument\)

|
|InStrRev\(string, findString\)|Returns the position of the last occurrence of one string \(*findString*\) within another \(*string*\), starting from the right side of the string. The return type is `String`.

 **Example:** `=InStrRev(CStr(A12), 'rur')` \(where *A12* is the link used in a function argument\)

|
|Len\(string\)|Returns an integer containing either the number of characters in a string or the nominal number of bytes required to store a variable. The return type is `Int32`.

 **Example:** `=Len(CStr(A12))` \(where *A12* is the link used in a function argument\)

|
|Left\(string, length\)|Returns a string containing a specified number of characters from the left side of a string. The return type is `String`. If *string* contains the null value, the null value is returned.

 **Example:** `=Left(CStr(A12), 3)` \(where *A12* is the link used in a function argument\)

|
|Right\(string, length\)|Returns a string containing a specified number of characters from the right side of a string. The return type is `String`. If *string* contains a null value, the null value is returned.

 **Example:** `=Right(CStr(A12), 3)` \(where *A12* is the link used in a function argument\)

|
|Replace\(string, oldValue, newValue\)|Returns a string in which a specified substring \(*oldValue*\) has been replaced with another substring \(*newValue*\). The return type is `String`.

 **Example:** `=Replace(CStr(A12), 'rur', 'eur')` \(where *A12* is the link used in a function argument\)

|
|PadLeft\(string, width, paddingChar\)|Right-aligns the characters in a specified string \(*string*\), padding with the specified characters \(*paddingChar*\) on the left for a specified total width \(*width*\). The return type is `String`.

 **Example:** `=PadLeft(CStr(A12), 3, '%')` \(where *A12* is the link used in a function argument\). In this example the `PadLeft` function adds padding character/s at the begining of the string.

|
|PadRight\(string, width, paddingChar\)|Left-aligns the characters in a specified string \(*string*\), padding with the specified characters \(*paddingChar*\) on the right for a specified total width \(*width*\). The return type is `String`.

 **Example:** `=PadRight(CStr(A12), 3, '%')` \(where *A12* is the link used in a function argument\). In this example the `PadRight` function adds padding character/s at the end of the string.

|

## Math Functions { .section}

Mathematical functions, described in the following table, perform calculations, usually based on input values provided as arguments, and return numeric values.

|Function|Description and Examples|
|--------|------------------------|
|Abs\(x\)|Returns the absolute value of a number.

 **Example:** `=Abs(A10-B10)`

 Here *A10* and *B10* are the links used in a function argument.

|
|Floor\(x\)|Returns the largest integer that is not greater than the argument.

 **Example:** `=Floor(A10-A12)`

 Here *A10* and *A12* are the links used in a function argument.

|
|Ceiling\(x\)|Returns the smallest integer that is not less than the argument.

 **Example:** `=Ceiling(A10-C11)`

 Here *A10* and *C11* are the links used in a function argument.

|
|Round\(x, decimals\)|Returns a numeric expression, rounded to the specified precision \(*decimals*\).

 **Example:** `=Round((A10-B12), 5)`

 Here *A10* and *B12* are the links used in a function argument, and 5 is the number of digits after the decimal separator.

|
|Min\(x, y\)|Returns the smaller of the two values.

 **Example:** `=Min(A10, A12)` `=Min(A10, 12)`

 Here *A10* and *A12* are the links used as function arguments\)

|
|Max\(x, y\)|Returns the greater of the two values.

 **Example:** `=Max(A12, A14)` `=Max(A12, 240)`

 Here *A12* and *A14* are the links used as function arguments.

|
|Pow\(x, power\)|Computes the value of *x* raised to the specified power \(*power*\).

 **Example:** `=Pow((A12, 2))`

 Here *A12* is the link used as a function argument, and *2* is the power index.

|

## Date and Time Functions { .section}

The date and time functions, described below, perform operations on input values and return values of the following types: string, numeric, or date and time.

|Function|Description and Examples|
|--------|------------------------|
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

 **Example:** `=DateAdd(CDate('31/01/1995'), 'm', -2)` `=DateAdd(Today(), 'y', 3)` `=DateAdd(Now(), 'd', 1)`

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

|
|Day\(date\)|Returns the day component of the *date*. The return type is `Int32`.

 **Example:** `=Day(Now())`

|
|DayOfWeek\(date\)|Returns the day of week for the *date*. The return type is `Int32`.

 **Example:** `=DayOfWeek(Today())`

|
|DayOfYear\(date\)|Returns the day of the year for the *date*. The return type is `Int32`.

 **Example:** `=DayOfYear(Now())`

|
|DayOrdinal\(day\)|Converts the specified integer value \(*day*\) to a string that contains the ordinal number in the current locale. For example, for the English locale, the string contains the short form of the ordinal number, such as 1st or 2nd. For numbers that are less than 1 or greater than 31, the function returns an empty string.

 The return type is `String`.

 **Example:** `=DayOrdinal(1)`

|
|Hour\(date\)|Returns the hours of the *date*. The return type is `Int32`.

 **Example:** `=Hour(Now())`

|
|Minute\(date\)|Returns the minutes of the *date*. The return type is `Int32`.

 **Example:** `=Minute(Now())`

|
|Month\(date\)|Returns the month component of the *date*. The return type is `Int32`.

 **Example:** `=Month(Now())`

|
|MonthName\(date\)|Returns a string that contains the name of the month extracted from the specified date \(*date*\) in the current locale.

 The return type is `String`.

 **Example:** `=MonthName\(CDate\('3/12/2018'\)\)`

|
|Now\(\)|Returns the business date and time according to the system date and time on the local computer. The return type is `DateTime`.

 **Example:** `=Now()`

|
|NowUTC\(\)|Returns the business date and time in the user's time zone. The system extracts the user's time zone from one of the following sources, which are ordered by priority from the highest to the lowest:

1.  The time zone specified for the user in the **Time Zone** box \(**General Info** tab\) of the [User Profile](../Shared/../UserGuide/SM_20_30_10.md) \(SP203010\) form.
2.  The employee calendar selected for the user in the **Calendar** box of the **General Info** tab of the [Employees](../Shared/../UserGuide/EP_20_30_00.md) \(EP203000\) form. The time zone of the calendar is specified in the Summary area of the [Work Calendar](../Shared/../UserGuide/CS_20_90_00.md) \(CS209000\) form.
3.  The time zone specified for the site in the **Login Time Zone** box on the [Site Preferences](../Shared/../UserGuide/SM_20_05_05.md) \(SM200505\) form.

 The return type is `DateTime`.

 **Example:** `=NowUTC()`

|
|Second\(date\)|Returns the seconds of the *date*. The return type is `Int32`.

 **Example:** `=Second(Now())`

|
|Today\(\)|Returns the business date according to the system date and time on the local computer. The return type is `DateTime`.

 **Example:** `=Today()`

|
|TodayUTC\(\)|Returns the business date in the user's time zone. The system extracts the user's time zone from one of the following sources, which are ordered by priority from the highest to the lowest:

1.  The time zone specified for the user in the **Time Zone** box \(**General Info** tab\) of the [User Profile](../Shared/../UserGuide/SM_20_30_10.md) \(SP203010\) form.
2.  The employee calendar selected for the user in the **Calendar** box \(**General Info** tab\) of the [Employees](../Shared/../UserGuide/EP_20_30_00.md) \(EP203000\) form. The time zone of the calendar is specified in the Summary area of the [Work Calendar](../Shared/../UserGuide/CS_20_90_00.md) \(CS209000\) form.
3.  The time zone in the site preferences, which are specified in the **Login Time Zone** box on the [Site Preferences](../Shared/../UserGuide/SM_20_05_05.md) \(SM200505\) form.

 The return type is `DateTime`.

 **Example:** `=TodayUTC()`

|
|Year\(date\)|Returns the year component of the *date*. The return type is `Int32`.

 **Example:** `=Year(Now())`

|

## Other Functions { .section}

The *Other* functions group includes the following functions.

|Function|Description and Examples|
|--------|------------------------|
|IIf\(expression, truePart, falsePart\)|Returns one of two values, depending on the evaluation of the expression: If the expression evaluates to `True`, the function returns the *truePart* value; otherwise, it returns the *falsePart* value.

 The return type is determined by the value that the function returns.

 **Example:** `=IIf((A10-B10)<>0), CStr(A12), 'No data available')` \(where *A10*, *A12*, and *B10* are the links used as a function arguments\)

 You can also use this function to set a field value to NULL.

 **Example:**: `=IIf((A10-B10)<>0), CStr(A12), NULL)`

|
|IsNull\(value, nullValue\)|Returns *nullValue* if *value* is NULL; otherwise, returns *value*.

 The return type is determined by the value that the function returns.

 **Example:** `=IsNull(A10, '0')` \(if `A10` is NULL, returns *0*; otherwise, returns the `A10` value\)

|
|NullIf\(value1, value2\)|Returns NULL if *value1* is equal to *value2*.|
|Sort\(from, to, column\)|Returns the values in the specified range of rows in the specified column sorted in ascending order.

 **Example:** `Sort('0100','0145','B')` \(the values in rows from 0100 to 0145 in the *B* column will be sorted in ascending order\)

|
|SortD\(from, to, column\)|Returns the values in the specified range of rows in the specified column sorted in descending order.

 **Example:** `SortD('0100','0145','B')` \(the values in rows from 0100 to 0145 in the *B* column will be sorted in descending order\)

|
|Sum\(from, to\)|Returns the sum of the values in the specified interval. The return type is determined by the value that the function returns.

 **Example:** `=Sum('A11','A100')` \(where *A11* and *A100* are the links used in a function argument\)

|
|Switch\(expression\_1, value\_1, expression\_2, value\_2, ...\)|Returns the value \(*value\_n*\) that corresponds to the first expression \(*expression\_n*\) that evaluates to `True`. For example, *expression\_1* and *expression\_2* are Boolean expressions.

 The return type is determined by the value that the function returns.

 **Example:** `=Switch(((A10-B10)<>0), A12, ((A10-B10)>0), B35)`

|

## Application-Specific Functions { .section}

This functions are specific for Acumatica ERP.

|Function|Description and Examples|
|--------|------------------------|
|ExtToInt\(object field, object value\)|Converts the external format of the *object field* parameter into the internal object presentation \(for example, converts *AccountCD* to *AccountID*\). Both arguments of the *ExtToInt* function must have the same data type.

**Example:**: `=Report.ExtToInt( 'ARAdjusted.AdjdCustomerID', [ARAdjusted.AdjdCustomerID])`|
|ExtToUI\(object field, object value\)|Converts the external format of the *object field* parameter into the UI format. Both arguments of the *ExtToUI* function must have the same data type.

**Example:** `=Report.ExtToUI('RowBatch.TranPeriodID', @PeriodID)`|
|`GetBranchText(*branchID*)`|Returns the branch name in the tenant for the specified branch identifier \(*branchID*\).

 If the specified branch identifier does not exist, the function returns an empty string.

 **Example:** `Report.GetBranchText('SOFT')`

|
|GetDefExt\(object field\)|Gets the default value of the *object field* parameter in the external format.

**Example:** `=Report.GetDefExt('OrganizationBranchReportParameters.OrganizationID')`|
|GetDefInt\(object field\)|Gets the default value of the *object field* parameter in the internal format.|
|GetDefUI\(object field\)|Gets the default value of the *object field* parameter in the UI format.

 **Example:** `=Report.GetDefUI('RowAccessInfo.DisplayName')`|
|GetDescription\(object field, object value\)|Returns the description of the *object field* parameter as it is defined in the PXSelectorAttribute. Both arguments of the GetDescription function must have the same data type.

 **Example:**: `=Report.GetDescription('GLTran.AccountID', @AccountCD)`**Attention:** If you use this function for subaccounts, the subaccount description is not available if the *By Segment: All Avail. Segment Values* lookup mode is specified for the *SUBACCOUNT* segmented key on the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form.

|
|GetDisplayName\(object field\)|Returns the localized name of the *object field* parameter.|
|GetFormat\(object field\)|Returns the data type of the *object field* parameter.

**Example:** `=Report.GetFormat( [APRegister.CuryInfoID] )`|
|GetMask\(object field\)|Returns the mask of the *object field* parameter.

**Example:** `=Report.GetMask('RowTaxPeriodEffective.TaxPeriodID')`|
|IntToExt\(object field, object value\)|Converts the external format of the *object field* parameter into the internal object presentation \(for example, converts *AccountID* to *AccountCD*\). Both arguments of the *IntToExt* function must have the same data type.|
|IntToUI\(object field, object value\)|Converts the internal format of the *object field* parameter into the UI format. Both arguments of the *IntToUI* function must have the same data type.

**Example:** `=Report.IntToUI('APRegister.FinPeriodID',$ClosedPer)`|
|UIToExt\(object field, object value\)|Converts the UI format of the *object field* parameter into the external object format. Both arguments of the *UIToExt* function must have the same data type.|
|UIToInt\(object field, object value\)|Converts the UI format of the *object field* parameter into the internal object format. Both arguments of the *UIToInt* function must have the same data type.|
|FormatPeriod\(object period\)|Performs *ExtToUI* data conversion for the *object period* parameter. This function is used to get the period defined by the report's @StartPeriod and @EndPeriod dates.|
|FormatPeriod\(object period, object period shift\)|Performs *ExtToUI* data conversion for the *object period* parameter with a time shift defined by *object period shift* argument. This function is used to get the period defined by the report's @StartPeriod and @EndPerioddates.|
|FormatYear\(object period\)|Performs *ExtToUI* data conversion for the *object period* parameter year part. This function is used to get the period defined by the report's @StartPeriod and@EndPeriod dates.|
|FormatYear\(object period, object period shift\)|Performs *ExtToUI* data conversion for the *object period* parameter year part with a time shift defined by *object period shift* argument. This function is used to get the period defined by the report's @StartPeriodand @EndPeriod dates.

**Example:** `=FormatYear(@StartPeriod, -1)` \(The function obtains the year of the specified period and shifts the obtained year to the value of the shift. For example, if the @StartPeriod is the year 2014, the expression returns 2013.\)|

**Parent topic:**[ARM Reference](../UserGuide/RP__Tools_ARM_Form_Reference.md)

