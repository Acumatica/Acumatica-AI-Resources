# To Create a Simple Widget {#_1ea88afb-8f3e-4c07-b8be-fb29c108e18f .task}

A simple widget displays information from a single data source and does not require calculations or comprehensive data retrieval. Multiple simple widgets, such as wiki widgets or embedded page widgets, are available in Acumatica ERP by default.

To create a simple widget, you need to perform the basic steps that are described in this topic.

## To Create a Simple Widget { .section}

1.  In the project of your Acumatica ERP extension library or your Acumatica Framework-based application, create a data access class \(DAC\), which stores the parameters of the widget. The DAC must extend the PXBqlTable class and implement the IBqlTable interface; you can use any DAC attributes with this DAC.

    The following code fragment shows an example of a DAC for a simple widget, which uses one parameter.

    ```
    using PX.Data;
    
    [PXHidden]
    public class YFSettings : PXBqlTable, IBqlTable
    {
        #region PagePath
        [PXDBString]
        [PXDefault]
        [PXUIField(DisplayName = "Help Article")]
        public string PagePath { get; set; }
        public abstract class pagePath : IBqlField { }
        #endregion
    }
    ```

2.  In the project, create a graph for working with the parameters of the widget and reading the data for the widget. The graph must be inherited from the PX.Dashboards.WizardMaint class.

    The following code fragment shows an example of a graph for a widget.

    ```
    using PX.Dashboards;
    
    public class YFSettingsMaint : WizardMaint<YFSettingsMaint, YFSettings>
    {
    }
    ```

3.  In the project, create a widget class that implements the PX.Web.UI.IDashboardWidget interface. Use the following instructions for implementation:

    -   Inherit the widget class from the PX.Dashboards.Widgets.PXWidgetBase abstract class. This class implements part of the required functionality of the IDashboardWidget interface, such as localization of the caption and the description of the widget \(which are displayed in the **Add Widget** dialog box when a user adds a new widget to a dashboard\). This class also stores useful properties of the widget, such as Settings, DataGraph, Page, DataSource, and WidgetID.
    -   Store the values of the caption and the description of the widget in a `Messages` class that has the PXLocalizable attribute. This approach is required for localization functionality to work properly.
    -   Perform initialization of a widget class instance in the Initialize\(\) method of the IDashboardWidget interface.
    -   Create the tree of controls of the widget in the Render\(\) method of the IDashboardWidget interface.
    -   If you need to check the access rights of a user to the data displayed in the widget, implement the IsAccessible\(\) method of the IDashboardWidget interface. If the user has access to the data in the widget, the method must return `true`; if the user has insufficient rights to access the data in the widget, the method must return `false`.
    -   If you want to specify the way the widget is loaded, override the AsyncLoading\(\) method of the PXWidgetBase abstract class, as described in [To Load a Widget Synchronously or Asynchronously](CC__how_Load_Widget_Asynchronously.md#).
    The following code fragment gives an example of a widget class. This class is inherited from the PXWidgetBase class. The caption and description of the widget are specified in the `Messages` class, which has PXLocalizable attribute. The widget class implements the Render\(\) method to create the control of the widget and performs the configuration of the control in the RenderComplete\(\) method.

    ```
    using PX.Web.UI;
    using PX.Dashboards.Widgets;
    using PX.Common;
    using System;
    using System.Web.UI;
    using System.Web.UI.WebControls;
    
    public class YFWidget : PXWidgetBase<YFSettingsMaint, YFSettings>
    {
        public YFWidget()
            : base(Messages.YFWidgetCaption, Messages.YFWidgetDescription)
        {
        }
    
        protected override WebControl Render(PXDataSource ds, int height)
        {
            if (String.IsNullOrEmpty(Settings.PagePath)) return null;
    
            WebControl frame = _frame = new WebControl(HtmlTextWriterTag.Iframe)
            { CssClass = "iframe" };
            frame.Attributes["frameborder"] = "0";
            frame.Width = frame.Height = Unit.Percentage(100);
            frame.Attributes["src"] = "javascript:void 0";
            return frame;
        }
    
        public override void RenderComplete()
        {
            if (_frame != null)
            {
                var renderer = JSManager.GetRenderer(this.Page);
                renderer.RegisterStartupScript(this.GetType(),
                    this.GenerateControlID(this.WidgetID),
                    string.Format("px.elemByID('{0}').src = '{1}';",
                      _frame.ClientID, Settings.PagePath), true);
            }
            base.RenderComplete();
        }
    
        private WebControl _frame;
    }
    
    [PXLocalizable]
    public static class Messages
    {
        public const string YFWidgetCaption = "YogiFon Help Page";
        public const string YFWidgetDescription = "Displays a Help page.";
    }
    ```

4.  Compile your Acumatica ERP extension library.
5.  Run the application and make sure that the new widget appears in the **Add Widget** dialog box. The widget class, which implements the IDashboardWidget interface, is detected by the system and automatically added to the list of widgets available for selection in the dialog box.

**Parent topic:**[Creating Widgets for Dashboards](../PlugInDevelopmentGuide/CC__mng_Creating_Widgets_for_Dashboards.md)

