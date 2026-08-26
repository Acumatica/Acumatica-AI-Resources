# Action Customization: Overriding of an Action Delegate Method {#_33ec6d90-f8a1-4f57-811b-2de3fd9d1ea6 .concept}

An action from a base graph is always completely replaced by the identically named action declared within a graph extension.

To override an action delegate method in a graph extension, you should declare both the graph member of the PXAction type and the delegate. You should attach a new set of attributes to the action delegate declared within the graph extension. Also, you need to invoke the Press\(\) method on the base graph action. Because you have re-declared the member of PXAction, you have prevented the action delegate execution from infinite loops.

**Attention:** If you have a customization that replaces an original action declaration statically, after you upgrade Acumatica ERP to a new version, the functionality that is introduced for the original action by the new version of Acumatica ERP will be unavailable.

You do the following to override an action delegate method:

1.  Explore the original action declaration, and copy the declaration to the graph extension, as described in [Action Customization: Customization of an Action](CodeCustomization_ActionsCustomization_StartActionCustomization.md).

    **Attention:** We recommend that you not remove or change any attributes of the action.

2.  In the action declaration, replace the action delegate with the following code template.

    ```language-csharp
    public virtual IEnumerable myAction(PXAdapter adapter)
    {
      return Base.MyAction.Press(adapter);
    }
    ```

3.  In the code template, replace `myAction` and `MyAction` with the appropriate names.
4.  In the template, redefine the action delegate arguments and return type based on the signature of the base action delegate.
5.  Implement the needed code in the override action delegate.

**Parent topic:**[Customizing Actions](../StudioDeveloperGuide/CodeCustomization_ActionsCustomization_Mapref.md)

