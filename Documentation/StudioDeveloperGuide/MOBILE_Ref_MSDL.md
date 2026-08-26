# MSDL {#_0d4f5b50-7959-4532-8b0e-6352d2a8ee84 .concept}

Mobile Site Map Definition Language \(MSDL\) can be used for the following purposes:

-   To change the mobile site map
-   To create the content for the empty mobile site map

MSDL includes the following regulations and recommendations:

-   Instruction names are not case sensitive. For example, you can enter the add instruction as *Add*, *ADD*, or *aDD*.
-   Each instruction must be written in a new line of MSDL code.
-   You can use any number of spaces before an instruction in a line of code.
-   If an instruction is located inside braces, this instruction is executed in the context of the object of the instruction that contains the opening bracket.
-   An instruction can contain multiple nested instructions within braces.
-   To specify or update the value of an attribute of an object in the mobile site map, add the attribute assignment within braces for the instruction for the object, as shown in the following code.

    ```
        add recordAction "EditDetail" {
          behavior = Open
        }
    ```

-   An instruction can contain multiple assignment commands within braces.
-   Braces for an instruction can be placed on the same line after the instruction or on the next line, as shown in the following code.

    ```
        add field "Date" {
          ...
        }
        add field "Description"
        {
          ...
        }
    
    ```

-   You can omit the space before and after braces, as the following example shows.

    ```
    add item "EP301010"{
      displayName = "Expense Receipts"}
    ```

-   A comment starts with the *\#* symbol and is considered finished at the end of the line.

    ```
    # this is a comment
    ```


This section contains detailed information about the following elements of MSDL:

-   [Object Types](MOBILE_Ref_MSDL_ObjTypes.md)
-   [Constants](MOBILE_Ref_MSDL_Constants.md)
-   [Instructions](MOBILE_Ref_MSDL_Instructions.md)
-   [Error Messages](MOBILE_Ref_MSDL_Errors.md)

-   **[Object Types](../StudioDeveloperGuide/MOBILE_Ref_MSDL_ObjTypes.md)**  

-   **[Constants](../StudioDeveloperGuide/MOBILE_Ref_MSDL_Constants.md)**  

-   **[Instructions](../StudioDeveloperGuide/MOBILE_Ref_MSDL_Instructions.md)**  

-   **[Error Messages](../StudioDeveloperGuide/MOBILE_Ref_MSDL_Errors.md)**  


**Parent topic:**[Mobile Site Map Reference](../StudioDeveloperGuide/MOBILE_Reference.md)

