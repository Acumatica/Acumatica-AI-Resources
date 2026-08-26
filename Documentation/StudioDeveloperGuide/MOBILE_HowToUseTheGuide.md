# How to Use XML Examples of This Section {#_67e92b66-bdce-43d4-b6bb-3b847c479152 .concept}

In this section, each example contains the XML metadata that you can use as the mobile site map for your instance of Acumatica ERP.

All examples include the metadata for the Acumatica ERP forms that are used in the original mobile site map. Because the Acumatica Mobile Framework does not allow the merging of multiple sets of metadata for the same form of Acumatica ERP, you cannot use the examples while the website contains the original mobile site map. To avoid possible errors on the server, you should temporarily \(during the period while you are reading the guide and completing its examples\) cancel the original mapping in the instance of Acumatica ERP where you intend to test the examples.

To do this, perform the following actions:

1.  In the `\App_Data\Mobile` folder of the website, rename the `mobilesitemap.xml` file to `mobilesitemap.xml.bak`.
2.  In the same folder, create the `mobilesitemap.xml` file, which contains the following XML code.

    ```
    <?xml version="1.0" encoding="UTF-8"?>
    <sm:SiteMap xmlns:sm="http://acumatica.com/mobilesitemap"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    </sm:SiteMap>
    ```

    **Note:** If you want the Acumatica ERP server to load all XML files from the `\App_Data\Mobile` folder of the website, the `mobilesitemap.xml` file is mandatory in this folder. If the file is absent, the server does not load other XML files, and the mobile site map is empty.


After you have completed these actions, the mobile site map is empty, and the server loads all other XML files from the `\App_Data\Mobile` folder of the website. Therefore, you can add `.xml` files with the sample code provided in the examples to the `\App_Data\Mobile` folder to perform testing.

**Warning:** We recommend that you remove the code of each tested example before testing the next one, because some examples contain the metadata for the same forms of Acumatica ERP.

**Parent topic:**[Configuring the Mobile Site Map by Using XML \(deprecated\)](../StudioDeveloperGuide/MOBILE_UIStructure.md)

