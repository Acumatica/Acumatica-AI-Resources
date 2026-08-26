# To Store Attached Files in a Local Folder {#_ca9542b5-cf5a-477f-a3e0-c276f758287e .task}

To store files in a local folder, use the [External File Storage](SM_20_25_40.md) \(SM202540\) form. For more information about storing files, see [External Storage: General Information](SA_External_Storage_Management_GeneralInfo.md).

## To Store Files in a Local Folder { .section}

1.  On the server running the Acumatica ERP website, create a folder to store the files \(for instance, *C:\\FileStorage*\) and make sure that the account used to run the Acumatica ERP website has *write* access to the folder you have created.
2.  Open the [External File Storage](SM_20_25_40.md) \(SM202540\) form.
3.  In the **Provider** box, select *Local Files Folder*.
4.  In the table, in the **Value** box for the added row, enter the path to the folder you have created.
5.  On the form toolbar, click **Enable Provider** to save the provider settings.
6.  On the form toolbar, click **Switch Direction** to allow Acumatica ERP to save uploaded files to the external storage.
7.  If you want to move all the files that are stored in the system to the external storage, click **Move Files to Storage** on the form toolbar.

**Parent topic:**[Managing External Storage for File Attachments](../UserGuide/SA_External_Storage_Management_Mapref.md)

