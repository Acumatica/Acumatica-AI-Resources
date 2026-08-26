# To Allow Attachments to a Particular Form {#_70a16c7d-8daa-43dd-a979-739117383229 .task}

Users of Acumatica Framework-based and Acumatica ERP applications can attach files, notes, and activities to master records displayed on forms. They can also attach files and notes to the detail records, which are displayed in table rows on forms. In this topic, you can find information about how to allow attachments to a particular form and the table rows on a specific form. For information about activities, see [Managing Emails and Activities](../UserGuide/CRM_Mktg_Managing_Emails_Activities_Mapref.md).



**Note:** The extensions of the files that can be uploaded to a form must be registered on the [File Upload Preferences](../UserGuide/SM_20_25_50.md) \(SM202550\) form. If the required file types are not registered on this form, you have to add them and save your changes. On this form, you can also define the maximum size of an uploaded file \(in kilobytes\).

## To Allow Attachments to a Particular Form { .section}

1.  In the data access class \(DAC\) that provides data for the form, add the NoteID field, as the following code shows.

    ```
    #region NoteID
    public abstract class noteID : PX.Data.IBqlField { }
    
    [PXNote]
    public virtual Guid? NoteID { get; set; }
    #endregion
    ```

    **Note:** The database table that corresponds to the DAC must contain the `NoteID` column with the `uniqueidentifier` data type.

2.  Rebuild the project.

    Once you have added the NoteID field to the DAC and rebuilt the project, the following buttons appear on the title bar of the form:

    -   **Notes**, which users click to attach notes to the form
    -   **Files**, which users click to attach files to the form
3.  Optional: To change whether each of these elements is displayed on the title bar, in the ASPX code of the form, specify the values of the following properties of the PXFormView control:

    -   NoteIndicator: Indicates \(if set to `True`\) that the **Notes** button is displayed on the title bar.
    -   FilesIndicator: Indicates \(if set to `True`\) that the **Files** button is displayed on the title bar.
    -   ActivityIndicator: Indicates \(if set to `True`\) that the **Activities** button is displayed on the title bar. This button, which users click to attach activities to the form, is not displayed by default.
    **Note:** The LinkIndicator property, which controlled whether the **Help** &gt; **Get Link** element was displayed on the title bar, is now obsolete. **Help** &gt; **Get Link** is always displayed on the title bar.


## To Allow Attachments to Table Rows on a Form { .section}

1.  In the data access class \(DAC\) that provides data for the table rows, add the NoteID field, as the following code shows.

    ```
    #region NoteID
    public abstract class noteID : PX.Data.IBqlField { }
    
    [PXNote]
    public virtual Guid? NoteID { get; set; }
    #endregion
    ```

    **Note:** The database table that corresponds to the DAC must contain the `NoteID` column with the `uniqueidentifier` data type.

2.  Rebuild the project.

    Once you have added the NoteID field to the DAC and rebuilt the project, the following columns appear in the table:

    -   ![](Images/Note_icon.png): The Notes column, which users click to attach notes to the form
    -   ![](Images/File_Icon.png): The Files column, which users click to attach files to the form
3.  Optional: To change whether each of these columns is displayed in the table, in the ASPX code of the form, specify the values of the following properties of the PXGrid control that corresponds to the table:
    -   NoteIndicator: Indicates \(if set to `True`\) that the Notes column is displayed in the table
    -   FilesIndicator: Indicates \(if set to `True`\) that the Files column is displayed in the table

**Parent topic:**[Working with Attachments](../StudioDeveloperGuide/BL__mng_Working_with_Attachments.md)

