# Predefined Size Values {#_ffb4d55f-ef65-4aad-bc01-52bd3df47c6a .concept}

You can use the predefined values described in the table below for the following properties:

-   ColumnWidth, LabelsWidth, and ControlSize of the PXLayoutRule component
-   LabelsWidth and Size of a control

## Predefined Values { .section}

The following table shows the values in pixels that correspond to the predefined constants.

|Predefined Value|ColumnWidth|LabelsWidth and ControlSize of a Layout Rule; LabelsWidth and Size Properties of a Control|
|:--------------:|:---------:|:----------------------------------------------------------------------------------------:|
|*XXS*|100px|40px|
|*XS*|150px|70px|
|*S*|200px|100px|
|*SM*|-|150px|
|*M*|250px|200px|
|*XM*|300px|250px|
|*L*|350px|300px|
|*XL*|400px|350px|
|*XXL*|450px|400px|

## Setting of Predefined Values { .section}

Note the following points about setting the predefined sizes of controls and their labels:

-   For any property for which there are predefined values, you can specify a value in pixels, such as *55px*. \(This format is mandatory if you do not use abbreviations, because the property value can be defined only in pixels.\)
-   There is no predefined value for the Width property of a control. Therefore, you can specify a value for this property by typing any value in pixels, such as *55px*. Before specifying the Width property value for a control, you must define the Size property value for the control as *Empty*.

    **Note:** The Width property is declared in ASP.NET. The Size property is declared in Acumatica Framework, so you can use the predefined values.


**Parent topic:**[Configuring Layout and Size](../StudioDeveloperGuide/CW__mng_Configuring_Layout.md)

