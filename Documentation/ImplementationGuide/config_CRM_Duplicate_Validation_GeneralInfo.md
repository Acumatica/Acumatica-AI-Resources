# Duplicate Validation: General Information {#_5f0a5e14-0b12-43c6-8eb5-29a1fd5bb417 .concept}

Acumatica ERP provides flexible tools for eliminating duplicate records. An implementation consultant or a system administrator can configure duplicate validation for lead, contact, business account, customer, and vendor records. To prevent the creation of duplicate records, the system can validate leads, contacts, business accounts, customers, and vendors for duplicates before a user does either of the following:

-   Creates a new record in the system manually
-   Imports or uploads a group of new records to the system by using an import scenario, uploading from an Excel file, or API services

This topic provides general information about configuring duplicate validation in Acumatica ERP.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Configure duplicate validation for leads, contacts, business accounts, customers, and vendors
-   Calculate validation scores \(grams\) for leads, contacts, business accounts, customers, and vendors

## Applicable Scenarios { .section}

You may want to configure duplicate validation in scenarios that include the following:

-   You have initially implemented Acumatica ERP, the *Customer Management* feature is included in your license, and you need to give users the ability to use the duplicate validation functionality.
-   You need to change the current duplicate validation settings in the system.

## Duplicate Validation in Acumatica ERP {#_b367349b-5a4a-475c-9fd0-1c05a60f750b .section}

When a new lead, contact, business account, customer, or vendor is created in the system, Acumatica ERP can check a record for duplicates automatically or at the request of the user. The system can check a record for duplicates on entry \(before the record is saved at least once\) and prevent the creation of duplicate records. The system also checks the changed record for duplicates and inserts *Possible Duplicate* in the **Duplicate** box of the saved record \(except a customer or vendor\) if at least one possible duplicate was found.

Records can be validated for duplicates if the following setup tasks have been performed in the system:

1.  The *Duplicate Validation* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
2.  Default duplicate validation rules have been defined for each combination of record types, such as leads and contacts, or contacts and business accounts, on the [Duplicate Validation](../UserGuide/CR_10_30_00.md) \(CR103000\) form. For details, see [Duplicate Validation: Rules](config_CRM_Duplicate_Validation_Rules.md).
3.  Additional duplicate validation settings may also be specified on the [Duplicate Validation](../UserGuide/CR_10_30_00.md) form. For details, see [Record Validation for Duplicates: Implementation Checklist](../UserGuide/CRM_Mktg_Validating_Recs_Duplicates_Implem_Checklist.md).
4.  The calculation of grams, which are used for the calculation of validation scores, has been performed for each contact, lead, business account, customer, or vendor record on the [Calculate Grams](../UserGuide/CR_50_34_00.md) \(CR503400\) form. For details, see [Duplicate Validation: Calculation of Validation Scores](config_CRM_Duplicate_Validation_Grams_Calculation.md).

After the setup tasks have been performed, users can validate individual records for duplicates and merge duplicate records into one record. The merge involves updating the information in the target record \(the record that a user wants to keep as a result of the merge\) and closing the duplicate record. Optionally, users can link the related leads, contacts, and business accounts. As a result, the leads, contacts, and business accounts in the system are free of duplication, which improves productivity for the personnel, who can now work with consistent and reliable data. For details, see [Record Validation for Duplicates: General Information](../UserGuide/CRM_Mktg_Validating_Recs_Duplicates_GeneralInfo.md).

A system administrator can validate multiple records for duplicates. For details, see [Record Validation for Duplicates: Mass-Validation of Records](../UserGuide/CRM_Mktg_Validating_Recs_Duplicates_Mass-Validating_Recs.md).

**Parent topic:**[Duplicate Validation](../ImplementationGuide/config_CRM_Duplicate_Validation_Mapref.md)

