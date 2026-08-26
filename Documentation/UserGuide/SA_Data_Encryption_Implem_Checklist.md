# Digital Certificates: Implementation Checklist {#_d7507f79-a092-482b-947b-e7d900d687b5 .concept}

The following sections provide details you can use to ensure that the system is configured properly for using digital certificates for database encryption or signing PDF documents generated in Acumatica ERP, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you use digital certificates, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[File Upload Preferences](SM_20_25_50.md) \(SM202550\)|Digital certificates used by Acumatica ERP have the `.pfx` extension. Before you can import digital certificates into the system, make sure `.pfx` is on the list of allowed extensions.|
|[Encryption Certificates](SM_20_05_30.md) \(SM200530\)|Make sure that the list of needed certificates has been uploaded here and passwords are specified for each one.

 Only certificates that are added to this form can be used for replacing database encryption algorithm used in Acumatica ERP or signing PDF files.

|
|[Security Preferences](SM_20_10_60.md) \(SM201060\)|Make sure that one of the uploaded certificates is specified in the **PDF Signing Certificate** box. This certificate will be used for PDF files generated for reports in Acumatica ERP.|

## Other Settings That Affect the Workflow { .section}

You can assign the process of replacing the certificate used for database encryption to a schedule by using the **Schedule** menu on the [Certificate Replacement](SM_20_05_35.md) \(SM200535\) form toolbar. For more information, see [Automated Processing: General Information](SA_Scheduling_Automated_Processing_GeneralInfo.md).

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in [Digital Certificates: To Encrypt the Database](SA_Data_Encryption_To_Encrypt_DB.md).

**Parent topic:**[Encrypting Data with Digital Certificates](../UserGuide/SA_Data_Encryption_Mapref.md)

