# Record Entry: General Information {#_f6ca32a5-7560-43a1-b2c4-5177adff7e6c .concept}

In Acumatica ERP, records are the building blocks of your daily operations. Understanding how to work with them efficiently is essential for smooth workflows and accurate data.

In the following sections, you’ll learn about the types of records used in Acumatica ERP. You’ll also learn about opening forms and creating, copying, and viewing records there.

## Learning Objectives { .section}

In this chapter, you’ll learn how to do the following:

-   Open a form to enter a record
-   Create a new record on a form
-   Copy an existing record to create a new record on the same form

## Applicable Scenarios { .section}

You enter a record in any of the following cases:

-   You need to create a record from scratch.
-   You need to create a record by using a template or copying an existing record.

## Records in Acumatica ERP {#section_dyh_hch_flb .section}

Much of the work that most users do in the system involves creating and working with records: objects in the system that can be created by a user or the system. Some examples of records include AR invoices, GL transactions, customers, employees, and stock items. A record can be categorized as any of the following:

-   Transaction: A record that represents the exchange or movement of money, goods, or services. Examples of transactions include change orders, bank deposits, and inventory issues.
-   Document: A record, traditionally represented by a paper document, that contains information about an agreement, exchange, or other business activity. Examples of documents include sales orders, invoices, and payments.
-   Profile: A record that holds the basic settings of a person, company, or other internal entity when no exchange or movement is involved. Examples of profiles include customers, employees, inventory items, fixed assets, credit terms, and projects.
-   Class: A special type of record that holds the settings of a particular group of profiles that share common characteristics. Classes are used for reporting purposes and for providing default values during data entry of individual records. Examples of classes include item classes, customer classes, vendor classes, lead classes, opportunity classes, and account classes.

## Records and Lists of Records {#section_bzg_gth_3fc .section}

You can view an individual record on its entry form, such as [Purchase Orders](PO_30_10_00.md) \(PO301000\). You can also view a list of records of this type. For example, the Purchase Orders \(PO3010PL\) list of records shows all purchase orders that have been created on the entry form.

You’ll usually open entry forms or lists of records from workspaces or the Search form \(**Menu Items** tab\). Forms for record creation are generally listed under the **Transactions** and **Profiles** categories. When you find the needed form, you can:

-   Click the **New** button to the right of the form name to open the entry form for creating a new record.
-   Click the link with the form name to open the list of records created on this form. In the list of records, you can then click:
    -   Any link to a record. The system opens the corresponding form with the record selected.
    -   The **New Record** button on the form toolbar. The system opens the corresponding form for creating a new record.

## Other Ways to Create Records {#_ad84593a-0660-434a-b5ac-56a60a58958e .section}

In addition to creating a record from a workspace, the Search form, or a list of records, you can create a new record in the following ways:

-   By clicking a link of a form ID that is mentioned in a Help topic: When forms are mentioned in a Help topic, you may see a form ID enclosed within parentheses, such as *\(SO301000\)*. You can click the form ID to open the data entry form to create a new record.
-   By clicking a command on the More menu of certain forms: For example, to create a new business account, you can click **Create Account** on the More menu of the [Leads](CR_30_10_00.md) \(CR301000\) form. The system opens a dialog box with the basic settings for a new record. If you click **Create &amp; Review**, the system opens the [Business Accounts](CR_30_30_00.md) \(CR303000\) form with the new record. You can review it and specify additional settings.
-   From a UI element with a magnifier button on a data entry form: Some forms contain boxes or columns with a magnifier button. Clicking this button opens a lookup table, where you can click the Plus button to create a new record. The system opens the corresponding data entry form in a pop-up window. For details, see [Record Entry: To Create a New Record by Using a Lookup Table](GS_ModernUI_Changes_in_UI_Activity.md).

## Entry of the Settings of a Record { .section}

In Acumatica ERP, you can enter the needed settings of a record in the following ways:

-   By manually entering all relevant settings: Starting with a blank data entry form \(except for the default settings entered by the system\), you fill in the data of the record.
-   By using the **Copy** and **Paste** menu commands: You can copy and paste a record of the same type \(that is, created on the same form\) and change or enter additional settings as needed.
-   By selecting a template or class: You select a previously created template or class for the new record, and the system fills in some settings of the record based on the settings of the template or class. You then enter or edit any needed settings.
-   By using a specific command: Some data entry forms provide a specific command on the More menu of the form to copy the existing record to a new one. For example, the **Copy Order** command on the More menu of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form can be used to copy the selected order.

If you create a record by copying another record or use a template or class, you can create records much more easily because you need to fill in or change fewer settings. For applicable forms, you can find the copying and pasting commands and a list of templates in the **Clipboard** \(![](Images/GS_forms_clipboard_menu.png)\) menu on the form toolbar. For details, see [Record Entry: To Copy a Record's Contents to a New Record](GS__how_Copy_Documents.md) and [Record Entry: To Create a Record by Using a Template](GS__how_Create_Document_Using_Template.md).

For more information, see [Record Entry: Copy-and-Paste Options and Record Templates](SM__con_Copy-and-Paste_Options_and_Document_Templates.md).

**Parent topic:**[Entering Records into the System](../UserGuide/GS_Working_With_Data_Entry_Forms_Mapref.md)

