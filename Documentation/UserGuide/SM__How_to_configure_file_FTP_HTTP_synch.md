# To Configure File Synchronization Through FTP or HTTP {#_af052351-3acd-4614-981c-b001a320582c .task}

You can synchronize files stored in Acumatica ERP with files stored on a File Transfer Protocol \(FTP\) or Hypertext Transfer Protocol \(HTTP\) server.

## To Configure File Synchronization \(FTP or HTTP\) { .section}

1.  Open the [Search in Files](SM_20_25_20.md) \(SM202520\) form.
2.  To find the file, in the Selection area, specify criteria to help you find the file. These criteria can include the file name \(or part of the file name\), the time interval of the import, and the name of the user who imported the file or checked it out. The table lists the files that match the criteria you have specified.
3.  In the table, click the file to open the [File Maintenance](SM_20_25_10.md) form for this file and view information about the file.
4.  On the **Synchronization** tab, select the **Synchronize** check box.
5.  In the **Synchronization Type** box, select *FTP* or *HTTP*.
6.  In the **Path** box, enter the path to the desired file on the FTP or HTTP server.
7.  In the **Login** and **Password** boxes, type the username and password of an account with sufficient rights to allow system access to the shared file.

    **Attention:** If you synchronize files with an FTP server, you should use a username without the */* or *\\* character in synchronization settings. Otherwise, Acumatica ERP will not be able to connect to the server.

8.  On the form toolbar, click **Save**.

**Parent topic:**[Managing External Storage for File Attachments](../UserGuide/SA_External_Storage_Management_Mapref.md)

