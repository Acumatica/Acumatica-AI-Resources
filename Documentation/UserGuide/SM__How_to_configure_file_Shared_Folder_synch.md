# To Configure File Synchronization Through a Shared Folder {#_d6f4ecc9-c572-4ecc-a122-900158b2dc29 .task}

You can synchronize files stored in Acumatica ERP with files stored on a shared network folder. Thus, you can synchronize either a single file or the entire contents of a folder. If you choose to sync the entire folder, you will need to specify a regular expression to identify the files that should be synchronized.

## Before You Proceed { .section}

Before you start configuring synchronization between a file on your Acumatica ERP website and a file or folder on your local network, share the folder \(which includes the file to be synchronized or which will itself be synchronized with the file on the Acumatica ERP website\) through your operating system. Make sure the folder is shared with proper rights for writing.

**Note:** Synchronization \(of the *export* type\) with a folder means that each time synchronization is performed, a new file with the appropriate date and time stamp is created in the specified folder.

## To Configure File or Folder Synchronization { .section}

1.  Open the [Search in Files](SM_20_25_20.md) \(SM202520\) form.
2.  To find the file, in the Selection area, specify criteria to help you find the file. These criteria can include the file name \(or part of the file name\), the time interval of the import, and the name of the user who imported the file or checked it out. The table lists the files that match the criteria you have specified.
3.  In the table, click the file to open the [File Maintenance](SM_20_25_10.md) form for this file and view information about the file.
4.  On the **Synchronization** tab, select the **Synchronize** check box.
5.  In the **Synchronization Type** box, select *Shared Folder*.
6.  In the **Path** box, enter the path to the shared folder on a local network computer.
7.  In the **Login** and **Password** boxes, type the username and password of an account with sufficient rights to allow system access to the shared folder.

    **Attention:** If you synchronize files with an FTP server, you should use a username without the */* or *\\* character in synchronization settings. Otherwise, Acumatica ERP will not be able to connect to the server.

8.  To configure synchronization with the folder, do the following:
    1.  Select the **Synchronize Folder Content** check box.
    2.  In the **Import File Reg. Exp.** box, enter a validation mask for the files in the folder that are involved in synchronization.
9.  On the form toolbar, click **Save**.

**Parent topic:**[Managing External Storage for File Attachments](../UserGuide/SA_External_Storage_Management_Mapref.md)

