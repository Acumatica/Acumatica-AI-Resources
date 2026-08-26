# Setting Up U.S. ACH Payment Processing By Using Export Scenarios {#_175e318b-9f7a-4514-99b5-1ccd896e93a7 .concept}

In Acumatica ERP,you can use the predefined export scenarios to process ACH payments.

The ACH system supports the processing of *balanced* and *unbalanced* files. A balanced file contains an offsetting entry that automatically credits or debits the specified offset account for the debit or credit transactions in the file. An unbalanced file contains only the transactions you specify and does not include an offsetting entry.

Acumatica ERP provides functionality that you can use to export payments to get an unbalanced file or a balanced file. The export scenarios *Export AP Payments to ACH v2* and *Export AP Payments to ACH Balanced v2* \(for unbalanced and balanced files, respectively\) are provided with Acumatica ERP and are available on the [Export Scenarios](SM_20_70_25.md) \(SM207025\) form. These scenarios were developed for the Corporate Credit or Debit \(CCD\) application of the ACH system, and they fully comply with the file format specifications for ACH. These scenarios create files that are then processed in the ACH system.

Also, you can modify the scenario if another ACH application will be used or if your financial institution uses another format for electronic funds transfer.

The *Export AP Payments to ACH v2* scenario uses the *ACHExportProvider* data provider, and the *Export AP Payments to ACH Balanced v2* one uses *ACHBalancedProvider*.

**Important:** Do not delete the `ACHExportProvider` or `ACHBalancedProvider` data providers. If you have accidentally deleted it, contact Acumatica ERP support to restore it.

The export scenario is configured to use exact identifiers of payment method details as those defined for payment method details in the *ACH* and *ACHBA* demo payment methods. If you add details to your payment method manually, either copy identifiers from the demo payment method or adjust the scenario accordingly. For details, see [To Add a Payment Method for ACH Payments \(Export Scenarios\)](CA__HOW_Add_PM_for_ACH.md).

**Attention:** The existing *FEDWIRE* and *FEDWIREBA* payment methods are becoming obsolete and will be removed in future versions of Acumatica ERP. While these payment methods can still be selected, we recommend that you select the *ACH* and *ACHBA* payment methods instead.

**Parent topic:**[Setting Up U.S. ACH Payment Processing](../UserGuide/CA__CON_Setup_US_ACH.md)

