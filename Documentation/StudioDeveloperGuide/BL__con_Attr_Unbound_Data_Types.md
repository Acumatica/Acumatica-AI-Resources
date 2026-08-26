# Unbound Field Data Types {#_fd0adc27-e163-422d-a74e-057aa10ad2d9 .concept}

The following table contains unbound field type attributes. You use unbound type attributes when you define custom fields of your own that are not bound to any database fields.

**Tip:** You define a bound field when you use an attribute from the following table together with [PXDBCalced](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=484f012a-de33-1a6b-b520-4822d33ed3d8) or [PXDBScalar](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=3fedd793-f07c-3a34-48f9-5ec226d8caf1). For more information, see [Ad Hoc SQL for Fields](BL__con_Attr_SQL_Adhoc.md).

|Attribute|C\# Data Type|Comment|
|---------|-------------|-------|
|[PXBool](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=3ae131d5-cb39-569d-8f92-381ac02861cb)|bool?|Boolean value|
|[PXByte](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=1996cec6-b9ae-e331-682f-6f14c80c9066)|byte?|One-byte integer value|
|[PXDate](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=f3ba8d95-6f11-16eb-3c57-b0b030f5d41c)|DateTime?|Date and time|
|[PXDateAndTime](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=e99e29f8-1a5f-23e8-a4a2-75ca171f33df)|DateTime?|Date and time values represented by separate input controls in the user interface|
|[PXDecimal](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=c857222f-4844-fa46-b2c8-3ddf3af9f27f)|Decimal?|Sixteen-byte floating point numeric value with a specific precision|
|[PXDouble](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=6a4e6cff-350f-2172-1f4e-1927b42059d7)|double?|Eight-byte floating point value|
|[PXFloat](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=0edb0a20-8521-4d5a-afa8-169cdbb4364e)|float?|Four-byte floating point value|
|[PXGuid](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=c315bea7-bf8a-d12c-e608-54a49cd13ef9)|Guid?|Sixteen-byte unique value|
|[PXShort](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=3d431d6d-e8bf-7f43-2026-0d397229693f)|short?|Two-byte integer value|
|[PXInt](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=d9c4f366-2fa7-3ada-6c40-383a578e9334)|int?|Four-byte integer value|
|[PXLong](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=3749c940-f2fe-cd88-54ac-8b07b6717a66)|int64?|Eight-byte integer value|
|[PXString](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=7bf59b5d-a6dc-9ca3-aa20-4350136c9cb8)|string|String of characters|
|[PXTimeSpan](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=831b86b8-3dd2-4736-bb9e-ca6bea44045f)|int?|Date and time value represented by minutes passed from 01/01/1900|
|[PXTimeSpanLong](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=7f62b2cd-61e6-930e-4f9c-7b5dbfd56280)|int?|Duration in time as a number of minutes|
|[PXVariant](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=e12f608a-5774-4526-ad80-d0fcabb88a2a)|byte\[\]|Random array of bytes|

**Parent topic:**[Working with Attributes](../StudioDeveloperGuide/BL__mng_Working_With_Attributes.md)

