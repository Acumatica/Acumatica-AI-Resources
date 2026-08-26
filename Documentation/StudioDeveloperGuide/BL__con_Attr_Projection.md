# Data Projection {#_c41b409d-9580-42a9-9d79-76227ed7aeda .concept}

The attributes listed in the following table implement the projection of data from one table or multiple tables into a single data access class \(DAC\).

|Attribute|Description|
|---------|-----------|
|[PXProjection](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=d23f265e-1a4c-8ce1-d732-72fbaf8faf01)|Binds the DAC to a random data set. The attribute thus defines a named view, but is implemented by the server side rather than by the database.|
|[PXExtraKey](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=13b0ddc2-f0bf-72b8-2943-29996dcc52fd)|Indicates that the field implements a relationship between two tables. The use of this attribute enables the update of the referenced table when the projection is updated.|

**Parent topic:**[Working with Attributes](../StudioDeveloperGuide/BL__mng_Working_With_Attributes.md)

