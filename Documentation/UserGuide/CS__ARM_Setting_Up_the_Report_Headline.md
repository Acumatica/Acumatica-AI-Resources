# To Add a Report Title {#_ba36e1e9-81ab-4ff6-99e2-900a9da419f4 .task}

The report title generally contains the name of the report and other information that will appear only at the beginning of the report. You create a report title in one of the following ways:

-   Create a header for the column set selected for the report, and use it as the report title. This is the preferred method to define the title for a report that has a hierarchical structure. With this method, you can include variable data in the report title.
-   Define a caption in the first row of the row set selected for the report. This method can be used when the report has a flat structure and variable data should not be used in the report title.

## To Use a Column Set Header to Specify the Report Title { .section}

1.  Open the [Column Sets](CS_20_60_20.md) \(CS206020\) form.
2.  In the **Code** box of the Summary area, select the code of the column set used in the report.
3.  On the table toolbar of the upper table \(which is used to define and modify column headers for the column set\), click **New**. The system creates a new row in the upper table.
4.  Click the column in which you want to define the header i.

    The report title definition can span one column or be contained in multiple columns. For example, brief text can be displayed in one column and variable data in the other.

5.  In the selected column, enter the header text, which might include a formula if you want to display variable data in the report title.
6.  Specify the range of columns where the report title will be displayed as follows:
    1.  In the column containing the header, click the magnifier icon. The lookup dialog box containing the column range and header style elements appears.
    2.  Enter the relevant values in the **Column Range** boxes. Note that the start value in the column range should contain the reference to the column where the report title is defined.
7.  While remaining in the dialog box, specify the formatting parameters for the header text and background.
8.  Click **OK** to exit the dialog box and save the settings you have specified.
9.  On the table toolbar of the upper table, use the **Shift Up** and **Shift Down** buttons to move the report title to the top position in the list of headers.
10. Click **Save** on the form toolbar.

## To Use the Row Set Captions to Specify the Report Title { .section}

1.  Open the [Row Sets](CS_20_60_10.md) \(CS206010\) form.
2.  In the **Code** box of the Summary area, select the code of the row set used in the report.
3.  On the table toolbar, click **Add Row** to add a new row to the row set.
4.  In the **Code** column, specify the value for the new row so that the row becomes the first one in the row set.
5.  In the **Description** column of the row, enter the text to be displayed in the report section title.
6.  In the **Type** column of the row, select the *Caption* value.
7.  In the **Style** column, click the magnifier icon, and in the dialog box that opens, select the parameter values to define the report section title formatting. Click **OK** to exit the dialog box.
8.  Click **Save** on the form toolbar.

**Parent topic:**[Managing Analytical Reports](../UserGuide/GL__GL_ARM_Reports.md)

