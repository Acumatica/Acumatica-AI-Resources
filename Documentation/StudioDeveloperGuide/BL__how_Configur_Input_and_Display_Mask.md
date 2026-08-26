# To Configure an Input Mask and a Display Mask for a Field {#_d0758787-4c73-423b-8566-11c83f3acde8 .task}

In this topic, you can learn how to create a field on a form of an Acumatica Framework-based application so that its value is displayed in a specific format and how to govern what a user can enter as a value of this field. You can specify input and display masks for fields of the string and date and time types. For fields of the string type, you specify only the input mask, which defines both the format in which the user enters the value and the way the value is then displayed. For the date and time fields, you can specify different input and display masks.

## To Specify an Input Mask and a Display Mask for a String Field {#_0cc62625-b0fe-49a1-a170-5c17572f1e2d .section}

1.  In the data access class \(DAC\), add a new field or modify an existing `string` field as follows:
    1.  Add one of the string attributes \([PXDBString](https://help.acumatica.com/(W(24))/Main?ScreenId=ShowWiki&pageid=cf21368f-4969-18b4-8722-5789e5fc9c2a) or [PXString](https://help.acumatica.com/(W(24))/Main?ScreenId=ShowWiki&pageid=7bf59b5d-a6dc-9ca3-aa20-4350136c9cb8)\) to the property field.
    2.  Specify the value of the InputMask property of the attribute. Use the following conventions to define the mask:

        -   `C` or `&`: The user can enter any symbol.
        -   `A` or `a`: The user can enter any letter or digit.
        -   `L` or `?`: The user can enter only a letter.
        -   `#`, `0`, or `9`: The user can enter only a digit.
        -   `>`: All of the characters that follow this symbol should be in uppercase.
        -   `<`: All of the characters that follow this symbol should be in lowercase.
        The following example shows the use of the InputMask property.

        ```
        //Users can enter only digits.
        //If a user enters "1234567890", the value is displayed as "(123) 456-7890".
        [PXDBString(10, InputMask = "(###) ###-####")]
        [PXUIField(DisplayName = "Parameter 1")]
        public virtual string Parameter1 { get; set; }
        ```

        **Note:** The value is stored in the database without any formatting characters. That is, for the code example above, if a user enters `1234567890`, the field in the database for the corresponding record will contain the same value \(`1234567890`\).

2.  In the ASPX code of the form, add a new PXMaskEdit control or modify the control that corresponds to the field so that it has the PXMaskEdit type, as shown in the following code example.

    ```
    <px:PXMaskEdit ID="edParameter1" runat="server" DataField="Parameter1"/>
    ```


## To Specify an Input and a Display Mask for a String Field at Runtime { .section}

To specify the input mask for a string field at runtime, use a SetInputMask method of the [PXDBString](https://help.acumatica.com/(W(24))/Main?ScreenId=ShowWiki&pageid=cf21368f-4969-18b4-8722-5789e5fc9c2a) or [PXString](https://help.acumatica.com/(W(24))/Main?ScreenId=ShowWiki&pageid=7bf59b5d-a6dc-9ca3-aa20-4350136c9cb8) attribute. You use the same conventions to define the mask as those described for the InputMask property in [To Specify an Input Mask and a Display Mask for a String Field](#_0cc62625-b0fe-49a1-a170-5c17572f1e2d).

In the following example, the input mask of the `AccountMask` field is changed at run time.

```
protected virtual void GLBudgetTree_IsGroup_FieldSelecting(PXCache sender, 
  PXFieldSelectingEventArgs e)
{
  PXStringState strState = (PXStringState)sender.GetStateExt(
    null, typeof(GLBudgetTree.accountID).Name);
  PXDBStringAttribute.SetInputMask(sender, 
    typeof(GLBudgetTree.accountMask).Name, 
    strState.InputMask.Replace('#', 'C'));
}
```

## To Specify an Input or a Display Mask for a Date and Time Field { .section}

1.  In the data access class \(DAC\), add a new field or modify an existing data and time field as follows:

    1.  Add one of the date and time attributes \([PXDate](https://help.acumatica.com/(W(33))/Main?ScreenId=ShowWiki&pageid=f3ba8d95-6f11-16eb-3c57-b0b030f5d41c), [PXDateAndTime](https://help.acumatica.com/(W(33))/Main?ScreenId=ShowWiki&pageid=e99e29f8-1a5f-23e8-a4a2-75ca171f33df), [PXDBDate](https://help.acumatica.com/(W(31))/Main?ScreenId=ShowWiki&pageid=94441fa4-1035-987d-129d-15538490e44b), [PXDBTime](https://help.acumatica.com/(W(38))/Main?ScreenId=ShowWiki&pageid=7658dee7-e543-45fc-bff9-4089159b07d1), or [PXDBDateAndTime](https://help.acumatica.com/(W(33))/Main?ScreenId=ShowWiki&pageid=7d1babdd-7dab-c573-4209-5f314a34c719)\) to the property field.
    2.  Specify the value of the InputMask or DisplayMask property of the attribute. Use the [standard](https://docs.microsoft.com/en-us/dotnet/standard/base-types/standard-date-and-time-format-strings) and [custom](https://docs.microsoft.com/en-us/dotnet/standard/base-types/custom-date-and-time-format-strings) date and time format strings.
    The following example shows the use of the InputMask and DisplayMask properties.

    ```
    [PXDateAndTime(DisplayMask = "D", InputMask ="d")]
    [PXUIField(DisplayName = "Parameter 1")]
    public virtual DateTime? Parameter1 { get; set; }
    ```

2.  In the ASPX code of the form, add a new PXDateTimeEdit control or modify the control that corresponds to the field so that it has the PXDateTimeEdit type, as shown in the following code example.

    ```
    <px:PXDateTimeEdit ID="edParameter1" runat="server" DataField="Parameter1"/>
    ```

    **Note:** You can change how the PXDateTimeEdit control is displayed \(whether the control shows a calendar selector or a drop-down list with time values\) by specifying the value of the TimeMode property. The following example causes the system to display the list of time values.

    ```
    <px:PXDateTimeEdit ID="edParameter1" runat="server" DataField="Parameter1" 
      TimeMode="true"/>
    ```


**Parent topic:**[Configuring the UI from the Backend](../StudioDeveloperGuide/BL__mng_Configuring_UI_from_Back_End.md)

