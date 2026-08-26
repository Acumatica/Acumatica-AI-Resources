# To Convert an XML Mobile Site Map to MSDL Format {#_4e35fe59-24fb-4ec7-940a-ee624278fa97 .task}

You can convert an XML mobile site map to MSDL format any time you want by using the `ac.exe` command-line utility, as described in this topic.

## To Convert an XML Site Map to MSDL Format { .section}

Run the `ac.exe` command-line utility, which is located in the `Data` folder of your Acumatica ERP installation folder, with the MOBILESITEMAP command, the convert argument, and the following parameters:

-   The path to the folder with the mobile site map, which is the `\App_Data\Mobile` folder of the Acumatica ERP application instance. The file containing the mobile site map must be named `mobilesitemap.xml`.
-   The path to the MSD script file to which you want to save the generated site map.

The following code shows an example of the command line. \(The line breaks are only for display purposes.\)

```
ac.exe MOBILESITEMAP c s
  "D:\ProgramFiles\AcumaticaERP\CustomizedAcumaticaDB\App_Data\Mobile" 
  "D:\ProgramFiles\AcumaticaERP\CustomizedAcumaticaDB\App_Data\Mobile\sitemap.msd"
```

**Note:** You can use the short name of the convert argument, which is c.

**Parent topic:**[Mobile Site Map](../StudioDeveloperGuide/MOBILE_MobileSiteMap.md)

