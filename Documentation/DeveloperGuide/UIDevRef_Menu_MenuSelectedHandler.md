# Menu: Handling the MenuSelected Event {#_ae45cb7d-6f3e-4635-914a-c00314e9ef54 .concept}

The qp-menu control fires a specific event, menuSelected, when a user clicks a menu command. You can implement a custom handler for this event and specify it for your qp-menu control. In the handler, you can invoke the action corresponding to the menu command that was clicked. You can also execute a method in the menu asynchronously.

## Implementing the menuSelected Event Handler { .section}

To implement a handler, in your screen’s TS file, declare a method with the following signature.

``` {#codeblock_shd_frx_mgc .language-javascript}
handlerName (event: CustomEvent)
```

**Note:** You can declare additional parameters, such as `config: IEditableElementView`, to the handler.

In the `event: CustomEvent` parameter, you can access the information about the menu command that has been clicked: The `event.detail.id` and `event.detail.commandName` properties hold the identifier and the name of the command that has been clicked.

The following example shows an event handler.

``` {#codeblock_kdv_frx_mgc .language-javascript}
processCustomizationTreeNodeMenu(e: CustomEvent, 
                                 config: IEditableElementView) {
  const fieldId = config.id;

  switch (e.detail.commandName) {
    case "edit":
      this.editInEditor(fieldId);
      break;
    case "remove":
      this.removeCustomField(fieldId);
      break;
  }
}
```

The code above executes a method corresponding to the menu command \(`e.detail.CommandName`\) that has been clicked and provides a value as a parameter.

## Specifying the Handler for the Control { .section}

To define the handler for the menuSelected event in the HTML template, you need to:

-   Specify the name of the handler in the menuselected.delegate property of the qp-menu control in the HTML template.
-   Provide any needed parameter values. For the parameter of the CustomEvent type, specify $event.

The following code shows an example of binding an event handler to the qp-menu control.

``` {#codeblock_gmf_15x_mgc .language-xml}
<qp-menu config.bind="getCustomizationTreeNodeMenuConfig(childField)"
	class="customization-tree__field-menu"
	menuselected.delegate="processCustomizationTreeNodeMenu($event, 
        { id: childField.id })">
</qp-menu>
```

## Defining an Asynchronous Event Handler {#section_md1_wrx_mgc .section}

You can implement a handler to be executed asynchronously. You should declare an asynchronous event handler if the code in the handler can perform a request to the server—for example, if a graph action is executed. To define an asynchronous handler:

1.  Add the async keyword to the handler declaration.
2.  In the handler body, define an await expression that executes the method that requests the server.

The following example shows an asynchronous handler. In the handler, you execute an action whose name is identical to the commandName property of the menu command that has been clicked.

``` {#codeblock_q2s_1nz_mgc .language-javascript}
async processSnippetMenuSelected(e: CustomEvent) {
  await this.screenService.executeCommand(e.detail.commandName);
}
```

**Parent topic:**[Menu](../DeveloperGuide/UIDevRef_Menu_Mapref.md)

