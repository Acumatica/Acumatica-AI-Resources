# Action Customization: Visibility of an Action {#_65b43077-9080-418e-8949-3c96a5bede68 .concept}

You can manage the visibility of an action on an Acumatica ERP form. The visibility determines whether the corresponding button on a toolbar or command on the More menu \(or both\) are hidden or shown.

To hide or show a button or command, you use the Visible parameter of the PXUIField attribute for the action.

You can change the attributes of an action in one of the following ways:

-   Dynamically at run time, in the code of a graph.
-   [Dynamically at run time, in the Initialize\(\) method of the graph extension.](#_7ff62fb1-a453-4a27-925a-641eb6776463)

    You need to use this method to change the visibility of an action that is defined in the original code of Acumatica ERP.

-   [Statically, by overriding the action attributes in the graph extension](#_7651431c-dc11-4cd9-8ba2-98c8c3c29147).

## To Set an Action's Visibility at Run Time \(Custom Graph\) {#section_fv3_dwj_nqb .section}

To set the visibility of an action's corresponding button on a toolbar or command on the More menu \(or both\), you need to use the SetVisible method. You should use the SetVisible method in the following locations:

-   The RowSelected event handler in the code of a graph or its extensions. The event handler usually belongs to the primary DAC of the form.
-   The graph constructor.
-   The Initialize method of a graph extension.

Suppose that on a particular form, when the `Status` field of a document is changed to *Open*, you need to make the `MyAction` action's corresponding button on the form toolbar and the command on the More menu visible. You do the following:

1.  Implement the RowSelected event handler, as shown in the following code.

    ```
    protected virtual void _(Events.RowSelected<PrimaryDAC> e)
    {
      if (e.Row == null) return;
    
    }
    ```

2.  In the event handler, call the SetVisible method, as the following code shows.

    ```
    MyAction.SetVisible(row.Status != Open);
    ```

    The code above makes the `MyAction` action's corresponding button on the form toolbar and the command on the More menu visible when the status of a document is *Open*.


## To Hide or Show a Button on a Form Toolbar {#section_dsc_s4m_4qb .section}

The command corresponding to an action defined for a form is visible on the More menu.

You can also show an action as a button on the form toolbar of a particular form by doing one of the following:

-   To show the action on the form toolbar for a particular state of a record defined on the form, call the IsDuplicateOnToolbar method when you are adding an action to the state. An example is shown in the following code.

    ```
    flowState.WithActions(actions => {
      actions.Add(g => g.putOnHold, a => a.IsDuplicatedInToolbar());})
    ```

    **Note:** This approach works only if a workflow is defined for a form.

-   To place the button corresponding to an action on the form toolbar without removing the equivalent command from the More menu permanently, specify `DisplayOnMainToolbar = true` on the PXButton attribute in the action definition. The button will be displayed on the form toolbar only if the action is enabled.
-   To place the button corresponding to an action on the toolbar and remove the equivalent command from the More menu, specify IsLockedOnToolbar = true in the PXButton attribute in the action definition. The button will be displayed on the form toolbar even if the action is disabled. An example is shown in the following code.

    ```
    [PXButton(IsLockedOnToolbar = true)]
    ```

    This property can be changed dynamically by using the SetIsLockedOnToolbar method of the action.

-   To place on the form toolbar the button corresponding to a system action \(such as `Save`, `Cancel`, or `Previous`\) for which no category is specified, do nothing. This action is automatically displayed on the form toolbar.

**Important:** The button corresponding to an action is displayed on the toolbar only if the action is enabled and the button fits on the toolbar.

## To Hide or Show a Button of a Predefined Action at Run Time {#_7ff62fb1-a453-4a27-925a-641eb6776463 .section}

Suppose that you need to hide the button corresponding to the `MyAction` action, which is defined in the original code of Acumatica ERP. The visibility of the `MyAction` action is defined by using the PXUIField attribute, and you need to hide this button by default. To do this, you need to change the visibility of the action in a graph extension by doing the following:

1.  Explore the original action declaration, as described in [Action Customization: Customization of an Action](CodeCustomization_ActionsCustomization_StartActionCustomization.md) but without copying the declaration to the graph extension.
2.  In the graph extension, add the following code.

    ```
    #region Extended initialization
    
    public override void Initialize()
    {
      base.Initialize();
      Base.MyAction.SetVisible(false);
    }
    #endregion
    
    ```

    **Note:** To show the action button, use *true* instead of *false* for the SetVisible method call.


## To Hide or Show the Button of an Action Statically {#_7651431c-dc11-4cd9-8ba2-98c8c3c29147 .section}

To override action attributes in a graph extension statically, you should declare both the delegate and the graph member of the PXAction type. You should attach a new set of attributes to the action delegate declared within the graph extension. Also, you need to invoke the Press\(\) method on the base graph action. Because you have re-declared the member of PXAction, you prevent the execution of the action delegate from infinite loops.

**Note:** If you have a customization that replaces an original action declaration statically, after you upgrade Acumatica ERP to a new version, any new functionality of the action may become unavailable.

To hide or show the button of the action, you do the following:

1.  Explore the original action declaration, and copy the declaration to the graph extension, as described in [Action Customization: Customization of an Action](CodeCustomization_ActionsCustomization_StartActionCustomization.md).
2.  In the action declaration, set the Visible parameter of the PXUIField attribute to *false*, as the following code snippet shows.

    **Note:** To show the action button, you would instead set the Visible parameter to *true*.

    ```
    ...
    [PXUIField(…, Visible = false)]
    ...
    ```

    **Attention:** We recommend that you not remove or change other attributes of the action.

3.  Replace the action delegate with the following code template.

    ```
    public virtual IEnumerable myAction(PXAdapter adapter)
    {
      return Base.MyAction.Press(adapter);
    }
    ```

4.  In the template, redefine the action delegate arguments and return type based on the signature of the base action delegate.

**Parent topic:**[Customizing Actions](../StudioDeveloperGuide/CodeCustomization_ActionsCustomization_Mapref.md)

