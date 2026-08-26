# Access to Protected Graph Members {#_af86ebcf-0ea1-4c22-b624-99fc14c0b02c .concept}

To call a protected member of a graph in its extension, you can use the [PXProtectedAccess](https://help.acumatica.com/(W(4))/Help?ScreenId=ShowWiki&pageid=9526ccd8-4e46-3f0c-d6e5-174d361e8997) attribute.

## Calling Protected Graph Members { .section}

To be able to access a protected member of a graph in a graph extension, you should do the following:

1.  In a graph extension, declare an abstract member with the same signature as the protected member you want to access.

    **Attention:** The graph extension should also be abstract.

2.  Add the PXProtectedAccess attribute to the definition of the graph extension.
3.  Add the PXProtectedAccess attribute to the member definition.

The framework replaces the body of the member annotated with PXProtectedAccess with the body of the corresponding member in the graph or lower-level graph extension.

## Example: Calling Protected Members of a Graph { .section}

Suppose that the code of Acumatica ERP includes the following graph.

```language-csharp
public class MyGraph : PXGraph<MyGraph>
{
    protected void Foo(int param1, string param2) { ... }
    protected static void Foo2() { }
    protected int Bar(MyDac dac) => dac.IntValue;
    protected decimal Prop { get; set; }
    protected double Field;
}
```

You can use the members in an extension of the graph, as shown in the following example.

```language-csharp
[PXProtectedAccess]
public abstract class MyExt : PXGraphExtension<MyGraph>
{
      [PXProtectedAccess]
      protected abstract void Foo(int param1, string param2)
      [PXProtectedAccess]
      protected abstract void Foo2();
      [PXProtectedAccess]
      protected abstract int Bar(MyDac dac);
      [PXProtectedAccess]
      protected abstract decimal Prop { get; set; }
      [PXProtectedAccess]
      protected abstract double Field { get; set; }

      private void Test()
      {
             Foo(42, "23");
             int bar = Bar(new MyDac());
             decimal prop = Prop;
             Prop = prop + 12;
             double field = Field;
             Field = field + 15;
      }
}
```

## Example: Calling Protected Members of a Graph Extension { .section}

Suppose that the code of Acumatica ERP includes the following graph.

```language-csharp
public class MyGraph : PXGraph<MyGraph>
{
    protected void Bar() { }
}
```

Suppose also that custom code includes the following extension of this graph.

```language-csharp
public class MyExt : PXGraphExtension<MyGraph>
{
    protected void Foo() { }
}
```

You can use the protected member of the graph extension by specifying the parameter of the attribute, as shown in the following example.

```language-csharp
[PXProtectedAccess]
public abstract class MySecondLevelExt : PXGraphExtension<MyExt, MyGraph>
{
    [PXProtectedAccess]
    protected abstract void Bar();

    [PXProtectedAccess(**typeof\(MyExt\)**)]
    protected abstract void Foo();
}
```

**Parent topic:**[Working with Attributes](../StudioDeveloperGuide/BL__mng_Working_With_Attributes.md)

