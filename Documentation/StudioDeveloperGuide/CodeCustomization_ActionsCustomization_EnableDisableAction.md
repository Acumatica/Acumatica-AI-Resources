# Action Customization: Disabling or Enabling of an Action {#_f4670986-f434-436d-85d6-1393259821e7 .concept}

To disable or enable an action, you can use the Enabled parameter of the PXUIField attribute for the action. When the action is disabled, a user cannot click the corresponding button, command, or both. When the action is enabled, the corresponding button, command, or both can be clicked. However, we recommend that you change the attribute dynamically at run time in the Initialize\(\) method of the graph extension.

**Note:** If you have a customization that replaces an original action declaration statically, after you upgrade Acumatica ERP to a new version, any new functionality of the action may became unavailable.

To disable or enable an action, you do the following:

1.  Explore the original action declaration, as described in [Action Customization: Customization of an Action](CodeCustomization_ActionsCustomization_StartActionCustomization.md) but without copying the declaration to the graph extension.
2.  In the graph extension, add the following code.

    ```
    #region Extended initialization
    
    public override void Initialize()
    {
      base.Initialize();
      Base.MyAction.SetEnabled(false);
    }
    #endregion
    
    ```

    **Note:** To enable the action, use *true* instead of *false* for the SetEnabled method call.

3.  In the added code, replace `MyAction` with the action name.

**Parent topic:**[Customizing Actions](../StudioDeveloperGuide/CodeCustomization_ActionsCustomization_Mapref.md)

