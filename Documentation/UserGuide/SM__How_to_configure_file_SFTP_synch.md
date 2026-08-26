# To Configure File Synchronization Through SFTP {#_d9555f46-0a48-4059-8082-decc6b8e3652 .task}

Synchronization through Secure File Transfer Protocol \(SFTP\) is similar to File Transfer Protocol \(FTP\) synchronization but is more secure because it provides data exchange only when the file storage and Acumatica ERP have matching SSH keys. Therefore, you first should generate an Secure Shell \(SSH\) key pair and upload the keys to the SFTP server and Acumatica ERP; you then configure file synchronization by using the [File Maintenance](SM_20_25_10.md) \(SM202510\) form. These tasks are be described below:

## To Generate SSH Keys { .section}

1.  Install and launch the [PuTTY Key Generator](https://www.ssh.com/academy/ssh/putty).
2.  In the Parameters pane, select the **RSA** type.
3.  Press **Generate** and perform the requested actions to generate SSH keys.
4.  Specify a passphrase in the **Key passphrase** and **Confirm passphrase** boxes.
5.  Press **Save public key** and store the public key in some temporary location.
6.  In the main menu, select **Conversions → Export OpenSSH Key**, specify a `.txt` extension, and store the private key in some temporary location.

## Upload SSH Keys { .section}

1.  Upload the public key to your SFTP server.
2.  Upload the private key to Acumatica ERP. To do this:
    1.  Open the [File Upload Preferences](SM_20_25_50.md) \(SM202550\) form and verify that `.txt` is on the list of allowed extensions. Ensure the check box in the **Forbidden** column is cleared for this extension.
    2.  Open the [Encryption Certificates](SM_20_05_30.md) \(SM200530\) form.
    3.  On the form toolbar, click **Add row**.
    4.  Specify the certificate name in the **Name** column.
    5.  Specify the certificate's passphrase in the **Password** column.
    6.  On the form toolbar, click **Save**.
    7.  Click the paper clip icon in the **Files** column of the row with the certificate.
    8.  In the Files dialog box, click **Browse**, and select the `.txt` file with the private key you want to upload.
    9.  Click **Upload** to import the certificate.
    10. Close the Files dialog box.

## To Configure File Synchronization \(SFTP\) { .section}

1.  Open the [Search in Files](SM_20_25_20.md) \(SM202520\) form.
2.  To find the file, in the Selection area, specify criteria to help you find the file. These criteria can include the file name \(or part of the file name\), the time interval of the import, and the name of the user who imported the file or checked it out. The table lists the files that match the criteria you have specified.
3.  In the table, click the file to open the [File Maintenance](SM_20_25_10.md) \(SM202510\) form for this file and view information about the file.
4.  On the **Synchronization** tab, select the **Synchronize** check box.
5.  In the **Synchronization Type** box, select *SFTP*.
6.  In the **Path** box, enter the path to the shared folder on a local network computer.
7.  In the **Login** and **Password** boxes, type the username and password of an account with sufficient rights to allow system access to the shared folder.
8.  In the **SSH Authentication Key** box, select the certificate that you have imported. Its key will be used to interact with the SFTP server.
9.  On the form toolbar, click **Save**.

**Parent topic:**[Managing External Storage for File Attachments](../UserGuide/SA_External_Storage_Management_Mapref.md)

