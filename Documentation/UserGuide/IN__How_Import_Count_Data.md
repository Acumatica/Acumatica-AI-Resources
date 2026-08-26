# To Import the Count Data From an Excel Spreadsheet {#_3fb1c22b-162f-4c7c-a201-40a9fa718daa .task}

You can import the count data from Excel spreadsheets by using the [Physical Inventory Review](IN_30_50_00.md) \(IN305010\) form.

**Attention:** To open any form, you can navigate to it or search for it \(by its name or by its form ID without periods\).

## Before You Proceed { .section}

Review the Excel spreadsheets with the count results. Make sure the resulting quantities are displayed without any typos, and correct any errors you find.

## To Import the Count Data From an Excel Spreadsheet { .section}

1.  Open the [Physical Inventory Review](../Shared/../UserGuide/IN_30_50_00.md) \(IN305000\) form.
2.  In the **Reference Nbr.** box, select the identifier of the count you are participating in.
3.  On the **Physical Inventory Details** tab, click **Load Records from File** on the table toolbar.
4.  Use the **File Upload** dialog box, which opens, to locate the file with the count results. Click **Upload**.
5.  In the **Common Settings** dialog box, which opens, leave the default values and click **OK**.
6.  In the **Columns** dialog box, which opens, perform mapping for each column from the file to a column available on the form as follows:
    -   In the **Column Name** column, select a column that is available in the uploaded file.
    -   In the **Property Name** column, select a column to be updated from the columns available on the form.
7.  Click **OK** to close the dialog box.
8.  When you notice a green icon on the form toolbar indicating that the import has been performed successfully, review the values that are now shown in the **Physical Quantity** and **Variance Quantity** columns.

    **Tip:**

    -   If the source file includes multiple lines with a particular item, the **Physical Quantity** column shows the resulting quantity for all the source lines with the same inventory ID, warehouse location, and lot or serial number.
    -   If you import a line with the same inventory ID, warehouse location, and lot or serial number from another file, the **Physical Quantity** column will display the sum of the quantities for that item from both the first source file and the newly imported file.
9.  If you notice a red icon on the form toolbar, this means that the import process has failed. Review and correct the errors as follows:
    1.  On the title bar in the top right corner of the form, click **Tools**, then click **Trace**.
    2.  Review the error log for errors, and correct the errors in the original file \(Excel spreadsheet\).
    3.  Save the original file and repeat the import.
10. On the form toolbar, click **Save**.

**Parent topic:**[Counting Physical Inventory](../UserGuide/IN__MNG_PI.md)

