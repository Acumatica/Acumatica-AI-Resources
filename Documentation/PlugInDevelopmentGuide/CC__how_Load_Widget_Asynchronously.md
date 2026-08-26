# To Load a Widget Synchronously or Asynchronously {#_a4ed5e3e-a62b-497f-9851-c91f5edf6e60 .task}

By default, if a widget class is inherited from the PX.Dashboards.Widgets.PXWidgetBase abstract class, the widget is loaded asynchronously after the page has been loaded. You can change this behavior by using the AsyncLoading\(\) method of the widget class, as described in the following sections.

## To Load a Widget Synchronously { .section}

To load a widget synchronously along with the page, override the AsyncLoading\(\) method, as the following code shows.

```
using PX.Web.UI;
using PX.Dashboards.Widgets;

public override AsyncLoadMode AsyncLoading
{
    get { return AsyncLoadMode.False; }
}
```

## To Load a Widget Asynchronously { .section}

To load a widget asynchronously after the page has been loaded, you do not need to perform any actions, because the following implementation of the AsyncLoading\(\) method is used by default.

```
using PX.Web.UI;
using PX.Dashboards.Widgets;

public override AsyncLoadMode AsyncLoading
{
    get { return AsyncLoadMode.True; }
}
```

## To Load a Widget that Performs a Long-Running Operation { .section}

If a widget performs a long-running operation during loading, such as reading data that takes a long time, use the following approach to load this widget:

1.  Override the AsyncLoading\(\) method, as the following code shows. In this case, for processing the data of the widget, the system starts the long-running operation in a separate thread.

    ```
    using PX.Web.UI;
    using PX.Dashboards.Widgets;
    
    public override AsyncLoadMode AsyncLoading
    {
        get { return AsyncLoadMode.LongRun; }
    }
    ```

2.  Override the ProcessData\(\) method of the widget class so that it implements all the logic for the widget that consumes significant time while loading.
3.  Override the SetProcessResult\(\) method of the widget class so that it retrieves the result of the processing of the widget data.

If these methods are implemented, the system calls them automatically when it loads the widget on a dashboard page.

**Parent topic:**[Creating Widgets for Dashboards](../PlugInDevelopmentGuide/CC__mng_Creating_Widgets_for_Dashboards.md)

