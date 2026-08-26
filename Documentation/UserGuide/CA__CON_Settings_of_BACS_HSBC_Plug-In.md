# Settings of the BACS HSBC File {#_1ce89bd5-5834-46d5-b6a1-176969b5e64e .concept}

You specify the settings of the BACS HSBC plug-in on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.

The file exported on the [Batch Payments](AP_30_50_00.md) \(AP305000\) form via the BACS HSBC plug-in has the following structure.

|BACS File Section|Comment|
|-----------------|-------|
|*VOL*|Required. Only one record can be included in a file.|
|*HDR1*|Required. Only one record can be included in a file.|
|*HDR2*|Required. Only one record can be included in a file.|
|*UHL*|Required. Only one record can be included in a file.|
| |*Standard record 1*|For each payment included in a batch, a separate standard record is added to the file.|
| |*Standard record 2*| |
| |*Standard record N*| |
| |*Contra record*|One record is added for the batch. It includes the total of all payments.|
|*EOF1*|Required. Only one record can be included in a file.|
|*EOF2*|Required. Only one record can be included in a file.|

The following tables show the structure of each section in the BACS HSBC file.

|Field Number|Field Name|Position in Record|Data Element Size|Format|Required|Comment|
|------------|----------|------------------|-----------------|------|--------|-------|
|1|*Label Identifier*|1–3|3| | |A value of *VOL*.|
|2|*Label Number*|4|1| | |A value of *1*.|
|3|*Serial Number*|5–10|6| | |The value specified in the **Batch Seq. Number** box in the Summary area of the [Batch Payments](AP_30_50_00.md) form.

 This value is left padded with zeros if necessary.

|
|4|*Accessibility Indicator*|11|1| | |A blank value.|
|5|Reserved field|12–31|20| | |A blank value.|
|6|Reserved field|32–37|6|Alphanumeric|No|A value of *HSBCbb*, where *b* is a blank value. This value is used if the remittance setting on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form, which is mapped to the *Service User Number \(SUN\)* setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form is empty.|
|7a|*Owner ID*|38–41|4| | |A blank value.|
|7b| |42–47|6|Numeric|No|The remittance setting specified on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) form, which is mapped to the *Service User Number \(SUN\)* setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

 The value must have 6 characters.

|
|7c| |48–51|4| | |A blank value.|
|8|Reserved field|52–79|28| | |A blank value.|
|9|*Label Standard Level*|80|1| | |A value of *1*.|

|Field Number|Field Name|Position in Record|Data Element Size|Format|Required|Comment|
|------------|----------|------------------|-----------------|------|--------|-------|
|1|*Label Identifier*|1–3|3| | |A value of *HDR*.|
|2|*Label Number*|4|1| | |A value of *1*.|
|3a|*File Identifier*|5|1| | |A value of *A*.|
|3b| |6–11|6|Numeric|No|The remittance setting specified on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) form, which is mapped to the *Service User Number \(SUN\)* setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.|
|3c| |12|1| | |A value of *S*.|
|3d| |13–14|2| | |A blank value.|
|3e| |15|1| | |A blank value.|
|3f| |16–21|6|Numeric|No|The remittance setting specified on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) form, which is mapped to the *Service User Number \(SUN\)* setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.|
|4|*Set Identification*|22–27|6|Alphanumeric|Yes|The value specified in the **Batch Seq. Number** box in the Summary area of the [Batch Payments](AP_30_50_00.md) form.

 This value is left padded with zeros if necessary.

|
|5|*File Section Number*|28–31|4| | |A value of *0001*.|
|6|*File Sequence Number*|32–35|4| | |A value of *0001*.|
|7|*Generation Number*|36–39|4| | |A blank value.|
|8|*Generation Version Number*|40–41|2| | |A blank value.|
|9|*Creation Date*|42–47|6| |Yes|The date mapped to the *Creation Date* setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

 The format must be `byyddd`, where:

 -   `b` is a blank space
-   `yy` are the last two digits of the year
-   `ddd` is the number of the day within the year

|
|10|*Expiration Date*|48–53|6| |Yes|The date that is three working days later than the *Creation Date* setting specified on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

 The value must be in the `bYYDDD` format.

|
|11|*Accessibility Indicator*|54|1| | |A blank value.|
|12|*Block Count*|55–60|6| | |A value of *000000*.|
|13|*System Code*|61–73|13| | |A blank value.|
|14|Reserved field|74–80|7| | |A blank value.|

|Field Number|Field Name|Position in Record|Data Element Size|Format|Required|Comment|
|------------|----------|------------------|-----------------|------|--------|-------|
|1|*Label Identifier*|1–3|3| | |A value of *HDR*.|
|2|*Label Number*|4|1| | |A value of *2*.|
|3|*Record Format*|5|1| | |A value of *F*.|
|4|*Block Length*|6–10|5| | |A value of *02000*.|
|5|*Record Length*|11–15|5| | |A value of *00106*.|
|6|Reserved for operating systems|16–50|35| | |A blank value.|
|7|*Buffer Offset*|51–52|2| | |A value of *00*.|
|8|Reserved field|53–80|28| | |A blank value.|

|Field Number|Field Name|Position in Record|Data Element Size|Format|Required|Comment|
|------------|----------|------------------|-----------------|------|--------|-------|
|1|*Label Identifier*|1–3|3| | |A value of *UHL*.|
|2|*Label Number*|4|1| | |A value of *1*.|
|3|*BACS Processing Day*|5–10|6| | |The date that is two working days later than the *Creation Date* setting specified on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

 The value must be in the `bYYDDD` format.

|
|4a|*Identifying Number of Receiving Party*|11–16|6| | |A value of *999999*.|
|4b| |17–20|4| | |A blank value.|
|5|*Currency Code*|21–22|2| | |A value of *00*.|
|6|*Country Code*|23–28|6| | |A value of *000000*.|
|7|*Work Code*|29–37|9| | |A value in the `4bMULTIbb` format, where `b` is a blank space.|
|8|*File Number*|38–40|3| | |A value of *001*.|
|9|Reserved field|41–47|7| | |A blank value.|
|10a|*Audit Print Identifier*|48–50|3| | |A blank value.|
|10b| |51–54|4| | |A blank value.|
|11|*For Use by User/Bureau*|55–80|26| | |A blank value.|

|Field Number|Field Name|Data Element Size|Format|Required|Comment|
|------------|----------|-----------------|------|--------|-------|
|1|*Destination Sorting Code Number*|6|Numeric|Yes|The vendor's payment setting specified in the **Payment Instructions** table \(**Payment** tab\) on the [Vendors](AP_30_30_00.md)\(AP303000\) form. This setting is mapped to the *Destination Sort Code Number* setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.|
|2|*Destination Account Number*|8|Numeric|Yes|The vendor's payment setting specified in the **Payment Instructions** table \(**Payment** tab\) on the [Vendors](AP_30_30_00.md) form. This setting is mapped to the *Destination Account Number* setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.|
|3|*Destination Type Account*|1| | |A value of *0*.|
|4|*Transaction Code*|2| | |A value of *99 - Bank Giro Credit*.|
|5|*Originating sorting code number*|6|Numeric|Yes|The remittance setting specified on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) \(CA204000\) form. This setting is mapped to the *Originating Sort Code Number* setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.|
|6|*Originating account number*|8|Numeric|Yes|The remittance setting specified on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) form. This setting is mapped to the *Originating Account Number* setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form|
|7|*Free format*|4| | |A blank value.|
|8|*Amount \(in pence\)*|11|Numeric|Yes|The payment amount from the batch line in `$$$$$$$$$cc` format.|
|9|*User's name*|18| |Yes|The remittance setting specified on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) form. This setting is mapped to the *Originating Account Name* setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form|
|10|*User's reference*|18| |Yes|The vendor's payment setting specified in the **Payment Instructions** table \(**Payment** tab\) on the [Vendors](AP_30_30_00.md) form. This setting is mapped to the *Destination Payment Ref.* setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.|
|11|*Destination account name*|18| |Yes|The vendor's payment setting specified in the **Payment Instructions** table \(**Payment** tab\) on the [Vendors](AP_30_30_00.md) form. This setting is mapped to the *Destination Account Name* setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.|
|12|*BACS processing day of data*|6| |Yes|Two working days after the date mapped to the *Creation Date* setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.|

|Field Number|Field Name|Data Element Size|Format|Required|Comment|
|------------|----------|-----------------|------|--------|-------|
|1|*Originating Sorting Code Number*|6|Numeric|Yes|The remittance setting specified on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md)\(CA204000\) form. This setting is mapped to the *Originating Sort Code Number* setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.|
|2|*Originating account number*|8|Numeric|Yes|The remittance setting specified on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) form. This setting is mapped to the *Originating Account Number* setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.|
|3|*Type of user's account*|1| | |A value of *0*.|
|4|*Transaction code*|2| | |A value of *17*.|
|5|*Originating sorting code number*|6|Numeric|Yes|The remittance setting specified on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) form. This setting is mapped to the *Originating Sort Code Number* setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.|
|6|*Originating account number*|8|Numeric|Yes|The remittance setting specified on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) form. This setting is mapped to the *Originating Account Number* setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.|
|7|Free format|4| | |A blank value.|
|8|*Amount \(in pence\)*|11| | |The sum of the payment amounts from the batch lines in `$$$$$$$$$cc` format.|
|9|*Narrative of user's choice*|18| | |The remittance setting specified on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) form. This setting is mapped to the *Originating Account Name* setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.|
|10|*Contra identification*|18| | |A value of *CONTRA*.|
|11|*Abbreviated account name of user's nominated account*|18| |Yes|The remittance setting specified on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) form. This setting is mapped to the *Originating Account Name* setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.|
|12|*BACS processing day of data*|6| | |Two working days after the date mapped to the *Creation Date* setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.|

|Field Number|Field Name|Position in Record|Data Element Size|Format|Required|Comment|
|------------|----------|------------------|-----------------|------|--------|-------|
|1|*Label Identifier*|1–3|3| | |A value of *EOF*.|
|2|*Label Number*|4|1| | |A value of *1*.|
|3|Same as HDR1|5–54|50| | |A value copied from the HDR1 record \(positions 5–54\).|
|4|*Block Count*|55–60|6| | |A blank value.|
|5|Same as HDR1|61–80|20| | |A blank value.|

|Field Number|Field Name|Position in Record|Data Element Size|Format|Required|Comment|
|------------|----------|------------------|-----------------|------|--------|-------|
|1|*Label Identifier*|1–3|3| | |A value of *EOF*.|
|2|*Label Number*|4|1| | |A value of *2*.|
|3|Same as HDR1|5–80|50| | |A value copied from the HDR2 record \(positions 5–80\).|

|Field Number|Field Name|Position in Record|Data Element Size|Format|Required|Comment|
|------------|----------|------------------|-----------------|------|--------|-------|
|1|*Label Identifier*|1–3|3| | |A value of *UTL*.|
|2|*Label Number*|4|1| | |A value of *1*.|
|3|*Monetary Total of Debit Records*|5–17|13|Numeric|No|The sum of payment amounts from the detail lines of the batch payment in the `$$$$$$$$$cc` format.|
|4|*Monetary Total of Credit Records*|18–30|13|Numeric|No|The sum of payment amounts from the detail lines of the batch payment in the `$$$$$$$$$cc` format.|
|5|*Count of Debit Records*|31–37|7| | |A value of *1*.|
|6|*Count of Credit Records*|38–44|7| | |Number of payments in the batch.|
|7|Reserved for future standardization|45–54|10| | |A blank value.|
|8|*For Use by User or Bureau*|55–80|26| | |A blank value.|

**Parent topic:**[Setup of BACS HSBC Payment Processing](../UserGuide/CA__CON_Setup_of_BACS_HSBC.md)

