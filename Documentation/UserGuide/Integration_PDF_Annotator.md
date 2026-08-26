# Annotating PDF Attachments {#_52273de5-f7c9-498c-a4c3-9b2d9c8b0a34 .concept}

In some cases, when you review a PDF file that is attached to a project, you may need to highlight a text \(for example, an amount on a vendor bill\), add a note to a contract, or mark up a drawing before another user reviews it. You can do this directly in Acumatica ERP by using the integration that lets you open a PDF attachment from the record where the file is attached, add comments or markup, and save the annotated file as a new file version. You do not need to download the file or use an external PDF editor.

In this topic, you’ll learn what must be configured for the integration, how users open PDF files for annotation, how file versions are created, and which annotation tools are available.

**Attention:** This functionality is available only if the *PDF Annotator Integration* feature in the *Third-Party Integrations* feature group is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Setting Up the Integration { .section}

Before users can annotate PDF attachments, a system administrator must prepare the integration with Adobe, create an external application in Acumatica ERP, and assign roles to users.

To set up the integration, the administrator does the following:

1.  On the [Adobe Developer website](https://developer.adobe.com/document-services/docs/overview/pdf-embed-api/), obtains credentials for the Adobe PDF Embed API.
2.  Obtains the PDF Annotator Embed Key generated for these credentials.
3.  On the [External Applications](SM_30_10_00.md) \(SM301000\) form, creates an external application for PDF Annotator:
    1.  Selects the *PDF Annotator Embed Key* type.
    2.  Enters the application name.
    3.  Enters the client ID.
    4.  Saves the changes.

To complete the setup of the PDF annotator functionality, on the [User Roles](SM_20_10_05.md) \(SM201005\) form, the administrator assigns the *PDF Annotator* role to users who should have full access to the PDF Preview \(SM400009\) form. By default, users with the *System Administrator* and *Acumatica Support* roles have the *Delete* access level to the PDF Preview form.

After the administrator completes the setup, users with the appropriate access rights can open PDF attachments in the embedded viewer and annotate them.

## Access to PDF Attachments { .section}

You can annotate PDF files from any form that has the **Files** button on the form title bar.

To start working with files, in the side panel, you click **PDF Files**. The **PDF Files** tab shows the PDF Preview \(SM400009\) form, where you can open and then annotate documents.

In the **File Name** box, you click a magnifier button and select the PDF file you need in the **Select File Name** lookup table. Only document-level attachments are available for selection.

If users have already added comments or markup to the selected file version, the system shows information about the annotation authors in the **Comment** column for this file. If you add annotations and save the PDF file, the latest version of the document becomes available in the **Select File Name** lookup table.

**Tip:** You can open previous versions of the document by using the [Manage Project Files by Tag](PM_50_90_00.md) \(PM509000\) or [File Maintenance](SM_20_25_10.md) \(SM202510\) form.

## Adding Comments and Markup { .section}

On the *PDF Preview \(SM400009\)* form, you can add comments and markup by using the tools provided in the embedded PDF Annotator viewer.

The tools are located in the embedded viewer’s top toolbar, quick action toolbar, right pane, and page control toolbar. The buttons and commands are provided by the PDF Annotator integration. You cannot customize them in Acumatica ERP.

When using the embedded PDF Annotator viewer, you can:

-   View, navigate, and manage PDF documents
-   Access document details and bookmarks
-   Use standard editing tools to annotate the file \(such as highlighting, drawing, or underlining the text\)
-   Add comments and text notes
-   Organize feedback in a comments pane
-   Save annotated PDF files as new file versions

## Saving Annotations as File Versions { .section}

In Acumatica ERP, you do not need to replace the attachment outside the system. When you click **Save** in the embedded PDF Annotator viewer, the system creates a new version of the attached file. This versioning helps preserve the original attachment history. On the [Manage Project Files by Tag](PM_50_90_00.md) \(PM509000\) or [File Maintenance](SM_20_25_10.md) \(SM202510\) form, you can view the list of file versions created through the PDF Annotator viewer.

Each time you click **Save**, the system creates a new file version. To avoid creating extra versions, save your changes after you finish reviewing and annotating the file.

**Tip:** The integration does not support simultaneous editing of a single file version. If multiple users annotate the same file at the same time, the system saves their changes as separate file versions.

**Parent topic:**[Integrating Acumatica ERP with PDF Annotator](../UserGuide/PDF_PDF_Annotator.md)

