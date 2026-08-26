# Report Content: General Information {#_3ab85a5b-0313-484b-a923-8454a6458545 .concept}

The content of a report designed in the Acumatica Report Designer includes visual elements, which can contain text, data, and images. The visual elements are placed within the report sections, and their appearance and behavior are determined by both the properties of the visual elements themselves and the properties of the report section where they are placed.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following in the Report Designer:

-   Add, delete, and move elements in the report layout
-   Specify the properties of the elements added to the report layout

## Applicable Scenarios { .section}

You may want to add content to reports you develop in the Acumatica Report Designer in the following circumstances:

-   You are responsible for the customization of Acumatica ERP in your company, including developing and modifying reports to give users the information they need to do their jobs.
-   You need to add content—that is, data, images, charts, and subreports—to predefined reports or to reports you create from scratch.

## Types of Visual Elements in a Report Layout { .section}

You can add to the report layout the following visual elements:

-   *TextBox*: You can use a text box to display text or data from the database in the report.
-   *PictureBox*: You can use a picture box to display an image in the report. For example, you can place your company logo on the report, as you do on other company materials. You can also use the *PictureBox* element to add a QR code or barcode to your report.
-   *Panel*: A panel is a container of elements that are processed together. You can place multiple elements on a panel and specify a background color, text alignment, or visibility property for the panel.
-   *Line*: A line can be used to divide the report space, direct the eye, or visually separate elements in the report. You can add lines to improve the look and readability of the report.
-   *Chart*: A chart is a graphical representation of data in the report. You can use different types of charts—for example, line, bar, or pie—to present information, such as sales by month and by sales manager.
-   *SubReport*: You can use a subreport to include data from other reports in the current report. For example, you can define as a subreport the list of change orders in a project. By using subreports, you can reduce the time it takes to form a complex report that extracts data from multiple related tables.

## Operations with Visual Elements in a Report { .section}

When you add content to a report, you generally perform the following steps:

1.  Adding visual elements to the report
2.  Optional: Linking the visual elements with the data to be displayed in the report
3.  Specifying the visual elements' properties

The visual elements are located in the Tools pane of the Report Designer main window. To add a visual element to a report section, you click the element in the Tools pane, and drag it to the desired position within the report. You can resize the element by dragging its borders. You can also move the element within the section or to another section.

When you place elements in a report layout, you need to make sure that the elements do not overlap. The Report Designer crosses out all visual elements that overlap. Overlapping elements will not cause a runtime error in the report; but only one of these elements will be shown in the report. To fix the overlapping visual elements, you have to adjust the layout and move or resize the elements.

After you add a visual element to the report, you can do the following:

-   Define the style of the element
-   Copy and paste the style of visual elements
-   Define the order of visual elements on the screen by bringing them to the front or sending them to the back
-   Cut, copy, and paste visual elements and their content to other areas within the report

To perform these actions with a visual element, you can do the following:

-   Use the actions available on the Report Designer window toolbar or menu bar
-   Right-click the visual element and then select the relevant command from the shortcut menu
-   Use Windows-standard combinations of keys to perform common actions, such as cutting or pasting elements

**Tip:** You can delete a selected visual element by pressing the Delete key.

For more information about the style of elements, see [Report Style: General Information](RD_Report_Style_GeneralInfo.md).

## Text and Data in a Report { .section}

For text and data in a report, you use the *TextBox* element. For this element, you use the **Appearance** &gt; **Value** property to specify the contents of the text box. You can specify text, a data field of the database table, or an expression. For more details about expressions, see [Variables and Expressions: General Information](RD_Using_Variables_and_Expressions_GeneralInfo.md).

You can add a *TextBox* element with a field name as its value in one action by dragging the field from the list that is located on the **Fields** tab of the Properties pane.

All parts of the text in a text box have the same formatting. If you need to have different formatting for different parts of the text, you should divide the text and use multiple text box elements, each of which has its own formatting.

## Images in a Report {#section_dcd_ww5_vvb .section}

You use the *PictureBox* element to add an image to an Acumatica ERP report. You can do any of the following:

-   Embed an image file in the report. Embedded images are stored along with the report file, and you include them in the report as its inner elements. You can add images of the following types to the collection of embedded images: `bmp`, `gif`, `jpg`, and `png`. You first specify the name of the image that you are embedding as the **Data** &gt; **EmbeddedImages** property for `report1 Report`. Then you specify the following properties for the *PictureBox* element:
    -   **Data** &gt; **Source**: *Embedded*
    -   **Data** &gt; **Value**: The file name of the image
-   Select an image from an external file. External files are stored on external resources, such as websites or local hosts, that are accessible from the Acumatica ERP application site where the reports are published. The report stores only the link to the external file where the image file is located. For an external image, you specify the following properties for the *PictureBox* element:
    -   **Data** &gt; **Source**: *External*.
    -   **Data** &gt; **Value**: The URL of the image. For example, suppose that you have uploaded the `MyImage.png` file to the `/Site/Images/` folder. In the **Data** &gt; **Value** property, you should enter the following URL: `Images/MyImage.png`.
-   Select a data field and load an image from it. In Acumatica ERP, all images are stored in the *UploadFile* table. For an image inserted in a report from the database, you specify the following properties for the *PictureBox* element:
    -   **Data** &gt; **Source**: *Database*
    -   **Data** &gt; **Value**: `=[UploadFile.Name]`

## QR Codes and Barcodes {#section_ecd_ww5_vvb .section}

The Report Designer considers QR codes and barcodes to be pictures. To add a QR to an Acumatica ERP report, you add a *PictureBox* element and specify the following properties for it:

-   **Behavior** &gt; **QRCodeSettings**: You use the parameters of this group to specify size and margins of the code.
-   **Data** &gt; **BarcodeType**: You select the *QRCode* option.
-   **Data** &gt; **Source**: You select the *Barcode* option.
-   **Data** &gt; **Value**: You specify a URL or a formula to generate a QR code.

To add a barcode to an Acumatica ERP report, you add a *PictureBox* element and specify the following properties for it:

-   **Behavior** &gt; **BarcodeSettings**: You use the parameters of this group to specify size and margins of the code.
-   **Data** &gt; **BarcodeType**: You select a type of the needed barcode.
-   **Data** &gt; **Source**: You select the *Barcode* option.
-   **Data** &gt; **Value**: You specify a URL, a human-readable value, or a formula to generate a barcode.

With the **Layout** &gt; **Sizing** property, you can adjust the sizing of an image so that the image can keep its proportions, fill the whole space of the picture box, or be placed in the center of the picture box.

By using the Report Designer, you can generate the GS1-128 \(previously known as UCC-128 and EAN-128\) barcodes from the GS1 family. To generate a GS1-128 barcode, you select the *UCC128* option in the **Data** &gt; **BarcodeType** box. You should use brackets as a separator for GS1 codes.

Suppose that you manufactured new items and need to print labels to receive the new items. You may use the [Inventory Item Labels](IN_61_92_00.md) \(IN619200\) report to print the labels. You add a *PictureBox* element to the report and specify settings needed for barcode printing. In the **Data** &gt; **Value** box you add the following human-readable value: `(01)3333(17)230909(10)LREX50(37)15`. The value is read as follows:

-   `(01)` is the GS1 code for the item ID,
-   `3333` is the item ID,
-   `(17)` is the GS1 code for the expiration date,
-   `230909` is the expiration date in the `YYMMDD` format,
-   \(10\) is the GS1 code for the lot/serial number,
-   `LREX50` is the lot number,
-   `(37)` is the GS1 code for the quantity,
-   `15` is the quantity of the item in the lot.

For more details on GS1-128 barcodes, see [GS1 Barcodes in Acumatica ERP](OrderMgmt_GS1_128_barcodes_in_Acumatica_ERP.md).

## Charts in a Report { .section}

You use the *Chart* element to define a chart in your report. For the element, you specify properties in the **Chart** and **ChartData** groups of properties.

## Subreports { .section}

You can add any number of subreports to a single main report by using the *SubReport* element. If a *SubReport* element is placed in any report section, the entire subreport will be printed in that section, except for the page header and page footer sections.

**Attention:** Although you can insert a subreport into any report, we do not recommend that you insert a subreport into another subreport because it can degrade the performance of the server.

You specify the following properties for the *SubReport* visual element:

-   **Behavior** &gt; **ReportName**: The file name of the subreport
-   **Behavior** &gt; **Parameters**: The parameters that are passed from the main report to the subreport

A subreport can be either unlinked or linked to the data in the main report. Unlinked subreports are standalone reports, and their data is not linked to the data in the main report. An unlinked subreport can use the same data source or a different data source entirely. Linked subreports use data that is coordinated with data in the main report. The Report Designer matches up the data in the subreport with the data in the main report. If you create a main report with customer information and a subreport with order information and then link them, the Report Designer creates a subreport for each customer that includes all of this customer’s orders.

Before you insert a subreport of either type into the main report, you must be sure that the subreport can be run as an independent report. You do not need to publish the subreport—that is, to add it to the [Site Map](SM_20_05_20.md) \(SM200520\) form—to make sure it can be run. You can preview the subreport on the **Preview** tab of the Report Designer.

**Tip:** The main report and the subreport must be saved on the same server.

**Parent topic:**[Filling a Report with Content](../UserGuide/RD_Filling_with_Content_Mapref.md)

