# To Add a Script to a Widget {#_17509bc1-709f-4c58-9b5a-9acb8afd3d26 .task}

You can specify how a widget should be displayed on a dashboard page by using a custom script. For example, you can implement a script that handles the way the widget is resized.

To add a custom script to a widget, you override the RegisterScriptModules\(\) method of the PX.Dashboards.Widgets.PXWidgetBase abstract class. The following code shows an example of the method implementation for a predefined data table widget.

```
using PS.Web.UI;
using PX.Dashboards.Widgets;

internal const string JSResource = 
  "PX.Dashboards.Widgets.Table.px_dashboardGrid.js";

public override void RegisterScriptModules(Page page)
{
    var renderer = JSManager.GetRenderer(page);
    renderer.RegisterClientScriptResource(this.GetType(), JSResource);
    base.RegisterScriptModules(page);
}
```

**Parent topic:**[Creating Widgets for Dashboards](../PlugInDevelopmentGuide/CC__mng_Creating_Widgets_for_Dashboards.md)

