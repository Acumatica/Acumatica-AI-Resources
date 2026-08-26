# To Customize the Mobile Site Map for a Form {#_0e6f3728-57aa-447c-94ca-d412f9e4fbc9 .concept}

Before you start to customize the original mobile site map, we recommend that you explore the files in the `\App_Data\Mobile` folder of the website to learn which forms of Acumatica ERP are used in the map. The folder can contain the files with the XML metadata and MSDL code of not only the original mobile site map but also any customizations that have been applied to the map.

To customize the mapping for an Acumatica ERP form that is included in the original mobile site map, we recommend that you develop custom MSDL code. \(See [Configuring the Mobile Site Map](MOBILE_MSDL.md) for details.\)

**Warning:** We recommend that you avoid including in the mobile site map the XML metadata for an Acumatica ERP form that is already included in the original mobile site map. Currently, the mobile framework does not allow the merging of multiple sets of metadata for the same form of Acumatica ERP. Also, we recommend that you not customize the files of the original mobile site map. In a future version of Acumatica ERP, an XML file can contain additional metadata for new functionality, about which you would never know because the file is replaced by the customized one.

After you have saved the MSDL code in a `.msd` file in the `\App_Data\Mobile` folder of the website, you can add this file to a customization project that can be deployed to an instance of Acumatica ERP.

**Parent topic:**[Configuring the Mobile Site Map by Using XML \(deprecated\)](../StudioDeveloperGuide/MOBILE_UIStructure.md)

