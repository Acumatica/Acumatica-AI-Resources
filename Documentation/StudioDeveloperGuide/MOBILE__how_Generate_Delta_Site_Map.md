# To Generate the Delta from Two Mobile Site Maps {#_6e4abb4c-04ca-4cfc-b123-f6a930d123e9 .task}

**Note:** The following information is applicable only for Acumatica Framework versions earlier than 2026 R1.

If you have developed a custom site map for the mobile application and want to redistribute it to multiple Acumatica ERP instances, you can generate a delta script file that can be applied to the default site map. You then add this delta file to the customization project, as described in this topic.

## To Generate the Delta from Two Mobile Site Maps { .section}

1.  For an Acumatica ERP instance, customize the site map for the mobile application. \(For details, see [To Customize the Mobile Site Map for a Form](MOBILE_MobileSiteMap_Customizing.md#).\)

    **Note:** Make sure all nodes of the site map have the Name attribute specified. This attribute is used by the system during the generation of the delta file.

2.  Deploy another Acumatica ERP instance of the same version with the default site map for the mobile application.
3.  Run the `ac.exe` command-line utility, which is located in the `Data` folder of your Acumatica ERP installation folder, with the MOBILESITEMAP command, the delta argument, and the following parameters:

    -   The path to the folder with the default site map, which is the `\App_Data\Mobile` folder of the corresponding Acumatica ERP application instance.

        **Note:** If the folder specified in this parameter is empty, the utility converts the XML site map specified in the second parameter to MSDL format.

    -   The path to the folder with the customized site map, which is the `\App_Data\Mobile` folder of the customized Acumatica ERP application instance.
    -   The path to the MSD script file to save the generated delta. You have to save the MSD file with the delta in the `\App_Data\Mobile` folder of the Acumatica ERP application instance to make Acumatica ERP apply the delta automatically when a user starts the mobile application connected to this instance.
    The following code shows an example of the command line. \(The line breaks are only for display purposes.\)

    ```
    ac.exe MOBILESITEMAP d s
      "D:\ProgramFiles\AcumaticaERP\DefaultAcumaticaDB\App_Data\Mobile" 
      "D:\ProgramFiles\AcumaticaERP\CustomizedAcumaticaDB\App_Data\Mobile" 
      "D:\ProgramFiles\AcumaticaERP\CustomizedAcumaticaDB\App_Data\Mobile\delta.msd"
    ```

    **Note:** You can use the short name of the delta argument, which is d.

4.  Add the delta file to a customization project to apply the changes in the mobile site map to other instances of Acumatica ERP.

**Parent topic:**[Configuring the Mobile Site Map by Using XML \(deprecated\)](../StudioDeveloperGuide/MOBILE_UIStructure.md)

