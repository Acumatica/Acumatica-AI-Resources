# Configuration of Parameters in Code for the Customization Project Editor {#_50eaa27b-a2d5-403e-a851-5f5a8e41447f .concept}

You can configure a custom set of parameters in code that a customizer can access in the Customization Project Editor. To configure this set of parameters, you implement a dictionary of key–value pairs that represent a set of parameters defined in the code of a graph. The customizer can then access the dictionary keys and use them as parameters to configure various column values on certain pages in the Customization Project Editor that are used to customize a screen.

## Applicable Pages and Columns { .section}

The following table lists the pages of the Customization Project Editor for which you can configure these parameters, the columns on each page whose values can be configured by using the dictionary keys, and the location of these columns on the page.

|Page|Column|Location|
|----|------|--------|
|[Actions](../UserGuide/AU_20_10_50.md)|**Parameter Name** and**Value**|The **Navigation Parameters** tab of the **Action Properties** dialog box \(which opens when **Create New Action** is clicked on the page toolbar\)|
|**Field** and **New Value**|The **Field Update** tab of the **Action Properties** dialog box \(which opens when **Create New Action** is clicked on the page toolbar\)|
|[Event Handlers](../UserGuide/AU_20_10_70.md)|**Field** and **New Value**|The **Field Update** tab of the **Event Handler Properties** dialog box \(which opens when **Add New Record** is clicked on the page toolbar\)|
|[Conditions](../UserGuide/AU_20_10_10.md)|**Field Name**,**Value**, and **Value 2**|The table of the **Condition Properties** dialog box \(which opens when **Add New Record** is clicked on the page toolbar\)|
|[Dialog Boxes](../UserGuide/AU_20_10_40.md)|**Field Name** and**Default Value**|The **Dialog Box Fields** table of the right pane of the page for a dialog box that has been added|
|[Workflows](../UserGuide/AU_20_10_20.md)|**Field Name** and**New Value**|The **Fields to Update After Transition** table of the **Transition Properties** tab \(which opens when a transition has been selected in the **States and Transitions** pane in the [Workflow \(Tree View\)](../UserGuide/AU_20_10_30.md) of the selected workflow\)|
|**Field Name** and **Default Value**|The **Fields** tab of the **States Properties** tab \(which opens when a state is selected in the **States and Transitions** pane in the [Workflow \(Tree View\)](../UserGuide/AU_20_10_30.md) of the selected workflow\)|
|**Field Name** and**New Value**|The **Fields to Update on Entry** tab of the **States Properties** tab \(which opens when a state is selected in the **States and Transitions** pane in the[Workflow \(Tree View\)](../UserGuide/AU_20_10_30.md) of the selected workflow\)|
|**Field Name** and **New Value**|**Fields to Update on Exit** tab of the **States Properties** tab \(which opens when a state is selected in the **States and Transitions** pane in the[Workflow \(Tree View\)](../UserGuide/AU_20_10_30.md) of the selected workflow\)|

## Code Example { .section}

You can define this dictionary in any graph by using the GetAvailableExpressionParameters\(\) method of the IWorkflowExpressionParserParametersProvider interface. The following code shows an example.

```
public class ARScheduleMaint : ScheduleMaintBase<ARScheduleMaint, ARScheduleProcess>, 
           **IWorkflowExpressionParserParametersProvider**
  {
     public Dictionary<string, ExpressionParameterInfo> GetAvailableExpressionParameters()
      {
          return new Dictionary<string, ExpressionParameterInfo>()
	     {
	       {
	         "ScheduleID", new ExpressionParameterInfo()
	           {
	             Value = Schedule_Header.Current?.ScheduleID
		   }
	       }
	     };
      }
  }
```

In the code above, the GetAvailableExpressionParameters\(\) method has returned a dictionary with a single key–value pair. The key is `ScheduleID` \(written in double quotes\), and its corresponding value, which is represented by the Value property of the ExpressionParameterInfo type, has been set to the current value of the `ScheduleID` DAC field in the cache. You can define as many key–value pairs as you may need in this dictionary to represent other parameters.

To access these dictionary keys in the Customization Project Editor, in the relevant column of the row for the field, the customizer enters the `@` symbol, and all available dictionary keys are displayed. The customizer can then select the one that they want to use as a parameter in that particular field.

For example, in the Customization Project Editor, suppose that the customizer is adding a condition on the [Conditions](../UserGuide/AU_20_10_10.md) page of a screen that corresponds to the graph in which the IWorkflowExpressionParserParametersProvider interface is implemented, as shown in the preceding code example. On the **Condition Properties** dialog box of the page, the customizer can access the key described in the previous code example by starting to type `@ScheduleID` in the **Field Name**, **Value**, or **Value 2** column of the added row. The customizer then selects the key when it appears in the drop-down list of available options.

**Parent topic:**[Configuring the UI from the Backend](../StudioDeveloperGuide/BL__mng_Configuring_UI_from_Back_End.md)

