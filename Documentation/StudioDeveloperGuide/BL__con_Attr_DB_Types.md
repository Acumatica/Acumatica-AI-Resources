# Bound Field Data Types {#_61059393-8873-451f-b474-783906330fc6 .concept}

The following attributes bind a data access class \(DAC\) field to a database column of a specific type.

|Attribute|C\# Data Type|Database Data Type|Comment|
|---------|-------------|------------------|-------|
|[PXDBBool](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=13f616d9-f311-5c67-1699-3afe9b0df099)|bool?|bit|Boolean value|
|[PXDBByte](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=2a496fe1-ed90-93d4-1bfb-64ddfbeaf4b9)|byte?|tinyint|One-byte integer value|
|[PXDBDate](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=94441fa4-1035-987d-129d-15538490e44b)|DateTime?|datetime or smalldatetime|Date and time|
|[PXDBTime](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=7658dee7-e543-45fc-bff9-4089159b07d1)|DateTime?|smalldatetime|Time without date|
|[PXDBDateAndTime](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=7d1babdd-7dab-c573-4209-5f314a34c719)|DateTime?|datetime or smalldatetime|Date and time values represented by separate input controls in the user interface|
|[PXDBDecimal](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=0a0a2203-4512-8161-cafb-8063fd91dd0a)|decimal?|decimal|Sixteen-byte floating point numeric value with a specific precision|
|[PXDBDecimalString](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=57201878-ce61-f743-4975-98c45651a08d)|decimal?|decimal|A decimal value with a value selected by a user from the list of predefined values|
|[PXDBDouble](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=10e6b76e-0e99-33d1-ed06-28c6a810bd26)|double?|float|Eight-byte floating point value|
|[PXDBFloat](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=be47eb9e-2b93-ad72-897c-abef5e63dcff)|float?|real|Four-byte floating point value|
|[PXDBGuid](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=6b90eb55-9037-44fe-2372-ac5dfe2fcf3f)|Guid?|uniqueidentifier|Sixteen-byte unique value|
|[PXDBIdentity](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=4ddde536-c9d2-8527-3fae-514d69e65ac5)|int?|int|Four-byte auto-incremented integer value|
|[PXDBLongIdentity](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=1342fd26-2544-c923-cb14-6484e90e3909)|int64?|bigint|Eight-byte auto-incremented integer value|
|[PXDBShort](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=16a4ee6d-c1e4-e18d-f631-d78be533e166)|short?|smallint|Two-byte integer value|
|[PXDBInt](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=428fb01b-3cf2-4fa0-e12d-a9f6042250ac)|int?|int|Four-byte integer value|
|[PXDBLong](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=81f87be6-37a5-3fbc-705e-20327e677553)|int64?|bigint|Eight-byte integer value|
|[PXDBString](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=cf21368f-4969-18b4-8722-5789e5fc9c2a)|string|char, varchar, nchar, or nvarchar|Common string|
|[PXDBEmail](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=aecd562e-5bba-f65f-699f-af7a0e737171)|string|nvarchar|Email address|
|[PXDBLocalString](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=ca6278f7-ea27-31b2-0583-b37a22c47034)|string|char, varchar, nchar, or nvarchar|Localized string|
|[PXDBCryptString](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=ecb9872c-1766-03fb-b554-28470c85fde8)|string|char, varchar, nchar, or nvarchar|Encrypted string|
|[PXDBText](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=f7465b01-c1d2-b830-e425-dd8831105db1)|string|nvarchar or varchar|Text|
|[PXDBTimeSpan](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=46076438-16be-e404-198d-b5d15de888cf)|int?|int|Date and time value represented by minutes passed from 01/01/1900|
|[PXDBTimeSpanLong](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=b0b988cc-1562-2843-83e4-8959c37a62b3)|int?|int|Duration in time as a number of minutes|
|[PXDBTimestamp](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=322dc04a-1c81-09f3-9cfd-39e6e4ccaa2c)|byte\[\]|timestamp|Eight-byte unique, automatically generated binary numbers within a database|
|[PXDBBinary](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=14229646-92b0-415d-c9f0-5b828626a148)|byte\[\]| |Arbitrary array of bytes|
|[PXDBVariant](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=c8a5d074-d819-f0a2-ee32-893632c953b4)|byte\[\]|variant|Variant data type|

Acumatica Framework also includes other attributes that are used in special cases to bind a DAC field to database columns.

**Parent topic:**[Working with Attributes](../StudioDeveloperGuide/BL__mng_Working_With_Attributes.md)

