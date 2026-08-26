# To Add a Custom SQL Script to a Project {#_cb776a15-1661-48a4-994c-1e91412d2227 .task}

With the Acumatica Customization Platform, you can add to a customization project an SQL script to be executed during the publication of the project. However, we recommend that you avoid doing this.

**Warning:** A possible result of a custom SQL script is the loss of the integrity and consistency of the application data.

If you do add a custom SQL script, you must adhere to the following requirements for the script:

-   Because Acumatica ERP supports multitenancy, you must create an SQL script that correctly creates a database object that properly specifies and uses the company mask.
-   You must correctly specify the attributes for the script so that the script can be executed on the target database servers: MySQL Server, Microsoft SQL Server, or both. For details about attributes, see [Using the SQL Script Attributes](../Shared/../CustomizationPlatform/CG_GL_Items_DBScripts_Adding_Attr.md#).

## To Add a Custom SQL Script to a Customization Project { .section}

To add a custom SQL script, do the following:

1.  Prepare, debug, and test the SQL script with a database administration tool, such as SQL Server Management Studio. \(See [Creating a Custom SQL Script](../Shared/../CustomizationPlatform/CG_GL_Items_DBScripts_AddingCustScript_HowCreate.md) for details.\)
2.  Open the customization project in the Customization Project Editor.
3.  In the navigation pane, click **Database Scripts** to open the Database Scripts page.
4.  On the More menu \(under **Actions**\), click **Add Script**.

    The [Edit SQL Script Dialog Box](../Shared/../UserGuide/AU_20_90_00.md#_fc6ac68c-a25e-4f4b-944b-7644ddfbe94d) opens.

5.  In the **Script Name** box of the dialog box, specify the name of the script to be used as the object name of the customization item. \(The name can contain only English characters and digits.\)
6.  Optional: In the **Priority** box, specify the priority of the script. By default, the priority is 0.
7.  For each batch that you want to add, do the following:
    1.  Click **Specify Database Engine**, and in the **Attribute** box, select one of the following options:
        -   *Skip Batch on MySQL Server*, which adds the `--[mysql: Skip]` attribute to the end of the text in the text area of the script editor.
        -   *Skip Batch on Microsoft SQL Server*, which adds the `--[mssql: Skip]` attribute to the end of the text in the text area of the script editor.
        -   *Use Interpreter*, which adds the `--[VmSql]` attribute to the end of the text in the text area of the script editor.

            For more information on the database script attributes, see [Using the SQL Script Attributes](../Shared/../CustomizationPlatform/CG_GL_Items_DBScripts_Adding_Attr.md#).

    2.  In the text area of the editor, below the added attribute, enter the SQL script.
8.  In the editor, click **OK** to add the script to the customization project.

If a custom script causes an error, the error message will appear during the publication process when the system executes the custom scripts.

-   **[Creating a Custom SQL Script](../CustomizationPlatform/CG_GL_Items_DBScripts_AddingCustScript_HowCreate.md)**  

-   **[Using the SQL Script Attributes](../CustomizationPlatform/CG_GL_Items_DBScripts_Adding_Attr.md)**  

-   **[Writing Custom SQL Scripts for Interpretation](../CustomizationPlatform/CG_GL_Items_DBScripts_WritingCustSQL.md)**  


**Parent topic:**[Database Scripts](../CustomizationPlatform/CG_GL_Items_DBScripts.md)

