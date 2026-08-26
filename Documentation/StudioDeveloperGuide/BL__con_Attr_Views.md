# Attributes on Data Views {#_3073449e-2746-472f-b834-6d730bfac4fb .concept}

You can place the attributes listed in the following table on the declaration of a data view in a graph.

|Attribute|Description|
|---------|-----------|
|[PXFilterable](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=9433293e-397a-52cb-564f-798347a5dcc3)|Adds the control that makes it possible for a user to create filters and save them in the database. The control is added to the grid that uses the data view to retrieve data.|
|[PXImport](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=d1030587-873d-d392-6c00-3e63317f27cf)|Adds the grid toolbar button that a user clicks to load data from the file to the grid. The attribute is placed on the data view the grid uses to retrieve the data.|
|[PXHidden](https://help.acumatica.com/(W(4))/Help?ScreenId=ShowWiki&pageid=615f145d-3415-1060-8081-20bfc5f23a76)|Hides the data view from the selectors of data access classes \(DACs\) and graphs, and from the web service API clients.|
|[PXCopyPasteHiddenView](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=79c902fd-84ad-37d8-e754-9cf71465c3d9)|Indicates that the cache corresponding to the primary DAC of the data view is not copied when the copy-paste feature is used on the form.|
|[PXCopyPasteHiddenFields](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=3138599b-27a4-5f58-abc6-75208fcd1c6d)|Indicates that the specific fields of the primary DAC of the data view are not copied when the copy-paste feature is used on the form.|

**Parent topic:**[Working with Attributes](../StudioDeveloperGuide/BL__mng_Working_With_Attributes.md)

