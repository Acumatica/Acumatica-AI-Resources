# External Storage: General Information {#_26f06314-a929-472d-afb6-88fa4ad3fbd6 .concept}

By default, the system stores the files attached to documents in the Acumatica ERP SQL Server database. Alternatively, the system can store the files outside of the database—either in a local folder on the computer running the Acumatica ERP website, or in a public cloud using Azure Blob Storage or Amazon Simple Storage Service \(Amazon S3\).

## External Storage Risks { .section}

We recommend using the default solution provided with Acumatica ERP, which automatically places attached files in the system database. This affordable solution includes automated backups, versioning, file synchronization, and integrated security.

If you want to implement an external storage solution, you should be aware of the following risks:

-   Backups: Acumatica's standard SaaS backup procedures apply to files stored in the database. If files are moved outside the database. then backups, disaster recovery, and support become the responsibility of the customer.
-   Data security and privacy: External storage may allow direct connections which do not go through Acumatica ERP security. Thus, protecting sensitive data, such as invoices and customer-related files, and meeting General Data Protection Regulation \(GDPR\) requirements become the responsibility of the customer.
-   Data migration: Acumatica ERP snapshots and backups do not include external files. When the database or snapshot is restored, only database files are included.
-   Testing and non-production environments: When you restore backups or snapshots to a non-production environment \(when using an external storage solution\), the file reference links will point to production storage. If you add or delete files during testing, you will affect the files in your production environment.
-   Performance and reliability: Retrieving files from an external solution requires a high-speed connection to the external provider. If this connection in interrupted, you may experience errors or slower performance.
-   Support of non-Latin characters: Non-Latin characters in file names may not be supported by an external storage provider, which can cause errors when you move files from Acumatica ERP to the external storage. We recommend using only Latin letters, numbers, and underscores in file names.
-   Troubleshooting: Support and troubleshooting processes are more complex for customers who use external file storage.

To disable the configuration of an external file storage, and administrator can add to the appSettings section of the `web.config` file the DisableExternalFileStorage key set to `true`.

## External Storage for SaaS Customers of Acumatica Business Cloud {#section_cph_jbt_45b .section}

Software as a service \(SaaS\) customers have the option to use Amazon S3 storage if the following risks and limitations are acceptable. Customers must purchase their external storage independently of their Acumatica contract and user agreement. Customers that use external storage are responsible for all backup and recovery operations associated with external storage. Customers must be made aware that the storage benefits provided above are not available through customer-managed storage.

## External File Storage Configuration { .section}

You use the [External File Storage](SM_20_25_40.md) \(SM202540\) form to configure external file storage providers and specify where files should be stored. With regard to file storage functionality, *provider* denotes the storage provider, which can be a local folder, an Azure Blob service, or an Amazon S3 service.

**Attention:** To use an external file storage, you must have an account with the provider and configure the file storage to be used by your Acumatica ERP instance. For more information, see [Blob Storage](https://azure.microsoft.com/en-us/documentation/articles/storage-introduction/#blob-storage) on the Microsoft Azure portal and [Amazon S3](http://aws.amazon.com/s3/).

If you created multiple companies in your Acumatica ERP instance and want to store file attachments out of the database in any of these companies, you need to configure an external storage provider for each company individually. It can be the same provider for all companies or a separate provider for each company.

By default, the system deletes a file in the external storage if a user deletes it in Acumatica ERP. A system administrator can disable the deletion of files in external storage by adding to the appSettings section of the `web.config` file the DisableDeleteOnExternalFileStorage key set to `true`.

See the following topics for the procedures of configuring external file storage in Acumatica ERP:

-   [To Store Attached Files in a Local Folder](DM__How_External_File_Storage.md)
-   [To Store Attached Files by Using the Azure Blob Service](DM__how_FileStorage_Azure.md)
-   [To Store Attached Files by Using the Amazon S3 Service](DM__how_FileStorage_AmazonS3.md)

## File Synchronization { .section}

You can synchronize files stored in Acumatica ERP with files on a shared network folder or with files stored on a File Transfer Protocol \(FTP\), Hypertext Transfer Protocol \(HTTP\), or Secure File Transfer Protocol \(SFTP\) server. The following topics describe how to configure each type of synchronization:

-   [To Configure File Synchronization Through FTP or HTTP](SM__How_to_configure_file_FTP_HTTP_synch.md)
-   [To Configure File Synchronization Through SFTP](SM__How_to_configure_file_SFTP_synch.md)
-   [To Configure File Synchronization Through a Shared Folder](SM__How_to_configure_file_Shared_Folder_synch.md)

You can use automation schedules to perform periodic synchronization between a file on an Acumatica ERP site and a file \(or folder\) on a local computer or network. For more information, see [To Set Up Automatic File Synchronization](SM__how_How_to_Set_Up_Automatic_Synchronization_of_Files.md).

**Attention:** If you synchronize files with an FTP server, you should use a username without the */* or *\\* character in synchronization settings. Otherwise, Acumatica ERP will not be able to connect to the server.

**Parent topic:**[Managing External Storage for File Attachments](../UserGuide/SA_External_Storage_Management_Mapref.md)

