# To Add a Reporting Ledger {#_8c8750b6-2ff8-44ea-98c5-38258e60b17f .task}

In Acumatica ERP, you use the [Ledgers](GL_20_15_00.md) \(GL201500\) form to add a reporting ledger to keep the results of translations or consolidations for reporting purposes. For details on reporting ledgers, see [Reporting Ledgers](GL__CON_Reporting_Ledger.md).

## To Add a Reporting Ledger {#section_bp2_mjv_vxb .section}

1.  Open the [Ledgers](../Shared/../UserGuide/GL_20_15_00.md) \(GL201500\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record**.
3.  In the **Ledger ID** box, type the unique identifier to be used for the ledger.
4.  In the **Description** box, briefly describe the ledger.
5.  In the **Type** box, select *Reporting*.
6.  In the **Currency** box, select the currency of the ledger.
7.  On the form toolbar, click **Save**.

## Notes About the Procedure {#section_cp2_mjv_vxb .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note that you can search for a form by its name or its form ID \(without periods\).

Note the following about the Summary Area of the form:

-   The **Currency** box is available only if the *Multicurrency Accounting* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

You can later delete the ledger or modify its properties only if it has no journal entries or other records.

**Parent topic:**[Managing Ledgers](../UserGuide/GL__MNG_Managing_Ledgers.md)

