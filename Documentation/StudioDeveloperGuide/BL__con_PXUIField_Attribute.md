# UI Field Configuration {#_9fa848ae-704a-4332-95bd-0beac0180ddb .concept}

By using the [PXUIField](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=79a99243-7926-f570-87ed-536a04ccfe32) attribute, you can configure the layout of input controls and buttons. The attribute is mandatory for all data access class \(DAC\) fields displayed in the user interface.

## Setting of the PXUIField Attribute { .section}

You can add the PXUIField attribute in the following ways:

-   To a DAC field declaration to configure the field input control, as shown in the following example

    ```
    [PXDBDate()]
    [PXUIField(DisplayName = "Pay Date")]
    public virtual DateTime? PayDate { get; set; }
    ```

-   To the declaration of a method that implements an action to configure the action button, as shown in the following sample code

    ```
    [PXUIField(DisplayName = "View Document",
               MapEnableRights = PXCacheRights.Select,
               MapViewRights = PXCacheRights.Select)]
    [PXButton]
    public virtual IEnumerable viewDocument(PXAdapter adapter)
    {
        ...
    }
    ```


The attribute's properties determine the control layout in the user interface. You can specify the display name, specify whether the control is visible and available, set the error marker, and specify the access rights to view and use the control.

## Setting of the Properties of the PXUIField Attribute at Runtime { .section}

You can use the static methods \(such as SetEnabled and SetRequired\) of the PXUIFieldAttribute class to set the properties of a control at runtime. The PXUIFieldAttribute static methods can be called in the graph constructor or the RowSelected event handlers.

**Note:** The RowSelected event handler is raised when the user interface controls are prepared to be displayed. This happens each time the form sends a request to the server.

If you want to modify the Visible, Enabled, and Required properties for all detail rows in a grid, you use the RowSelected event handler of the primary view DAC. If you want to set the Enabled property of a field in particular row in a grid, you use the RowSelected event handler of the DAC that includes this field.

If the grid column layout is configured at runtime, you set the data parameter of the corresponding method to null. This indicates that the property should be set for all data records shown in the grid. If a specific data record is passed to the method rather than `null`, the method invocation has no effect.

**Note:** If you want to change the Visible or Enabled property of PXUIFieldAttribute for a button at runtime, you use the corresponding static methods of PXAction. You usually use these methods in the RowSelected event handler of the primary view DAC.

**Parent topic:**[Working with Attributes](../StudioDeveloperGuide/BL__mng_Working_With_Attributes.md)

