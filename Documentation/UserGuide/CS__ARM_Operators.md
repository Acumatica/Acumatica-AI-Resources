# Formula Operators {#_cb4ef681-d8ff-4c4b-ad85-e9501ad86f82 .concept}

You use operators to perform certain operations with the formula parameters or modify the data specified by the **Data Source** report parameter before the data is inserted in the report. You can add operator manually by typing them in the formula area or select them from the list of operators available in the formula editor.

There are several groups of operators in the formulas, as described in the following sections.

## Arithmetic Operators { .section}

Arithmetic operators perform common arithmetic operations with numeric values. The parameters of the arithmetic expressions are handled as the decimal values. The parameters of any other data type will be converted to the decimal type.

|Operator|Description and Examples|
|--------|------------------------|
|+ \(addition\)|Adds the value of one numeric expression to another or concatenates two strings.

 **Example:** `=A10+B10`

 Here, *A10* and *B10* are cell references. If the values in the cells are 12.85 and 2.25, the result of the expression would be 12.85 + 2.25 = 15.1.

|
|- \(subtraction\)|Subtracts the value of one numeric expression from another.

 **Example:** `=A20-B30`

 Here, *A20* and *B30* are cell references. If the values in the cells are 12.85 and 2.25, the result of the expression would be 12.85 - 2.25 = 10.6.

|
|\* \(multiplication\)|Multiplies the value of two expressions.

 **Example:** `=C10*D10`

 Here, *C10* and *D10* are cell references. ****If the values in the cells are 2.25 and 2, the example would evaluate to 2.25 \* 2 = 4.5.

|
|/ \(division\)|Divides the values of two expressions.

 **Example:** `=A10/C10`.

 Here, *A10* and *C10* are cell references. If the values in the cells are 4.0 and 2.0, the result of the expression would be 4.0 / 2.0 = 2.0.

|
|% \(Mod\)|Divides two numbers and returns only the remainder.

 **Example:** `=B15 % C15`

 Here, *B15* and *C15* are cell references. If the values in the cells are 15.0 and 6.0, the result of the expression would be 3.0.

|

## Logical Operators { .section}

The logical operators, described below, compare Boolean expressions and return a Boolean result.

|Operator|Description and Examples|
|--------|------------------------|
|And|Performs logical conjunction on two Boolean expressions. If both expressions evaluate to *True*, then the operator returns *True*; if at least one expression evaluates to *False*, *And* returns *False*.

 **Example:** `=(A10>0) And (C10>0)`

 In this example, *A10* and *C10* are cell references. If *A10* = 10 and *C10* = 20, then the expression would evaluate to *True*. Alternatively, if *A10* = -10 and *C10* = 20, the expression would evaluate to *False*.

|
|Or|Performs logical disjunction on two Boolean expressions. If either expression evaluates to *True*, the operation returns *True*; if neither expression evaluates to *True*, *Or* returns *False*.

 **Example:** `=(A10>0) Or (C10>0)`

 In this example, *A10* and *C10* are cell references. If *A10* = 10 and *C10* = 20, then the expression would evaluate to *True*. Alternatively, if *A10* = -10 and *C10* = -20, the expression would evaluate to *False*.

|
|Not|Performs logical negation on a Boolean expression, yielding the opposite of the expression it evaluates. If the expression evaluates to *True*, the operator yields *False*; alternatively, if the expression evaluates to *False*, *Not* yields *True*.

 **Example:** `=Not (A10>C10)`

 In this example, *A10* and *C10* are cell references. If *A10* is larger than *C10*, then the expression would evaluate to *False*. Alternatively, if *A10* is smaller than *C10*, the expression would evaluate to *True*.

|

## Comparison Operators { .section}

These operators, described below, compare two expressions and return a Boolean value that represents the result of the comparison.

|Operator|Description and Examples|
|--------|------------------------|
|=|Equality operator.

 **Example:**`=(A10=B10)`

 In this example, *A10* and *B10* are cell references. If the value in the *A10* cell is equal to the value in *B10*, then the expression evaluates to *True*; otherwise, the expression evaluates to *False*.

|
|&lt;&gt;|Inequality operator.

 **Example:** `=(C10<>A10)`

 \(where *A10* and *C10* are the links used as a formula parameters\)

 In this example, *A10* and *C10* are cell references. If the value in the *C10* cell is not equal to the value in *A10*, then the expression evaluates to *True*; otherwise, the expression evaluates to *False*.

|
|&lt;|The *less than* operator.

 **Example:** `=(@10<@12)` \(where @10 and @12 are the links to cells in the current column\)

 In this example, @10 and @12 are the links to cells in the current column. If the value in the @10 cell is less than the value in @12, then the expression evaluates to *True*; otherwise, the expression evaluates to *False*.

|
|&gt;|*Greater than* operator.

 **Example:** `=(C10>A10)` \(where *A10* and *C10* are the links used as a formula parameters\)

 In this example, *A10* and *C10* are cell references. If the value in the *C10* cell is greater than to the value in *A10*, then the expression evaluates to *True*; otherwise, the expression evaluates to *False*.

|
|&lt;=|The *less than or equal to* operator.

 **Example:** `=(C10<=A10)` \(where *A10* and *C10* are the links used as a formula parameters\)

 In this example, *A10* and *C10* are cell references. If the value in the *C10* cell is less than or equal to the value in *A10*, then the expression evaluates to *True*; otherwise, the expression evaluates to *False*.

|
|&gt;=|The *greater than or equal to* operator.

 **Example:** `=(A10>=C10)` \(where *A10* and *C10* are the links used as a formula parameters\)

 In this example, *A10* and *C10* are cell references. If the value in the *A10* cell is greater than or equal to the value in *C10*, then the expression evaluates to *True*; otherwise, the expression evaluates to *False*.

|

## Other Operators { .section}

This group includes the following operators.

|Operator|Description and Examples|
|--------|------------------------|
|In \(a binary operator\)|This operator is used in an elementary logical expression that evaluates the search results and returns *True* when the parameter matches one of the elements from the set of values.

 **Example**: `=(A20 In (10, 50, 57))` \(where *A20* is the link used as a formula parameter\)

|
|True \(a binary constant\)|This operator is used as a parameter in logical expressions.

 **Example**: `=((D30<A30)=True)` \(where *D30* is the link used as a formula parameter\)

|
|False \(a binary constant\)|This operator is used as a parameter in logical expressions.

 **Example:** `=((C10=E10)=False)` \(where *C10* and *E10* are the links to the data\)

|
|Null \(a value\)|This operator is used as a parameter in logical expressions.

 **Example:** `=(@20=Null)` \(where @20 is the cell in the current column and 10th row\)

|

**Parent topic:**[ARM Reference](../UserGuide/RP__Tools_ARM_Form_Reference.md)

