# To Display an Attached Image on the Form {#_cfec85eb-0597-4577-b0e6-4e127c38c134 .task}

In this topic, you will learn how to display an attached image file on a form. In Acumatica ERP, you can find an example of this on the **Attributes** tab of the [Stock Items](../UserGuide/IN_20_25_00.md#) \(IN202500\) form.

## To Display the Attached Image on the Form { .section}

1.  Add the NoteID field and the field that stores the path to the image to the data access class \(DAC\) that provides data for the form on which you want to display the image, as shown in the following code.

    ```
    #region NoteID
    public abstract class noteID : PX.Data.IBqlField { }
    
    [PXNote]
    public virtual Guid? NoteID { get; set; }
    #endregion
    
    #region ImageUrl
    public abstract class imageUrl : PX.Data.IBqlField { }
    
    [PXDBString(255)]
    [PXUIField(DisplayName = "Image")]
    public virtual string ImageUrl { get; set; }
    #endregion
    ```

    **Note:** The database table that provides data for the form on which you want to display the image must contain the following columns:

    -   `NoteID` with the `uniqueidentifier` data type, to make it possible to attach images
    -   The field \(in this example, `ImageUrl`\) with the `varchar(255)` data type, to store the internal path to the attached image
2.  In the ASPX code of the form that works with this DAC, add the PXImageUploader control linked to the ImageUrl data field, as shown in the following code.

    ```
    <px:PXImageUploader Height="320px" Width="430px" 
                ID="imgUploader" runat="server" DataField="ImageUrl" 
                AllowUpload="true" ShowComment="true"
    />
    ```

3.  Rebuild the project.

**Parent topic:**[Working with Attachments](../StudioDeveloperGuide/BL__mng_Working_with_Attachments.md)

