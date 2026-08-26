# Traditional BQL and SQL Equivalents {#_5e4ecd15-69fc-4f39-9076-0adb7a928129 .concept}

The traditional business query language \(BQL\) library defines the following SQL function equivalents. Note that the use of the BQL equivalents may slightly differ from the use of the corresponding SQL functions. For details on each BQL class, see the API Reference.

|SQL|Traditional BQL|
|---|---------------|
|**Clauses**|
|`UNION`|Union|
|`UNION ALL`|UnionAll|
|`WHERE`|Where|
|`INNER JOIN`|InnerJoin|
|`LEFT JOIN`|LeftJoin|
|`RIGHT JOIN`|RightJoin|
|`FULL JOIN`|FullJoin|
|`CROSS JOIN`|CrossJoin|
|`ON`|On, On2|
|`ORDER BY`|OrderBy|
|`ASC`|Asc|
|`DESC`|Desc|
|`GROUP BY`|Aggregate, GroupBy|
|`HAVING`|Having|
|**Aggregation Functions**|
|`AVG`|Avg|
|`SUM`|Sum|
|`MIN`|Min|
|`MAX`|Max|
|`COUNT`|Count|
|`STRING_AGG` \(MSSQL\)

 `GROUP_CONCAT` \(MySQL\)

|AggConcat|
|**Functions**|
|`ISNULL`|IsNull&lt;Operand1, Operand2&gt;|
|`NULLIF`|NullIf|
|`ROUND`|Round|
|`SUBSTRING`|Substring|
|`CONCAT`|Add|
|`RTRIM`|RTrim|
|`REPLACE`|Replace|
|`DATEDIFF`|DateDiff|
|`CASE`|Switch, Case|
|**Arithmetic Operations**|
|`(Operand1 + Operand2)`|Add&lt;Operand1, Operand2&gt;|
|`(Operand1 - Operand2)`|Sub&lt;Operand1, Operand2&gt;|
|`(Operand1 * Operand2)`|Mult&lt;Operand1, Operand2&gt;|
|`(Operand1 / Operand2)`|Div&lt;Operand1, Operand2&gt;|
|`-Operand`|Minus&lt;Operand&gt;|
|`POWER(Operand1, Operand2)`|Power&lt;Operand1, Operand2&gt;|
|**Comparisons**|
|`=`|Equal|
|`<>`|NotEqual|
|`>`|Greater|
|`<`|Less|
|`<=`|LessEqual|
|`<=`|GreaterEqual|
|`LIKE`|Like|
|`NOT LIKE`|NotLike|
|`BETWEEN`|Between|
|`NOT BETWEEN`|NotBetween|
|`IS NULL`|IsNull|
|`IS NOT NULL`|IsNotNull|
|`IN`|In, In2, In3|
|`NOT IN`|NotIn, NotIn2|
|`EXISTS`|Exists \(The `Select` statement that is used with this function must only be applied to a read-only view.\)|
|**Logical Operators**|
|`AND`|And, And2|
|`OR`|Or, Or2|
|`NOT`|Not, Not2|
|**Constants**|
|`NULL`|Null|
|Other constants|Now, Today, Tomorrow, True, False, Zero, StringEmpty, MaxDate|
|**Full-Text Search Functions**|
|`FREETEXTTABLE`|FreeText|
|`CONTAINSTABLE`|Contains|

**Parent topic:**[Creating Traditional BQL Queries](../StudioDeveloperGuide/AD__mng_Traditional_BQL.md)

