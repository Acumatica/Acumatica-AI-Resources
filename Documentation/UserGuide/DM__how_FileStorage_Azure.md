# To Store Attached Files by Using the Azure Blob Service {#_b4a74f1c-3d4e-4eef-b070-c364a71c69f7 .task}

To store the attached files in Azure Blob storage, you use the [External File Storage](SM_20_25_40.md) \(SM202540\) form to configure the Azure Blob provider and switch file storage to the provider. For more information about storing files, see [External Storage: General Information](SA_External_Storage_Management_GeneralInfo.md).

## Before You Proceed { .section}

Your company must have an Azure account with the configured blob in Azure Blob storage. For more information, see [Introduction to Microsoft Azure Storage: Blob Storage](https://azure.microsoft.com/en-us/documentation/articles/storage-introduction/#blob-storage) and [About Azure Storage Accounts](https://azure.microsoft.com/en-us/documentation/articles/storage-create-storage-account/#create-a-storage-account).

## To Store Attached files by Using the Azure Blob Service { .section}

1.  Open the [External File Storage](SM_20_25_40.md) \(SM202540\) form.
2.  In the **Provider** box, select *Azure Blob Storage*.
3.  In the table, enter the following information in the **Values** column:
    -   *Account*: The name of your storage account in the Azure Blob storage service—for example, *myaccount*.
    -   *Container*: The name of the container in your Azure Blob storage where you want to store files from your Acumatica ERP instance—for example, *files*.
    -   *Key*: The 512-bit access key to your storage account in the Azure Blob storage service—for example, *ubYUHyb8PUdy7R7yDITILMp5NN9usQYeS5?0RPAO70ikBO09t4nVYbJeuGILN/qS72p9AmOtXb4MUh+wMu$GKnwC*.
4.  On the form toolbar, click **Enable Provider** to save the provider settings.
5.  On the form toolbar, click **Switch Direction** to allow Acumatica ERP to save uploaded files to the external storage.
6.  If you want to move all the files that are stored in the system to the external storage, click **Move Files to Storage** on the form toolbar.

**Parent topic:**[Managing External Storage for File Attachments](../UserGuide/SA_External_Storage_Management_Mapref.md)

