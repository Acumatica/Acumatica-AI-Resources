# Setting Up Payment Processing By Using the U.S. ACH Plug-In {#_8d732e41-e79e-4a60-9f2d-6388d71cc797 .concept}

In Acumatica ERP, you can use the flexible U.S. ACH plug-in. The plug-in provides the flexibility to adjust ACH export settings according to known variations in customers' and banks' requirements for exported US ACH files. This flexibility includes the following capabilities:

-   An offset record can be added to an ACH file.
-   Addenda records can be added to an ACH file, and rules can be configured to generate the addenda description.
-   The mapping of ACH fields can be changed. For example, the *Company Identification* remittance detail can be configured to be exported to the Immediate Origin field of the ACH file.
-   The format of the File ID Modifier field of the ACH file can be adjusted \(that is, it can be set to either *0-9, A-Z* or *A-Z, 0-9*\).
-   The value in the **Service Class Code** field of the ACH file can be set to *200* \(mixed debits and credits\) or *220* \(credits only\). Also, the value in the **Standard Entry Class Code** field can be set to *CCD* \(Corporate Credit or Debit\) or *PPD* \(Prearranged Payment or Deposit\).
-   The type of a vendor's account \(savings or checking\) can be specified. The system considers this type when it generates the transaction code for records of type 6 in the ACH file.

The use of the ACH plug-in provides enhanced validations, including control of the ACH export settings and verification of data validity.

**Parent topic:**[Setting Up U.S. ACH Payment Processing](../UserGuide/CA__CON_Setup_US_ACH.md)

