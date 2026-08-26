# Settings of the BACS Lloyds File {#_a450f7d8-c031-48b8-b843-2d9e17f3d30e .concept}

You specify the settings of the BACS Lloyds plug-in on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.

The file exported from the [Batch Payments](AP_30_50_00.md) form by using the BACS Lloyds plug-in contains the sections shown in the tables below.

|Field Number|Field Name|Max. Length \(Min. Length\)|Required|Comment|
|------------|----------|---------------------------|--------|-------|
|1|*Header Identifier*|1 \(1\)|Yes|The value of this field is *H*.|
|2|*Current Date*|8 \(8\)|Yes|The date mapped to the **Creation Date** setting on the **Plug-in Settings** tab of the [Payment Methods](CA_20_40_00.md) form.|
|3|*Sequence Number*|6 \(1\)|Yes|The **Batch Seq. Number** setting on the [Batch Payments](AP_30_50_00.md) form.|

|Field Number|Field Name|Max. Length \(Min. Length\)|Required|Comment|
|------------|----------|---------------------------|--------|-------|
|1|*Logical Record Type*|1 \(1\)|Yes|The value of this field is *D*.|
|2|*Value Date*|8 \(8\)|Yes|The payment date from the first line in the batch. The format of this element is `YYYYMMDD`.

 **Note:** The system verifies that only payments with the same date are added to a batch payment if the payment method has *BACS Lloyds Payment* in the **Direct Deposit File Format** box.

|
|3|*Debit Account Reference*|18|Yes|The cash account from the batch payment.|
|4|*Account Number*|15 \(15\)|Yes|A field with the `Acc1 - Acc2` format, where:

 -   `Acc1` is the value of the remittance setting specified on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) \(CA204000\) form. This setting is mapped to the *Originating Sort Code Number* setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.
-   `Acc2` is the value of the remittance setting specified on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) form. This setting is mapped to the *Originating Account Number* setting on the **Plug-In Settings** tab of the[Payment Methods](CA_20_40_00.md) form.

 *Originating Sort Code Number* must contain six characters and *Originating Account Number* must contain eight characters.

|

|Field Number|Field Name|Max. Length \(Min. Length\)|Required|Comment|
|------------|----------|---------------------------|--------|-------|
|1|*Logical Record Type*|1 \(1\)|Yes|The value of this field is *C*.|
|2|*Payment Amount*|18|Yes|The payment amount from the batch payment line. Ending zeros after the decimal point are dropped.|
|3|*Beneficiary Name*|18|Yes|The vendor's payment setting specified in the **Payment Instructions** table \(**Payment** tab\) on the [Vendors](AP_30_30_00.md) \(AP303000\) form. This setting is mapped to the **Destination Account Name** setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.|
|4|*Beneficiary Account Number*|8 \(8\)|Yes|The vendor's payment setting specified in the **Payment Instructions** table \(**Payment** tab\) on the [Vendors](AP_30_30_00.md) form. This setting is mapped to the **Destination Account Number** setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.|
|5|*Beneficiary Sort Code*|6 \(6\)|Yes|The vendor's payment setting specified in the **Payment Instructions** table \(**Payment** tab\) on the [Vendors](AP_30_30_00.md) form. This setting is mapped to the **Destination Sort Code Number** setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.|
|6|*Beneficiary Reference*|18|Yes|The **Payment Ref.** setting from the batch payment line.|

|Field Number|Field Name|Max. Length \(Min. Length\)|Required|Comment|
|------------|----------|---------------------------|--------|-------|
|1|*Logical Record Type*| |Yes|The value of this field is *T*.|

**Parent topic:**[Setup of BACS HSBC Payment Processing](../UserGuide/CA__CON_Setup_of_BACS_HSBC.md)

