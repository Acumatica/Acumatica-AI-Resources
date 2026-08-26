# Cell Formatting {#_13a86d40-60db-4339-92aa-d7959c23ac2d .concept}

You use the format functions specified for the **Format** attribute on the [Column Sets](CS_20_60_20.md) \(CS206020\) form \(for a column cell\) and on the [Row Sets](CS_20_60_10.md) \(CS206010\) form \(for a row cell\). To specify the format for the column or row cells, you can use the standard formats defined for the format function in .Net. Standard \(numeric and datetime\) and user-defined data formats are supported.

The standard numeric data formats use the form *Axx*, where *A* is a single alphabetic character called the format specifier, and *xx* is an optional integer called the precision specifier. The precision specifier ranges from 0 to 99 and controls the number of significant digits or zeros to the right of the decimal point. The format string cannot contain spaces.

The standard *DateTime* format string consists of a single format specifier character. If the format specifier is not found in the list of standard string format specifiers, a runtime exception occurs. If the format string is longer than a single character \(even if the extra characters are blanks\), the format string is interpreted as a custom format string.

If the standard numeric format specifiers do not provide the type of formatting required by the report, you can use custom format strings. The custom format strings use the format characters to specify what symbol should be placed in the specific position of the format string. Any numeric format string that does not fit the definition of a standard numeric format string is interpreted as a custom numeric format string. Thus, the format string *c!* is interpreted as a custom format string because it contains two alphabetic characters, even though the character *c* is a standard numeric format specifier. The custom *DateTime* format specifiers can be used to create a custom *DateTime* format string.

|Format specifier|Name|Description|
|----------------|----|-----------|
|*C* or *c*|Currency|The numbers in the report row or column will be converted to strings that represent the currency amounts. The precision specifier indicates the number of decimal places to be shown.

 **Examples**: *c*, *c2*

 You can use a currency symbol in the report rows, such as the U.S. dollar symbol \(*$*\) or the Euro symbol \(*€*\). To set up the required symbol, use the format string as shown in the following example.

 **Example \(for Euro\)**: *\\€ \#,\#\#0.00*

 Any symbol that you type after the backslash \(*\\*\) will be printed as it is.

|
|*D* or *d*|Decimal|This format is supported for integral types only. The number is converted to a string of decimal digits \(0 to 9\), preceded by a minus sign if the number is negative. The precision specifier indicates the minimum number of digits in the resulting string. If required, the number is padded with zeros to its left to produce the number of digits given by the precision specifier. The exponent always consists of a plus or minus sign and a minimum of three digits. The exponent is padded with zeros to meet this minimum, if required.

 **Examples**: *d*, *d4*

|
|*E* or *e*|Scientific \(exponential; this format is very seldom used in analytical reports\)|The number is converted to a string of the form *-d.ddd... E+ddd* or *-d.ddd... e+ddd*, where each *d* indicates a digit \(0 to 9\). The string starts with a minus sign if the number is negative. One digit always precedes the decimal point. The precision specifier indicates the appropriate number of digits after the decimal point. If the precision specifier is omitted, a default of six digits after the decimal point is used. The case of the format specifier indicates whether to prefix the exponent with an *E* or an *e*. The exponent always consists of a plus or minus sign and a minimum of three digits. The exponent is padded with zeros to meet this minimum, if required.

 **Examples**: *e*, *e2*

|
|*F* or *f*|Fixed point|The number is converted to a string of the form *-ddd.ddd...* where each *d* indicates a digit \(0 to 9\). The string starts with a minus sign if the number is negative. The precision specifier indicates the number of decimal places to be shown.

 **Examples**: *f*, *f4*

|
|*G* or *g*|General|The number is converted to the most compact of the fixed-point or scientific notation, depending on the type of the number and whether a precision specifier is present. If the precision specifier is omitted or zero, the type of the number determines the default precision, as indicated by the following list.

 -   Byte or SByte: 3
-   Int16 or UInt16: 5
-   Int32 or UInt32: 10
-   Int64 or UInt64: 19
-   Single: 7
-   Double: 15
-   Decimal: 29

 Fixed-point notation is used if the exponent that would result from expressing the number in scientific notation is greater than –5 and less than the precision specifier; otherwise, scientific notation is used. The result contains a decimal point, if required, and trailing zeros are omitted. If the precision specifier is present and the number of significant digits in the result exceeds the specified precision, then the excess trailing digits are removed by rounding. If scientific notation is used, the exponent in the result is preceded by *E* if the format specifier is *G*, or *e* if the format specifier is *g*. The exception to the preceding rule is if the number is a decimal and the precision specifier is omitted. In that case, fixed-point notation is always used and trailing zeros are preserved.

 **Examples**: *g*, *g4*

|
|*N* or *n*|Number|The number is converted to a string of the form *-d,ddd,ddd.ddd...* where each *d* indicates a digit \(0 to 9\). The string starts with a minus sign if the number is negative. Thousand separators are inserted between each group of three digits to the left of the decimal point. The precision specifier indicates the number of decimal places to be shown.

 **Examples**: *n*, *n4*

|
|*P* or *p*|Percent|The number is converted to a string that represents a percent. The converted number is multiplied by 100 in order to be presented as a percentage. The precision specifier indicates the number of decimal places to be shown.

 **Examples**: *p*, *p4*

|
|*R* or *r*|Round-trip \(this format is very seldom used in analytical reports\)|The round-trip specifier guarantees that a numeric value converted to a string will be parsed back into the same numeric value. When a numeric value is formatted using this specifier, it is first tested using the general format, with 15 spaces of precision for a *Double* and 7 spaces of precision for a *Single*. If the value is successfully parsed back to the same numeric value, it is formatted by using the general format specifier. However, if the value is not successfully parsed back to the same numeric value, then the value is formatted by using 17 digits of precision for a *Double* and 9 digits of precision for a *Single*. Although a precision specifier can be appended to the round-trip format specifier, it is ignored. Round trips are given precedence over precision when you use this specifier. This format is supported by floating-point types only.

 **Example**: *r*

|
|*X* or *x*|Hexadecimal \(this format is very seldom used in analytical reports\)|The number is converted to a string of hexadecimal digits. The case of the format specifier indicates whether to use uppercase or lowercase characters for the hexadecimal digits greater than 9. For example, use *X* to produce *ABCDEF*, and *x* to produce *abcdef*. The precision specifier indicates the minimum number of digits in the resulting string. If required, the number is padded with zeros to its left to produce the number of digits given by the precision specifier. This format is supported for integral types only.

 **Examples**: *x* *X*

|

|Format character|Name|Description|
|----------------|----|-----------|
|*0*|Zero placeholder|If the value being formatted has a digit in the position where the *0* appears in the format string, then that digit is copied to the result string. The position of the leftmost *0* before the decimal point and the rightmost *0* after the decimal point determines the range of digits that are always present in the result string. The *00* specifier causes the value to be rounded to the nearest digit preceding the decimal, where rounding away from zero is always used. For example, formatting 34.5 with *00* would result in the value 35.|
|*\#*|Digit placeholder|If the value being formatted has a digit in the position where the *\#* appears in the format string, then that digit is copied to the result string. Otherwise, nothing is stored in that position in the result string. Note that this specifier never displays the *0* character if it is not a significant digit, even if *0* is the only digit in the string. This specifier displays the *0* character if it is a significant digit in the number being displayed. The *\#\#* format string causes the value to be rounded to the nearest digit preceding the decimal, where rounding away from zero is always used. For example, formatting 34.5 with *\#\#* would result in the value 35.

 **Examples:**

 `,##0.00}}`

 `"(###) ### - ####"`

|
|*.*|Decimal point|The first *.* character in the format string determines the location of the decimal separator in the formatted value; any additional *.* characters are ignored. The actual character used as the decimal separator is determined by the settings in the **Regional Options** control panel.|
|*,*|Thousand separator and number scaling|This character serves two purposes. First, if the format string contains a *,* character between two digit placeholders \(0 or \#\) and to the left of the decimal point if one is present, then the output will have thousand separators inserted between each group of three digits \(counting from the right\) to the left of the decimal separator. The actual character used as the decimal separator in the result string is determined by the settings in the *Regional Options* control panel. Second, if the format string contains at least one *,* character immediately to the left of the decimal point, then the number will be divided by the number of *,* characters multiplied by 1000 before it is formatted. For example, the format string *0,,* will represent 100 million as simply 100. The *,* character indicates that scaling does not include thousand separators in the formatted number. Thus, to scale a number by 1 million and insert thousand separators, you would use the format string *\#,\#\#0,,*.|
|*%*|Percentage placeholder|The presence of the *%* character in a format string causes a number to be multiplied by 100 before it is formatted. The appropriate symbol is inserted in the number itself at the location where the *%* appears in the format string. The percent character used is dependent on the settings in the **Regional Options** control panel.|
|*E0* *E+0* *E-0* *e0*e+0*e-0*

|Scientific notation|If any of the strings *E*, *E+*, *E-*, *e*, *e+*, or *e-* is present in the format string and followed immediately by at least one *0* character, then the number is formatted using scientific notation with an *E* or *e* inserted between the number and the exponent. The number of *0* characters following the scientific notation indicator determines the minimum number of digits to output for the exponent. The *E+* and *e+* formats indicate that a sign character \(plus or minus\) should always precede the exponent. The *E*, *E-*, *e*, and *e-* formats indicate that a sign character should only precede negative exponents.|
|*\\*|Escape character|In C\# and C++, the backslash character causes the next character in the format string to be interpreted as an escape sequence. This character is used with traditional formatting sequences like *\\n* \(new line\).|
|*'ABC'* *"ABC"*|Literal string|Characters enclosed in single or double quotes are copied to the result string literally, and do not affect formatting.|
|*;*|Section separator|This character is used to separate sections for positive, negative, and zero numbers in the format string.|
|*Other*|All other characters|All other characters are copied to the result string as literals in the position in which they appear.|

|Format character|Name|Description|
|----------------|----|-----------|
|*d*|Short date pattern|Displays a value in the short date format.

 Depending on the settings in the **Regional Options** control panel, the value can be in one of the following formats:

-   *M/d/yyyy* \(for *en-US* local settings\)
-   *yyyy/MM/dd* \(for *ja-JP* local settings\)
-   *dd/MM/yyyy* \(for *fr-FR* local settings\)

 **Example**: *d*

|
|*D*|Long date pattern|Displays a value in the long date format.

 Depending on the settings in the **Regional Options** control panel, the value can be in one of the following formats:

-   *dddd, MMMM dd, yyyy* \(for *en-US* local settings\)
-   *yyyy'?'M'?'d'?'* \(for *ja-JP* local settings\)
-   *dddd d MMMM yyyy* \(for *fr-FR* local settings\)

 **Example**: *D*

|
|*t*|Short time pattern|Displays a value in the short time format.

 Depending on the settings in the **Regional Options** control panel, the value can be in one of the following formats:

-   *h:mm tt* \(for *en-US* local settings\)
-   *H:mm* \(for ja-JP local settings\)
-   *HH:mm* \(for fr-FR local settings\)

 **Example**: *t*

|
|*T*|Long time pattern|Displays a value in the long time format.

 Depending on the settings in the **Regional Options** control panel, the value can be in one of the following formats:

-   *h:mm:ss tt* \(for *en-US* local settings\)
-   *H:mm:ss* \(for *ja-JP* local settings\)
-   *HH:mm:ss* \(for *fr-FR* local settings\)

 **Example**: *T*

|
|*f*|Full date/time pattern \(short time\)|Displays a value in a combination of the long date and short time format patterns, separated by a space.

 **Example**: *f*

|
|*F*|Full date/time pattern \(long time\)|Displays a value in a full date/time format.

 Depending on the settings in the **Regional Options** control panel, the value can be in one of the following formats:

-   *yyyy h:mm:ss tt* \(for *en-US* local settings\)
-   *yyyy'?'M'?'d'?' H:mm:ss* \(for *ja-JP* local settings\)
-   *dddd d MMMM yyyy HH:mm:ss* \(for *fr-FR* local settings\)

 **Example**: *F*

|
|*g*|General date/time pattern \(short time\)|Displays a combination of the short date and short time patterns, separated by a space.

 **Example**: *g*

|
|*G*|General date/time pattern \(long time\)|Displays a combination of the short date and long time patterns, separated by a space.

 **Example**: *G*

|
|*M* or *m*|Month day pattern|Displays the day of month defined by the value.

 Depending on the settings in the **Regional Options** control panel, the value can be in one of the following formats:

-   *MMMM dd* \(for *en-US* local settings\)
-   *M'?'d'?'* \(for *ja-JP* local settings\)
-   *d MMMM* \(for *fr-FR* local settings

 **Example**: *M* `m`

|
|*R* or *r*|RFC1123 pattern|Displays a time value based on the Internet Engineering Task Force \(IETF\) Request for Comments \(RFC\) 1123 specification. This specification sets the following common time format \(regardless of the settings in the **Regional Options** control panel\): *ddd, dd MMM yyyy HH':'mm':'ss 'GMT'*.

 Formatting does not modify the *DateTime* value; therefore, you must adjust the value to GMT before formatting.

 **Examples**: *R*, `r`

|
|*s*|Sortable date/time pattern; conforms to ISO 8601|Displays a date and time in ISO 8601-compatible format. The format uses the following custom format: *yyyy-MM-ddTHH:mm:ss*.

 **Example**: *s*

|
|*u*|Universal sortable date/time pattern|Displays a time value in a standard defined form. This specification sets the following common time format \(regardless of the settings in the **Regional Options** control panel\): *yyyy-MM-dd HH:mm:ssZ*.

 No time zone conversion is done when the date and time is formatted; therefore, convert a local date and time to universal time before using this format specifier.

 **Example**: *u*

|
|*Y* or *y*|Year month pattern|Displays a year value.

 Depending on the settings in the **Regional Options** control panel, the value can be in one of the following formats:

-   *MMMM, yyyy* \(for *en-US* local settings\)
-   *yyyy'?'M'?'* \(for *ja-JP* local settings\)
-   *MMMM yyyy* \(for *fr-FR* local settings\)

 **Examples**: *Y* `y`

|

|Format specifier|Description|
|----------------|-----------|
|*d*|Displays the current day of the month, expressed as a number between 1 and 31. If the day is a single digit only \(1 to 9\), then it is displayed as a single digit. Note that if the *d* format specifier is used without other custom format strings, it is interpreted as the standard format specifier for the short date pattern. If the *d* format specifier is passed with other custom format specifiers or the *%* character, it is interpreted as a custom format specifier.|
|*ddd*|Displays the abbreviated name of the day for the specified DateTime.|
|*dddd* \(plus any number of additional *d* characters\)|Displays the full name of the day for the specified DateTime.|
|*f*|Displays the most significant digit of the seconds fraction. Note that if the *f* format specifier is used alone, without other custom format strings, it is interpreted as the full \(long date + short time\) format specifier. If the *f* format specifier is passed with other custom format specifiers or the *%* character, it is interpreted as a custom format specifier.|
|*ff*|Displays the two most significant digits of the seconds fraction.|
|*fff*|Displays the three most significant digits of the seconds fraction.|
|*ffff*|Displays the four most significant digits of the seconds fraction.|
|*fffff*|Displays the five most significant digits of the seconds fraction.|
|*ffffff*|Displays the six most significant digits of the seconds fraction.|
|*fffffff*|Displays the seven most significant digits of the seconds fraction.|
|*F*|Displays the most significant digit of the seconds fraction. Nothing is displayed if the digit is zero.|
|*FF*|Displays the two most significant digits of the seconds fraction. However, trailing zeros or two zero digits are not displayed.|
|*FFF*|Displays the three most significant digits of the seconds fraction. However, trailing zeros or three zero digits are not displayed.|
|*FFFF*|Displays the four most significant digits of the seconds fraction. However, trailing zeros or four zero digitsare not displayed.|
|*FFFFF*|Displays the five most significant digits of the seconds fraction. However, trailing zeros or five zero digits are not displayed.|
|*FFFFFF*|Displays the six most significant digits of the seconds fraction. However, trailing zeros or six zero digits are not displayed.|
|*FFFFFFF*|Displays the seven most significant digits of the seconds fraction. However, trailing zeros or seven zero digits are not displayed.|
|*g* or *gg* \(plus any number of additional *g* characters\)|Displays the era \(A.D. for example\) for the specified *DateTime* value. Note that if the *g* format specifier is used alone, without other custom format strings, it is interpreted as the standard general format specifier. If the *g* format specifier is passed with other custom format specifiers or the *%* character, it is interpreted as a custom format specifier.|
|*h*|Displays the hour for the specified *DateTime* value in the range 1 to 12. The hour represents whole hours passed since either midnight \(displayed as 12\) or noon \(also displayed as 12\). If this format is used alone, then the same hour before or after noon is indistinguishable. If the hour is a single digit \(1 to 9\), it is displayed as a single digit. No rounding occurs when the hour is displayed. For example, a *DateTime* of 5:43 returns 5.|
|*hh*, *hh* \(plus any number of additional *h* characters\)|Displays the hour for the specified DateTime value in the range 1 to 12. The hour represents whole hours passed since either midnight \(displayed as 12\) or noon \(also displayed as 12\). If this format is used alone, then the same hour before or after noon is indistinguishable. If the hour is a single digit \(1 to 9\), it is formatted with a preceding 0 \(01-09\).|
|*H*|Displays the hour for the specified *DateTime* value in the range 0 to 23. The hour represents whole hours passed since midnight \(displayed as 0\). If the hour is a single digit \(0 to 9\), it is displayed as a single digit.|
|*HH, HH* \(plus any number of additional *H* characters\)|Displays the hour for the specified *DateTime* value in the range 0 to 23. The hour represents whole hours passed since midnight \(displayed as 0\). If the hour is a single digit \(0 to 9\), it is formatted with a preceding 0 \(01 to 09\).|
|*m*|Displays the minute for the specified *DateTime* value in the range 0 to 59. The minute represents whole minutes passed since the last hour. If the minute is a single digit \(0 to 9\), it is displayed as a single digit. Note that if the *m* format specifier is used alone, without other custom format strings, it is interpreted as the standard format specifier for the month-day pattern. If the *m* format specifier is passed with other custom format specifiers or the *%* character, it is interpreted as a custom format specifier.|
|*mm*, *mm* \(plus any number of additional *m* characters\)|Displays the minute for the specified DateTime in the range 0 to 59. The minute represents whole minutes passed since the last hour. If the minute is a single digit \(0 to 9\), it is formatted with a preceding 0 \(01 to 09\).|
|*M*|Displays the month, expressed as a number between 1 and 12. If the month is a single digit \(1 to 9\), it is displayed as a single digit. Note that if the *M* format specifier is used alone, without other custom format strings, it is interpreted as the standard format specifier for the month-day pattern. If the *M* format specifier is passed with other custom format specifiers or the *%* character, it is interpreted as a custom format specifier.|
|*MM*|Displays the month, measured as a number between 1 and 12. If the month is a single digit \(1 to 9\), it is formatted with a preceding 0 \(01 to 09\).|
|*MMM*|Displays the abbreviated name of the month for the specified *DateTime* value.|
|*MMMM*|Displays the full name of the month for the specified *DateTime* value.|
|*s*|Displays the seconds for the specified *DateTime* value in the range 0 to 59. The second represents whole seconds passed since the last minute. If the second is a single digit \(0 to 9\), it is displayed as a single digit only. Note that if the *s* format specifier is used alone, without other custom format strings, it is interpreted as the standard sortable format specifier for the date-time pattern. If the *s* format specifier is passed with other custom format specifiers or the *%* character, it is interpreted as a custom format specifier.|
|*ss*, *ss* \(plus any number of additional *s* characters\)|Displays the seconds for the specified *DateTime* value in the range 0 to 59. The second represents whole seconds passed since the last minute. If the second is a single digit \(0 to 9\), it is displayed as a single digit only. Note that if the *s* format specifier is used alone, without other custom format strings, it is interpreted as the standard sortable format specifier for the date-time pattern. If the *s* format specifier is passed with other custom format specifiers or the *%* character, it is interpreted as a custom format specifier.|
|*ss*, *ss* \(plus any number of additional *s* characters\)|Displays the seconds for the specified DateTime in the range 0 to 59. The second represents whole seconds passed since the last minute. If the second is a single digit \(0 to 9\), it is formatted with a preceding 0 \(01 to 09\).|
|*t*|Displays the first character of the a.m./p.m. designator for the specified *DateTime* value. Note that if the *t* format specifier is used alone, without other custom format strings, it is interpreted as the standard format specifier for the long time pattern. If the *t* format specifier is passed with other custom format specifiers or the *%* character, it is interpreted as a custom format specifier.|
|*tt*, *tt* \(plus any number of additional *t* characters\)|Displays the a.m./p.m. designator for the specified *DateTime* value.|
|*y*|Displays the year for the specified *DateTime* value as a maximum two-digit number. The first two digits of the year are omitted. If the year is a single digit \(1 to 9\), it is displayed as a single digit. Note that if the *y* format specifier is used alone, without other custom format strings, it is interpreted as the standard format specifier for the short date pattern. If the *y* format specifier is passed with other custom format specifiers or the *%* character, it is interpreted as a custom format specifier.|
|*yy*|Displays the year for the specified *DateTime* value as a maximum two-digit number. The first two digits of the year are omitted. If the year is a single digit \(1 to 9\), it is formatted with a preceding 0 \(01 to 09\).|
|*yyyy*|Displays the year for the specified *DateTime* value, including the century. If the year is fewer than four digits in length, then preceding zeros are appended as necessary to make the displayed year four digits long.|
|*z*|Displays the time zone offset for the system's current time zone in whole hours only. The offset is always displayed with a leading sign \(zero is displayed as *+0*\), indicating hours ahead of Greenwich mean time \(+\) or hours behind Greenwich mean time \(–\). The range of values is –12 to +13. If the offset is a single digit \(0 to 9\), it is displayed as a single digit with the appropriate leading sign. The setting for the time zone is specified as *+X* or *–X*, where *X* is the offset in hours from GMT. The displayed offset is affected by daylight saving time.|
|*zz*|Displays the time zone offset for the system's current time zone in whole hours only. The offset is always displayed with a leading or trailing sign \(zero is displayed as *+00*\), indicating hours ahead of Greenwich mean time \(+\) or hours behind Greenwich mean time \(–\). The range of values is –12 to +13. If the offset is a single digit \(0 to 9\), it is formatted with a preceding 0 \(01 to 09\) with the appropriate leading sign. The setting for the time zone is specified as *+X* or *–X*, where *X* is the offset in hours from GMT. The displayed offset is affected by daylight saving time.|
|*zzz*, *zzz* \(plus any number of additional *z* characters\)|Displays the time zone offset for the system's current time zone in whole hours only. The offset is always displayed with a leading or trailing sign \(zero is displayed as *+00*\), indicating hours ahead of Greenwich mean time \(+\) or hours behind Greenwich mean time \(–\). The range of values is –12 to +13. If the offset is a single digit \(0 to 9\), it is formatted with a preceding 0 \(01 to 09\) with the appropriate leading sign. The setting for the time zone is specified as *+X* or *–X*, where *X* is the offset in hours from GMT. The displayed offset is affected by daylight saving time.|
|*:*|Serves as a time separator.|
|*/*|Functions as a date separator.|
|*"*|Indicates a quoted string. Displays the literal value of any string between two quotation marks preceded by the escape character \(/\).|
|*'*|Indicates a quoted string. Displays the literal value of any string between two single quotation marks.|
|*%c*|Where *c* is both a standard format specifier and a custom format specifier, displays the custom format pattern associated with the format specifier. Note that if a format specifier is used alone as a single character, it is interpreted as a standard format specifier. Only format specifiers consisting of two or more characters are interpreted as custom format specifiers. In order to display the custom format for a specifier defined as both a standard and a custom format specifier, precede the specifier with a *%* symbol.|
|*\\c*|Where *c* is any character, displays the next character as a literal. The escape character cannot be used to create an escape sequence \(like *\\n* for new line\) in this context.|

**Parent topic:**[ARM Reference](../UserGuide/RP__Tools_ARM_Form_Reference.md)

