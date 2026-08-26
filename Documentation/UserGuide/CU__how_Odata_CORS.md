# Generic Inquiry Access Through OData: To Configure CORS {#_6b96531f-f0b7-4532-accb-f625f4e5a388 .task}

Acumatica ERP uses cross-origin resource sharing \(CORS\) to allow access to OData endpoints for client-side applications. To enforce limitations on CORS requests, you change the CORS settings for the web server of your Acumatica ERP instance.

**Important:** Because saving changes in `web.config` restarts the site of the application, make sure that all users of your website are warned about the site restart so that they can save records being entered.

## To Configure CORS { .section}

1.  Open the `web.config` file, which is located in the folder that contains the application instance website.
2.  In the file, find the `cors` section, shown below, within the `odata` section.

    ```
    <px.core>
        ...
        <odata enableCompression="true" compressionThreshold="860">
            <cors enabled="true" origins="*" methods="*" headers="*" 
            exposedHeaders="DataServiceVersion,MaxDataServiceVersion,OData-Version,
            OData-MaxVersion" />
        </odata>
        ...
    </px.core>
    ```

3.  Specify the CORS settings in the `cors` section as follows:
    -   To enable CORS, specify `enabled="true"`.
    -   To disable CORS, specify `enabled="false"`.
    -   To limit the origins that are allowed access to the application web server, for the `origins` parameter, list the allowed origins, separated by commas.
    -   To allow all origins, specify `origin="*"`.
    -   To limit the methods supported by the resource, for the `methods` parameter, list the allowed methods, separated by commas.
    -   To allow all methods, specify `methods="*"`.
    -   To limit simple headers supported by the resource, for the `headers` parameter, list the allowed simple headers, separated by commas.
    -   To allow all simple headers, specify `headers="*"`.
    -   To add your own headers, for the `exposedHeaders` parameter after the default headers, list the allowed headers, separated by commas.
4.  Save the `web.config` file, which automatically restarts the website.

**Parent topic:**[Accessing the Exposed Inquiry Results Through OData](../UserGuide/GI_Access_to_Exposed_Inquiry_Through_OData_Mapref.md)

