# Esignature Providers: Managing Electronic Signature Requests {#_1e860d36-9305-48c4-b4ca-637d199d6e53 .concept}

In this topic, you will learn how to manage esignature requests.

## Managing Electronic Documents { .section}

On the [Manage eSign Documents](ES_40_10_00.md) \(ES401000\) processing form, you manage electronic documents that have been submitted for esignature. In the Summary area, you can view your employee name and ID. By default, the **Show Mine** check box is selected, meaning that the form lists only documents you have submitted for esignature.

To manage the signing process, you can use the following buttons on the form toolbar:

-   **Recall Document**: Cancels an esignature request. This button is available only when the file has been sent and hasn't yet been signed.

    When you click the button, it opens the **Recall Document** dialog box, in which you can enter the reason and confirm that you want to recall the document. After you recall the document, the signing status changes to *Canceled/Declined* \(for Adobe Acrobat Sign\) or *Voided* \(for DocuSign\).

-   **Remind Recipient**: Sends a reminder email to the recipients while the document is awaiting signing.
-   **View Document**: Opens the esignature provider's webpage for the file.
-   **Check Status**: Sends an API request to update the signing status of the selected file.
-   **Delete**: Deletes the esignature request.

## Checking the Signing Status { .section}

To check the current status of an electronic document, you click the link in the **eSign Status** column for the document's line on the [Manage eSign Documents](ES_40_10_00.md) \(ES401000\) form. On the [eSign Request](ES_30_30_00.md) \(ES303000\) form, which opens, you can view:

-   The **eSign Status** value in the Summary area
-   The recipients and their current statuses in the table

## Syncing Esignature Requests { .section}

On the [eSign Sync](ES_50_10_00.md) \(ES501000\) processing form, you synchronize esignature requests in Acumatica ERP with the connected esignature providers:

-   To sync particular requests, you select the requests and click **Sync**.
-   To sync all requests, you click **Sync All**.

During synchronization, the system shows progress and results in the **Processing** dialog box. Any signed documents are automatically uploaded to the files of the record they belong to.

You can schedule regular synchronization of esignature requests. Thus, request statuses—such as *Out for eSignature*, *Completed*, *Declined*, *Voided*, or *Expired*—stay up to date. This also ensures that signed electronic documents are uploaded to the system and attached to the originating records in a timely manner.

**Parent topic:**[Integrating with Esignature Providers](../UserGuide/Integrations_eSignature_Serviice_Mapref.md)

