# Action Customization: Changing of the Display Name of an Action {#_c1cbe9cb-cfca-4720-a16a-38e003055690 .concept}

To change the display name of an action, you should change the DisplayName parameter of the PXUIField attribute for the action. This changes the name shown for the corresponding button, command, or both.

You can change the attributes of an action in one of the following ways:

-   [Dynamically at run time, in the Initialize\(\) method of the graph extension](#_7ff62fb1-a453-4a27-925a-641eb6776463)
-   [Statically, by overriding the action attributes in the graph extension](#_7651431c-dc11-4cd9-8ba2-98c8c3c29147)

## To Change the Display Name of an Action Dynamically at Run Time {#_7ff62fb1-a453-4a27-925a-641eb6776463 .section}

To change the display name of an action dynamically at run time, you do the following:

1.  You can use the instructions in [Action Customization: Customization of an Action](CodeCustomization_ActionsCustomization_StartActionCustomization.md) but do not copy the declaration to the graph extension.
2.  In the graph extension, add the following code.

    ```
    #region Extended initialization
    
    public override void Initialize()
    {
      base.Initialize();
      Base.MyAction.SetCaption("NEW NAME");
    }
    #endregion
    
    ```

3.  In the added code, replace `MyAction` with the action name and specify the needed button name.

## To Change the Display Name of an Action Statically {#_7651431c-dc11-4cd9-8ba2-98c8c3c29147 .section}

To override action attributes in a graph extension statically, you should declare both the graph member of the PXAction type and the delegate. You should attach a new set of attributes to the action delegate, declared within the graph extension. Also, you need to invoke the Press\(\) method on the base graph action. Because this approach involves re-declaring the member of PXAction, you prevent the action delegate execution from infinite loops.

**Note:** If you have a customization project that replaces an original action declaration statically, after you upgrade Acumatica ERP to a new version, the new functionality of the action may become unavailable.

To change the display name of an action statically, you do the following:

1.  Explore the declaration of the original action, and copy the declaration to the graph extension, as described in [Action Customization: Customization of an Action](CodeCustomization_ActionsCustomization_StartActionCustomization.md).
2.  In the action declaration, specify the required name for the button in the PXUIField attribute, as the following code snippet shows.

    ```
    ...
    [PXUIField(DisplayName = "NEW NAME", ...)]
    ...
    ```

    **Attention:** We recommend that you not remove or change other attributes of the action.

3.  Replace the action delegate with the following code template.

    ```
    public virtual IEnumerable myAction(PXAdapter adapter)
    {
      return Base.MyAction.Press(adapter);;
    }
    #endregion
    
    ```

4.  In the code template, replace `myAction` and `MyAction` with the appropriate names.
5.  In the template, redefine the action delegate arguments and return type based on the signature of the base action delegate.

**Parent topic:**[Customizing Actions](../StudioDeveloperGuide/CodeCustomization_ActionsCustomization_Mapref.md)

