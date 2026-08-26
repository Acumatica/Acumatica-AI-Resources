# Using a Primary Key {#_53df9cc9-7337-4ba7-9b3d-be0e412213a9 .concept}

When you use a primary key, you should take into consideration the information presented in the following sections.

## Restrictions {#_b9b04fe5-1e31-40fc-b39b-9788b4447c28 .section}

You cannot use unbound DAC fields in a primary key declaration. Internally, a primary key generates its own anonymous view, which uses the fields specified in the key declaration. If you use unbound DAC fields in the primary key declaration, this view will contain these fields, and they will be part of the SQL query sent to the database. Because the fields are unbound, the database does not have such columns, such code would lead to a runtime error thrown from the database.

## Coding Conventions { .section}

We recommend that you adhere to the following coding conventions to make the code more structured and readable:

-   A DAC can contain no more than one primary key. If you want to declare a key for another combination of DAC fields so that you can identify a separate DAC row, instance, or entity, you can create a unique key. For details, see [To Define a Unique Key](AD__how_Define_Unique_Key.md).
-   A DAC's primary key should be named `PK`.

These conventions are generally verified by Acuminator.

## The IPrimaryKey Interface { .section}

There are two approaches to work with primary keys: declare them as static, or declare them as non-static.

All non-static primary keys implement the IPrimaryKey interface, which is shown in the following code.

```
public interface IPrimaryKey
{
    IBqlTable Find(PXGraph graph, params object[] keys);
    IBqlTable Find(PXGraph graph, IBqlTable item);
    void StoreCached(PXGraph graph, IBqlTable item);
}
```

A primary key that implements this interface loses some static-type restrictions of its methods' parameters and of their output values, but gives you the ability to use a primary key in the generic scope of attributes, as shown in the following code.

```
public class SomePKAttribute : PXEventSubscriberAttribute, ...
{
    private readonly IPrimaryKey _pk;
    public SomeAttribute(Type pkType)
    {
        _pk = (IPrimaryKey)Activator.CreateInstance(pkType);
    }
  
    public void SomeHandler(PXCache cache, PXSomeEventArgs e)
    {
        IBqlTable row = _pk.Find(cache.Graph, e.NewValue);
        ...
        _pk.StoreCached(cache.graph, row);
        ...
        row = _pk.Find(cache.Graph, row);
    }
}
```

**Important:** The standard IPrimaryKey implementers are stateless objects that provide access to the corresponding static methods; therefore, their instances can be safely stored in the fields of an attribute.

**Parent topic:**[Defining Relationships Between DACs](../StudioDeveloperGuide/AD__mng_Defining_PK_and_FK.md)

