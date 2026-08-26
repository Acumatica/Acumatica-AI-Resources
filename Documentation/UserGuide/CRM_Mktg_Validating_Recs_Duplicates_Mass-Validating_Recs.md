# Record Validation for Duplicates: Mass-Validation of Records {#_8018b186-72da-4958-9d14-e7fc03826f45 .concept}

Acumatica ERP provides the ability to mass-validate groups of leads, contacts, and business accounts for duplicates.

To mass-validate these records, you use the [Validate Records](CR_50_34_30.md) \(CR503430\) form. On this form, you can select for validation either all records or only records with *Not Validated* selected in the **Duplicate** box of the record creation form.

**Attention:** Validating all the records in the system may be a time-consuming process if you are validating a very large number of records. You can speed duplicate validation by using parallel processing. For details, see [Duplicate Validation: Implementation Checklist](../ImplementationGuide/config_CRM_Duplicate_Validation_Implem_Checklist.md).

If you are validating all records, once you click **Process All** on the form toolbar, the system starts the processing of the records by first inserting *Not Validated* in the **Duplicate** box in the Summary area of the [Leads](CR_30_10_00.md) \(CR301000\), [Contacts](CR_30_20_00.md) \(CR302000\), and [Business Accounts](CR_30_30_00.md) \(CR303000\) forms.

The system then validates each of the records and inserts either *Validated* or *Possible Duplicate* in the **Duplicate** box for the record.

**Attention:** We recommend that you not interrupt the duplicate validation process. If you do, you will not be able to resume it; each time you click **Process All**, the processing starts anew for all listed records.

**Parent topic:**[Validating Records for Duplicates](../UserGuide/CRM_Mktg_Validating_Recs_Duplicates_Mapref.md)

