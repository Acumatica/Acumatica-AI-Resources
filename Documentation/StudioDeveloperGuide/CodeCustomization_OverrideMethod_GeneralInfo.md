# Override of a Method: General Information {#_635c830e-4617-4d5c-9fa5-035952311aa9 .concept}

In a graph extension, you can override the virtual methods defined within the base graph.

## Applicable Scenarios { .section}

You need to adjust standard system behavior \(such as document release, validation, or data persistence\) to meet specific business requirements.

## Requirements to the Graph Method and Its Override { .section}

We recommend that you follow these requirements when you are defining the override of a method of a graph:

-   The method that you are going to override must have one of the following access modifiers:

    -   `public`
    -   `protected`
    -   `protected internal`
-   The override of the method must always be a `public`, non-`static`, and non-`virtual` method.
-   The override of the method must have the [PXOverride](https://help.acumatica.com/(W(6))/Help?ScreenId=ShowWiki&pageid=cdc4f1df-a4cc-5de5-a379-5078ad449965) attribute.

    Because the PXOverride attribute on the declaration of the method is included in the graph extension, it forces the system to override the original method in the graph instance. Otherwise, both the base method and the overridden method will be invoked.

-   If the base method contains a list of parameters, you must include the same list of parameters in the declaration of the override method.
-   The override of the method must include the base delegate parameter as the last parameter in the list of parameters. The name of the parameter must begin with `base_`, followed by the name of the method. This parameter represents the delegate for one of the following:
    -   The override method with an additional parameter from the graph extension of the previous level, if such a method exists
    -   The base virtual method, if no override methods with additional parameters are declared within lower-level extensions
-   You should add an XML comment with an `Overrides` prefix and the `<seealso>` tag to the declaration of the override of the method. The value of the `cref` property of `<seealso>` should reference the base method that you are overriding. This comment should not be included within the `<summary>` tag.

See the following example of an override of the WorksheetPicking.IsWorksheetMode\(string\) method, which follows all these guidelines.

```language-csharp
/// Overrides <seealso cref="WorksheetPicking.IsWorksheetMode(string)"/>
[PXOverride]
public bool IsWorksheetMode(string modeCode, 
    Func<string, bool> base_IsWorksheetMode)
{
    // Add your code

    base_IsWorksheetMode(modeCode);
}
```

**Important:** You can define the override method with exactly the same signature as the overridden base virtual method has—that is, the override method that has the return value, the name of the method, and all method parameters of the base method, and doesn't have any additional parameters. As a result, the method is added to the queue of all override methods. When the system invokes the base method, all methods in the queue are executed sequentially, from the first one to the last one. The lower the level of the graph extension, the earlier the system invokes the override method. **We do not recommend that you use this approach** because the system behavior is unpredictable if the code includes multiple overrides without the base delegate parameter in the graph extensions of the same level.

## How the Override Method Works {#section_d44_srp_lq .section}

The override method with an additional parameter replaces the base graph virtual method. When the virtual method is invoked, the system invokes the override method with an additional parameter of the highest-level graph extension. The system passes a link to the override method with an additional parameter from the extension of the previous level, if such a method exists, or to the base virtual method.

**Parent topic:**[Overriding a Graph Method](../StudioDeveloperGuide/CodeCustomization_OverrideMethod_Mapref.md)

