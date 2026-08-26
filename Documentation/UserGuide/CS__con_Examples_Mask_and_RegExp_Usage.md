# Examples of the Usage of Masks and Regular Expressions {#_9b12bbba-a619-43e4-8335-11ffff13573b .concept}

## Examples of Masks and Regular Expressions { .section}

The following table provides examples of masks and regular expressions you might use.

|Object|Description|
|------|-----------|
|United States Phone Numbers|The input mask *\(\#\#\#\) \#\#\#-\#\#\#\#* forces users to enter the three-digit area code in parentheses, with the other seven digits separated by a hyphen \(*-*\) in two groups: one with three digits and the other with four digits. **Note:** If certain input values will always have the same characters, just type the characters within the mask.

|
|United States Postal Codes|If you want users to enter a five-digit ZIP code followed by a mandatory four-digit extension, use the mask *\#\#\#\#\#-\#\#\#\#*. If, however, you want to make the four-digit extension optional, use a regular expression, such as `/^\d{5}([\-]\d)?$/;`|
|Canadian Postal Codes|The mask *&gt;L\#L \#L\#* ensures that the postal code will be entered as two three-character groups separated by a space: -   The first group contains an uppercase letter and a digit, and an uppercase letter.
-   The second group contains a digit, an uppercase letter, and a digit.

Only the following letters are actually allowed: *A, B, C, E, G, H, J, K, L, M, N, P, R, S, T, V, X,* and *Y*. The following regular expression ensures that the postal code will comply with this rule too: `/^\s*[a-ceghj-npr-tvxy]\d[a-z](\s)?\d[a-z]\d\s*$/i;`

|
|United Kingdom Postcodes|The format of United Kingdom postcodes may be represented by a set of masks: -   L\# \#LL
-   L\#\# \#LL
-   L\#\# \#LL
-   LL\# \#LL
-   LL\#\# \#LL
-   LL\#L \#LL

Some letters \(*CIKMOV*\) are not allowed in these codes. Because only one mask is allowed, you can create a regular expression such as the following for United Kingdom postal codes: `[[A-Z]{1,2}[0-9R][0-9A-Z]? [0-9][A-Z-[CIKMOV]]{2};`. \(For more information about the format of postcodes in the United Kingdom, see [Postcodes in the United Kingdom](http://en.wikipedia.org/wiki/Postcodes_in_the_United_Kingdom).\)

|

## Regular Expression Usage in Password Masks { .section}

In some cases, you may need to specify a regular expression to enforce the company's password policies. For example, a regular expression could define valid and invalid characters, specific formats \(for example, the password must begin with a letter\), or minimum and maximum password lengths. Below are some examples of regular expressions and their explanations:

-   `^(?=.*\d).{4,8}$`: The password must be four to eight characters long and include at least one numeric digit.
-   `^[a-zA-Z]\w{3,9}$`: The password must be four to ten characters long, the first character must be a letter, and no character is permitted except letters, numbers, and underscores.

**Parent topic:**[Managing Input Validation Options](../UserGuide/SM__con_Input_Validation_Options.md)

