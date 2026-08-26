# Search Customization: How the Search in DACs Works {#_869f3174-502e-4d7b-b11d-5036beb9cc38 .concept}

The search in records of data access classes \(DACs\) is built on top of the database search engine. The search process can be divided into the following stages:

1.  A user initiates the creation of the search index on the [Rebuild Full-Text Entity Index](../UserGuide/SM_20_95_00.md) \(SM209500\) form. \(For details on how to do this, see [Search Indexes: To Rebuild Search Indexes](../UserGuide/SA_Building_Search_Indexes_Activity.md).\) The system caches the DAC content in the [SearchIndex](https://help.acumatica.com/dacBrowser/PX.Data/SearchIndex) DAC. The respective database table stores the cached content of some of the DAC properties as text. The index in this table references the indexed DAC by its NoteID.
2.  When a user updates, removes, or creates a record of the indexed DAC, the system updates the search index for this record. The index is rebuilt when the changes are persisted to the database. The mechanism implemented in the [PXSearchable](https://help.acumatica.com/(W(7))/Help?ScreenId=ShowWiki&pageid=3fcecc8e-f198-2488-5671-91713e77fe49) attribute is responsible for the update of the search index for the DAC whose NoteID field contains a declaration of the attribute.
3.  When a user searches for text by using the universal search, the system looks through the cached content in the [SearchIndex](https://help.acumatica.com/dacBrowser/PX.Data/SearchIndex) table. If the full-text search feature is installed in the database server, this feature is used to find matching entries. Otherwise, the system uses the SQL LIKE operator.

**Parent topic:**[Customizing the Acumatica ERP Search](../StudioDeveloperGuide/CodeCustomization_Search_Mapref.md)

