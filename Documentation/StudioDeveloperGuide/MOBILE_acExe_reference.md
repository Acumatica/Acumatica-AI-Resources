# ac.exe MOBILEITEMAP Reference {#_1072ee28-d5a6-4ad3-b633-875a8e219a2a .concept}

The command-line tool \(executable name `ac.exe`\) provides multiple parameters and applications. This topic describes the list of possible parameters and values of `ac.exe` that can be applied to mobile site maps. When working with mobile site maps, the first key that you must always use is `MOBILESITEMAP`.

**Note:** By default, `ac.exe` is located in the folder on the computer that has Acumatica ERP installed, which is `C:\Program Files (x86)\Acumatica ERP\Data\`.

|Syntax|Description|
|------|-----------|
|`d[elta] s[cript] path_to_old_sitemap_folder path_to_new_sitemap_folder path_to_msdl_script_file`|Compares two mobile site maps and saves an MSDL script with the delta of these site maps.|
|`d[elta] p[roject] path_to_old_sitemap_folder path_to_new_sitemap_folder path_to_customization_project_file`|Compares two mobile site maps and saves the delta of these site maps to the customization project.|
|`c[onvert] s[cript] path_to_sitemap_folder path_to_msdl_script_file`|Converts an XML mobile site map to MSDL format.|
|`c[onvert] p[roject] path_to_sitemap_folder path_to_customization_project_file`|Converts an XML mobile site map to MSDL format and saves the result to the specified customization project.|
|`u[pgrade] s[cript] path_to_custom_sitemap_folder path_to_msdl_script_file`|Compares an XML mobile site map with the default mobile site map and saves an MSDL script with the delta of these site maps.|
|`u[pgrade] p[roject] path_to_custom_sitemap_folder path_to_customization_project_file`|Compares an XML mobile site map with the default mobile site map and saves the delta of these site maps to the customization project.|

