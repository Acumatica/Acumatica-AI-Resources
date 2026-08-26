# Data Validation: General Information {#_ef027672-5273-41bb-a58a-739ffcd6d581 .concept}

In Acumatica ERP, you can perform data validation by using the FieldVerifying and RowUpdating event handlers. If validations fail, you can use a data access class \(DAC\) descriptor to generate identifying information about a particular record of a DAC in a standardized format. A *descriptor* is a textual representation of a record that’s generated in a standard format for consistency. DAC descriptors uniquely identify data records that cause errors, making debugging faster and more precise.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Use the FieldVerifying event handler to independently validate the value of a field
-   Throw the PXSetPropertyException exception to cancel the update of the field
-   Invoke the RaiseExceptionHandling&lt;&gt;\(\) method to display a warning to the user if the value of the field was corrected automatically after a failed validation
-   Use the RowUpdating event handler to implement the validation for any number of fields based on the values of other fields of the same data record
-   Use the Cancel property of the event arguments of the RowUpdating event handler to cancel the update process
-   Use a DAC descriptor to identify an error-causing record on the Acumatica Trace page.

## Applicable Scenarios { .section}

You perform data validation in the following cases:

-   You need to independently validate the data contained in a field of a data record before persisting it to the database
-   You need to validate the data contained in any number of fields of a data record before persisting it to the database

## Process of Data Validation { .section}

If you want to independently validate a value inserted by a user, you should implement the FieldVerifying event handler for the data field. You can use this approach to check restrictions on the absolute value. For details, see [Data Validation: Validation of Field Values](CodeCustomization_DataValidation_FieldValuesValidation.md).

If validation depends on other fields of the same data record, you should implement the validation in the RowUpdating event handler. The RowUpdating event happens during the update of a data record, after all field-related events have occurred. At the moment when the RowUpdating event is triggered, the modifications have not been applied to the data record stored in the cache yet; if needed, you can cancel the update process.

For details, see [Data Validation: Validation of a Data Record](CodeCustomization_DataValidation_DataRecordValidation.md).

If the validation fails in any of the scenarios described earlier, you can use a DAC descriptor to identify the error-causing record. This lets you pinpoint an error-causing record and display the related information on the Acumatica Trace page. You can also use the information contained in a descriptor to improve the quality of the error messages that are displayed on a form. For details, see [Data Validation: Identifying Error-Causing Records with DAC Descriptors](CodeCustomization_DataValidation_DacDescriptors.md).

**Parent topic:**[Validating Data](../StudioDeveloperGuide/CodeCustomization_DataValidation_Mapref.md)

