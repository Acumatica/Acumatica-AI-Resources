# Record Entry: To Copy a Record's Contents to a New Record {#_4f451e15-c870-4d9a-a912-738210d9558a .task}

In Acumatica ERP, you can create a record \(a document, transaction, class, or profile\) by coping and pasting the contents of a record of the same type, as described in this topic. These capabilities are available on any data entry or maintenance form that is used for record creation. For more information about the creation of records, see [Record Entry: General Information](../Shared/../UserGuide/GS_Working_With_Data_Entry_Forms_GeneralInfo.md) and [Record Entry: Copy-and-Paste Options and Record Templates](../Shared/../UserGuide/SM__con_Copy-and-Paste_Options_and_Document_Templates.md).

**Tip:** If a record contains more than 1,000 detail lines, the system copies only the first 1,000 detail lines to a new record.

## To Copy a Record's Contents to a New Record { .section}

1.  On the data entry or maintenance form, open the record that you want to copy.
2.  On the **Clipboard** menu on the form toolbar, click **Copy**.

    The contents of the record are copied to the clipboard.

3.  On the form toolbar, click **Add New Record**.
4.  On the **Clipboard** menu, click **Paste**.

    The contents of the clipboard are pasted into the new record.

    **Tip:** If the product configurator is use in your system—that is, if the *Product Configurator* feature is enabled on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form—a line item of some records may be defined as configurable. If the original record contains any line with a configurable item, the system does not copy the configuration-related settings of the line to the new record.

5.  Edit the elements in the new record.
6.  On the form toolbar, click **Save** to save the new record.

Now you can process the new record according to your company's workflow.

**Parent topic:**[Entering Records into the System](../UserGuide/GS_Working_With_Data_Entry_Forms_Mapref.md)

