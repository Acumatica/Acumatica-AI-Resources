# Managing Project Files: General Information {#_a9aac385-b491-40d0-9a7e-e920051bd2ce .concept}

You can work with all of a project’s files centrally—whether they relate to the entire project or a project-related record. You can view, filter, and preview files, as well as upload new versions and link files to records.

**Attention:** The functionality is available in the Modern UI when the *Document Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Learning Objectives { .section}

-   Configure tags for project files and control access to them
-   Create project tag templates and assign them to projects
-   Manage all files related to a project centrally
-   Manage all files related to a project's records centrally

## Applicable Scenarios { .section}

You use project file management in Acumatica ERP to organize project documents, control access to sensitive documentation, and make critical project information easy to find.

## Configuring Project File Management { .section}

To configure project file management in Acumatica ERP, you perform the following general steps:

1.  Configuring tags for project files and file access, as described in [Managing Project Files: Tag and File Access Setup](Projects_File_Management_Configuration.md)
2.  Creating project tag templates and assigning them to projects, as described in [Managing Project Files: Project Tag Templates](Projects_File_Managment_Project_Tag_Template_Setup.md)

## Viewing All Project Files by Tag { .section}

The [Manage Project Files by Tag](PM_50_90_00.md) \(PM509000\) form brings together all files attached to a project and its related records. You can work with files by tag based on your access rights to each tag.

**Tip:** To open this form while viewing a project, click **Files** on the form title bar of the [Projects](PM_30_10_00.md) \(PM301000\) form.

On the [Manage Project Files by Tag](PM_50_90_00.md) form, you select a project in the **Project** box to view its status, manager, and start date. The **Tags** pane shows all project tags. By default, the **All Files** node is selected, and the central pane shows all the project’s files.

When you select a tag, the system shows only the files associated with that tag. You can see each file’s name, size, latest version details, uploader, and assigned tags. The name of the central pane reflects the selected tag.

The central pane displays the number of the files with the selected tag, including the **All Files**, **All Tags**, and **Untagged** nodes.

**Attention:** On this form, you can view not only files attached to a record—such as a bill, purchase order, or subcontract—but also files attached to the record's detail lines.

To preview a PDF file or image, click the file row; its contents are shown in the **File Details** pane. Clicking a previewed image opens it in a full-screen view.

## Viewing Options for Project Files { .section}

On the [Manage Project Files by Tag](PM_50_90_00.md) \(PM509000\) form, you can switch between list view and tile view.

If you click **Switch to Tile View** in the central pane, files are displayed as tiles. Each tile shows the file’s preview icon, the file name, the uploader, and the date of the last version.

Depending on the file type, clicking its icon opens:

-   An image viewer for image files
-   File details for other files

To open the row-level More menu, you hover over the tile and click the button that appears.

To see the list of the files again, you click **Switch to List View**.

## Viewing Project Files by Record Type { .section}

You can view and manage all the files attached or linked to a project and its related records—such as change orders, project issues, or tasks—on the [Manage Project Files by Record Type](PM_50_95_50.md) \(PM509500\) form. This form displays both the files attached to a record and those attached to its detail lines.

**Important:** If you have access to a form, you can access its attached files.

To view all files attached to records of a type:

1.  Select a project in the **Project** box; The system shows its status, manager, and start date.
2.  In the **Record Types** pane, click a record type. The central pane shows the files associated with records of that type. For each file, you’ll see the record ID, file name, size, uploader, associated tags, and latest version details.
3.  To preview any PDF file or image, click the file row to view its contents in the **File Details** pane. Click the image to open a full-screen view.

## Finding Project Files by Record Type { .section}

If you're looking for a specific file or set of files attached to a project-related record, you can narrow the list or find the file you need:

-   On the [Manage Project Files by Tag](PM_50_90_00.md) \(PM509000\) form, click **Filter** in the central pane. In the filtering area, you can narrow project-related records by their type, reference number, file name, or tag.
-   On the [Manage Project Files by Record Type](PM_50_95_50.md) \(PM509500\) form, click **Filter** in the central pane. In the filtering area, you can narrow project-related records by the document number, file name, or tag.

To see only the files that you’ve uploaded, select the **My Files** check box.

Finding files works differently depending on what you’ve selected in the **Record Types** pane of the [Manage Project Files by Record Type](PM_50_95_50.md) form:

-   **Bills and Adjustments**, **Compliance Documents**, **Purchase Orders**, **Purchase Receipts**, and **Subcontracts** record types: The central pane shows the linked document's reference number and the vendor identifier. If you need to find files related to a particular vendor, you use the **Vendor** filter.
-   **Expense Claims**, **Expense Receipts**, and **Employee Time Cards** record types: The central pane shows the linked document's reference number and the employee identifier. To find files related to a specific employee, you use the **Employee** filter.

## Viewing and Changing File Information { .section}

To review or edit file information, use the **File Details** pane of the [Manage Project Files by Tag](PM_50_90_00.md) \(PM509000\) or [Manage Project Files by Record Type](PM_50_95_50.md) \(PM509500\) form. The pane has the following tabs:

-   **Summary**: View and edit the file tags and name; view checkout information \(if any\)
-   **Versions**: Review the file’s version history, including file size, upload dates, and uploader
-   **Entities**: View the records that the file is attached to or linked to
-   **Note**: Read or add a note about the file

**Parent topic:**[Managing Project Files](../UserGuide/Projects_File_Management_Mapref.md)

