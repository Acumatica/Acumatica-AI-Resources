# Constants in Fluent BQL {#_84837158-8b2f-4f18-b51d-4c89bc165dc4 .concept}

You can use predefined constants \(such as integer Zero, datetime Now, Today, and MaxDate, string StringEmpty, and the Boolean values True and False\) in fluent BQL queries without any changes.

If you need to use a custom constant in a fluent BQL query, you define this constant by using the class that corresponds to the C\# type of the constant. The following table lists the constant classes that correspond to C\# types.

|C\# Type|Fluent BQL Type|
|--------|---------------|
|`bool`|BqlBool.Constant&lt;TSelf&gt;|
|`byte`|BqlByte.Constant&lt;TSelf&gt;|
|`short`|BqlShort.Constant&lt;TSelf&gt;|
|`int`|BqlInt.Constant&lt;TSelf&gt;|
|`long`|BqlLong.Constant&lt;TSelf&gt;|
|`float`|BqlFloat.Constant&lt;TSelf&gt;|
|`double`|BqlDouble.Constant&lt;TSelf&gt;|
|`decimal`|BqlDecimal.Constant&lt;TSelf&gt;|
|`Guid`|BqlGuid.Constant&lt;TSelf&gt;|
|`DateTime`|BqlDateTime.Constant&lt;TSelf&gt;|
|`String`|BqlString.Constant&lt;TSelf&gt;|

The following code shows an example of the `decimal_0` constant declaration.

```language-csharp
public class decimal_0() : 
 PX.Data.BQL.BqlDecimal.Constant<decimal_0>(0m);
```

**Tip:** The code example above uses the primary constructor syntax that was introduced in C\# Version 12, which calls the base constructor \(`0m` in this case\) directly and eliminates the need to define an explicit constructor body.

## Simultaneous Use of Constants in Fluent BQL and Traditional BQL { .section}

The predefined constants and the constants defined as described in the previous section can be used in traditional BQL without any changes.

The constants defined in the traditional BQL style \(that is, derived from the Constant&lt;Type&gt; class\) can be used in the fluent BQL queries if you wrap these constants in the Use&lt;&gt;.As\[Type\] class, where `[Type]` is one of the following: `Bool`, `Byte`, `Short`, `Int`, `Long`, `Float`, `Double`, `Decimal`, `Guid`, `DateTime`, or `String`.

The following code shows the declaration of the `decimal_0` constant in traditional BQL style and its use in a fluent BQL comparison.

```language-csharp
public class decimal_0() : Constant<Decimal>(0m);

SelectFrom<Table>.
    Where<Table.decimalField.AsDecimal.IsEqual<Use<decimal_0>.AsDecimal>>.
    View records;
```

**Tip:** The code example above uses the primary constructor syntax that was introduced in C\# Version 12, which calls the base constructor \(`0m` in this case\) directly and eliminates the need to define an explicit constructor body.

Although the constants in the traditional BQL style can be used in fluent BQL queries, we recommend that you use the fluent BQL style of constant declaration for simplicity.

**Parent topic:**[Creating Fluent BQL Queries](../StudioDeveloperGuide/AD__mng_Fluent_BQL.md)

