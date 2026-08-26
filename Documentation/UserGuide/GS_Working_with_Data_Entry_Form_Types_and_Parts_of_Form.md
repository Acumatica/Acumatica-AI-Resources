# Record Entry: Basics of Acumatica ERP Forms {#_a9fa60f6-b343-4ffa-a1af-fb5fb612ad1a .concept}

In the following section, you’ll find an overview of the main types of forms that are used in Acumatica ERP.

## Types of Forms in Acumatica ERP { .section}

In Acumatica ERP, forms are essential tools for configuring the system, working with records, generating reports, and exporting and importing data in various formats. You open forms through workspaces, search results, and direct links \(such as those in documentation\).

Here are the main types of Acumatica ERP forms:

-   Data entry: Data entry forms to enter data about day-to-day activities. You use these forms to create new records in the system and to view or edit their settings. An example of a data entry form is the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.
-   Maintenance forms: System administrators and department-specific specialists use maintenance forms to create system records that codify company policies and ease the process of entering records on data entry forms. These records include posting classes, statement cycles, overdue charges, carriers, and ledgers.

    You’ll typically find maintenance forms under the **Preferences** and **Profiles** categories in workspaces. Examples of maintenance forms are the [Credit Terms](CS_20_65_00.md) \(CS206500\) and [Customer Classes](AR_20_10_00.md) \(AR201000\).

-   Lists of records: Each list of records displays existing transactions, documents, profiles, or classes. When you click the name of a data entry or maintenance form in a workspace or on the Search form, the system opens the list of records that have been created by using the form. For example, the Invoices and Memos \(AR3010PL\) list of records shows documents that have been created on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. From a list of records, you can open or create a record on the corresponding form.

    **Tip:** In Help topics and training courses, you may encounter the terms *substitute form* and *list as entry point* to describe lists of records; these terms are used in descriptions of the technical implementation of a list of records.

-   Mass processing forms: You use these forms to mass-process any number of records of particular types, such as invoices or payments. That is, you can mass-change settings of the records or process them in another way.

    With these forms, which are generally listed under the **Processes** category in workspaces, you can process all listed records or only those you select. These forms usually have selection criteria you can use to list the needed records for possible processing. Examples of mass processing forms are [Release AR Documents](AR_50_10_00.md) \(AR501000\), [Process Orders](SO_50_10_00.md) \(SO501000\), and [Recalculate Customer Balances](AR_50_99_00.md) \(AR509900\).

-   Preferences forms: On these forms, administrators specify the general settings for a particular workflow \(such as the processing of sales orders and related documents\) or particular functionality \(such as general ledger or currency management\).

    You may see these forms under the **Preferences** category in workspaces. Some examples of preferences forms are [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) and [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\).

-   Inquiry forms: On an inquiry form, you specify any needed selection criteria and view a list of records that meet the criteria.

    These forms \(listed under the **Inquiries** category in workspaces\) give you visibility into data that has been entered into the system. Examples of inquiry forms include [Account by Period](GL_40_20_00.md) \(GL402000\), [Customer Details](AR_40_20_00.md) \(AR402000\), and [Inventory Summary](IN_40_10_00.md) \(IN401000\).

-   Generic inquiry forms: These forms may be predefined \(delivered with Acumatica ERP\) or and custom \(developed by a technical specialist in your company\). Generic inquiry forms are based on queries that collect data from the Acumatica ERP database and display the results. For details, see [Managing Generic Inquiries](SM__MNG_Managing_Generic_Inquiry.md).
-   Report forms: You use a report form to specify the parameters of a report and then run it. You can then print the generated report, export it to a file, or send it by email.

    Report forms are listed under the **Reports** category in workspaces. Examples of report forms include [AR Balance by GL Account](AR_63_20_00.md) \(AR632000\), [Sales Order Details by Customer](SO_61_10_00.md) \(SO611000\), and [Purchase Order Summary](PO_61_05_00.md) \(PO610500\).


**Parent topic:**[Entering Records into the System](../UserGuide/GS_Working_With_Data_Entry_Forms_Mapref.md)

