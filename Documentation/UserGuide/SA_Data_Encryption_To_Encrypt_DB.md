# Digital Certificates: To Encrypt the Database {#_93d85f70-6822-4cc4-ba2a-c3fba42174e8 .task}

The following activity will walk you through the process of replacing the default encryption algorithm used in Acumatica ERP with your encryption certificate.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that SweetLife Fruits &amp; Jams company has decided to replace the default encryption algorithm used in Acumatica ERP to encrypt sensitive data stored in the database with some other encryption certificate because of company security polices. You, as a system administrator, have been asked to configure the replacement.

## Process Overview { .section}

You will use the [Encryption Certificates](SM_20_05_30.md) \(SM200530\) form to register and upload the [AcumaticaTrainingEncryption.pfx](Files/AcumaticaTrainingEncryption.pfx) digital certificate with the `Aw34esz` password to be used for database encryption.

**Attention:** The provided certificate is for training purposes only; do not use it for the production environment.

On the [Certificate Replacement](SM_20_05_35.md) \(SM200535\) form, you will specify a certificate in the **New Certificate** box and click **Replace Certificate**. The system will launch the encryption of sensitive data with the new certificate.

Additionally, you will restore the database encryption method to the default one by removing the specified certificate and clicking **Replace Certificate** once again.

## System Preparation { .section}

Before you start performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as a system administrator by using the *gibbs* username and the *123* password.
2.  Open the [File Upload Preferences](SM_20_25_50.md) \(SM202550\) form and verify that `.pfx` is on the list of allowed extensions. Make sure that the check box in the **Forbidden** column is cleared for this extension.

## Step 1: To Import a Certificate {#section_m2w_bjr_4pb .section}

To register and upload a certificate, do the following:

1.  Open the [Encryption Certificates](SM_20_05_30.md) \(SM200530\) form.
2.  On the table toolbar, click **Add Row**.
3.  In the **Name** box, type `Training Encryption`.
4.  In the **Password** box, type the `Aw34esz` password for the certificate. It will be masked after you save your changes.
5.  On the form toolbar, click **Save**.
6.  Upload the file with the certificate as follows:
    1.  Click the paper clip icon in the **Files** column of the row with the certificate.
    2.  In the **Files** dialog box, click **Browse**, and select the [AcumaticaTrainingEncryption.pfx](Files/AcumaticaTrainingEncryption.pfx) file with the certificate you want to upload.
    3.  Click **Upload** to import the certificate.
    4.  Close the **Files** dialog box.

## Step 2: To Encrypt the Database { .section}

To encrypt the database, do the following:

1.  Open the [Certificate Replacement](SM_20_05_35.md) \(SM200535\) form.

    **Tip:** In the Selection area, you can see the certificate currently used for database encryption in the **Current Certificate** box. If the box is blank, the default encryption algorithm is being used.

2.  In the **New Certificate** box of the Selection area, select the certificate that you imported in the previous step. Its key will be used for encrypting the database.
3.  On the form toolbar, click **Replace Certificate**.

    This initiates the process of decrypting the data with the previous encryption algorithm and encrypting it by using the new key. The **Processing** dialog box opens.

4.  Close the dialog box after the processing completes.

## Step 3: To Restore the Default Database Encryption { .section}

Perform the following instructions to restore the default database encryption:

1.  While remaining on the [Certificate Replacement](SM_20_05_35.md) \(SM200535\) form, in the Selection area, clear the value of the **New Certificate** box.
2.  On the form toolbar, click **Replace Certificate**.

    This initiates the process of decrypting the data with the previous certificate and encrypting it by using the default encryption algorithm. The **Processing** dialog box opens.

3.  Close the dialog box after the processing completes. Notice that the **Current Certificate** box has become empty.

**Parent topic:**[Encrypting Data with Digital Certificates](../UserGuide/SA_Data_Encryption_Mapref.md)

