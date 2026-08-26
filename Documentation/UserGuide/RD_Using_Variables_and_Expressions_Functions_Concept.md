# Variables and Expressions: Functions in Expressions {#_83fa0867-0eaa-4d93-9f9a-92c0f1b384d3 .concept}

You can use functions to perform specific tasks that facilitate the processing of data for reports and generic inquiries. The Expression Editor provides many functions that process data and return values, which you can use in reports and generic inquiries.

To use functions in expressions, you can enter them manually in the expression editing area or select them from the list of functions provided by the Expression Editor. You can use the following groups of functions in expressions.

## Type Conversion Functions { .section}

You use the type conversion functions to convert data from one data type to another. The following table lists the type conversion functions available in the *Conversion* subnode of the *Functions* node in the Expression Editor.

|Function|Description and Examples|
|--------|------------------------|
|`CBool(x)`|Converts the expression used as the function argument into a Boolean expression. Returns *False* if the Boolean value is *0*; otherwise, returns *True*. The return type is `Boolean`.

 **Example:** `CBool($CurrCompanyTot - $CompanyTot)`

 In this example, `CurrCompanyTot` and `CompanyTot` are report variables.

|
|`CDate(x)`|Converts the expression used as the function argument into a value of the *Date* type. The argument should be a valid date expression according to the locale selected for the import or export scenario.

 **Example:** `CDate($DueDate - 1)`

 In this example, `DueDate` is a report variable.

|
|`CStr(x)`|Converts the expression used as the function argument into a string. If the argument is *Null*, the function returns a run-time error; otherwise, it returns a string. The return type is `String`.

 **Example:** `CStr($PrintDoc)`

 Here, `PrintDoc` is a report variable.

|
|`CDbl(x)`|Converts the expression defined in the function argument into a value of the `Double` type. The return type is `Double`.

 **Example:** `CDbl($CurrBal/$CurrTot)`

 Here, `CurrBal` and `CurrTot` are report variables.

|
|`CSng(x)`|Converts the expression used as the function argument into a value of the `Single` type. If the expression has a value outside the acceptable range for the `Single` type, this function returns an error. The return type is `Float`.

 **Example:** `CSng($StCycCurrTot/$CompanyTot)`

 In this example, `StCycCurrTot` and `CompanyTot` are report variables.

|
|`CDec(x)`|Converts the expression used as the function argument into a value of the `Decimal` type. The return type is `Decimal`.

 **Example:** `CDec($CompanyTot)`

 In this example, `CompanyTot` is a report variable.

|
|`CInt(x)`|Converts the expression used as the function argument into a value of the `Integer` type. The return type is `Int32`.

 **Example:** `CInt([ARPayment.ExtRefNbr])`

 In this example, `ARPayment.ExtRefNbr` is an attribute from the database schema.

|
|`CShort(x)`|Converts a numeric value to a value of the `Short` type. The return type is `Int16`.

 **Example:** `CShort([ARPayment.ImpRefNbr])`

 `ARPayment.ImpRefNbr` is an attribute from the database schema.

|
|`CLong(x)`|Converts a numeric value to a value of the `Long` type. The return type is `Int64`.

 **Example:** `CLong($CurrTot)`

 In this example, `CurrTot` is a report variable.

|

## Aggregate Functions { .section}

Aggregate functions perform a calculation on a set of values and return a single value. The following table lists the aggregate functions available in the *Aggregates* subnode of the *Functions* node in the Expression Editor.

|Function|Description and Examples|
|--------|------------------------|
|`Avg(expression)`|Returns the average of all non-null values of the specified expression.

 **Example:** `Avg($StCycAgeTot00, $StCycAgeTot01)`

 In this example, `StCycAgeTot00` and `StCycAgeTot01` are report variables.

|
|`Sum(expression)`|Returns the sum of the values of the specified expression.

 **Example:** `Sum([ARInvoice.TaxTotal], $CurrTot)`

 In this example, `ARInvoice.TaxTotal` is an attribute from the database schema, and `CurrTot` is a report variable.

|
|`Count(expression)`|Returns the count of the values from the specified expression.

 **Example:** `Count($AgeBal00, $AgeBal01)`

 In this example, `AgeBal00` and `AgeBal01` are report variables.

|
|`Max(expression)`|Returns the maximum value from all non-null values of the specified expression.

 **Example:** `Max($CurrCompanyTot, $CompanyTot)`

 In this example, `CurrCompanyTot` and `CompanyTot` are report variables.

|
|`Min(expression)`|Returns the minimum value from all non-null values of the specified expression.

 **Example:** `Min($CurrCompanyTot, $CompanyTot)`

 In this example, `CurrCompanyTot` and `CompanyTot` are report variables.

|
|`Next(expression)`|Returns the next value \(from the current one\) in the specified expression.

 **Example:** `Next([ARInvoice.LineTotal],[ARInvoice.TaxTotal])`

 In this example, `ARInvoice.LineTotal` and `ARInvoice.TaxTotal` are attributes from the database schema.

|
|`Prev(expression)`|Returns the previous value \(from the current one\) in the specified expression.

 **Example:** `Prev([ARInvoice.LineTotal],[ARInvoice.TaxTotal])` `ARInvoice.LineTotal` and `ARInvoice.TaxTotal` are attributes from the database schema.

|
|`First(expression)`|Returns the first value in the specified expression.

 **Example:** `First([ARInvoice.LineTotal],[ARInvoice.TaxTotal])`

 In this example, `ARInvoice.LineTotal` and `ARInvoice.TaxTotal` are attributes from the database schema.

|
|`Last(expression)`|Returns the last value in the specified expression.

 **Example:** `Last([ARInvoice.LineTotal],[ARInvoice.TaxTotal])`

 In this example, `ARInvoice.LineTotal` and `ARInvoice.TaxTotal` are attributes from the database schema.

|

## String Functions { .section}

String functions perform an operation on a string input value and return a string or numeric value. Listed below are the string functions available in the *Text* subnode of the *Functions* node in the Expression Editor.

|Function|Description and Examples|
|--------|------------------------|
|`LTrim(string)`|Removes all leading spaces or parsing characters from the specified character expression, or all leading *0* bytes from the specified binary expression.

 **Example:** `LTrim(CStr([Contact.LastName]))`

 In this example, `Contact.LastName` is an attribute from the database schema.

|
|`RTrim(string)`|Removes all trailing spaces or parsing characters from the specified character expression, or all trailing *0* bytes from the specified binary expression. The return type is `String`.

 **Example:** `RTrim(CStr([Contact.LastName]))`

 In this example, `Contact.LastName` is an attribute from the database schema.

|
|`Trim(string)`|Removes all leading and trailing spaces or parsing characters from the specified character expression, or all leading and trailing *0* bytes from the specified binary expression. The return type is `String`.

 **Example:** `Trim(CStr([Contact.FirstName]+[Contact.MidName]+[Contact.LastName]))`

 In this example, `Contact.FirstName`, `Contact.MidName`, and `Contact.LastName` are attributes from the database schema.

|
|`Format(format, argument(s))`|Replaces the format item in a specified formatting string \(*format*\) with the text equivalent of the arguments \(*arguments*\). The return type is `String`.

 **Example:** `Format('Curr. Balance: . . . . . . . . {0:C}; Total Amount: . . . . . . . . {1:N}', $CurrBal, $CurrTot)`

 In this example, `CurrBal` and `CurrTot` are report variables; *0* and *1* are specifiers indicating where the arguments will be inserted; *C* is the *currency* format specifier; and *N* is the *number* format specifier.

|
|`UCase(string)`|Returns a string that has been converted to uppercase. The *string* argument can be any valid string expression. The return type is `String`. If *string* contains *Null*, *Null* is returned.

 **Example:** `UCase(CStr([RowContact.MidName]))`

 In this example, `RowContact.MidName` is an attribute from the database schema.

|
|`LCase(string)`|Returns a string that has been converted to lowercase. The *string* argument can be any valid string expression. The return type is `String`. If *string* contains *Null*, *Null* is returned.

 **Example:** `LCase(CStr([Contact.Email]))`

 In this example, `Contact.Email` is an attribute from the database schema.

|
|`InStr(string, findString)`|Returns the position of the first occurrence of one string \(*findString*\) within another \(*string*\).The return type is `String`.

 **Example:** `InStr(CStr([Contact.Email]), '@')`

 In this example, `Contact.Email` is an attribute from the database schema.

|
|`InStrRev(string, findString)`|Returns the position of the last occurrence of one string \(*findString*\) within another \(*string*\), starting from the right side of the string.

 **Example:** `InStrRev(CStr([Contact.Email]), '@')`

 In this example, `Contact.Email` is an attribute from the database schema.

|
|`Len(string)`|Returns an integer containing either the number of characters in the string or the nominal number of bytes required to store a variable. The return type is `Int32`.

 **Example:** `Len(CStr([Contact.Email]))`

 In this example, `Contact.Email` is an attribute from the database schema.

|
|`Left(string, length)`|Returns a string containing the specified number of characters from the left side of a string. The return type is `String`. If *string* contains *Null*, *Null* is returned.

 **Example:** `Left(CStr([Contact.Email]), 7)`

 In this example, `Contact.Email` is an attribute from the database schema.

|
|`Right(string, length)`|Returns a string containing a specified number of characters from the right side of a string. The return type is `String`. If *string* contains *Null*, *Null* is returned.

 **Example:** `Right(CStr([Contact.Email]), 10)`

 In this example, `Contact.Email` is an attribute from the database schema.

|
|`Replace(string, oldValue, newValue)`|Returns a string in which the specified substring \(*oldValue*\) has been replaced with another substring \(*newValue*\). The return type is `String`.

 **Example:** `Replace(CStr([Contact.Email]), '@.', '@')`

 In this example, `Contact.Email` is an attribute from the database schema.

|
|`PadLeft(string, width, paddingChar)`|Right-aligns the characters in the specified string \(*string*\), padding with the specified characters \(*paddingChar*\) on the left for the specified total width \(*width*\).

 **Example:** `PadLeft(CStr([Contact.Email]), 7, '@')`

 In this example, `Contact.Email` is an attribute from the database schema.

|
|`PadRight(string, width, paddingChar)`|Left-aligns the characters in a specified string \(*string*\), padding with the specified character \(*paddingChar*\) on the right up to the specified total width \(*width*\). The return type is `String`.

 **Example:** `PadRight(CStr([Contact.Email]), 10, '@')`

 In this example, `Contact.Email` is an attribute from the data schema.

|
|`Substring(string, start, length)`|Returns a string containing the specified number of characters \(*length*\) from the left side of the specified string \(*string*\) starting from the specified symbol number \(*start*\). The numbering is 0 based, meaning that the number of the first symbol in the string is 0.

 **Example:** `Substring([ARInvoice.DocDesc], 0, 10)`

 In this example, `ARInvoice.DocDesc` is an attribute from the data schema.

|

## Mathematical Functions { .section}

Mathematical functions perform calculations, usually based on input values provided as arguments, and return numeric values. The following table lists the mathematical functions available in the *Math* subnode of the *Functions* node in the Expression Editor.

|Function|Description and Examples|
|--------|------------------------|
|`Abs(x)`|Returns the absolute value of the number.

 **Example:** `Abs($CurrBal - $CurrTot)`

 In this example, `CurrBal` and `CurrTot` are the report variables.

|
|`Floor(x)`|Returns the largest integer that is not greater than the argument.

 **Example:** `Floor([Contact.NoteID])`

 In this example, `Contact.NoteID` is an attribute from the database schema.

|
|`Ceiling(x)`|Returns the smallest integer that is not less than the argument.

 **Example:** `Ceiling([Contact.NoteID])`

 In this example, `Contact.NoteID` is an attribute from the database schema.

|
|`Round(x, decimals)`|Returns a numeric expression, rounded to the specified precision \(*decimals*\).

 **Example:** `Round($CurrTot, 2)`

 In this example, `CurrTot` is a report variable.

|
|`Min(x, y)`|Returns the smaller of two values.

 **Example:** `Min($CurrTot, $CurrCompanyTot)`

 In this example, `CurrTot` and `CurrCompanyTot` are report variables.

|
|`Max(x, y)`|Returns the greater of two values.

 **Example:** `Max($CurrTot, $CurrCompanyTot)`

 In this example, `CurrTot` and `CurrCompanyTot` are report variables

|
|`Pow(x, power)`|Computes the value of *x* raised to the specified power \(*power*\).

 **Example:** `Pow(([Contact.NoteID], 2))`

 In this example, `Contact.NoteID` is an attribute from the database schema.

|

## Date and Time Functions { .section}

The date and time functionsperform operations on input values and return values of the following types: string, numeric, or date and time. The following table lists the string functions available in the *Date/Time* subnode of the *Functions* node in the Expression Editor.

|Function|Description and Examples|
|--------|------------------------|
|`DateAdd(date, interval, number)`|Returns a new date, which is calculated by adding the specified number \(*number*\) of time intervals \(*interval*\) to the date \(*date*\). The *interval* argument specifies the type of time interval and can be one of the following options:

-   *y*, *yy*, *yyyy*, or *year*: The specified number \(*number*\) of years will be added to the specified date \(*date*\).
-   *m*, *mm*, or *month*: The specified number \(*number*\) of months will be added to the specified date \(*date*\).
-   *d*, *dd*, or *day*: The specified number \(*number*\) of days will be added to the specified date \(*date*\).
-   *h*, *hh*, or *hour*: The specified number \(*number*\) of hours will be added to the specified date \(*date*\).
-   *n*, *mi*, or *minute*: The specified number \(*number*\) of minutes will be added to the specified date \(*date*\).
-   *s*, *ss*, or *second*: The specified number \(*number*\) of seconds will be added to the specified date \(*date*\).
-   *w*, *ww*, *wk*, or *week*: The specified number \(*number*\) of weeks will be added to the specified date \(*date*\).
-   *q*, *qq*, or *quarter*: The specified number \(*number*\) of quarters will be added to the specified date \(*date*\).

 **Examples:**

 `DateAdd($DueDate, 'm', -2)`

 `DateAdd(CDate('31/01/1995'), 'm', -2)`

 `DateAdd($DueDate, 'y', -2)` `DateAdd(Cdate($DueDate), 'd', -2)`

 In these examples, `DueDate` is a report variable.

|
|`DateDiff(interval, date1, date2)`|Returns the count \(as a signed integer value\) of the specified *interval* boundaries that are crossed between the specified *date1* and *date2*. The *interval* argument, which specifies the type of time interval, can be one of the following options:

-   *y*, *yy*, *yyyy*, or *year*: The time interval is specified in years.
-   *m*, *mm*, or *month*: The time interval is specified in months.
-   *d*, *dd*, or *day*: The time interval is specified in days.
-   *h*, *hh*, or *hour*: The time interval is specified in hours.
-   *n*, *mi*, or *minute*: The time interval is specified in minutes.
-   *s*, *ss*, or *second*: The time interval is specified in seconds.
-   *w*, *ww*, *wk*, or *week*: The time interval is specified in weeks.
-   *q*, *qq*, or *quarter*: The time interval is specified in quarters.

|
|`Day(date)`|Returns the day \(as an integer\) extracted from the specified date \(`date`\). The return type is `Int32`.

 **Examples:**

 `Day([ARPayment.ClearDate])`

 `Day($DueDate)` `Day(Cdate($DueDate))`

 `Day(CDate('31/01/1995'))`

 In these examples, `DueDate` is a report variable, and `ARPayment.ClearDate` is an attribute from the database schema.

|
|`DayOfWeek(date)`|Returns the day of the week associated with the specified date \(`date`\) as an integer. The return type is `Int32`.

 **Examples:**

 `DayOfWeek([ARPayment.ClearDate])`

 `DayOfWeek($DueDate)`

 `DayOfWeek(Cdate($DueDate))`

 `DayOfWeek(CDate('31/01/1995'))`

 In these examples, `DueDate` is a report variable, and `ARPayment.ClearDate` is an attribute from the database schema.

|
|`DayOfYear(date)`|Returns the day of the year calculated for the specified date \(`date`\). The return type is `Int32`.

 **Examples:**

 `DayOfYear([ARPayment.ClearDate])`

 `DayOfYear($DueDate)`

 `DayOfYear(Cdate($DueDate))`

 `DayOfYear(CDate('31/01/1995'))`

 In these examples, `DueDate` is a report variable, and `ARPayment.ClearDate` is an attribute from the database schema.

|
|`DayOrdinal(day)`|Converts the specified integer value \(*day*\) to a string that contains the ordinal number in the current locale. For example, for the English locale, the string contains the short form of the ordinal number, such as 1st or 2nd. For numbers that are less than 1 or greater than 31, the function returns an empty string.

 **Example:** `DayOrdinal(1)`

|
|`Hour(date)`|Returns the hours extracted from the specified date \(`date`\). The return type is `Int32`.

 **Examples:**

 `Hour([ARPayment.ClearDate])`

 `Hour($DueDate)`

 `Hour(Cdate($DueDate))`

 In these examples, `DueDate` is a report variable, and `ARPayment.ClearDate` is an attribute from the database schema.

|
|`Minute(date)`|Returns the number of minutes extracted from the specified date \(`date`\). The return type is `Int32`.

 **Examples:**

 `Minute([ARPayment.ClearDate])`

 `Minute($DueDate)`

 `Minute(Cdate($DueDate))`

 `Minute(CDate('31/01/1995'))`

 In these examples, `DueDate` is a report variable, and `ARPayment.ClearDate` is an attribute from the database schema.

|
|`Month(date)`|Returns the month, as an integer, extracted from the specified date \(`date`\). The return type is `Int32`.

 **Examples:**

 `=Month([ARPayment.ClearDate])`

 `=Month($DueDate)` `=Month(Cdate($DueDate))`

 `=Month(CDate('31/01/1995'))`

 In these examples, `DueDate` is a report variable, and `ARPayment.ClearDate` is an attribute from the database schema.

|
|`MonthName(date)`|Returns a string that contains the name of the month extracted from the specified date \(*date*\) in the current locale.

 **Example:** `MonthName\(CDate\('3/12/2022'\)\)`

|
|`Now()`|Returns the business date and time according to the system date and time on the local computer. The return type is `DateTime`.

 **Example:** `Now()`

|
|`NowUTC()`|Returns the business date and time in the user's time zone. The system extracts the user's time zone from one of the following sources, which are ordered by priority from the highest to the lowest:

1.  The time zone specified for the user in the **Time Zone** box \(**General Info** tab\) of the [User Profile](../Shared/../UserGuide/SM_20_30_10.md) \(SP203010\) form.
2.  The employee calendar selected for the user in the **Calendar** box of the **General Info** tab of the [Employees](../Shared/../UserGuide/EP_20_30_00.md) \(EP203000\) form. The time zone of the calendar is specified in the Summary area of the [Work Calendar](../Shared/../UserGuide/CS_20_90_00.md) \(CS209000\) form.
3.  The time zone specified for the site in the **Login Time Zone** box on the [Site Preferences](../Shared/../UserGuide/SM_20_05_05.md) \(SM200505\) form.

 **Example:** `NowUTC()`

|
|`Second(date)`|Returns the seconds extracted from the specified date \(`date`\) as an integer. The return type is `Int32`.

 **Examples:**

 `Second([ARPayment.ClearDate])`

 `Second($DueDate)` `Second(Cdate($DueDate))`

 `Second(CDate('31/01/1995'))`

 In these examples, `DueDate` is a report variable, and `ARPayment.ClearDate` is an attribute from the database schema.

|
|`Today()`|Returns the business date according to the system date and time on the local computer. The return type is `DateTime`.

 **Example:** `Today()`

|
|`TodayUTC()`|Returns the business date in the user's time zone. The system extracts the user's time zone from one of the following sources, which are ordered by priority from the highest to the lowest:

1.  The time zone specified for the user in the **Time Zone** box \(**General Info** tab\) of the [User Profile](../Shared/../UserGuide/SM_20_30_10.md) \(SP203010\) form.
2.  The employee calendar selected for the user in the **Calendar** box \(**General Info** tab\) of the [Employees](../Shared/../UserGuide/EP_20_30_00.md) \(EP203000\) form. The time zone of the calendar is specified in the Summary area of the [Work Calendar](../Shared/../UserGuide/CS_20_90_00.md) \(CS209000\) form.
3.  The time zone in the site preferences, which are specified in the **Login Time Zone** box on the [Site Preferences](../Shared/../UserGuide/SM_20_05_05.md) \(SM200505\) form.

 **Example:** `TodayUTC()`

|
|`Year(date)`|Returns the year, as an integer, extracted from the specified date \(`date`\). The return type is `Int32`.

 **Examples:**

 `Year([ARPayment.ClearDate])`

 `Year(Cdate($DueDate))` `Year($DueDate)`

 `Year(CDate('31/01/1995'))`

 In these examples, `DueDate` is a report variable, and `ARPayment.ClearDate` is an attribute from the database schema.

|

## Shortcut Functions { .section}

The shortcut functions perform miscellaneous operations. The following tables list the string functions available in the *Math* subnode of the *Program Shortcut* node in the Expression Editor.

|Function|Description and Examples|
|--------|------------------------|
|`Assign('$name', expression)`|Assigns the result of the expression calculation to the variable specified as the parameter. The function can be used to assign a value to an existing variable, or a new variable can be created with the expression calculation value assigned to it.

 **Example:** `Assign(`PrintDoc`, (IsNull([RowARRegister.CustomerID])))`

 In this example, `PrintDoc` is a report variable, and `ARRegister.CustomerID` is an attribute from the data schema\).

|
|`Assign('$name', expression, resetExpression)`|Assigns the result of the expression calculation to the variable specified as the parameter. The *expression* value is assigned to the variable when the variable is set, and the *resetExpression* value defines when the variable value should be reset. The function can be used to assign a value to an existing variable, or a new variable can be created and the expression calculation value is assigned to it.

 **Example:** `Assign(<nowiki>'PrintDoc'</nowiki>, (IsNull([ARRegister.CustomerID])), IsNull([APPayment.AdjFinPeriodID]))`

 In this example, `PrintDoc` is a report variable, and `ARRegister.CustomerID` is an attribute from the database schema\).

|
|`IIf(expression, truePart, falsePart)`|Returns one of two values, depending on the evaluation of the expression: If the expression evaluates to `True`, the function returns the *truePart* value; otherwise, it returns the *falsePart* value.

 **Example:** `IIf(($CurrTot-$CurrBal)<>0), CStr([ARRegister.DocBal]), 'No data available')`

 In this example, `CurrTot` and `CurrBal` are report variables, and `ARRegister.DocBal` is an attribute from the database schema.

 You can also use this function to set a field value to *Null*.

 **Example:** `=IIf([Document.OrderType]='QT', 'FEDEX', NULL)`

|
|`IsNull(value, nullValue)`|Returns *nullValue* if *value* is NULL; otherwise, returns *value*.

 **Example:** `IsNull($PrintDoc, 'NULL')`

 In this example, `PrintDoc` is a report variable.

|
|`NullIf(value1, value2)`|Returns NULL if *value1* is equal to *value2*.|
|`Switch(expression_1, value_1, expression_2, value_2, ...)`|Returns the value \(*value\_n*\) that corresponds to the first expression \(*expression\_n*\) that evaluates to `True`. For example, *expression\_1* and *expression\_2* are Boolean expressions.

 **Example:** `Switch((($CurrTot-$CurrBal)<0), $CurrBal, (($CurrTot-$CurrBal)>0), $CurrTot)`

 In this example, `CurrTot` and `CurrBal` are report variables.

|

## Application-Specific Functions { .section}

Application-specific functions are specific for the application in which you will run the report. That is why these functions are not listed in the Expression Editor dialog box; you need to enter these functions manually.

The following table includes the application-specific functions available in Acumatica Report Designer.

|Function|Description and Examples|
|--------|------------------------|
|`GetAPPaymentInfo(accountCD, paymentMethodID, detailID, acctCD)`|Returns the value of the specified AP payment attribute \(*detailID*\) for a specific cash account \(*accountCD*\), payment method \(*paymentMethodID*\), and vendor \(*acctCD*\). The function returns the attribute value as it is specified in the **Payment Instructions** section on the **Payment Settings** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form.

 If the specified record is not available, the function returns an empty string.

 **Example:** `Payments.GetAPPaymentInfo('102000','FEDWIRE','INSTRUCTIONS','V000213')`

|
|`GetARPaymentInfo(accountCD, paymentMethodID, detailID, pMInstanceID)`|Returns the value of the specified AR payment attribute \(*detailID*\) for a specific cash account \(*accountCD*\), payment method \(*paymentMethodID*\), and customer \(*acctCD*\). The function returns the attribute value as it is specified on the **Payment Method Details** tab of the [Customer Payment Methods](AR_30_30_10.md) \(AR303010\) form.

 If the specified record is not available, the function returns an empty string.

 **Example:** `Payments.GetARPaymentInfo('102000','FEDWIRE','ACCOUNTNO','C0003163')`

|
|`GetRemitPaymentInfo(accountCD, paymentMethodID, detailID)`|Returns the value of the specified payment attribute \(*detailID*\) for a specific cash account \(*accountCD*\), payment method \(*paymentMethodID*\), and vendor or customer \(*acctCD*\). The function returns the attribute value as it is specified on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form.

 If the specified record is not available, the function returns an empty string.

 **Example:** `Payments.GetRemitPaymentInfo('102000','FEDWIRE','ACCOUNTNO')`

|

## DAC Field Modifiers {#section_m1q_4m3_wvb .section}

The following table includes the modifiers that can be applied to a DAC field available in Acumatica Report Designer.

|Function|Description and Examples|
|--------|------------------------|
|`.Raw`|Returns the original field value without any additional processing \(as it is stored in database\).

 **Example:** `AMBomOper.RunUnitTime.Raw` returns 60, while `AMBomOper.RunUnitTime` returns *1:00*.

|
|`.Format`|Depending on a field type returns one of the following:

 -   *List*: Returns allowed labels and values surrounded with square brackets. Label and value are delimited with the `\u001e` Unicode character. Each pair is delimited with the `\u001f` Unicode character. **Example:** `[A\u001eAuto\u001fM\u001eManual]`.
-   *String*: Returns specified input mask surrounded with curly brackets. **Example:** `{##-####}`.
-   *Date*: Returns specified display mask or `d` if a mask is not specified. **Example:** `MMMM dd, yyyy`.
-   *Numeric with floating point*: Returns `Nx` where `x` is a precision specified for the field. **Example:** `N8`.

|
|`.DisplayName`|Returns the display name for the field.

 **Example:** `SOOrder.CustomerRefNbr.DisplayName` returns *External Reference*.

|

**Parent topic:**[Using Variables and Expressions](../UserGuide/RD_Using_Variables_and_Expressions_Mapref.md)

