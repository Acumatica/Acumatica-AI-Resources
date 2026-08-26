# Table Depreciation Methods {#_bc258ce7-9063-441a-be38-97f85f95d09d .concept}

Acumatica ERP supports using the depreciation tables in which the depreciation method and allowed depreciation expense per year are fixed. You can use the predefined table-based depreciation methods or add your own custom depreciation methods by using the [Depreciation Table Methods](FA_20_26_00.md) \(FA202600\) form.

To create a custom table-based method, you need to specify the depreciation percent of the depreciable basis that will be allocated over every year of the asset's useful life. First you add a table method of the class type that will be used to aggregate methods of the asset type. Then you add methods of asset type that are used to specify the annual percentage for the selected convention period. The rates you enter must fully specify the depreciation of an asset over its useful life. For details, see [To Configure Table Methods of Class Type](FA__how_Table_Depreciation_Class.md) and [To Configure Table Methods of Asset Type](FA__how_Table_Depreciation_Asset.md). If assets must be depreciated once a year, you specify all the settings for the table method in one record, as described in [To Configure Table Methods with Annual Depreciation](FA__how_Table_Depreciation_Both.md).

-   **[To Configure Table Methods of Class Type](../UserGuide/FA__how_Table_Depreciation_Class.md)**  

-   **[To Configure Table Methods of Asset Type](../UserGuide/FA__how_Table_Depreciation_Asset.md)**  

-   **[To Configure Table Methods with Annual Depreciation](../UserGuide/FA__how_Table_Depreciation_Both.md)**  


**Parent topic:**[Depreciation Configuration](../UserGuide/FA__cnf_Depreciation_Methods.md)

