# Fluent BQL and Traditional BQL Equivalents {#_67456943-7705-4522-9e0a-967251cc841c .concept}

The fluent business query language \(BQL\) library defines the equivalents of traditional BQL classes listed in the following tables.

## Data View Declarations { .section}

**Note:** All data views that contain aggregating are read-only.

|Fluent BQL|Traditional BQL|
|----------|---------------|
|SelectFrom&lt;&gt;.View|PXSelect&lt;&gt;|
|SelectFrom&lt;&gt;.View.ReadOnly|PXSelectReadonly&lt;&gt;|
|SelectFrom&lt;&gt;.OrderBy&lt;&gt;.View|PXSelectOrderBy&lt;,&gt;|
|SelectFrom&lt;&gt;.OrderBy&lt;&gt;.View.ReadOnly|PXSelectReadonly3&lt;,&gt;|
|SelectFrom&lt;&gt;.AggregateTo&lt;&gt;.View.ReadOnly|PXSelectGroupBy&lt;,&gt;|
|SelectFrom&lt;&gt;.AggregateTo&lt;&gt;.OrderBy&lt;&gt;.View.ReadOnly|PXSelectGroupByOrderBy&lt;,,&gt;|
|SelectFrom&lt;&gt;.Where&lt;&gt;.View|PXSelect&lt;,&gt;|
|SelectFrom&lt;&gt;.Where&lt;&gt;.View.ReadOnly|PXSelectReadonly&lt;,&gt;|
|SelectFrom&lt;&gt;.Where&lt;&gt;.OrderBy&lt;&gt;.View|PXSelect&lt;,,&gt;|
|SelectFrom&lt;&gt;.Where&lt;&gt;.OrderBy&lt;&gt;.View.ReadOnly|PXSelectReadonly&lt;,,&gt;|
|SelectFrom&lt;&gt;.Where&lt;&gt;.AggregateTo&lt;&gt;.View.ReadOnly|PXSelectGroupBy&lt;,,&gt;|
|SelectFrom&lt;&gt;.Where&lt;&gt;.AggregateTo&lt;&gt;.OrderBy&lt;&gt;.View.ReadOnly|PXSelectGroupBy&lt;,,,&gt;|
|SelectFrom&lt;&gt;.\[Joins\].View|PXSelectJoin&lt;,&gt;|
|SelectFrom&lt;&gt;.\[Joins\].View.ReadOnly|PXSelectReadonly2&lt;,&gt;|
|SelectFrom&lt;&gt;.\[Joins\].OrderBy&lt;&gt;.View|PXSelectJoinOrderBy&lt;,,&gt;|
|SelectFrom&lt;&gt;.\[Joins\].OrderBy&lt;&gt;.View.ReadOnly|PXSelectReadonly3&lt;,,&gt;|
|SelectFrom&lt;&gt;.\[Joins\].AggregateTo&lt;&gt;.View.ReadOnly|PXSelectJoinGroupBy&lt;,,&gt;|
|SelectFrom&lt;&gt;.\[Joins\].AggregateTo&lt;&gt;.OrderBy&lt;&gt;.View.ReadOnly|PXSelectGroupByOrderBy&lt;,,,&gt;|
|SelectFrom&lt;&gt;.\[Joins\].Where&lt;&gt;.View|PXSelectJoin&lt;,,&gt;|
|SelectFrom&lt;&gt;.\[Joins\].Where&lt;&gt;.View.ReadOnly|PXSelectReadonly2&lt;,,&gt;|
|SelectFrom&lt;&gt;.\[Joins\].Where&lt;&gt;.OrderBy&lt;&gt;.View|PXSelectJoin&lt;,,,&gt;|
|SelectFrom&lt;&gt;.\[Joins\].Where&lt;&gt;.OrderBy&lt;&gt;.View.ReadOnly|PXSelectReadonly2&lt;,,,&gt;|
|SelectFrom&lt;&gt;.\[Joins\].Where&lt;&gt;.AggregateTo&lt;&gt;.View.ReadOnly|PXSelectJoinGroupBy&lt;,,,&gt;|
|SelectFrom&lt;&gt;.\[Joins\].Where&lt;&gt;.AggregateTo&lt;&gt;.OrderBy&lt;&gt;.View.ReadOnly|PXSelectJoinGroupBy&lt;,,,,&gt;|

## Select Commands { .section}

|Fluent BQL|Traditional BQL|
|----------|---------------|
|SelectFrom&lt;&gt;|Select&lt;&gt;|
|SelectFrom&lt;&gt;.OrderBy&lt;&gt;|Select3&lt;,&gt;|
|SelectFrom&lt;&gt;.AggregateTo&lt;&gt;|Select4&lt;,&gt;|
|SelectFrom&lt;&gt;.AggregateTo&lt;&gt;.OrderBy&lt;&gt;|Select6&lt;,,&gt;|
|SelectFrom&lt;&gt;.Where&lt;&gt;|Select&lt;,&gt;|
|SelectFrom&lt;&gt;.Where&lt;&gt;.OrderBy&lt;&gt;|Select&lt;,,&gt;|
|SelectFrom&lt;&gt;.Where&lt;&gt;.AggregateTo&lt;&gt;|Select4&lt;,,&gt;|
|SelectFrom&lt;&gt;.Where&lt;&gt;.AggregateTo&lt;&gt;.OrderBy&lt;&gt;|Select4&lt;,,,&gt;|
|SelectFrom&lt;&gt;.\[Joins\]|Select2&lt;,&gt;|
|SelectFrom&lt;&gt;.\[Joins\].OrderBy&lt;&gt;|Select3&lt;,,&gt;|
|SelectFrom&lt;&gt;.\[Joins\].AggregateTo&lt;&gt;|Select5&lt;,,&gt;|
|SelectFrom&lt;&gt;.\[Joins\].AggregateTo&lt;&gt;.OrderBy&lt;&gt;|Select6&lt;,,,&gt;|
|SelectFrom&lt;&gt;.\[Joins\].Where&lt;&gt;|Select2&lt;,,&gt;|
|SelectFrom&lt;&gt;.\[Joins\].Where&lt;&gt;.OrderBy&lt;&gt;|Select2&lt;,,,&gt;|
|SelectFrom&lt;&gt;.\[Joins\].Where&lt;&gt;.AggregateTo&lt;&gt;|Select5&lt;,,,&gt;|
|SelectFrom&lt;&gt;.\[Joins\].Where&lt;&gt;.AggregateTo&lt;&gt;.OrderBy&lt;&gt;|Select5&lt;,,,,&gt;|
|N/A|MappedSelect&lt;Table,From,Join,Where,Aggregate,OrderBy&gt;|

## Search Commands { .section}

|Fluent BQL|Traditional BQL|
|----------|---------------|
|SelectFrom&lt;&gt;.SearchFor&lt;&gt;|Search&lt;&gt;|
|SelectFrom&lt;&gt;.OrderBy&lt;&gt;.SearchFor&lt;&gt;|Search3&lt;,&gt;|
|SelectFrom&lt;&gt;.AggregateTo&lt;&gt;.SearchFor&lt;&gt;|Search4&lt;,&gt;|
|SelectFrom&lt;&gt;.AggregateTo&lt;&gt;.OrderBy&lt;&gt;.SearchFor&lt;&gt;|Search6&lt;,,&gt;|
|SelectFrom&lt;&gt;.Where&lt;&gt;.SearchFor&lt;&gt;|Search&lt;,&gt;|
|SelectFrom&lt;&gt;.Where&lt;&gt;.OrderBy&lt;&gt;.SearchFor&lt;&gt;|Search&lt;,,&gt;|
|SelectFrom&lt;&gt;.Where&lt;&gt;.AggregateTo&lt;&gt;.SearchFor&lt;&gt;|Search4&lt;,,&gt;|
|SelectFrom&lt;&gt;.Where&lt;&gt;.AggregateTo&lt;&gt;.OrderBy&lt;&gt;.SearchFor&lt;&gt;|Search4&lt;,,,&gt;|
|SelectFrom&lt;&gt;.\[Joins\].SearchFor&lt;&gt;|Search2&lt;,&gt;|
|SelectFrom&lt;&gt;.\[Joins\].OrderBy&lt;&gt;.SearchFor&lt;&gt;|Search3&lt;,,&gt;|
|SelectFrom&lt;&gt;.\[Joins\].AggregateTo&lt;&gt;.SearchFor&lt;&gt;|Search5&lt;,,&gt;|
|SelectFrom&lt;&gt;.\[Joins\].AggregateTo&lt;&gt;.OrderBy&lt;&gt;.SearchFor&lt;&gt;|Search6&lt;,,,&gt;|
|SelectFrom&lt;&gt;.\[Joins\].Where&lt;&gt;.SearchFor&lt;&gt;|Search2&lt;,,&gt;|
|SelectFrom&lt;&gt;.\[Joins\].Where&lt;&gt;.OrderBy&lt;&gt;.SearchFor&lt;&gt;|Search2&lt;,,,&gt;|
|SelectFrom&lt;&gt;.\[Joins\].Where&lt;&gt;.AggregateTo&lt;&gt;.SearchFor&lt;&gt;|Search5&lt;,,,&gt;|
|SelectFrom&lt;&gt;.\[Joins\].Where&lt;&gt;.AggregateTo&lt;&gt;.OrderBy&lt;&gt;.SearchFor&lt;&gt;|Search5&lt;,,,,&gt;|

## Join and Union Clauses { .section}

|Fluent BQL|Traditional BQL|
|----------|---------------|
|.InnerJoin&lt;Table&gt;.On&lt;&gt;|InnerJoin&lt;Table,On&gt;|
|.InnerJoin&lt;Table&gt;.On&lt;&gt;.NextJoin|InnerJoin&lt;Table,On,NextJoin&gt;|
|.InnerJoin&lt;Table&gt;.On&lt;&gt;.SingleTableOnly|InnerJoinSingleTable&lt;Table,On&gt;|
|.InnerJoin&lt;Table&gt;.On&lt;&gt;.SingleTableOnly.NextJoin|InnerJoinSingleTable&lt;Table,On,NextJoin&gt;|
|.LeftJoin&lt;Table&gt;.On&lt;&gt;|LeftJoin&lt;Table,On&gt;|
|.LeftJoin&lt;Table&gt;.On&lt;&gt;.NextJoin|LeftJoin&lt;Table,On,NextJoin&gt;|
|.LeftJoin&lt;Table&gt;.On&lt;&gt;.SingleTableOnly|LeftJoinSingleTable&lt;Table,On&gt;|
|.LeftJoin&lt;Table&gt;.On&lt;&gt;.SingleTableOnly.NextJoin|LeftJoinSingleTable&lt;Table,On,NextJoin&gt;|
|.RightJoin&lt;Table&gt;.On&lt;&gt;|RightJoin&lt;Table,On&gt;|
|.RightJoin&lt;Table&gt;.On&lt;&gt;.NextJoin|RightJoin&lt;Table,On,NextJoin&gt;|
|.RightJoin&lt;Table&gt;.On&lt;&gt;.SingleTableOnly|RightJoinSingleTable&lt;Table,On&gt;|
|.RightJoin&lt;Table&gt;.On&lt;&gt;.SingleTableOnly.NextJoin|RightJoinSingleTable&lt;Table,On,NextJoin&gt;|
|.FullJoin&lt;Table&gt;.On&lt;&gt;|FullJoin&lt;Table,On&gt;|
|.FullJoin&lt;Table&gt;.On&lt;&gt;.NextJoin|FullJoin&lt;Table,On,NextJoin&gt;|
|.FullJoin&lt;Table&gt;.On&lt;&gt;.SingleTableOnly|FullJoinSingleTable&lt;Table,On&gt;|
|.FullJoin&lt;Table&gt;.On&lt;&gt;.SingleTableOnly.NextJoin|FullJoinSingleTable&lt;Table,On,NextJoin&gt;|
|.CrossJoin&lt;Table&gt;|CrossJoin&lt;Table&gt;|
|.CrossJoin&lt;Table&gt;.NextJoin|CrossJoin&lt;Table,NextJoin&gt;|
|.CrossJoin&lt;Table&gt;.SingleTableOnly|CrossJoinSingleTable&lt;Table&gt;|
|.CrossJoin&lt;Table&gt;.SingleTableOnly.NextJoin|CrossJoinSingleTable&lt;Table,NextJoin&gt;|
|N/A|Union&lt;TableMap&gt;|
|N/A|Union&lt;TableMap,NextUnion&gt;|
|N/A|UnionAll&lt;TableMap&gt;|
|N/A|UnionAll&lt;TableMap,NextUnion&gt;|

## Where Clause { .section}

|Fluent BQL|Traditional BQL|
|----------|---------------|
|.Where&lt;UnaryOperator&gt;|Where&lt;UnaryOperator&gt;|
|.Where&lt;Operand.Comparison&gt;|Where&lt;Operand,Comparison&gt;|
|.Where&lt;Operand.Comparison.NextOperator&gt;|Where&lt;Operand,Comparison,NextOperator&gt;|
|.Where&lt;UnaryOperator.NextOperator&gt;|Where2&lt;UnaryOperator,NextOperator&gt;|

## Aggregate Clause { .section}

|Fluent BQL|Traditional BQL|
|----------|---------------|
|.AggregateTo&lt;Function&gt;|Aggregate&lt;Function&gt;|
|.AggregateTo&lt;TFunctions&gt;.THaving|Aggregate&lt;TFunctions,THaving&gt;|
|.Having&lt;TCondition&gt;|Having&lt;TCondition&gt;|
|GroupBy&lt;Field&gt;|GroupBy&lt;Field&gt;|
|GroupBy&lt;Field&gt;, NextAggregate|GroupBy&lt;Field,NextAggregate&gt;|
|Max&lt;Field&gt;|Max&lt;Field&gt;|
|Max&lt;Field&gt;, NextAggregate|Max&lt;Field,NextAggregate&gt;|
|Min&lt;Field&gt;|Min&lt;Field&gt;|
|Min&lt;Field&gt;, NextAggregate|Min&lt;Field,NextAggregate&gt;|
|Sum&lt;Field&gt;|Sum&lt;Field&gt;|
|Sum&lt;Field&gt;, NextAggregate|Sum&lt;Field,NextAggregate&gt;|
|Avg&lt;Field&gt;|Avg&lt;Field&gt;|
|Avg&lt;Field&gt;, NextAggregate|Avg&lt;Field,NextAggregate&gt;|
|Count|Count|
|Count&lt;Field&gt;|Count&lt;Field&gt;|

## OrderBy Clause { .section}

|Fluent BQL|Traditional BQL|
|----------|---------------|
|.OrderBy&lt;List&gt;|OrderBy&lt;List&gt;|
|Field.Asc|Asc&lt;Field&gt;|
|Field.Asc, NextSort|Asc&lt;Field,NextSort&gt;|
|Field.Desc|Desc&lt;Field&gt;|
|Field.Desc, NextSort|Desc&lt;Field,NextSort&gt;|

## Parameters { .section}

|Fluent BQL|Traditional BQL|
|----------|---------------|
|Field.FromCurrent|Current&lt;Field&gt;|
|Field.FromCurrent.NoDefault|Current2&lt;Field&gt;|
|Field.AsOptional|Optional&lt;Field&gt;|
|Field.AsOptional.NoDefault|Optional2&lt;Field&gt;|
|@P.AsBool|Required&lt;Field&gt;, where the property field of Field has the `bool` type|
|@P.AsByte|Required&lt;Field&gt;, where the property field of Field has the `byte` type|
|@P.AsShort|Required&lt;Field&gt;, where the property field of Field has the `short` type|
|@P.AsInt|Required&lt;Field&gt;, where the property field of Field has the `int` type|
|@P.AsLong|Required&lt;Field&gt;, where the property field of Field has the `long` type|
|@P.AsFloat|Required&lt;Field&gt;, where the property field of Field has the `float` type|
|@P.AsDouble|Required&lt;Field&gt;, where the property field of Field has the `double` type|
|@P.AsDecimal|Required&lt;Field&gt;, where the property field of Field has the `decimal` type|
|@P.AsGuid|Required&lt;Field&gt;, where the property field of Field has the `Guid` type|
|@P.AsDateTime|Required&lt;Field&gt;, where the property field of Field has the `DateTime` type|
|@P.AsString|Required&lt;Field&gt;, where the property field of Field has the `string` type|
|Argument.AsBool|Argument&lt;bool?&gt;|
|Argument.AsByte|Argument&lt;byte?&gt;|
|Argument.AsShort|Argument&lt;short?&gt;|
|Argument.AsInt|Argument&lt;int?&gt;|
|Argument.AsLong|Argument&lt;long?&gt;|
|Argument.AsFloat|Argument&lt;float?&gt;|
|Argument.AsDouble|Argument&lt;double?&gt;|
|Argument.AsDecimal|Argument&lt;decimal?&gt;|
|Argument.AsGuid|Argument&lt;Guid?&gt;|
|Argument.AsDateTime|Argument&lt;DateTime?&gt;|
|Argument.AsString|Argument&lt;string&gt;|

## Logical Operators and Brackets { .section}

|Fluent BQL|Traditional BQL|
|----------|---------------|
|And&lt;UnaryOperator&gt;|And&lt;UnaryOperator&gt;|
|And&lt;Operand.Comparison&gt;|And&lt;Operand,Comparison&gt;|
|And&lt;Operand.Comparison&gt;.NextOperator|And&lt;Operand,Comparison,NextOperator&gt;|
|And&lt;UnaryOperator.NextOperator&gt;|And2&lt;UnaryOperator,NextOperator&gt;|
|Or&lt;UnaryOperator&gt;|Or&lt;UnaryOperator&gt;|
|Or&lt;Operand.Comparison&gt;|Or&lt;Operand,Comparison&gt;|
|Or&lt;Operand.Comparison&gt;.NextOperator|Or&lt;Operand,Comparison,NextOperator&gt;|
|Or&lt;UnaryOperator.NextOperator&gt;|Or2&lt;UnaryOperator,NextOperator&gt;|
|Not&lt;UnaryOperator&gt;|Not&lt;UnaryOperator&gt;|
|Not&lt;Operand.Comparison&gt;|Not&lt;Operand,Comparison&gt;|
|Not&lt;Operand.Comparison.NextOperator&gt;|Not&lt;Operand,Comparison,NextOperator&gt;|
|Not&lt;UnaryOperator.NextOperator&gt;|Not2&lt;UnaryOperator,NextOperator&gt;|
|Brackets&lt;UnaryOperator&gt;|Where&lt;UnaryOperator&gt;|
|Brackets&lt;Operand.Comparison&gt;|Where&lt;Operand,Comparison&gt;|
|Brackets&lt;Operand.Comparison.NextOperator&gt;|Where&lt;Operand,Comparison,NextOperator&gt;|
|Brackets&lt;UnaryOperator.NextOperator&gt;|Where2&lt;UnaryOperator,NextOperator&gt;|

## Comparisons { .section}

|Fluent BQL|Traditional BQL|
|----------|---------------|
|Table.field.IsEqual&lt;TOperand&gt;|&lt;Table.field, Equal&lt;TOperand&gt;&gt;|
|Table.field.IsNotEqual&lt;TOperand&gt;|&lt;Table.field, NotEqual&lt;TOperand&gt;&gt;|
|Table.field.IsGreaterEqual&lt;TOperand&gt;|&lt;Table.field, GreaterEqual&lt;TOperand&gt;&gt;|
|Table.field.IsGreater&lt;TOperand&gt;|&lt;Table.field, Greater&lt;TOperand&gt;&gt;|
|Table.field.IsLessEqual&lt;TOperand&gt;|&lt;Table.field, LessEqual&lt;TOperand&gt;&gt;|
|Table.field.IsLess&lt;TOperand&gt;|&lt;Table.field, Less&lt;TOperand&gt;&gt;|
|Table.field.IsLike&lt;TOperand&gt;|&lt;Table.field, Like&lt;TOperand&gt;&gt;|
|Table.field.IsNotLike&lt;TOperand&gt;|&lt;Table.field, NotLike&lt;TOperand&gt;&gt;|
|Table.field.IsBetween&lt;TOperand&gt;|&lt;Table.field, Between&lt;TOperand&gt;&gt;|
|Table.field.IsNotBetween&lt;TOperand&gt;|&lt;Table.field, NotBetween&lt;TOperand&gt;&gt;|
|Table.field.IsNull|&lt;Table.field, IsNull&lt;TOperand&gt;&gt;|
|Table.field.IsNotNull|&lt;Table.field, IsNotNull&lt;TOperand&gt;&gt;|
|Table.field.IsIn&lt;TOperand&gt;|&lt;Table.field, In&lt;TOperand&gt;&gt;|
|Table.field.IsNotIn&lt;TOperand&gt;|&lt;Table.field, NotIn&lt;TOperand&gt;&gt;|
|Table.field.IsInSubselect&lt;TSearch&gt;|&lt;Table.field, In2&lt;TSearch&gt;&gt;|
|Table.field.IsNotInSubselect&lt;TSearch&gt;|&lt;Table.field, NotIn2&lt;TSearch&gt;&gt;|
|Table.field.IsIn&lt;TConst1, ..., TConstN&gt;|&lt;Table.field, In3&lt;TConst1, ..., TConstN&gt;&gt;|
|Table.field.IsNotIn&lt;TConst1, ..., TConstN&gt;|&lt;Table.field, NotIn3&lt;TConst1, ..., TConstN&gt;&gt;|

## Case, When, Then, and Else Operators { .section}

|Fluent BQL|Traditional BQL|
|----------|---------------|
|Operand1.When&lt;Condition1&gt;.Else&lt;Operand2&gt;.When&lt;Condition2&gt;.\[...\]|Switch&lt;Cases&gt;|
|Operand1.When&lt;Condition1&gt;.\[...\].Else&lt;Default&gt;|Switch&lt;Cases,Default&gt;|
|Operand.When&lt;Condition&gt;|Case&lt;Condition,Operand&gt;|
|Operand.When&lt;Condition&gt;.Else&lt;Operand2&gt;.When&lt;Condition2&gt;.\[...\]|Case&lt;Condition,Operand,NextCase&gt;|

## Arithmetic Operations and Operations with Strings and Dates { .section}

|Fluent BQL|Traditional BQL|
|----------|---------------|
|Op1.Add&lt;Op2&gt;|Add&lt;Op1, Op2&gt;|
|Op1.Subtract&lt;Op2&gt;|Sub&lt;Op1, Op2&gt;|
|Op1.Multiply&lt;Op2&gt;|Mult&lt;Op1, Op2&gt;|
|Op1.Divide&lt;Op2&gt;|Div&lt;Op1, Op2&gt;|
|Op1.Concat&lt;Op2&gt;|Concat&lt;Op1, Op2&gt;|
|Op1.IfNullThen&lt;Op2&gt;|IsNull&lt;Op1, Op2&gt;|
|Op1.NullIf&lt;Op2&gt;|NullIf&lt;Op1, Op2&gt;|
|Date1.Diff&lt;Date2&gt;.Years|DateDiff&lt;Date1, Date2, DateDiff.year&gt;|
|Date1.Diff&lt;Date2&gt;.Quarters|DateDiff&lt;Date1, Date2, DateDiff.quarter&gt;|
|Date1.Diff&lt;Date2&gt;.Months|DateDiff&lt;Date1, Date2, DateDiff.month&gt;|
|Date1.Diff&lt;Date2&gt;.Weeks|DateDiff&lt;Date1, Date2, DateDiff.week&gt;|
|Date1.Diff&lt;Date2&gt;.Days|DateDiff&lt;Date1, Date2, DateDiff.day&gt;|
|Date1.Diff&lt;Date2&gt;.Hours|DateDiff&lt;Date1, Date2, DateDiff.hour&gt;|
|Date1.Diff&lt;Date2&gt;.Minutes|DateDiff&lt;Date1, Date2, DateDiff.minute&gt;|
|Date1.Diff&lt;Date2&gt;.Seconds|DateDiff&lt;Date1, Date2, DateDiff.second&gt;|
|Date1.Diff&lt;Date2&gt;.Milliseconds|DateDiff&lt;Date1, Date2, DateDiff.millisecond&gt;|
|DatePart&lt;Date&gt;.Year|DatePart&lt;DatePart.year, Date&gt;|
|DatePart&lt;Date&gt;.Quarter|DatePart&lt;DatePart.quarter, Date&gt;|
|DatePart&lt;Date&gt;.Month|DatePart&lt;DatePart.month, Date&gt;|
|DatePart&lt;Date&gt;.Week|DatePart&lt;DatePart.week, Date&gt;|
|DatePart&lt;Date&gt;.WeekDay|DatePart&lt;DatePart.weekDay, Date&gt;|
|DatePart&lt;Date&gt;.Day|DatePart&lt;DatePart.day, Date&gt;|
|DatePart&lt;Date&gt;.DayOfYear|DatePart&lt;DatePart.dayOfYear, Date&gt;|
|DatePart&lt;Date&gt;.Hour|DatePart&lt;DatePart.hour, Date&gt;|
|DatePart&lt;Date&gt;.Minute|DatePart&lt;DatePart.minute, Date&gt;|
|DatePart&lt;Date&gt;.Second|DatePart&lt;DatePart.second, Date&gt;|

**Parent topic:**[Querying Data in Acumatica Framework](../StudioDeveloperGuide/AD__mng_Querying_Data.md)

