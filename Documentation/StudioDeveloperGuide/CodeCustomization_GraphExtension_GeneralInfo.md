# Graph Extensions: General Information {#_e220486e-32d1-439b-a858-7c10f44a9bac .concept}

To declare a graph extension, you derive a class from PXGraphExtension&lt;T&gt;. You must declare this graph extension with the `public` access modifier for the Acumatica Customization Platform to recognize it.

Conceptually, a graph extension is a substitution of the base graph. The base graph is replaced at run time with the merged result of the base graph and every extension the platform has found. The higher level of a declaration an extension has, the higher priority it gets in the merge operation.

**Attention:** In a graph extension, you must declare the IsActive method, which enables the extension on condition. For details, see [Graph Extensions: Enabling a Graph Extension Conditionally \(with IsActive\)](CodeCustomization_GraphExtension_IsActive.md).

## Learning Objectives { .section}

In this chapter, you will learn about graph extensions of different levels.

## Applicable Scenarios { .section}

You use graph extensions of different levels when you need to customize the business logic of Acumatica ERP.

## First-Level Graph Extension { .section}

The example below shows a declaration of a first-level graph extension.

```language-csharp
public class BaseGraphExtension : PXGraphExtension<BaseGraph>
{
    public void SomeMethod()
    {
        BaseGraph baseGraph = Base;
    }
}
```

The extension class includes the read-only Base property, which returns an instance of the base graph.

## Second-Level Graph Extension { .section}

The example below shows a declaration of a second-level graph extension.

```language-csharp
public class BaseGraphExtensionOnExtension :
    PXGraphExtension<BaseGraphExtension, BaseGraph>
{
    public void SomeMethod()
    {
        BaseGraph baseGraph = Base;
        BaseGraphExtension ext = Base1;
    }
}
```

The extension class includes the following read-only properties:

-   Base, which returns the instance of the base graph
-   Base1, which returns the instance of the first-level graph extension

## Application of a Graph Extension to Graph Inheritors { .section}

The graph extension applies not only to a graph specified in the graph extension’s declaration but also to all graphs derived from the graph specified in the graph extension’s declaration.

Suppose that you have the following graph and graph extensions \(shown in the diagram below\):

-   The ARInvoiceEntry base graph
-   The SOInvoiceEntry and ARSpecificInvoiceEntry graphs, which are derived from ARInvoiceEntry
-   The ARInvoiceEntryAdvanceTaxesExt graph extension, which has been declared for ARInvoiceEntry

![](../Shared/Images/diag_CodeCustomization_GraphExtension_IsActive.png "Relations between graphs")

The Acumatica Framework applies members declared in the ARInvoiceEntryAdvanceTaxesExt extension to all of the following graphs: ARInvoiceEntry, ARSpecificInvoiceEntry, and SOInvoiceEntry.

## Two Variants of a Higher-Level Graph Extension { .section}

A definition of a higher-level graph extension has the following possible variants:

-   You derive the extension class from the PXGraphExtension generic class **with two type parameters**, where the first type parameter is set to an extension of the previous level.
-   You derive the extension class from the PXGraphExtension generic class **with the same number of type parameters as the level of the new graph extension**. In this case, you set type parameters to extension classes from all lower extension levels, from the previous level down to the base class.

## A Higher-Level Graph Extension with Two Type Parameters { .section}

The example below shows a declaration of a third- or higher-level graph extension that’s derived from the PXGraphExtension generic class with two type parameters.

```language-csharp
public class BaseGraphMultiExtensionOnExtension :
    PXGraphExtension<BaseGraphExtensionOnExtension, BaseGraph>
{
    public void SomeMethod()
    {
        BaseGraph graph = Base;
        BaseGraphExtensionOnExtension prevExt = Base1;
    }
}
```

An extension class defined in this way includes the following read-only properties:

-   Base, which returns the instance of the base graph
-   Base1, which returns the instance of the graph extension from the previous level

## A Higher-Level Graph Extension with Three or More Type Parameters { .section}

The example below shows a declaration of a third- or higher-level graph extension that is derived from the PXGraphExtension generic class with three or more type parameters.

```language-csharp
public class BaseGraphAdvMultiExtensionOnExtension : 
    PXGraphExtension<BaseGraphExtensionOnExtension, BaseGraphExtension, BaseGraph>
{
    public void SomeMethod()
    {
        BaseGraph graph = Base;
        BaseGraphExtension ext = Base1;
        BaseGraphExtensionOnExtension extOnExt = Base2;
    }
}
```

An extension class defined in this way includes the following:

-   The read-only Base property, which returns the instance of the base graph
-   The read-only BaseN properties for all extension levels below the current level, where *N* is the sequence number of an extension level

**Parent topic:**[Working with Graph Extensions](../StudioDeveloperGuide/CodeCustomization_GraphExtension_Mapref.md)

