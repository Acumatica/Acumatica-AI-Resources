# Managing Input Validation Options {#_9bec9bb3-3363-4649-948f-7a55e9c048a1 .concept}

Acumatica ERP provides a range of tools to control the format of passwords, user and object names, phone numbers, email addresses, and postal codes that are entered in the system. You can use *input masks* to implement restrictions to allow particular types of characters in certain positions of these entities. Also, you can use regular expressions to define specific requirements for text strings entered by a user.

## Input Masks { .section}

You create input masks by using the following symbols:

-   *C*: Designates any character
-   *A*: Designates any letter or digit
-   *L*: Designates a letter only
-   *\#*: Designates a digit only
-   *?*: Designates an optional letter
-   *9*: Designates an optional digit

You can also use the following control symbols \(which are not placeholders\) to affect the characters that follow them:

-   &gt;: Requires that all letters that follow &gt; are uppercase letters. If a lowercase letter is typed, the system will automatically convert it to uppercase. Subsequent &gt; symbols will toggle the uppercase functionality. For example, the mask *&gt;LL&gt;LL&gt;LL* will cause the uppercase to be turned off for the second *LL* characters, but then turned back on for the third LL characters.
-   &lt;: Requires that all letters that follow &lt; are lowercase letters. If an uppercase letter is typed, the system converts it to lowercase. Subsequent &lt; characters will toggle the lowercase functionality. For example, the mask*&lt;LL&lt;LL&lt;LL* will cause the lowercase to be turned off for the second *LL* characters, but then turned back on the third *LL* characters.
-   \\: Causes the next character to be displayed literally \(as it is\).
-   "": Causes the characters within the quotation marks to be displayed literally.

## Regular Expressions { .section}

You can use standard syntax for regular expressions in Acumatica ERP. For more information on regular expressions, see the [Microsoft Software Developer Network](https://msdn.microsoft.com/en-us/library/ae5bf541(v=vs.100).aspx).

## In This Chapter { .section}

|-   [Country, State, and Postal Code Validation](CS__con_CountryStatePostalCode_Validation.md)
-   [Examples of the Usage of Masks and Regular Expressions](CS__con_Examples_Mask_and_RegExp_Usage.md)

| |

-   **[Examples of the Usage of Masks and Regular Expressions](../UserGuide/CS__con_Examples_Mask_and_RegExp_Usage.md)**  

-   **[Country, State, and Postal Code Validation](../UserGuide/CS__con_CountryStatePostalCode_Validation.md)**  


