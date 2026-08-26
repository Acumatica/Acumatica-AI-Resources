# PXAccumulator: General Information {#_885a0cce-af5f-4a0d-9330-95e572a85625 .concept}

An accumulator attribute is the [PXAccumulator](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=b95bb57b-03ec-43b4-3d36-334d6662711c) attribute or any attribute derived from it. The use of accumulator attributes is a specific Acumatica Framework technique for fields that are updated frequently \(and often concurrently by multiple users\). An accumulator attribute changes the SQL query that is executed when data is updated in the database.

## Learning Objectives { .section}

In this chapter, you'll learn how to do the following:

-   Implement a custom attribute derived from the PXAccumulator attribute.
-   Specify the values of the fields updated by a PXAccumulator attribute.

## Applicable Scenarios { .section}

You can use an accumulator attribute in either of the following cases:

-   To update a field or multiple fields of a data record without checking for the version of the data record in the database. \(In an ordinary update, the framework generates the SQL statement that checks the time stamp column, if this column exists in the table.\)
-   To define a specific update policy for a column—for instance, to calculate the sum of values in a column on every update. You can also specify restrictions for a column that will be checked by the database during update.

## DAC for Accumulated Values { .section}

Database access classes \(DACs\) that are used exclusively for storing accumulated values usually do not contain audit, time stamp, or NoteID fields. The base [PXAccumulatorAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=b95bb57b-03ec-43b4-3d36-334d6662711c) class \(on which custom attributes are based\) is capable of handling fields of the DateTime type only if they are decorated with one of the following attributes:

-   PXDBLastModifiedDateTimeAttribute
-   PXDBLastChangeDateTimeAttribute
-   PXDBLastModifiedByScreenIDAttribute
-   PXDBLastModifiedByIDAttribute

## Base PXAccumulator Attribute { .section}

The base [PXAccumulator](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=b95bb57b-03ec-43b4-3d36-334d6662711c) attribute has two parameters in the constructor. This attribute applies the Summarize policy to the specified decimal or double fields \(that is, on each update, the new value is added to the database value\) and the Initialize policy to other fields. To override this policy or to set restrictions, you derive a custom attribute class from PXAccumulator and override the PrepareInsert\(\) method in the custom attribute class.

## Use of a PXAccumulator Attribute { .section}

You can add an accumulator attribute directly to a DAC that is updated only from code and not through the UI.

If you have a DAC that users can edit through the UI, you cannot assign a `PXAccumulator` attribute directly to this DAC. Instead, you should derive a new DAC from the original one and assign the accumulator attribute to this derived DAC, so that the derived DAC and the original DAC implement the following alternative ways of updating the related table:

-   All data fields are updated through the original DAC when a record is edited through the UI.
-   The data fields specified in the accumulator attribute are updated through the derived DAC according to the updating policies defined in the accumulator attribute when a record is edited through the code.

**Parent topic:**[Updating Data with a Custom PXAccumulator Attribute](../StudioDeveloperGuide/CodeCustomization_PXAccumulator_Mapref.md)

