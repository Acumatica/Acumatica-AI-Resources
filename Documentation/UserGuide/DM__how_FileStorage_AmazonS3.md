# To Store Attached Files by Using the Amazon S3 Service {#_f7dabb22-0591-4142-8269-eeb89b07b83e .task}

To store the attached files in Amazon S3 storage, you use the [External File Storage](SM_20_25_40.md) \(SM202540\) form to configure the Amazon S3 provider and switch file storage to the provider. For more information about storing files, see [External Storage: General Information](SA_External_Storage_Management_GeneralInfo.md).

## Before You Proceed { .section}

Your company must have an Amazon Web Services \(AWS\) account with the configured storage bucket in Amazon S3 storage. For more information, see [Amazon S3](http://aws.amazon.com/s3/) and [AWS Security Credentials](http://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html).

**Note:** AWS does not support the Chinese file names. Please check all your attached files to have allowed names before using Amazon S3 Storage. We recommend using only Latin letters, numbers, and underscores in file names.

## To Store Attached files by Using the Amazon S3 Service { .section}

1.  Open the [External File Storage](SM_20_25_40.md) \(SM202540\) form.
2.  In the **Provider** box, select *Amazon S3 Storage*.
3.  In the table, enter the following information in the **Values** column:
    -   *AWS Access Key*: The access key ID of the storage bucket—for example, *AKIAIOSFODNN7EXAMPLE*
    -   *AWS Region Endpoint*: The short name of the AWS region—for example, *us-east-1*
    -   *AWSSecretkey*: The secret access key of the S3 storage bucket—for example, *wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY*
    -   *BucketName*: The name of the storage bucket that will be used to store Acumatica ERP files—for example, *files*
    -   *PathPrefix*: The user-defined folder where the files will be stored—for example, *mycompany/acumatica*
4.  On the form toolbar, click **Enable Provider** to save the provider settings.
5.  On the form toolbar, click **Switch Direction** to allow Acumatica ERP to save uploaded files to the external storage.
6.  If you want to move all the files that are stored in the system to the external storage, click **Move Files to Storage** on the form toolbar.

**Parent topic:**[Managing External Storage for File Attachments](../UserGuide/SA_External_Storage_Management_Mapref.md)

