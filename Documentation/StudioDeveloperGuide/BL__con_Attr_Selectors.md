# Complex Input Controls {#_e4cb712a-076e-4da4-b7dc-79be3192e8ef .concept}

You can use attributes to configure complex input controls, such as drop-down lists and lookup controls.

## Drop-Down Lists { .section}

You can use the following attributes to configure a drop-down list that represents a data access class \(DAC\) field in the user interface:

-   [PXStringList](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=eb18681d-a07f-87ae-3738-cb6452c24260): Configures a drop-down list from which a user can select from a fixed set of strings.
-   [PXIntList](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=28123f32-901e-d16d-e344-389db0bd47dd): Configures a drop-down list where a user can select from a fixed set of values. The control displays strings, while the field is assigned the integer value corresponding to the selected string.
-   [PXDecimalList](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=e71e367c-8a1f-7417-8f5a-5a7f3f09afae): Configures a drop-down list where a user can select from a fixed set of strings converted to decimal values.
-   PXImagesList: Configures a drop-down list where a user can select from a fixed set of images.
-   [PXDBIntList](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=603bcc33-9361-ff33-653e-620d741043a0): Configures a drop-down control for an integer field. The values and labels for the drop-down control are retrieved from the specified database table.
-   [PXDBStringList](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=2076c38a-276b-88b9-5ac6-6c67ecccf91f): Configures a drop-down control for a string field. The values and labels for the drop-down control are retrieved from the specified database table.

## Lookup Controls { .section}

You can use the following attributes to configure a lookup control that represents a field in the user interface:

-   [PXSelector](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=ba7af401-68a9-90bd-9a63-8b2ab7d23c4b): Defines a lookup control for a DAC field that references a data record from a particular table by holding its key.
-   [PXCustomSelector](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=8a1353af-bac5-43cb-40ce-92cd8972595f): Serves as the base class to derive custom attributes used to configure lookup controls.
-   [PXRestrictor](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=a983c4ed-43c2-524d-5c8b-e9076cce1c1c): Adds a restriction to a BQL command that selects data for a lookup control, and displays an error message when the value entered does not fit the restriction. The attribute works only with PXSelector and cannot be used with PXCustomSelector.

## Segmented Key Controls { .section}

A segmented key value is a string value that identifies a data record in the system and consists of one segment or multiple segments. A segmented key is an entity that is identified by a string \(referred to as a *dimension*\) and associated with segments. For each segment, you can define the list of possible values. You can create a new segment when the data records identified by the segmented key already exist in the database.

You can use the following attributes to configure a control to input a segmented key value in the user interface:

-   [PXDimension](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=60b4d8bd-443c-df2d-19dd-fbe3da498dee): Defines an input control that formats the input as a segmented key value and displays the list of allowed values for each key segment.
-   [PXDimensionSelector](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=f7929dbd-2f95-857a-9fca-ab2d0d669008): Defines an input control that combines the functionality of the PXDimenstion attribute and the PXSelector attribute. A user can view the data set defined by the attribute and select a data record from this data set to assign its segmented key value to the field or to replace it with the surrogate key.
-   [PXDimensionWildcard](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=461e2062-b207-ad23-e694-2d95dfb3912a): Behaves similarly to the PXDimensionSelector attribute, but also allows the *?* character to be treated as a wildcard.

**Parent topic:**[Working with Attributes](../StudioDeveloperGuide/BL__mng_Working_With_Attributes.md)

