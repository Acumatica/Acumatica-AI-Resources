# Validating Data {#_81205f8f-bd33-4e0c-87ed-06a8c5c37719 .concept}

Before persisting a data record to the database, you must validate the data contained in its fields. You may need to validate the value in a field of a data record independently. You may also need to validate the values of any number of fields based on the values of other fields of the same data record. If the validation fails, you must cancel the update of the data record and provide clear error messaging to the user.

In this chapter, you will learn how to use the FieldVerifying and RowUpdating event handlers to implement data validation. You will also learn how to identify error-causing records by using data access class \(DAC\) descriptors.

-   **[Data Validation: General Information](../StudioDeveloperGuide/CodeCustomization_DataValidation_GeneralInfo.md)**  

-   **[Data Validation: Validation of Field Values](../StudioDeveloperGuide/CodeCustomization_DataValidation_FieldValuesValidation.md)**  

-   **[Data Validation: Validation of a Data Record](../StudioDeveloperGuide/CodeCustomization_DataValidation_DataRecordValidation.md)**  

-   **[Data Validation: Identifying Error-Causing Records with DAC Descriptors](../StudioDeveloperGuide/CodeCustomization_DataValidation_DacDescriptors.md)**  


**Parent topic:**[Working with Events](../StudioDeveloperGuide/BL__mng_Working_With_Events.md)

