# PXAccumulator: Implementation of a Custom PXAccumulator Attribute {#_4a390c23-00d9-4240-8507-013b3d29130b .concept}

When you define a custom accumulator attribute, you typically implement the members that are described in the following sections.

**Tip:**

-   For reference information on methods and properties that you can use in the PXAccumulator attribute, see [PXAccumulatorAttribute Class](https://help.acumatica.com/(W(69))/Help?ScreenId=ShowWiki&pageid=b95bb57b-03ec-43b4-3d36-334d6662711c).
-   For an example of implementation of a custom accumulator attribute, see [PXAccumulator: To Implement a Custom Accumulator Attribute](CodeCustomization_PXAccumulator_Activity_CustomAttribute.md).

## Attribute Constructor { .section}

By setting the value of the `_SingleRecord` field in the constructor to *true*, you specify that the system should use single-record update mode. In this mode, the attribute updates the data record independently from the existing data records and does not add any restrictions to future data records. In single-record update mode, the framework generates a specific SQL statement that updates an independent record. By default, single-record mode is not used.

## PrepareInsert\(\) Method { .section}

In the overridden PrepareInsert\(\) method, you first have to invoke the base PrepareInsert\(\) method to initialize the collection of columns. If the base PrepareInsert\(\) method returns true, the collection of columns is initialized. Then in the overridden method, you can set restrictions and update policies for specific columns. For details about policies, see the description of the [PXDataFieldAssign.AssignBehavior](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=fbcdff0e-51eb-c832-9e67-25a8737e649b) enumeration.

In the PrepareInsert\(\) method, the columns are represented by an object of the [PXAccumulatorCollection](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=46ab7cdc-7997-9486-262c-36cb169c17d2) class. To update a value or to set a restriction for a column, you invoke the needed generic method of the `columns` collection. You can use the following methods in single-record mode \(that is, when `_SingleRecord = true` is specified in the attribute constructor\):

-   `columns.Update()`: Sets the update policy for the field.
-   `columns.Restrict()`: Sets the value restriction for the column. The restriction triggers the PXLockViolationException exception, which you should handle in the overridden PersistInserted\(\) method of the attribute.

## PersistInserted\(\) Method { .section}

If you set any restrictions, you have to override the PersistInserted\(\) method. For details, see [PXAccumulator: Implementation of an Update with Restrictions](CodeCustomization_PXAccumulator_UpdateWithRestriction.md).

**Parent topic:**[Updating Data with a Custom PXAccumulator Attribute](../StudioDeveloperGuide/CodeCustomization_PXAccumulator_Mapref.md)

