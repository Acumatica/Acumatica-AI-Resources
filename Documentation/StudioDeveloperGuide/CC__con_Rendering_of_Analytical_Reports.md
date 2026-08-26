# Display of Analytical Reports {#_948e10a2-13c1-42f7-9673-ec145858fc1f .concept}

In this topic, you can find information about how Acumatica ERP displays analytical reports.

## What an Analytical Report Is { .section}

An analytical report is a specific type of report that you can construct in Acumatica ERP by using the Analytical Report Manager \(ARM\) toolkit. You will likely want to use the ARM toolkit rather than the Acumatica Report Designer to create the following types of reports:

-   Financial reports that display data that is posted to the general ledger accounts. The system gets the data of the general ledger accounts from the GLHistory table of the database.
-   Project accounting reports. The system gets the data for these reports from the PMHistory table of the database.

For details on analytical reports, see the [F350 Reporting: Analytical Reports](https://openuni.acumatica.com/courses/reporting/f350-financials-analytical-reports/) training course.

The schema of analytical reports are stored in a set of database tables that have RM prefix in their names, such as RMReport, RMRowSet, and RMColumnSet. The analytical report is identified in the system by its code, which you specify in the **Code** box on the [Report Definitions](../UserGuide/CS_20_60_00.md#) \(CS206000\) form. The report code is stored in the ReportCode column of the RMReport table.

The schema of an analytical report can include the position of the report in the site map so that the users can work with the report. To run the report, a user clicks the **Run Report** button on the form toolbar of the report form.

## How the Analytical Report Is Launched from the Report Form { .section}

When a user opens the report form of an analytical report, the webpage performs the POST HTTP request to the `RMLauncher.aspx` page, passing the report code with `.rpx` appended as the ID query string parameter of the request, as shown in the following example.

```
http://localhost/AcumaticaDB/frames/rmlauncher.aspx?id=dbsp.rpx&HideScript=On
```

The `RMLauncher.aspx` page contains the PXReportViewer control, whose JavaScript objects and functions are designed to obtain the report data and display the data on the form, and the ARmDataSource control, which is used to retrieve data for the analytical report.

On the server side, the system \(by using an instance of the PX.Web.UI.PXReportViewer class\) processes the request as follows:

1.  Loads the parameters of the analytical report from the database \(by using the LoadReport method\) to a PX.Reports.Controls.Report object as follows:
    1.  The system retrieves the data source of the report viewer as an instance of the PX.CS.RMReportReader class, which is a graph \(derived from PXGraph&lt;RMReportMaint, RMReport&gt;\) that implements the PX.Report.ARm.Data.IARmDataSource interface.
    2.  By using the GetReport method of IARmDataSource, the system retrieves the parameters of the analytical report from the database to the PX.Reports.ARm.ARmReport object.
    3.  By using the CreateReport method of the PX.Reports.ARm.Data.ARmProcessor class, the system creates a Report object with the parameters retrieved from the ARmReport object.
2.  If the report parameters are loaded successfully, performs the following:
    1.  The system instantiates a PX.Reports.Web.WebReport object that will store data of the launched report and assigns an instance ID to WebReport.
    2.  The system initializes the ProcessMethod field of the WebReport object with the processing function for analytical reports.

The server returns an XML response with the report parameters to display and with the ID of the instance of WebReport in the session. The browser displays the report parameters on the report form.

## How the Data of the Analytical Report Is Retrieved { .section}

After the user has selected the values of the parameters of the analytical report and clicked the **Run Report** button on the form toolbar of the report form, the webpage sends the GET request to `PX.ReportViewer.axd` on the server with the ID of the WebReport instance in the session \(which was created when the report was launched\).

To process the request, the server invokes the Render method of the WebReport class, which launches the generation of the report as a long-running operation in a separate thread.

To retrieve the data of the analytical report from the database, the system uses the PX.Objects.CS.RMReportReaderGL \(for financial reports\) and PX.Objects.CS.RMReportReaderPM \(for project accounting reports\) extensions of the PX.CS.RMReportReader graph.

## How the Report Data Is Displayed { .section}

After the long-running operation has completed, the PXReportViewer control displays the analytical report on the report form.

**Parent topic:**[Maintaining Reports](../StudioDeveloperGuide/CC__mng_Working_with_Reports.md)

