# AP Documents from PDFs: Process Activity {#_f229cd53-b896-41c9-a2d8-f6aadd4bc8f5 .task}

The following activity will walk you through the process of creating an AP bill from a PDF file.

**Attention:** The following activity can be completed only if your license includes the *AP Document Recognition Service* feature. You can request your account manager for a demo license for this feature.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story {#section_wy4_njv_vxb .section}

Suppose that the SweetLife Fruits &amp; Jams company regularly buys fruits from the All Fruits Mall vendor \(*ALLFRUITS*\). As the SweetLife accountant, you regularly receive invoices from the vendor in PDF format and need to enter each of them manually into the system. The company purchased the *AP Document Recognition Service* feature, so now you may submit these invoices for recognition and create AP bills by using the recognized values. You will submit the first PDF file from this vendor for recognition and create the corresponding AP bill.

## Configuration Overview {#section_yy4_njv_vxb .section}

For the purposes of this activity, the *AP Document Recognition Service* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Process Overview {#section_az4_njv_vxb .section}

You will use the [Incoming Documents](AP_30_11_00.md) \(AP301100\) form to manually submit the [All\_Friuts\_Invoice.pdf](Files/All_Fruits_Invoice.pdf) file for recognition, validate and adjust the recognized document, and create the AP bill for further processing. \(The processing of the AP bill is outside of the scope of this activity. For details, see [Processing AP Bills](Finance_ProcessingAPBills_Mapref.md).\)

## System Preparation {#section_cz4_njv_vxb .section}

To prepare the system, do the following:

1.  Download the [All\_Friuts\_Invoice.pdf](Files/All_Fruits_Invoice.pdf) file.
2.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. To sign in as an accountant, use the following credentials:
    -   Username: *johnson*
    -   Password: *123*

## Step 1: Submitting a PDF File for Recognition {#section_ez4_njv_vxb .section}

To manually submit a PDF file for recognition, do the following:

1.  Open the [Incoming Documents](AP_30_11_10.md) \(AP301110\) form.
2.  Drag the `All_Friuts_Invoice.pdf` file to the Preview area.
3.  Select the unlabeled check box next to the document in the table, and on the form toolbar, click **Recognize**. The system launches the recognition process, and when the recognition is completed successfully, it changes the status of the document to *Recognized*.
4.  On the side panel, click **View PDF** and review the attached document.

## Step 2: Validating the Recognized Document and Creating an AP Document {#section_gz4_njv_vxb .section}

To validate a recognized document, while you are still on the [Incoming Documents](AP_30_11_10.md) \(AP301110\) form, do the following:

1.  Click the link in the Summary column to open the recognized document on the [Incoming Documents](AP_30_11_00.md) \(AP301100\) form.
2.  In the Summary area \(left pane\) of the form, review the values with which the system has filled the boxes during the recognition process, and map any missing values. You can also fill in missing values by typing them directly into the boxes.
3.  In the Details area \(bottom\) of the form, review the values with which the system has populated the table during the recognition process. If no document details have been added automatically, you can manually add rows to the table and map the values for each cell or type the missing values directly.
4.  When all necessary settings have been specified, click **Save and Continue** on the form toolbar to convert the recognized document into an AP document.

    The system navigates to the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, with a new AP document with the *On Hold* status and the rest of the settings filled in with the values from the recognized document. The original PDF file is added to the record as a file attachment.


**Parent topic:**[Recognizing AP Documents from PDFs](../UserGuide/Finance_Recognizing_AP_Documents_From_PDF_Mapref.md)

