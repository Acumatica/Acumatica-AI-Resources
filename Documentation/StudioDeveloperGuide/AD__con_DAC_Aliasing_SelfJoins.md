# DAC Aliasing and Self-Joins {#_8c949bdd-50d1-4d74-9e36-1565ea9a8591 .concept}

In relational databases, you implement a self-join by assigning multiple aliases to the same table in a query.

In Acumatica Framework, you achieve similar behavior by using data access class \(DAC\) aliasing. Because the framework's object-relational mapping system maps DACs to database tables at the type level, aliasing is implemented through Common Language Runtime \(CLR\) types rather than query syntax.

In this topic, you will learn:

-   The two approaches to DAC aliasing in Acumatica Framework
-   How each approach works internally
-   The business query language \(BQL\) field declaration requirements for both approaches
-   How to implement a self-join by using each approach
-   How alias DACs improve performance

## Approaches to DAC Aliasing { .section}

In Acumatica Framework, you can create a DAC alias by using the following approaches:

-   Type name–based DAC aliasing \(redeclaration in a different namespace\)
-   Inheritance-based DAC aliasing \(derived DAC types\)

Both of these approaches are described in the following sections.

## DAC Aliasing Based on Type Name { .section}

In this approach, you:

-   Declare a new DAC class with the **same class name** as the original DAC. The new class must inherit from PX.Data.PXBqlTable and implement the PX.Data.IBqlTable interface.
-   Place it in a **different namespace**.
-   Map it to the same physical database table.
-   Use both type names in the same BQL query.

This approach works because when Acumatica Framework maps a DAC to a database table, it uses the **type name only**. The database table is determined by the type name of the class that implements the PX.Data.IBqlTable interface. The namespace is ignored during table mapping. Because of this behavior, two DAC classes with the same class name declared in different namespaces map to the same physical database table. This mechanism allows you to join a DAC to itself.

**BQL Field Declaration Requirements**

When you base DAC aliasing on the type name, you declare a completely separate DAC type. Therefore, in the alias DAC, you must declare:

-   All key fields
-   All fields referenced in the BQL query
-   The corresponding nested BQL field classes for those fields

The BQL composer resolves fields by the DAC type and its nested abstract BQL field classes. It doesn’t reuse field declarations from the original DAC.

For example, suppose that your self-join query references the following field.

```language-csharp
PX.Objects.IN.Aliases.InventoryItem.inventoryID
```

Then the alias DAC must declare the following.

```language-csharp
public abstract class inventoryID 
    : PX.Data.BQL.BqlInt.Field<inventoryID> { }
```

If the nested BQL field class doesn’t exist in the alias DAC, **the query will fail to compile**.

You may declare only a subset of fields for optimization purposes, but you must always declare every field referenced in your BQL query.

**Implementing a Self-Join with a Redeclared DAC**

Suppose that you need to join the `InventoryItem` table to itself; also, `InventoryID` and `InventoryCD` are the key fields for this table. The following code shows the original DAC that represents this table.

```language-csharp
namespace PX.Objects.IN
{
    [Serializable]
    public class InventoryItem : PX.Data.PXBqlTable, PX.Data.IBqlTable
    {
        public abstract class inventoryID : PX.Data.BQL.BqlInt.Field<inventoryID> { }
        public int? InventoryID { get; set; }

        public abstract class inventoryCD : PX.Data.BQL.BqlString.Field<inventoryCD> { }
        public string InventoryCD { get; set; }
      
        // other fields
        ...
    }
}
```

You declare a new DAC class with the same class name as `InventoryItem` but place it in a different namespace as follows.

```language-csharp
namespace PX.Objects.IN.Aliases
{
    [Serializable]
    [PX.Data.PXTable(typeof(PX.Objects.IN.InventoryItem.inventoryID))]
    public class InventoryItem : PX.Data.PXBqlTable, PX.Data.IBqlTable
    {
        public abstract class inventoryID : PX.Data.BQL.BqlInt.Field<inventoryID> { }
        public int? InventoryID { get; set; }

        public abstract class inventoryCD : PX.Data.BQL.BqlString.Field<inventoryCD> { }
        public string InventoryCD { get; set; }
    }
}
```

Note that both key fields, `InventoryID` and `InventoryCD`, are redeclared in the alias DAC. No additional fields are redeclared because they aren’t used in the BQL query \(see below\).

Finally, you write a BQL query that performs a self-join of `InventoryItem` with its alias.

```language-csharp
public 
    PX.Data.PXSelectJoin<
      PX.Objects.IN.InventoryItem,
      PX.Data.InnerJoin<PX.Objects.IN.Aliases.InventoryItem,
        PX.Data.On<
            PX.Objects.IN.Aliases.InventoryItem.inventoryID,
            PX.Data.Equal<PX.Objects.IN.InventoryItem.inventoryID>>>>
    SelfJoinView;
```

In the query above:

-   `PX.Objects.IN.InventoryItem` is the original DAC.
-   `PX.Objects.IN.Aliases.InventoryItem` is the alias DAC.
-   Acumatica Framework's object-relational mapping system maps both DACs to the same physical database table. Internally, each DAC type is treated as a separate logical table reference.

## DAC Aliasing Based on Inheritance { .section}

In this approach, instead of redeclaring the DAC with the same name \(as described above\), you derive new DAC types from the original DAC.

In this approach, you:

-   Create a new DAC class that **inherits** from the original DAC
-   Override specific fields \(for example, to change UI attributes\)
-   Use the derived types in joins to represent different business roles

**Redeclaring BQL Fields in Derived DACs**

When you base DAC aliasing on inheritance, the derived DAC inherits properties from the base DAC. However, BQL field binding is performed at the CLR type level.

Suppose that you reference a field in BQL by using the derived DAC type, as shown in this example.

```language-csharp
PX.Objects.GL.Aliases.AccountDebit.accountID
```

The derived DAC must redeclare the corresponding nested BQL field class, as shown below.

```language-csharp
public abstract new class accountID
    : PX.Data.BQL.BqlInt.Field<accountID> { }
```

Although the base DAC \(`PX.Objects.GL.Account` in the above case\) already defines `accountID`, the nested BQL field class is bound to the base type—not automatically rebound to the derived type.

Therefore, when you use inheritance-based aliasing, you must redeclare:

-   Every BQL field referenced in the query for the derived DAC
-   All key fields used in join conditions

If you do not redeclare these fields:

-   The BQL composer may bind the field to the base DAC instead of the derived DAC.
-   The generated SQL may not reflect the intended alias.
-   The query may produce incorrect results or runtime errors.

You don’t need to redeclare every field in the DAC; you must redeclare only those fields that are referenced in your BQL query by using the derived type.

**Implementing a Self-Join by Using Derived DAC Types**

A real-world scenario that you may encounter is the need to join the same table twice for different business meanings. For example, consider the `FATran` DAC, which contains the following fields:

-   `DebitAccountID`
-   `CreditAccountID`

Both fields reference the `Account` DAC. If you join `Account` twice without aliasing and expose the `Description` field, the UI may show multiple columns with the **Description** title, even though one represents the debit account and the other represents the credit account. To resolve this ambiguity, you create derived DAC types.

**Creating Derived DAC Types**

You define two alias DACs that inherit from `Account` and override the `Description` field to assign distinct UI captions. The following code shows how these alias DACs are defined.

```language-csharp
namespace PX.Objects.GL.Aliases
{
    public class AccountDebit : PX.Objects.GL.Account
    {
        public abstract new class accountID
            : PX.Data.BQL.BqlInt.Field<accountID> { }

        public abstract new class description
            : PX.Data.BQL.BqlString.Field<description> { }

        [PX.Data.PXUIField(DisplayName = "Debit Account Description")]
        public override string Description { get; set; }
    }

    public class AccountCredit : PX.Objects.GL.Account
    {
        public abstract new class accountID
            : PX.Data.BQL.BqlInt.Field<accountID> { }

        public abstract new class description
            : PX.Data.BQL.BqlString.Field<description> { }

        [PX.Data.PXUIField(DisplayName = "Credit Account Description")]
        public override string Description { get; set; }
    }
}
```

Each alias DAC in the code above:

-   Inherits from `PX.Objects.GL.Account`
-   Maps to the same physical table
-   Is treated as a distinct CLR type in BQL
-   Carries independent UI metadata

Although these alias DACs inherit from `Account`, they’re treated as separate logical entities in BQL because they are distinct CLR types.

**Joining Both Derived DAC Types in the Graph**

The following code shows the BQL query that joins both alias DACs declared in the preceding code example.

```language-csharp
public 
    PX.Data.PXSelectJoin<
      PX.Objects.FA.FATran,
      PX.Data.LeftJoin<PX.Objects.GL.Aliases.AccountDebit,
        PX.Data.On<
            PX.Objects.FA.FATran.debitAccountID,
            PX.Data.Equal<PX.Objects.GL.Aliases.AccountDebit.accountID>>>,
      PX.Data.LeftJoin<PX.Objects.GL.Aliases.AccountCredit,
        PX.Data.On<
            PX.Objects.FA.FATran.creditAccountID,
            PX.Data.Equal<PX.Objects.GL.Aliases.AccountCredit.accountID>>>>>
    Trans;
```

The `Trans` data view in the code above exposes the `AccountDebit.description` and `AccountCredit.description` fields. These fields are independent in the result set.

**Updating the UI Binding**

To display the `AccountDebit.description` and `AccountCredit.description` fields in the UI for the corresponding form, you need to update the corresponding TypeScript file \(if you're using the Modern UI\) or the ASPX page \(for the Classic UI\) of the form.

In the TypeScript file, you add the two fields in the view class that defines the table \(in which these fields should appear\) as follows.

```language-javascript
AccountDebit__description: PXFieldState;
AccountCredit__description: PXFieldState;
```

In the ASPX page, you add the two fields in the appropriate `PXGrid` tag as follows.

```language-xml
<px:PXGridColumn DataField="AccountDebit__description" Width="120px" />
<px:PXGridColumn DataField="AccountCredit__description" Width="120px" />
```

**Tip:** To add a box \(or a column\) to a form that’s mapped to a field from a DAC selected in a view, you use the following formula: `<DAC_name>__<field_name>`.

In the UI, these two fields will appear as separate columns in the table, labeled **Debit Account Description** and **Credit Account Description**.

## Using DAC Aliases for Performance Optimization { .section}

The use of DAC aliases is not limited to performing self-joins. You can also use them to optimize performance. An alias DAC may declare only a subset of the original DAC's fields—so by using an alias DAC, you can:

-   Reduce the number of fields loaded into the cache
-   Decrease memory usage
-   Improve query execution performance in:
    -   Reports
    -   Generic inquiries
    -   Data views
    -   Business logic with a high data volume

For example, if a query requires only key fields and one descriptive field, you can define an alias DAC that includes only these fields instead of using the full DAC with dozens of attributes and joins.

However, keep the following guidelines in mind when you’re using DAC aliases:

-   Ensure that all required key fields are declared.
-   Avoid using fields that are not declared in the alias.
-   Verify that attributes dependent on omitted fields are not required.

**Parent topic:**[Creating Traditional BQL Queries](../StudioDeveloperGuide/AD__mng_Traditional_BQL.md)

