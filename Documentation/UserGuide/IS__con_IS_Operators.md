# Operators

Operators are used in formulas that you create on the [Formula Editor Dialog Box](SM__ref_IS_Formula_Editor_Dialog.md), which is called from the [Import Scenarios](SM_20_60_25.md) \(SM206025\) and [Export Scenarios](SM_20_70_25.md) \(SM207025\) forms.

To add operators to the formula, you can enter them directly in the Formula Text pane of the dialog box or select them from the list of formula components available within the dialog box. \(Select an operator type to view the list of operators of the type, and then select an operator.\) To specify the operands for operators, you can type them in the Formula Text pane or select them from the list of external or internal fields provided within the Formula Editor dialog box.

This article describes and provides examples of the operators you can use in formulas, broken down by operator type.

## Overview of Operators

There are two types of operators: unary and binary. Unary operators are applicable to only one operand, while binary operators require two operands.

In general, expressions are evaluated from left to right with the following order of precedence:

-   Logical Operators: `Not`, `And`, `Or`
-   Comparison Operators: =, &lt;&gt;, , &lt;=, &gt;=
-   Arithmetic Operators: -, \*, /, `Mod`, +, -

## Arithmetic Operators

Arithmetic operators, which are listed below, take numerical values as their operands and return a single numerical value.

<table><thead><tr><th>

Operator

</th><th>

Description and Example

</th></tr></thead><tbody><tr><td>

+

</td><td>

Adds the two operands and returns the result. If at least one operand is a string, this operator returns a concatenated string.

 **Example:** `=[Amount]+[Tax Amount]`

 In this example, the `[Amount]` and `[Tax Amount]` values are used as operands.

</td></tr><tr><td>

-

</td><td>

Subtracts the second operand from the first.

 **Example:** `=[Amount]-[Cash Discount]`

 In this example, the `[Amount]` and `[Cash Discount]` values act as operands.

</td></tr><tr><td>

\*

</td><td>

Multiplies the two operands.

 **Example:** `=[Chargeable Amount]*0.03`

 In this example, the `[Chargeable Amount]` value and the number 0.03 serve as operands.

</td></tr><tr><td>

/

</td><td>

Yields the quotient of the operands, which is the first operand divided by the second.

 **Example:** `=[Amount]/[Rate Reciprocal]`

 In this example, the `[Amount]` and `[Rate Reciprocal]` values are the first and second operands.

</td></tr><tr><td>

Mod \(Modulus\)

</td><td>

Divides the first integer operand by the second integer operand and returns the remainder, rounded to the nearest integer.

 **Example:** `=[Volume] Mod [Conversion Factor]`

 In this example, the `[Volume]` and `[Conversion Factor]` values are used as operands.

</td></tr></tbody>
</table>

## Logical operators

Logical operators evaluate one or two Boolean expressions and return a Boolean result \(`True` or `False`\). Because these operators evaluate only Boolean expressions, you must use elements whose only values are `True` and `False` \(typically check boxes and radio buttons\). The logical operators are listed below.

<table><thead><tr><th>

Operator

</th><th>

Description and Example

</th></tr></thead><tbody><tr><td>

And

</td><td>

Performs logical conjunction on two Boolean expressions: returns `True` if and only if both expressions evaluate to `True`; in other cases, returns `False`.

 **Example:** `=[Hold] And [Validate Control Totals on Entry]`

 In this example, the `[Hold]` and `[Validate Control Totals on Entry]` check boxes are used as operands.

</td></tr><tr><td>

Or

</td><td>

Performs logical disjunction on two Boolean expressions: returns `True` if at least one expression evaluates to `True`; returns `False` if neither expression evaluates to *True*.

 **Example:** `=[Hold] Or [Validate Control Totals on Entry]` In this example, the `[Hold]` and `[Validate Control Totals on Entry]` check boxes act as operands.

</td></tr><tr><td>

Not

</td><td>

Performs logical negation on a Boolean expression: returns `True` if and only if the operand is `False`. Logical negation is an unary operator.

 **Example:** `=Not [Hold Documents on Entry]`

 In this example, the `[Hold Documents on Entry]` check box is used as the single operand.

</td></tr></tbody>
</table>

## Comparison Operators

Comparison operators compare two expressions and return a Boolean value \(`True` or `False`\) that represents the result of the comparison. This group of operators includes the following operators.

<table><thead><tr><th>

Operator

</th><th>

Description and Example

</th></tr></thead><tbody><tr><td>

=

</td><td>

Returns `True` if operands are equal.

 **Example:** `=([Credit Total] = [Control Total])`

 In this example, the `[Credit Total]` and `[Control Total]` values are used as operands.

</td></tr><tr><td>

&lt;&gt;

</td><td>

Returns `True` if operands are not equal.

 **Example:** `=([Credit Total] <> [Debit Total])`

 In this example, the `[Credit Total]` and `[Debit Total]` values act as operands.

</td></tr><tr><td>

&lt;

</td><td>

Returns `True` if the first operand is less than the second one.

 **Example:** `=([DocDate] < [DueDate])`

 In this example, the `[DocDate]` and `[DueDate]` values act as operands.

</td></tr><tr><td>

&gt;

</td><td>

Returns `True` if the first operand is greater than the second one.

 **Example:** `=([CrLmt] > 1000])`

 In this example, the `[CrLmt]` value is used as the first operand, and the number 1000 acts as the second operand.

</td></tr><tr><td>

&lt;=

</td><td>

Returns `True` if the first operand is less than or equal to the second operand.

 **Example:** `=(([DueDate]-[CashDiscountDate]) <= [LeadTime])`

 In this example, `[DueDate] - [CashDiscountDate]` is the first operand, and the `[LeadTime]` value is used as the second operand.

</td></tr><tr><td>

&gt;=

</td><td>

Returns `True` if the first operand is greater than or equal to the second operand.

 **Example:** `=([Balance] => [Amount])`

 In this example, the `[Balance]` and `[Amount]` values are used as operands.

</td></tr></tbody>
</table>

## Other Operators

This miscellaneous group of operators includes the following operators and constants.

<table><thead><tr><th>

Operator

</th><th>

Description and Example

</th></tr></thead><tbody><tr><td>

In

</td><td>

An operator that returns `True` if the second operand \(a string\) contains the first operand \(which is also a string\).

 **Example:** `=('Inc.' In [Vendor Name])`

 In this example, the `[Vendor Name]` value is used as an operand, and the formula returns `True` if the name of the vendor contains Inc.

</td></tr><tr><td>

True

</td><td>

A binary constant used as an operand in logical expressions.

 **Example:** `=True`

</td></tr><tr><td>

False

</td><td>

A binary constant used as an operand in logical expressions.

 **Example:** `=False`

</td></tr><tr><td>

Null

</td><td>

A special value used as an operand in logical expressions; designates an undefined value.

 **Example:** `=Null`

</td></tr></tbody>
</table>

**Parent topic:**[Configuring Scenario Mapping](../UserGuide/IS__mng_Scenario_Mapping.md)

