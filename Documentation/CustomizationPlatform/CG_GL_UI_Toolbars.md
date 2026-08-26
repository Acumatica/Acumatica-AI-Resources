# Toolbars, Action Buttons, and Menus {#_775da237-a59a-4235-bb00-28c8adfc8c73 .concept}

On an Acumatica ERP form, toolbars, buttons, and menus are the types of UI elements that are created and processed by the graph that is specified in the TypeName property of the PXDataSource control and provides business logic for the form. Therefore, these UI elements cannot be created or customized by using the Screen Editor. See [Customizing Business Logic](CG_GL_BL.md) for details.

The standard page toolbar buttons include data manipulation \(**Insert**, **Delete**, **Save**, and **Cancel**\), navigation \(**Next**, **Previous**, **First**, and **Last**\), and clipboard \(**Copy** and **Paste**\). Every toolbar button corresponds to an action declared in the graph. You can use explicit or implicit declaration of actions to add standard buttons to the toolbar. To add standard toolbar buttons to the form and add selector controls, in the graph class declaration, specify the main DAC as the second type parameter of PXGraph, as the following code shows.

```
public class GraphName : PXGraph<GraphName, MainDACName>
{
    public PXSelect<MainDACName> PrimaryDataViewName;
}
```

To add a custom action to a form toolbar, you use [Code Editor](../UserGuide/AU_20_40_00_CodeEditor.md) to create the action declaration in the graph extension. See [To Add an Action](CG_GL_BL_Graph_AddAction.md) for details.

To create a menu on a form toolbar, in the graph or graph extension, you have to declare one action as a menu holder on the toolbar, and then declare all required actions and add these actions to the menu holder by using the AddMenuAction method of the PXAction class.

**Parent topic:**[Customizing Elements of the User Interface](../CustomizationPlatform/CG_GL_UI.md)

