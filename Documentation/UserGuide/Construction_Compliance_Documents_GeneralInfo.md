# Compliance Documents: General Information {#_f615d7a4-a621-4c49-b981-e1b560d6f7b6 .concept}

Companies that manage construction projects have requirements to protect their customers, vendors, suppliers, and partners from potential issues associated with compliance. These compliance issues might be associated with federal, state, and local governmental requirements, but may also be legal and procedural. By tracking compliance, a company can establish the compliance documents that should be captured for different types of entities, so that this information can be used for in-place warnings to users and for reports on project exposure.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Configure categories and statuses for compliance documents
-   Enter compliance documents for a vendor
-   Track expired compliance documents

## Applicable Scenarios { .section}

You apply a compliance document to an entity in the system when it is necessary to warn users about potential issues associated with compliance.

## Creation of Compliance Types { .section}

You can use compliance types—that is, types of compliance documents—for tracking and reporting on compliance issues. The following compliance types are predefined on the **Custom Attributes** tab of the [Compliance Preferences](CL_30_10_00.md#) \(CL301000\) form:

-   *Certificate*
-   *Insurance*
-   *Lien Waiver*
-   *Notice*
-   *Status*
-   *Other*

You define the values of the custom attributes for any of the listed compliance types on the [Compliance Preferences](CL_30_10_00.md#) form. On the **Common Attributes** tab of the form, you can also configure common attributes that are available for all types of compliance documents. Once attribute values have been configured for a compliance type, you can enter and view compliance documents of that type on the [Compliance Management](CL_40_10_00.md#) \(CL401000\) form.

## Creation of Compliance Documents { .section}

Each compliance document can be associated with various types of documents and with multiple entities, such as project, project task, cost code, vendor, and customer. You add compliance documents manually in the following ways:

-   By adding a row on the **Compliance** tab of the respective form, and specifying the type of the compliance document in the **Document Category** column. Then you specify other compliance settings in the row, such as the project, the effective and expiration dates, and the corresponding documents. You can add the compliance documents on the following forms:
    -   [Vendors](AP_30_30_00.md#) \(AP303000\)
    -   [Bills and Adjustments](AP_30_10_00.md#) \(AP301000\)
    -   [Checks and Payments](AP_30_20_00.md#) \(AP302000\)
    -   [Customers](AR_30_30_00.md) \(AR303000\)
    -   [Invoices and Memos](AR_30_10_00.md#) \(AR301000\)
    -   [Projects](PM_30_10_00.md#) \(PM301000\)
    -   [Project Tasks](PM_30_20_00.md#) \(PM302000\)
    -   [Project Transactions](PM_30_40_00.md#) \(PM304000\)
    -   [Purchase Orders](PO_30_10_00.md) \(PM301000\)
    -   [Change Orders](PM_30_80_00.md#) \(PM308000\)
    -   [Subcontracts](SC_30_10_00.md) \(SC301000\)
-   By creating a compliance document directly on the [Compliance Management](CL_40_10_00.md) \(CL401000\) form. On this form, you add a row to the table, and specify the type of the compliance document in the **Document Category** column. After you save your changes, the compliance document will also be shown on the **Compliance** tab for each of the related documents or records.

For compliance documents with the *Insurance* document type, the system prevents you from creating duplicated documents. You can add multiple insurance documents with the same policy if any of the following values differs in these documents: document category, vendor, project, effective date, expiration date, and limit.

**Tip:** For information about manual creation of lien waivers, see [Lien Waivers: Manual Creation of Lien Waivers](Construction_Lien_Waivers_Manual_Lien_Waivers.md).

On the **Compliance** tab of each of the forms listed above, you can review the compliance documents associated with the document or entity. Based on the entered information, the system warns users of any records with compliance issues. For example, if a compliance document is overdue for a particular bill, the system displays a warning message on the [Bills and Adjustments](AP_30_10_00.md#) form.

**Parent topic:**[Tracking Compliance Documents](../UserGuide/Construction_Compliance_Documents_Mapref.md)

