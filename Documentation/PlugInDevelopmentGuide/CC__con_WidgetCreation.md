# Widget Creation {#_a8abf2d5-d758-4968-a5db-20ae1821171e .concept}

When you create a custom widget to be used in Acumatica ERP or an Acumatica Framework-based application, you must implement at least the three classes described in the sections below. \(For details on the implementation of the classes, see [To Create a Simple Widget](CC__how_Create_Simple_Widget.md#) and [To Create an Inquiry-Based Widget](CC__how_Create_Inquiry-Based_Widget.md#).\)

## Data Access Class with the Widget Parameters { .section}

The data access class \(DAC\) with the widget parameters is a general DAC that extends the PXBqlTable class and implements the IBqlTable interface.

You can use any DAC attributes with this DAC. However, only the fields with PXDB attributes, such as PXDBString and PXDBInt, are stored in the database. The values of these fields are stored in the database automatically; you do not need to create a database table for them.

The fields of the DAC are displayed as controls in the **Widget Properties** dialog box when a user adds a new widget instance to a dashboard or modifies the parameters of an existing widget instance. \(The way the controls are displayed depends on [PXFieldState](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=f3554728-6c54-4640-3fc1-73e847feeb71) of the corresponding fields.\) For information on adding comprehensive controls to the dialog box, see [To Add Custom Controls to the Widget Properties Dialog Box](CC__how_Add_Custom_Controls_to_Widget_Wizard.md#).

## Graph for the Widget { .section}

The graph for the widget is used to manage the widget parameters and read data for the widget. The graph must be inherited from the PX.Dashboards.WizardMaint class. For the widget graph, you can manage widget parameters by defining new events and redefining the events that are available in the base classes, such as the RowSelected and FieldSelecting events. \(You work with the events of the widget graph in the same way as you work with the events of a general graph.\)

## Class of the Widget { .section}

The widget class is used by the system to work with the widget instances. The widget class must implement the PX.Web.UI.IDashboardWidget interface. The system treats as widgets the classes that implement this interface and are available in a library in the `Bin` folder of an instance of Acumatica ERP or Acumatica Framework-based application. The caption and description of the widget from these classes are displayed in the **Add Widget** dialog box automatically when a user adds a new widget to a dashboard. The methods of this class are used by the system to manage the parameters of a widget instance and display the widget on a dashboard page.

**Parent topic:**[Creating Widgets for Dashboards](../PlugInDevelopmentGuide/CC__mng_Creating_Widgets_for_Dashboards.md)

