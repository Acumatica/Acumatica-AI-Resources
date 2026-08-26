# To Add a Title for a Report Section {#_8f292dd7-6693-412a-8e68-f4fe06143dac .task}

A report can include multiple sections, with each having a header. Depending on the report structure, you can use either row captions or column headers to set up the headers for the report sections.

For a flat report structure, the report sections usually include rows from the whole row set, and to set up a report section header, you can use either a caption defined for a number of rows, or a header defined in the column set and printed in the specific row of the report. \(The first two subprocedures cover these methods.\)

For a hierarchical report structure, you should use column set headers for each section in the report, as described in the third subprocedure.

## To Specify a Report Section Title for a Flat Report Structure: Using a Column Set Header { .section}

1.  Open the [Column Sets](CS_20_60_20.md) \(CS206020\) form.
2.  In the **Code** box of the Summary area, select the code of the column set used in the report.
3.  On the table toolbar of the upper table, click **New**.
4.  Click the column in which you want to define the header.

    The report section title can be defined in a single column or be contained in multiple columns. For example, the brief text can be displayed in one column and variable data in the other.

5.  In the selected column, enter the header text, which might include a formula to display variable data in the report section title.
6.  Specify the range of columns where the report section title will be displayed as follows:
    1.  In the column containing the header, click the magnifier icon. The lookup dialog box containing the column range and header style elements opens.
    2.  Enter the relevant values in the **Column Range** boxes. Note that the start value in the column range should contain the reference to the column where the report section title is defined.
7.  While remaining in the dialog box, specify the formatting parameters for the header text and background.
8.  Click **OK** to exit the dialog box and save the settings you have specified.
9.  On the table toolbar of the upper table, use the **Shift Up** and **Shift Down** buttons to move the report section title to the relevant position in the list of headers.
10. To define the row of the report where the report section title will appear, do the following:
    1.  Specify the **Printing Group** value for the header.
    2.  Open the [Row Sets](CS_20_60_10.md) \(CS206010\) form by searching for or navigating to it.
    3.  Specify the values for the row where the report section title will be inserted as follows:
        -   In the **Type** column, select *Header*.
        -   In the **Column Group** column, specify the same value that you defined for the **Printing Group** value for the header.
    4.  On the form toolbar, click **Save**.
11. Return to the [Column Sets](CS_20_60_20.md) \(CS206020\) form, and on the form toolbar, click **Save**.

## To Specify a Report Section Title for a Flat Report Structure: Using a Row Set Caption { .section}

1.  Open the [Row Sets](CS_20_60_10.md) \(CS206010\) form.
2.  In the **Code** box of the Summary area, select the code of the row set used in the report.
3.  In the table, click \(or add and click\) the row where the report section title will be inserted.
4.  In the **Description** column of the row, enter the text to be displayed in the report section title.
5.  In the **Type** column of the row, select the *Caption* value.
6.  In the **Style** column, click the magnifier icon, and in the dialog box that opens, select the parameter values to define the report section title formatting. Click **OK** to exit the dialog box.
7.  Click **Save** on the form toolbar.

## To Specify a Report Section Titles for a Hierarchical Report Structure { .section}

1.  Open the [Column Sets](CS_20_60_20.md) \(CS206020\) form.
2.  In the **Code** box of the Summary area, select the code of the column set used in the report.
3.  On the table toolbar of the upper table, click **New**.
4.  In the upper table, click the column in which you want to define the header.

    The report section title can be defined in a single column or be contained in multiple columns. For example, the brief text can be displayed in one column and the variable data in the other.

5.  In the selected column in **Headers** section of the Column Sets form, enter the header text, which might include a formula to display variable data in the report section title.
6.  Specify the range of columns where the report section title will be displayed as follows:
    1.  In the column containing the header, click the magnifier icon. The lookup dialog box containing the column range and header style elements opens.
    2.  Enter the relevant values in the **Column Range** boxes. Note that the start value in the column range should contain the reference to the column where the report section title is defined.
7.  While remaining in the dialog box, specify the formatting parameters for the header text and background.
8.  Click **OK** to exit the dialog box and save the settings you have specified.
9.  On the table toolbar of the upper table, use the **Shift Up** and **Shift Down** buttons to move the report section title to the relevant position in the list of headers.
10. To define the row of the report where the report section title will appear, do the following:
    1.  Specify the **Printing Group** value for the header.
    2.  Open the [Row Sets](CS_20_60_10.md) \(CS206010\) form by searching for or navigating to it.
    3.  Specify the values for the row where the report section title will be inserted as follows:
        -   In the **Type** column, select *Header*.
        -   In the **Column Group** column, specify the same value that you defined for the **Printing Group** value for the header.
    4.  On the form toolbar, click **Save**.
11. Return to the [Column Sets](CS_20_60_20.md) \(CS206020\) form, and on the form toolbar, click **Save**.

**Parent topic:**[Managing Analytical Reports](../UserGuide/GL__GL_ARM_Reports.md)

