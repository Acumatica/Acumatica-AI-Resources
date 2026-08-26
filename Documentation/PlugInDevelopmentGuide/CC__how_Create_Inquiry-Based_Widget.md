# To Create an Inquiry-Based Widget {#_e80a265c-d6ca-4134-a073-039dc243383d .task}

An inquiry widget retrieves data for the widget from an inquiry form, such as a generic inquiry form or a custom inquiry form. Inquiry-based widgets that are available in Acumatica ERP or an Acumatica Framework-based application by default include chart widgets, table widgets, and KPI widgets.

To create an inquiry-based widget, you need to perform the basic steps that are described in the section below. In these steps, you use the predefined classes, which provide the following functionality to simplify the development of an inquiry-based widget:

-   Selection of the inquiry form in the widget settings
-   Selection of a shared inquiry filter
-   Selection of the parameters of the inquiry
-   The ability to drill down in the inquiry form when a user clicks on the widget caption
-   Verification of the user's access rights to the widget, which is performed based on the user's access rights to the inquiry form

## To Create an Inquiry-Based Widget { .section}

1.  In the project of your Acumatica ERP extension library or your Acumatica Framework-based application, create a data access class \(DAC\) that implements the IBqlTable interface and stores the parameters of the widget. We recommend that you inherit the DAC from the PX.Dashboards.Widgets.InquiryBasedWidgetSettings class, which provides the following parameters for the widget:

    -   *InquiryScreenID*: Specifies the inquiry form on which the widget is based
    -   *FilterID*: Specifies one of the shared filters available for the specified inquiry form
    The following code shows a fragment of the DAC for the predefined inquiry-based data table widget. The DAC is inherited from the InquiryBasedWidgetSettings class.

    ```
    using PX.Data;
    using PX.Dashboards.Widgets;
    
    [PXHidden]
    public class TableSettings : InquiryBasedWidgetSettings, IBqlTable
    {
        #region AutoHeight
        [PXDBBool]
        [PXDefault(true)]
        [PXUIField(DisplayName = "Automatically Adjust Height")]
        public bool AutoHeight { get; set; }
        public abstract class autoHeight : IBqlField { }
        #endregion
    
        ...
    }
    ```

    **Note:** You must declare a DAC by extending the PXBqlTable class and implementing the IBqlTable interface. However, in the code example above, the InquiryBasedWidgetSettings class already inherits the PXBqlTable class.

2.  In the project, create a graph for working with widget parameters and reading data for the widget. Use the following instructions when you implement the graph:
    -   Inherit the graph from the PX.Dashboards.Widgets.InquiryBasedWidgetMaint abstract class, which is inherited from the PXWidgetBase abstract class.
    -   Implement the SettingsRowSelected\(\) event, which is the RowSelected event for the DAC with widget parameters; it contains the current values of the parameters of the widget instance and the list of available fields of the inquiry form. \(For information on how to work with the fields of the inquiry form, see [To Use the Parameters and Fields of the Inquiry Form in the Widget](#_9bb22e3f-db74-4fe1-90fc-4e5d8aad1b1b).\) The signature of the method is shown below.

        ```
        protected virtual void SettingsRowSelected(PXCache cache, 
          TPrimary settings, InqField[] inqFields)
        ```

3.  In the project, create a widget class. We recommend that you inherit this class from the PX.Dashboards.Widgets.InquiryBasedWidget class.
4.  Compile your Acumatica ERP extension library or Acumatica Framework-based application.
5.  Run the application, and make sure that the new widget appears in the **Add Widget** dialog box. The widget class, which implements the IDashboardWidget interface, is detected by the system and automatically added to the list of widgets available for selection in the dialog box.

## To Use the Parameters and Fields of the Inquiry Form in the Widget {#_9bb22e3f-db74-4fe1-90fc-4e5d8aad1b1b .section}

You can access the parameters and fields of the inquiry from that is used in the widget by using the DataScreenBase class, which is available through the DataScreen property in the widget graph and in the widget class. An instance of the DataScreenBase class, which is created based on the inquiry form selected by a user in the widget settings, contains the following properties:

-   ViewName: Specifies the name of the data view from which the data for the widget is taken.
-   View: Returns the data view from which the data for the widget is taken.
-   ParametersViewName: Specifies the name of the data view with the parameters of the inquiry.
-   ParametersView: Returns the data view with the parameters of the inquiry. It can be `null` if the inquiry has no parameters.
-   ScreenID: Specifies the ID of the inquiry form.
-   DefaultAction: Specifies the action that is performed when a user double-clicks on the row in the details table of the inquiry form.

To access the fields of the inquiry form in the widget, use the GetFields\(\) method of the DataScreenBase class. This method returns the InqField class, which provides the following properties:

-   Name: Specifies the internal name of the field
-   DisplayName: Specifies the name of the field as it is displayed in the UI
-   FieldType: Specifies the C\# type of the field
-   Visible: Specifies whether the field is visible in the UI
-   Enabled: Specifies whether the field is enabled in the UI
-   LinkCommand: Specifies the linked command of the field

To access the parameters of the inquiry form in the widget, use the GetParameters\(\) method of the DataScreenBase class, which returns the InqField class.

**Parent topic:**[Creating Widgets for Dashboards](../PlugInDevelopmentGuide/CC__mng_Creating_Widgets_for_Dashboards.md)

