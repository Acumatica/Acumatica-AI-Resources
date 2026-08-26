# Compliance Tools for General Data Protection Regulation {#_d65a8e1c-051e-4433-bab7-0037e7fa52b4 .concept}

Acumatica ERP provides General Data Protection Regulation \(GDPR\) compliance tools that you can use to do the following:

-   Track in the system whether the consent of individuals for the processing of personal data has been obtained or recalled
-   Restrict the processing of personal data for particular individuals
-   Erase and restore personal data
-   Audit who restricted the processing of personal data or erased personal data in the system, when the event occurred, and what data was restricted

## Availability of GDPR Compliance Tools { .section}

GDPR compliance tools become available in the system if the *GDPR Compliance Tools* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

To be able to access GDPR compliance tools, you need to have the *Data Privacy Controller* role. This predefined role has *View Only* access to all forms that contain personal data. Also, it is the only role that has access \(of the *Delete* type, which means that the role has complete access\) to the [Restrict Personal Data](GD_10_20_10.md) \(GD102010\), [Erase Personal Data](GD_10_20_20.md)\(GD102020\), [Restricted Personal Data](GD_10_20_30.md) \(GD102030\), and [Privacy Tool Audit](GD_10_10_10.md) \(GD101010\) forms.

## Affected Entities { .section}

In the out-of-the-box Acumatica ERP instance, GDPR compliance tools affect the following entities:

-   Business accounts, including customers, vendors, and prospects
-   Documents associated with business accounts, such as sales orders, invoices, and purchase orders
-   Contacts
-   Leads
-   Employees
-   Opportunities

Also, you can mark a user-defined attribute as containing personal data by selecting the **Contains Personal Data** check box on the [Attributes](CS_20_50_00.md) \(CS205000\) form; the values of this attribute will then be treated by the system as personal data.

## Consent Settings { .section}

To record that an individual has given his or her consent for the processing of the person's personal data and to specify the time interval during which the system should consider the individual's consent to be effective, you can use the settings in the **Personal Data Privacy** section, which is available on the following forms: [Leads](CR_30_10_00.md) \(CR301000\), [Contacts](CR_30_20_00.md) \(CR302000\), [Business Accounts](CR_30_30_00.md) \(CR303000\), [Customers](AR_30_30_00.md) \(AR303000\), [Vendors](AP_30_30_00.md) \(AP303000\), and [Opportunities](CR_30_40_00.md) \(CR304000\).

These settings can be mass-updated for leads, contacts, and business accounts through the [Update Leads](CR_50_30_20.md) \(CR503020\), [Update Contacts](CR_50_30_21.md) \(CR503021\), and [Update Business Accounts](CR_50_33_20.md) \(CR503320\) forms.

## Obfuscation of Personal Data { .section}

To restrict the processing of personal data for individuals whose consent has expired or has been revoked, you can use the [Restrict Personal Data](GD_10_20_10.md) \(GD102010\) form. On the form toolbar of this form, the **Pseudonymize** and **Pseudonymize All** actions are available. These actions obfuscate the personal data contained in the selected records or in all listed records, respectively, and make this data unavailable for further processing; however, this data remains stored in the database and can be restored at any time on the [Restricted Personal Data](GD_10_20_30.md) \(GD102030\) form.

Records with pseudonymized personal data are not shown on generic inquiry forms, and the system does not include these records in mass processes, such as the validation of records for duplicates.

By using the [Erase Personal Data](GD_10_20_20.md) \(GD102020\) form, you can permanently obfuscate personal data. Permanently obfuscated data cannot be restored.

If the *Scheduled Processing* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, automation schedules can be set up for the restriction or deletion of personal data.

## Restoration of Personal Data { .section}

Sometimes you may need to restore an individual's personal data \(for instance, if the previously expired consent has been given again\). You can restore obfuscated personal data by using the **Restore** action on the [Restricted Personal Data](GD_10_20_30.md) \(GD102030\) form. The system marks an entity with restored personal data as inactive, so you may need to manually mark the needed entity as active by using the respective entry form.

## Privacy Tools Audit { .section}

On the [Privacy Tool Audit](GD_10_10_10.md) \(GD101010\) form, you can monitor the history of record changes, track who restricted the processing of personal data or erased personal data in the system, when this user restricted processing or erased personal data, and what data was restricted.

## Custom Fields with Personal Data { .section}

Any custom fields will be treated by the system as fields that contain personal data if all of the following conditions are met:

-   `PXPersonalDataTable` is specified for the customized DAC or cache extension.
-   The `PXPersonalDataField` attribute is appended to the corresponding fields.
-   The `pseudonymizationStatus` class is declared, with `PXPseudonymizationStatusField` specified in it.

**Parent topic:**[Handling Personal Data](../UserGuide/GD__MNG_Handling_Personal_Data.md)

