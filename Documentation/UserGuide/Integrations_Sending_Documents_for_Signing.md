# Esignature Providers: Sending Documents for Signing {#_c2e51872-a647-4c77-a932-09d0e841f51f .concept}

In this topic, you will learn how to open a document file and send it for signing in Acumatica ERP.

## Opening a File to Request an Esignature { .section}

You can request esignatures for electronic documents—such as contracts, quotes, purchase orders, or sales orders—or for other files attached to a record in the system.

To submit a document for electronic signing, you:

1.  Open the **Files** dialog box from the record's form.
2.  Click **Edit** to open the file on the [File Maintenance](SM_20_25_10.md) \(SM202510\) form.
3.  If the **Versions** tab shows multiple versions of the file, click the version that should be signed electronically.
4.  On the table toolbar \(see below\), click the **Request eSignature** button.

**Tip:** The button is available only for the supported file extensions: `.pdf`, `.doc`, `.docx`, `.xls`, `.xlsx`, `.ppt`, `.pptx`, `.wp`, `.txt`, `.rtf`, `.tif`, `.jpg`, `.jpeg`, `.gif`, `.bmp`, `.png`, `.htm`, and `.html`.

## Requesting an Esignature { .section}

When you click **Request eSignature** on the [File Maintenance](SM_20_25_10.md) \(SM202510\) form, a dialog box opens. To submit the file, you do the following:

1.  Select an eSign account.
2.  Select the esignature provider.
3.  Enter the subject and message for the email that the esignature provider will generate.
4.  Optional: Set an automatic reminder for recipients.
5.  Optional: Set an expiration period for the request to electronically sign the document.
6.  In the **Recipients** table:
    1.  Add recipients’ email addresses.
    2.  Select recipients’ roles.
    3.  Optional: Add a separate note for a specific recipient.

When you click **Request eSignature** in the dialog box, the esignature provider's webpage opens so that you can complete the sending process.

When the sending is complete, the system updates the esignature details—such as the sender, electronic signing account, and status—on the [File Maintenance](SM_20_25_10.md) form.

**Parent topic:**[Integrating with Esignature Providers](../UserGuide/Integrations_eSignature_Serviice_Mapref.md)

