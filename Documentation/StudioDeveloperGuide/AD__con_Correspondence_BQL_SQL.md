# Traditional BQL and SQL Equivalents

The traditional business query language \(BQL\) library defines the following SQL function equivalents. Note that the use of the BQL equivalents may slightly differ from the use of the corresponding SQL functions. For details on each BQL class, see the API Reference.

<table id="_43e80f78-d9da-43b1-8aec-dde8ecbf5a50"><thead><tr><th>

SQL

</th><th>

Traditional BQL

</th></tr></thead><tbody><tr><td colspan="2">

**Clauses**

</td></tr><tr><td>

`UNION`

</td><td>

Union

</td></tr><tr><td>

`UNION ALL`

</td><td>

UnionAll

</td></tr><tr><td>

`WHERE`

</td><td>

Where

</td></tr><tr><td>

`INNER JOIN`

</td><td>

InnerJoin

</td></tr><tr><td>

`LEFT JOIN`

</td><td>

LeftJoin

</td></tr><tr><td>

`RIGHT JOIN`

</td><td>

RightJoin

</td></tr><tr><td>

`FULL JOIN`

</td><td>

FullJoin

</td></tr><tr><td>

`CROSS JOIN`

</td><td>

CrossJoin

</td></tr><tr><td>

`ON`

</td><td>

On, On2

</td></tr><tr><td>

`ORDER BY`

</td><td>

OrderBy

</td></tr><tr><td>

`ASC`

</td><td>

Asc

</td></tr><tr><td>

`DESC`

</td><td>

Desc

</td></tr><tr><td>

`GROUP BY`

</td><td>

Aggregate, GroupBy

</td></tr><tr><td>

`HAVING`

</td><td>

Having

</td></tr><tr><td colspan="2">

**Aggregation Functions**

</td></tr><tr><td>

`AVG`

</td><td>

Avg

</td></tr><tr><td>

`SUM`

</td><td>

Sum

</td></tr><tr><td>

`MIN`

</td><td>

Min

</td></tr><tr><td>

`MAX`

</td><td>

Max

</td></tr><tr><td>

`COUNT`

</td><td>

Count

</td></tr><tr><td>

`STRING_AGG` \(MSSQL\)

 `GROUP_CONCAT` \(MySQL\)

</td><td>

AggConcat

</td></tr><tr><td colspan="2">

**Functions**

</td></tr><tr><td>

`ISNULL`

</td><td>

IsNull&lt;Operand1, Operand2&gt;

</td></tr><tr><td>

`NULLIF`

</td><td>

NullIf

</td></tr><tr><td>

`ROUND`

</td><td>

Round

</td></tr><tr><td>

`SUBSTRING`

</td><td>

Substring

</td></tr><tr><td>

`CONCAT`

</td><td>

Add

</td></tr><tr><td>

`RTRIM`

</td><td>

RTrim

</td></tr><tr><td>

`REPLACE`

</td><td>

Replace

</td></tr><tr><td>

`DATEDIFF`

</td><td>

DateDiff

</td></tr><tr><td>

`CASE`

</td><td>

Switch, Case

</td></tr><tr><td colspan="2">

**Arithmetic Operations**

</td></tr><tr><td>

`(Operand1 + Operand2)`

</td><td>

Add&lt;Operand1, Operand2&gt;

</td></tr><tr><td>

`(Operand1 - Operand2)`

</td><td>

Sub&lt;Operand1, Operand2&gt;

</td></tr><tr><td>

`(Operand1 * Operand2)`

</td><td>

Mult&lt;Operand1, Operand2&gt;

</td></tr><tr><td>

`(Operand1 / Operand2)`

</td><td>

Div&lt;Operand1, Operand2&gt;

</td></tr><tr><td>

`-Operand`

</td><td>

Minus&lt;Operand&gt;

</td></tr><tr><td>

`POWER(Operand1, Operand2)`

</td><td>

Power&lt;Operand1, Operand2&gt;

</td></tr><tr><td colspan="2">

**Comparisons**

</td></tr><tr><td>

`=`

</td><td>

Equal

</td></tr><tr><td>

`<>`

</td><td>

NotEqual

</td></tr><tr><td>

`>`

</td><td>

Greater

</td></tr><tr><td>

`<`

</td><td>

Less

</td></tr><tr><td>

`<=`

</td><td>

LessEqual

</td></tr><tr><td>

`<=`

</td><td>

GreaterEqual

</td></tr><tr><td>

`LIKE`

</td><td>

Like

</td></tr><tr><td>

`NOT LIKE`

</td><td>

NotLike

</td></tr><tr><td>

`BETWEEN`

</td><td>

Between

</td></tr><tr><td>

`NOT BETWEEN`

</td><td>

NotBetween

</td></tr><tr><td>

`IS NULL`

</td><td>

IsNull

</td></tr><tr><td>

`IS NOT NULL`

</td><td>

IsNotNull

</td></tr><tr><td>

`IN`

</td><td>

In, In2, In3

</td></tr><tr><td>

`NOT IN`

</td><td>

NotIn, NotIn2

</td></tr><tr><td>

`EXISTS`

</td><td>

Exists \(The `Select` statement that is used with this function must only be applied to a read-only view.\)

</td></tr><tr><td colspan="2">

**Logical Operators**

</td></tr><tr><td>

`AND`

</td><td>

And, And2

</td></tr><tr><td>

`OR`

</td><td>

Or, Or2

</td></tr><tr><td>

`NOT`

</td><td>

Not, Not2

</td></tr><tr><td colspan="2">

**Constants**

</td></tr><tr><td>

`NULL`

</td><td>

Null

</td></tr><tr><td>

Other constants

</td><td>

Now, Today, Tomorrow, True, False, Zero, StringEmpty, MaxDate

</td></tr><tr><td colspan="2">

**Full-Text Search Functions**

</td></tr><tr><td>

`FREETEXTTABLE`

</td><td>

FreeText

</td></tr><tr><td>

`CONTAINSTABLE`

</td><td>

Contains

</td></tr></tbody>
</table>

**Parent topic:**[Creating Traditional BQL Queries](../StudioDeveloperGuide/AD__mng_Traditional_BQL.md)

