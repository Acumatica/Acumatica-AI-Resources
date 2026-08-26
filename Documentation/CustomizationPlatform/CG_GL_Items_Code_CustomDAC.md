# To Create a Custom Data Access Class {#_e9fcaaaf-ae3c-4e8e-8109-48edfae405ab .concept}

You can add a new data access class \(DAC\) to a customization project by generating the code from the definition of a database table.

To create a custom data access class for a custom database table and add the created item to a customization project, you have to generate the class template on the Code page of the Customization Project Editor.

To do this, perform the following actions:

1.  Create the needed custom table in the database by using a database management tool.
2.  Generate the DAC code for the customization project as follows:

    1.  Open the customization project in the Project Editor.
    2.  In the navigation pane, click **Code** to open the Code page.
    3.  On the page toolbar, click **Add New Record**.
    4.  In the **Create Code File** dialog box, which opens, select *New DAC* in the **File Template** box.
    5.  In the **Class Name** box, specify the class name that corresponds to the name of the table created in the database.

        **Note:** If you have just created the table, restart Internet Information Services \(IIS\) or recycle the application pool to make sure that Acumatica ERP is aware of the new table, because it caches the database schema once, when the domain starts.

    6.  Select the **Generate Members from Database** check box.
    7.  Click **OK**.

        The platform does the following:

        -   Generates the data access class with members that correspond to the table columns. The class is added to the namespace of the customization project.
        -   Adds the class to the customization project as a *Code* item.
        -   Saves the customization project.
        -   Opens the created item in the [Code Editor](../Shared/../UserGuide/AU_20_40_00_CodeEditor.md).
    You can use the Code Editor to modify the generated code. After you publish the customization project, you can work with the custom data access class in MS Visual Studio.

3.  In the Code Editor, define the key fields in the DAC. To include a data field in the key, in the type attribute of the field, you have to add the IsKey parameter, as the example below shows.

    ```
    [PXDBString(15, IsKey=true)]
    ```

4.  Add the table definition to the customization project by doing the following:
    1.  In the navigation pane of the Project Editor, click **Database Scripts**.
    2.  On the Database Scripts page, which opens, click **Add Custom Table Schema**.
    3.  In the **Add Custom Table Schema** dialog box, which opens, select the custom table in the **Table** box, and click **OK**.

        The platform does the following:

        -   Adds the XML definition of the table to the customization project as an *Sql* item
        -   Saves the customization project
        Every time you publish the customization project, the system checks whether a table with this SQL definition exists in the database. If the table doesn't exist, the system creates the table. If the table exists, the system adjusts the table schema if there is any difference between the existing table schema and the table schema from the customization project \(no data is truncated\).


**Parent topic:**[Code](../CustomizationPlatform/CG_GL_Items_Code.md)

