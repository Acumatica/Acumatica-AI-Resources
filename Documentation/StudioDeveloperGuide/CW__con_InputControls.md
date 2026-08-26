# Input Controls {#_87817ddf-d7ad-4ece-b151-c88c434b7318 .concept}

You can add input controls and columns to a container in the Screen Editor of the Customization Project Editor or directly in the ASPX code of the form in Visual Studio. The Screen Editor generates control definitions based on the attributes of DAC fields. It also lists data fields and controls based on the field state.

The type of an input control correlates with the attributes of the DAC field that provides data for the control. To define an input control, you have to add to the DAC field the attributes that correspond to the needed type of the input control \(see the table below\).

In ASP.NET markup, the following properties are required for every input control:

-   ID: Identifies the control within the page. This property is required by ASP.NET.
-   runat="Server": Indicates that the server should create an object of the specified class. This property is required by ASP.NET.
-   DataField: Specifies the DAC field represented by the control.

Particular types of controls may need additional properties, which are shown in the following table.

|Control|Attributes on the DAC Field|ASPX Definition|
|-------|---------------------------|---------------|
|Text box|`[PX(DB)String]`|`<px:PXTextEdit ID= ...> </px:PXTextEdit>`|
|Number edit box|`[PX(DB)Int]` or `[PX(DB)Decimal]`|`<px:PXNumberEdit ID=...> </px:PXNumberEdit>`|
|Mask edit box|`[PX(DB)String(InputMask =...)]`|`<px:PXMaskEdit ID=...> </px:PXMaskEdit>`|
|Drop-down list|`[PXStringList]` or `[PXIntList]`|`<px:PXDropDown ID=...> </px:PXDropDown>`|
|Selector|`[PXSelector]`|`<px:PXSelector ID=...> </px:PXSelector>`|
|Check box|`[PX(DB)Bool]`|`<px:PXCheckBox ID=...> </px:PXCheckBox>`|
|Date-time picker|`[PX(DB)Date]`|`<px:PXDateTimeEdit ID=...> </px:PXDateTimeEdit>`|
|Time span edit box|`[PXDBTimeSpan]`|`<px:PXDateTimeEdit ID=... TimeMode="True"> </px:PXDateTimeEdit>`|

## Field State { .section}

On each round trip, the system generates a *field state* object for each data field that is displayed in the UI. The field state object is initialized and configured on the FieldSelecting event, which happens each time the data is prepared for displaying in the UI. All of the following attributes implement FieldSelecting event handlers and take part in the configuration of the field state object:

-   Attributes that define the data type of a field \(such as PXString and PXDBDecimal\)
-   Attributes that configure special types of input controls \(such as PXSelector and PXStringList\)
-   The PXUIField attribute

The application can also define its own FieldSelecting event handlers.

The field state object includes properties common to the ASPX page controls. The properties specified in the field state object have greater priority and replace the values set for the controls on the ASPX page.

**Parent topic:**[Configuring Boxes](../StudioDeveloperGuide/CW__mng_Configuring_Boxes.md)

