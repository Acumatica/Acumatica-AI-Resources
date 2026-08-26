# Audit Fields {#_259a9d39-e09d-4caf-969c-743f7b32deef .concept}

For data access class \(DAC\) fields used for record or state audit, you should specify the corresponding type attribute in their declaration. The following table lists these attributes and their descriptions:

|Attribute|Description|
|---------|-----------|
|[PXDBLastChangeDateTime](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=61a272e0-ccb2-6b78-d906-6ae79eae3172)|Maps a DAC field to the database column and automatically sets the field's value to the date and time of the last modification to the data record.|
|[PXDBCreatedByID](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=5d991e2e-8880-e338-d1e9-c612f211d8a7)|Maps a DAC field to a database column and automatically sets the field's value to the ID of the user who created the data record.|
|[PXDBCreatedByScreenID](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=8ac82ae8-f306-78c3-11ac-813f8511d6b0)|Maps a DAC field to a database column and automatically sets the field's value to the string ID of the application screen from which the data record was created.|
|[PXDBCreatedDateTime](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=a45416d5-0d44-2897-52a3-dc4c820ca2fc)|Maps a DAC field to a database column and automatically sets the field's value to the date and time of the data record's creation.|
|[PXDBLastModifiedByID](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=4f16b079-8c73-3fa3-fbe5-72bfc296e596)|Maps a DAC field to a database column and automatically sets the field's value to the ID of the user who last modified the data record.|
|[PXDBLastModifiedByScreenID](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=dbe97c4d-5e9b-d856-927d-562a9eb7ef8e)|Maps a DAC field to a database column and automatically sets the field's value to the ID of the application screen on which the data record was last modified.|
|[PXDBLastModifiedDateTime](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=40d9f982-ef63-b734-5ff0-b0626155fb1d)|Maps a DAC field to a database column and automatically sets the field's value to the date and time of the last modification to the data record.|
|[PXDBStateChangedByID](https://help.acumatica.com/wiki/ShowWiki.aspx?pageid=2e3b8495-2f7d-38f4-19de-fd648f80f2d5)|Maps a DAC field to the database column and automatically sets the field's value to the ID of the user who invoked the last workflow transition for the data record.|
|[PXDBStateChangedByScreenID](https://help.acumatica.com/wiki/ShowWiki.aspx?pageid=693d08a2-c5c4-edda-9603-c5876b90e6c5)|Maps a DAC field to the database column and automatically sets the field's value to the ID of the application screen on which the data record's last workflow transition occurs.|
|[PXDBStateChangedDateTime](https://help.acumatica.com/wiki/ShowWiki.aspx?pageid=ef1bb3eb-6e2e-bc2e-c804-f05af16a0ec3)|Maps a DAC field to the database column and automatically sets the field's value to the date and time \(in UTC\) of the last workflow transition of the data record.|

The Acumatica Framework binds DAC fields declared with these attributes to their corresponding columns and automatically assigns the field values.

**Parent topic:**[Working with Attributes](../StudioDeveloperGuide/BL__mng_Working_With_Attributes.md)

