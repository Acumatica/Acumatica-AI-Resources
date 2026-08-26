# To Make a Field Mandatory {#_97f5b92f-906a-4edd-ae38-f5605e83d845 .concept}

If a field is mandatory for input, the user has to specify a value for the field before saving the record that contains the field. To make a field mandatory for input, you use the PXDefault attribute without parameters. A mandatory field is marked by an asterisk \(\*\) on the form to cue the reader that a value must be specified for it. To mark a control for a mandatory field with an asterisk, you set the Required parameter of the PXUIField attribute to *true*.

You can make an original or custom field mandatory and mark a control for the field with an asterisk on the DAC and graph levels. The following sections provide detailed information:

-   [To Make an Original Field Mandatory on the DAC Level](#_1a95ac32-1599-4105-a9b4-41389790801d)
-   [To Make a Custom Field Mandatory on the DAC Level](#_1e21988c-9e40-4800-a52e-6447655322e2)
-   [To Make a Field Mandatory on the Graph Level](#_85b6159e-d4e9-4e86-8fad-8f444b5999ee)

## To Make an Original Field Mandatory on the DAC Level {#_1a95ac32-1599-4105-a9b4-41389790801d .section}

To make an original field mandatory and mark the control for the field with an asterisk on multiple forms, you should customize the original attributes of the field in the data access class extension. To do this, perform the following actions:

1.  Open the field in the Data Class Editor, as described in [To Customize a Field on the DAC Level](CG_GL_BL_DataField_TypeLevel.md).
2.  In the **Customize Attributes** box, select *Append to Original*.
3.  In the edit area below the box, add the PXDefault attribute without parameters.
4.  On the More menu \(under **Actions**\), click **Edit Attributes**.
5.  In the **Attribute** list of the **Customize Attributes** dialog box, which opens, click the PXUIField attribute to select it.
6.  In the parameter list, set the Required parameter to *True*.
7.  Click **OK** to exit the dialog box.

    The edit area of the editor must contain the following code:

    ```language-csharp
    [PXDefault]
    [PXCustomizeBaseAttribute(typeof(PXUIFieldAttribute), "Required", true)]
    ```

    **Note:** The editor currently inserts the deprecated PXCustomizeBaseAttribute attribute, which is used to redefine the value of a property for an attribute. Although this attribute still works, you should instead use the appropriate customization attribute from the [PXCustomize](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=65178fd8-b72b-6d7b-3282-22e3f004d66a) static class. In the preceding example, this is the [PXCustomize.PXUIFieldAttributeAttribute](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=360c50f2-fe12-c722-9f83-6108aefb0082) attribute. To use this attribute, you can replace the inserted code with the following code.

    ```language-csharp
    [PXCustomize.PXUIFieldAttribute(Required = true)]
    ```

8.  Click **Save** on the editor toolbar to save your changes to the customization project.

Note that you can also add a new mandatory field to a data access class extension. However, doing this can result in data consistency issues because the existing records may not have a value set for this field. These records will thus end up having a *null* value for this field, which will prevent a user from modifying or saving the records until a value is set for this field. Acuminator will also raise the [PX1030](https://github.com/Acumatica/Acuminator/blob/master/docs/diagnostics/PX1030.md) warning to alert you about this issue. To prevent this issue, you usually need to write a custom script to set the appropriate value for the mandatory field for all existing records, as shown in the following code example.

```language-sql
UPDATE MyDac
SET NewField = 'Default Value'
WHERE NewField IS NULL
```

Because these scripts may be executed multiple times, you must ensure that they do not corrupt any existing data. If you are dealing with complex logic, you may need to write a customization plug-in instead.

**Tip:** Making an original field or a custom field mandatory \(see the next section\) in an existing DAC can also result in the same data consistency issues. To prevent the issue, you can apply the solutions described above.

## To Make a Custom Field Mandatory on the DAC Level {#_1e21988c-9e40-4800-a52e-6447655322e2 .section}

If you need to set a default value for a custom data field, you add the PXDefault attribute without parameters and set the Required parameter of the PXUIField attribute to *True*, as in the following code snippet.

```language-csharp
[PXDefault]
[PXUIField(..., Required = true)]
```

## To Make a Field Mandatory on the Graph Level {#_85b6159e-d4e9-4e86-8fad-8f444b5999ee .section}

To make a field mandatory and mark the field with an asterisk for the field control used on a single form, you should customize the field attributes in the graph extension. To do this, perform the following actions:

1.  Create the code template that includes the field attributes and the DACName\_FieldPropertyName\_CacheAttached\(\) event handler, which replaces the attributes within the graph, as described in [To Customize a Field on the Graph Level](CG_GL_BL_DataField_CacheLevel.md).
2.  By using the Code editor, replace the original attributes in the template, as shown in the following code snippet.

    ```language-csharp
    [PXDefault]
    [PXCustomize.PXUIFieldAttribute(Required = true)]
    protected void DACName_FieldPropertyName_CacheAttached(PXCache cache)
    {
    }
    ```

3.  Click **Save** on the editor toolbar to save your changes to the customization project.

**Parent topic:**[Data Field](../CustomizationPlatform/CG_GL_BL_DataField.md)

