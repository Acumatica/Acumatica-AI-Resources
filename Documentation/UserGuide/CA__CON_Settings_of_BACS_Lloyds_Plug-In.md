# Settings of the BACS Lloyds File

You specify the settings of the BACS Lloyds plug-in on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.

The file exported from the [Batch Payments](AP_30_50_00.md) form by using the BACS Lloyds plug-in contains the sections shown in the tables below.

|Field Number|Field Name|Max. Length \(Min. Length\)|Required|Comment|
|------------|----------|---------------------------|--------|-------|
|1|*Header Identifier*|1 \(1\)|Yes|The value of this field is *H*.|
|2|*Current Date*|8 \(8\)|Yes|The date mapped to the **Creation Date** setting on the **Plug-in Settings** tab of the [Payment Methods](CA_20_40_00.md) form.|
|3|*Sequence Number*|6 \(1\)|Yes|The **Batch Seq. Number** setting on the [Batch Payments](AP_30_50_00.md) form.|

<table id="_646ddc9f-7442-4a16-9441-4175397b5522"><thead><tr><th>

Field Number

</th><th>

Field Name

</th><th>

Max. Length \(Min. Length\)

</th><th>

Required

</th><th>

Comment

</th></tr></thead><tbody><tr><td>

1

</td><td>

*Logical Record Type*

</td><td>

1 \(1\)

</td><td>

Yes

</td><td>

The value of this field is *D*.

</td></tr><tr><td>

2

</td><td>

*Value Date*

</td><td>

8 \(8\)

</td><td>

Yes

</td><td>

The payment date from the first line in the batch. The format of this element is `YYYYMMDD`.

 **Note:** The system verifies that only payments with the same date are added to a batch payment if the payment method has *BACS Lloyds Payment* in the **Direct Deposit File Format** box.

</td></tr><tr><td>

3

</td><td>

*Debit Account Reference*

</td><td>

18

</td><td>

Yes

</td><td>

The cash account from the batch payment.

</td></tr><tr><td>

4

</td><td>

*Account Number*

</td><td>

15 \(15\)

</td><td>

Yes

</td><td>

A field with the `Acc1 - Acc2` format, where:

 -   `Acc1` is the value of the remittance setting specified on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) \(CA204000\) form. This setting is mapped to the *Originating Sort Code Number* setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.
-   `Acc2` is the value of the remittance setting specified on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) form. This setting is mapped to the *Originating Account Number* setting on the **Plug-In Settings** tab of the[Payment Methods](CA_20_40_00.md) form.

 *Originating Sort Code Number* must contain six characters and *Originating Account Number* must contain eight characters.

</td></tr></tbody>
</table>

<table id="_238bcafc-6aaf-4fb4-a974-536c1c627b02"><thead><tr><th>

Field Number

</th><th>

Field Name

</th><th>

Max. Length \(Min. Length\)

</th><th>

Required

</th><th>

Comment

</th></tr></thead><tbody><tr><td>

1

</td><td>

*Logical Record Type*

</td><td>

1 \(1\)

</td><td>

Yes

</td><td>

The value of this field is *C*.

</td></tr><tr><td>

2

</td><td>

*Payment Amount*

</td><td>

18

</td><td>

Yes

</td><td>

The payment amount from the batch payment line. Ending zeros after the decimal point are dropped.

</td></tr><tr><td>

3

</td><td>

*Beneficiary Name*

</td><td>

18

</td><td>

Yes

</td><td>

The vendor's payment setting specified in the **Payment Instructions** table \(**Payment** tab\) on the [Vendors](AP_30_30_00.md) \(AP303000\) form. This setting is mapped to the **Destination Account Name** setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

</td></tr><tr><td>

4

</td><td>

*Beneficiary Account Number*

</td><td>

8 \(8\)

</td><td>

Yes

</td><td>

The vendor's payment setting specified in the **Payment Instructions** table \(**Payment** tab\) on the [Vendors](AP_30_30_00.md) form. This setting is mapped to the **Destination Account Number** setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

</td></tr><tr><td>

5

</td><td>

*Beneficiary Sort Code*

</td><td>

6 \(6\)

</td><td>

Yes

</td><td>

The vendor's payment setting specified in the **Payment Instructions** table \(**Payment** tab\) on the [Vendors](AP_30_30_00.md) form. This setting is mapped to the **Destination Sort Code Number** setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

</td></tr><tr><td>

6

</td><td>

*Beneficiary Reference*

</td><td>

18

</td><td>

Yes

</td><td>

The **Payment Ref.** setting from the batch payment line.

</td></tr></tbody>
</table>

|Field Number|Field Name|Max. Length \(Min. Length\)|Required|Comment|
|------------|----------|---------------------------|--------|-------|
|1|*Logical Record Type*| |Yes|The value of this field is *T*.|

**Parent topic:**[Setup of BACS HSBC Payment Processing](../UserGuide/CA__CON_Setup_of_BACS_HSBC.md)

