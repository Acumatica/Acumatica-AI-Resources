# Correct Assignment of Field Values in Tests: General Information {#_17a2b99d-7721-430e-bc24-d1a3906138d4 .concept}

When you create unit tests for graphs or graph extensions, you may encounter various difficulties related to assigning field values: If you assign field values in the wrong places, the results of the code execution may be unpredictable.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Specify the values of key and non-key fields when an object is created or updated
-   Use the default field values when an object is created

## Applicable Scenarios { .section}

In unit tests, you specify field values every time you create or update DAC objects in the cache.

## Assignment of Values to Fields { .section}

When you are assigning values to DAC fields in unit tests, you need to handle key fields and non-key fields differently.

When you create a DAC object in the cache, you use the `PXCache.Insert` method. As a result, some values \(either default values or values you specify\) are assigned to the key fields of the DAC object. After a DAC object is created, you alter its fields by using the `PXCache.Update` method. If you alter the key fields in this way, the old DAC object remains unchanged in the cache, but another DAC object with the specified values of the key fields is created or updated in the cache.

So to avoid mistakes, you should assign values to the key fields of a DAC object at the stage of creation and should not change them afterward.

If a DAC object you are going to create has a key field that is defined with the `PXSelector` or `PXDBDefault` attribute, the default value of this key field is taken from the `Current` property of the DAC specified in the attribute.

**Parent topic:**[Correctly Assigning Field Values in Tests](../DeveloperGuide/UnitTest_AssignFieldValues_Mapref.md)

