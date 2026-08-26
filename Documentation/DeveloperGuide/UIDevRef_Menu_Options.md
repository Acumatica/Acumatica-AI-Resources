# Menu: Configuration of the Menu Control {#_0b75608b-9781-4fde-9903-a348983b26ef .concept}

The configuration of the qp-menu control is stored in the config: IMenuControlConfig property and includes these properties:

-   id: The identifier of the qp-menu control
-   text: The text displayed on the button that a user clicks to open the menu
-   options: The list of menu commands

To configure the qp-menu control, you perform these general steps, described in more detail below:

1.  In TypeScript, define the configuration. You can do this either statically in a property of the IMenuControlConfig type or in a method if the set of options depends on some logic.
2.  In the HTML template, specify the property or the method in the config.bind property of the qp-menu control.

## Defining the Configuration Statically {#section_bsr_lwz_mgc .section}

To define a static set of options:

1.  In the screen class, define a property of the IMenuControlConfig type.
2.  In the property, define the following properties:
    -   id: The string identifier of the menu.
    -   text: The text displayed on the button that opens the menu.
    -   options: The set of available commands on the menu. Options are defined as an array of objects of the IMenuItem type.
3.  For each option, specify these properties:
    -   id: The string identifier the menu command
    -   text: The text displayed as the command
    -   type: The type of the menu command
    -   commandName: The string name of the graph action to be executed

The following example shows a configuration definition.

``` {#codeblock_ccx_n22_ngc}
@observable	extensionsMenuConfig:IMenuControlConfig = {
	id: "addSnippetActionsMenu",
	text: Names.AddCodeSnippet,
	options: [
		{
			id: "addFieldAction",
			text: Names.AddField,
			type: "MenuButton",
			commandName: "addFieldSnippet",
		}, {
			id: "addBaseViewAction",
			text: Names.AddDataViewExtension,
			type: "MenuButton",
			commandName: "addBaseViewSnippet",
		}, {
			id: "addViewAction",
			text: Names.AddView,
			type: "MenuButton",
			commandName: "addViewSnippet",
		}, {
			id: "addGridViewAction",
			text: Names.AddGridView,
			type: "MenuButton",
			commandName: "addGridViewSnippet",
		}
	]
};
```

After you’ve defined the configuration, you can bind it to the config property of the qp-menu control in the HTML template, as shown below.

```
<qp-menu class="qp-button" hidden.bind="isReadonly" 
  config.bind="extensionsMenuConfig" ...></qp-menu>
```

## Defining the Configuration Dynamically {#section_v3f_mwz_mgc .section}

If the set of options depends on a condition or other logic, you can define the configuration and populate the option array in a method. To define the configuration method:

1.  In the screen class, declare a method.
2.  In the method, define the option array and populate it with objects of the IMenuItem type by using the push method, as shown in the following example.

    ``` {#codeblock_gkz_hq2_ngc}
    getCustomizationTreeNodeMenuConfig() {
      const options = [];
      options.push({ 
        type: "MenuButton", 
        text: "", 
        commandName: "edit", 
        images: { normal: "svg:main@edit" } 
      });
      ...
    }
    ```

3.  In the method, return an IMenuControlConfig object with the list of options.

The following example shows a configuration method.

``` {#codeblock_lmb_5q2_ngc}
getCustomizationTreeNodeMenuConfig(field: ICustomizationFieldListItem) {
  const options = [];
  if (field.deletable) {
    // Add the Remove command
    options.push({ 
    type: "MenuButton", 
    text: "Names.RemoveCustomField", 
    commandName: "remove", 
    images: { normal: "svg:main@delete" } });
  }
  // Add the Edit command
  options.push({ 
    type: "MenuButton", 
    text: "Names.EditInEditor", 
    commandName: "edit", 
    images: { normal: "svg:main@edit" } 
  });
  return {
    ...this.customizationTreeNodeMenuConfig,
    id: `customization_editor_node_menu_${field.id}`,
    options: options,
  };
}
```

The method above adds two menu commands to the option array. Then in the return statement, it destructures the existing static configuration stored in the `customizationTreeNodeMenuConfig` property, and adds the id and the options properties to it. For details about destructuring, see [https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring).

After you’ve defined the configuration method, you can bind it to the config property of the qp-menu control in the HTML template. When specifying the name of the method in the config property, you can provide parameter values, as shown below.

```
<qp-menu config.bind="getCustomizationTreeNodeMenuConfig(childField)" ...>
</qp-menu>
```

**Parent topic:**[Menu](../DeveloperGuide/UIDevRef_Menu_Mapref.md)

