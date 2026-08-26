# Record Entry: Copy-and-Paste Options and Record Templates {#_fcb022ae-7e19-4d22-acb6-4adcd84868c0 .concept}

During the normal course of business, you may need to repeatedly enter recurring or similar records \(which may be documents, transactions, classes, or profiles\)—some of which include many lines. To help you minimize input errors and save time, Acumatica ERP provides record templates and copy-and-paste options for data entry forms and maintenance forms. When you're creating a record, you can use either functionality to ease this process.

## Copying and Pasting { .section}

In Acumatica ERP, you can easily create a record by copying and pasting the data of an existing record of the same type. You can use this functionality on data entry and maintenance forms. The copying and pasting options are offered on the **Clipboard** \(![](Images/GS_forms_clipboard_menu.png)\) menu on the form toolbar.

Suppose that you have already entered an opportunity for a customer. Now the customer wants to place a similar order and asks you to create an opportunity. To save time, you can quickly add the new opportunity to the system by copying the settings of the previous one and pasting them into the new record.

**Attention:** If the product configurator is used in your system—that is, if the *Product Configurator* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form—a line item of some records may be defined as configurable. If the original record contains any line with a configurable item, the system doesn’t copy the configuration-related settings of the line to the new record.

**Tip:** If a record contains more than 1,000 detail lines, the system copies only the first 1,000 detail lines to a new record.

## Using Templates { .section}

You can create an unlimited number of templates for various records—such as bills, invoices, sales orders, purchase orders, leads, contacts, customers, vendors, or business accounts—through the appropriate data entry forms. You can also use templates for most records created by maintenance forms. These records include customer and vendor classes, stock and non-stock items, warehouses, kit specifications, and mailing lists. You even can create a template of a chart of inter-branch account mapping.

You can create a template based on a record that has any status and any number of elements filled in. For any element, you can direct the system to use the default value rather than the value determined by the template. If needed, the template can include detail lines.

When you are creating a record based on the template, you can change the value of any element and add new lines to the record.

Once you open a record that you want to use as a template for similar records, create the template based on the record as follows:

1.  On the **Clipboard** menu on the form toolbar, click **Save as Template**.

    The system opens the [Document Templates](SM_20_90_20.md) \(SM209020\) form, where you can see the selected record with all its values.

2.  Provide a brief description of the template. This description will also be used as the template's identifier.
3.  In the table, make sure that no element holds the reference number of the record; a new reference number will be generated for any record based on this template.
4.  For date- or period-related elements \(such as the record's date, post period, due date, and cash discount date\), clear the **Active** check boxes. For any new record, another date will be needed. The values of these date- and period-related elements will be calculated automatically, based on the date and other settings, such as the credit terms associated with the customer or vendor.
5.  Clear the **Active** check box for the following elements:
    -   The reference number or identifier provided for the record
    -   Elements that should have default values rather than values from the template
6.  Save the template.

You can use the saved template on the data entry form each time you want to create a record based on the template. If you have saved multiple templates for the data entry form, you can select which template you want to use while you are creating a record on this form.

If you need to manually enter the name or identifier for the type of record you want to create by using a template, you need to first create a record and type the name or ID of the record. Then you click **Paste from \(Template Name\)** to insert data in the record from the selected template. After making any needed changes, you save the record.

**Parent topic:**[Entering Records into the System](../UserGuide/GS_Working_With_Data_Entry_Forms_Mapref.md)

