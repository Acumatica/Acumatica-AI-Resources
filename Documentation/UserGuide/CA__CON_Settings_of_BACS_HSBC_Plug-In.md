# Settings of the BACS HSBC File

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

<table id="_1d38d375-67d9-471c-b242-7b704937b810"><thead><tr><th>

Field Number

</th><th>

Field Name

</th><th>

Position in Record

</th><th>

Data Element Size

</th><th>

Format

</th><th>

Required

</th><th>

Comment

</th></tr></thead><tbody><tr><td>

1

</td><td>

*Label Identifier*

</td><td>

1–3

</td><td>

3

</td><td>

 

</td><td>

 

</td><td>

A value of *VOL*.

</td></tr><tr><td>

2

</td><td>

*Label Number*

</td><td>

4

</td><td>

1

</td><td>

 

</td><td>

 

</td><td>

A value of *1*.

</td></tr><tr><td>

3

</td><td>

*Serial Number*

</td><td>

5–10

</td><td>

6

</td><td>

 

</td><td>

 

</td><td>

The value specified in the **Batch Seq. Number** box in the Summary area of the [Batch Payments](AP_30_50_00.md) form.

 This value is left padded with zeros if necessary.

</td></tr><tr><td>

4

</td><td>

*Accessibility Indicator*

</td><td>

11

</td><td>

1

</td><td>

 

</td><td>

 

</td><td>

A blank value.

</td></tr><tr><td>

5

</td><td>

Reserved field

</td><td>

12–31

</td><td>

20

</td><td>

 

</td><td>

 

</td><td>

A blank value.

</td></tr><tr><td>

6

</td><td>

Reserved field

</td><td>

32–37

</td><td>

6

</td><td>

Alphanumeric

</td><td>

No

</td><td>

A value of *HSBCbb*, where *b* is a blank value. This value is used if the remittance setting on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form, which is mapped to the *Service User Number \(SUN\)* setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form is empty.

</td></tr><tr><td>

7a

</td><td>

*Owner ID*

</td><td>

38–41

</td><td>

4

</td><td>

 

</td><td>

 

</td><td>

A blank value.

</td></tr><tr><td>

7b

</td><td>

 

</td><td>

42–47

</td><td>

6

</td><td>

Numeric

</td><td>

No

</td><td>

The remittance setting specified on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) form, which is mapped to the *Service User Number \(SUN\)* setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

 The value must have 6 characters.

</td></tr><tr><td>

7c

</td><td>

 

</td><td>

48–51

</td><td>

4

</td><td>

 

</td><td>

 

</td><td>

A blank value.

</td></tr><tr><td>

8

</td><td>

Reserved field

</td><td>

52–79

</td><td>

28

</td><td>

 

</td><td>

 

</td><td>

A blank value.

</td></tr><tr><td>

9

</td><td>

*Label Standard Level*

</td><td>

80

</td><td>

1

</td><td>

 

</td><td>

 

</td><td>

A value of *1*.

</td></tr></tbody>
</table>

<table id="_6b3f0c61-ec28-427b-8335-4eda5b28f112"><thead><tr><th>

Field Number

</th><th>

Field Name

</th><th>

Position in Record

</th><th>

Data Element Size

</th><th>

Format

</th><th>

Required

</th><th>

Comment

</th></tr></thead><tbody><tr><td>

1

</td><td>

*Label Identifier*

</td><td>

1–3

</td><td>

3

</td><td>

 

</td><td>

 

</td><td>

A value of *HDR*.

</td></tr><tr><td>

2

</td><td>

*Label Number*

</td><td>

4

</td><td>

1

</td><td>

 

</td><td>

 

</td><td>

A value of *1*.

</td></tr><tr><td>

3a

</td><td>

*File Identifier*

</td><td>

5

</td><td>

1

</td><td>

 

</td><td>

 

</td><td>

A value of *A*.

</td></tr><tr><td>

3b

</td><td>

 

</td><td>

6–11

</td><td>

6

</td><td>

Numeric

</td><td>

No

</td><td>

The remittance setting specified on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) form, which is mapped to the *Service User Number \(SUN\)* setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

</td></tr><tr><td>

3c

</td><td>

 

</td><td>

12

</td><td>

1

</td><td>

 

</td><td>

 

</td><td>

A value of *S*.

</td></tr><tr><td>

3d

</td><td>

 

</td><td>

13–14

</td><td>

2

</td><td>

 

</td><td>

 

</td><td>

A blank value.

</td></tr><tr><td>

3e

</td><td>

 

</td><td>

15

</td><td>

1

</td><td>

 

</td><td>

 

</td><td>

A blank value.

</td></tr><tr><td>

3f

</td><td>

 

</td><td>

16–21

</td><td>

6

</td><td>

Numeric

</td><td>

No

</td><td>

The remittance setting specified on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) form, which is mapped to the *Service User Number \(SUN\)* setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

</td></tr><tr><td>

4

</td><td>

*Set Identification*

</td><td>

22–27

</td><td>

6

</td><td>

Alphanumeric

</td><td>

Yes

</td><td>

The value specified in the **Batch Seq. Number** box in the Summary area of the [Batch Payments](AP_30_50_00.md) form.

 This value is left padded with zeros if necessary.

</td></tr><tr><td>

5

</td><td>

*File Section Number*

</td><td>

28–31

</td><td>

4

</td><td>

 

</td><td>

 

</td><td>

A value of *0001*.

</td></tr><tr><td>

6

</td><td>

*File Sequence Number*

</td><td>

32–35

</td><td>

4

</td><td>

 

</td><td>

 

</td><td>

A value of *0001*.

</td></tr><tr><td>

7

</td><td>

*Generation Number*

</td><td>

36–39

</td><td>

4

</td><td>

 

</td><td>

 

</td><td>

A blank value.

</td></tr><tr><td>

8

</td><td>

*Generation Version Number*

</td><td>

40–41

</td><td>

2

</td><td>

 

</td><td>

 

</td><td>

A blank value.

</td></tr><tr><td>

9

</td><td>

*Creation Date*

</td><td>

42–47

</td><td>

6

</td><td>

 

</td><td>

Yes

</td><td>

The date mapped to the *Creation Date* setting on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

 The format must be `byyddd`, where:

 -   `b` is a blank space
-   `yy` are the last two digits of the year
-   `ddd` is the number of the day within the year

</td></tr><tr><td>

10

</td><td>

*Expiration Date*

</td><td>

48–53

</td><td>

6

</td><td>

 

</td><td>

Yes

</td><td>

The date that is three working days later than the *Creation Date* setting specified on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

 The value must be in the `bYYDDD` format.

</td></tr><tr><td>

11

</td><td>

*Accessibility Indicator*

</td><td>

54

</td><td>

1

</td><td>

 

</td><td>

 

</td><td>

A blank value.

</td></tr><tr><td>

12

</td><td>

*Block Count*

</td><td>

55–60

</td><td>

6

</td><td>

 

</td><td>

 

</td><td>

A value of *000000*.

</td></tr><tr><td>

13

</td><td>

*System Code*

</td><td>

61–73

</td><td>

13

</td><td>

 

</td><td>

 

</td><td>

A blank value.

</td></tr><tr><td>

14

</td><td>

Reserved field

</td><td>

74–80

</td><td>

7

</td><td>

 

</td><td>

 

</td><td>

A blank value.

</td></tr></tbody>
</table>

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

<table id="_da68b84f-f795-4503-9636-5debba83500b"><thead><tr><th>

Field Number

</th><th>

Field Name

</th><th>

Position in Record

</th><th>

Data Element Size

</th><th>

Format

</th><th>

Required

</th><th>

Comment

</th></tr></thead><tbody><tr><td>

1

</td><td>

*Label Identifier*

</td><td>

1–3

</td><td>

3

</td><td>

 

</td><td>

 

</td><td>

A value of *UHL*.

</td></tr><tr><td>

2

</td><td>

*Label Number*

</td><td>

4

</td><td>

1

</td><td>

 

</td><td>

 

</td><td>

A value of *1*.

</td></tr><tr><td>

3

</td><td>

*BACS Processing Day*

</td><td>

5–10

</td><td>

6

</td><td>

 

</td><td>

 

</td><td>

The date that is two working days later than the *Creation Date* setting specified on the **Plug-In Settings** tab of the [Payment Methods](CA_20_40_00.md) form.

 The value must be in the `bYYDDD` format.

</td></tr><tr><td>

4a

</td><td>

*Identifying Number of Receiving Party*

</td><td>

11–16

</td><td>

6

</td><td>

 

</td><td>

 

</td><td>

A value of *999999*.

</td></tr><tr><td>

4b

</td><td>

 

</td><td>

17–20

</td><td>

4

</td><td>

 

</td><td>

 

</td><td>

A blank value.

</td></tr><tr><td>

5

</td><td>

*Currency Code*

</td><td>

21–22

</td><td>

2

</td><td>

 

</td><td>

 

</td><td>

A value of *00*.

</td></tr><tr><td>

6

</td><td>

*Country Code*

</td><td>

23–28

</td><td>

6

</td><td>

 

</td><td>

 

</td><td>

A value of *000000*.

</td></tr><tr><td>

7

</td><td>

*Work Code*

</td><td>

29–37

</td><td>

9

</td><td>

 

</td><td>

 

</td><td>

A value in the `4bMULTIbb` format, where `b` is a blank space.

</td></tr><tr><td>

8

</td><td>

*File Number*

</td><td>

38–40

</td><td>

3

</td><td>

 

</td><td>

 

</td><td>

A value of *001*.

</td></tr><tr><td>

9

</td><td>

Reserved field

</td><td>

41–47

</td><td>

7

</td><td>

 

</td><td>

 

</td><td>

A blank value.

</td></tr><tr><td>

10a

</td><td>

*Audit Print Identifier*

</td><td>

48–50

</td><td>

3

</td><td>

 

</td><td>

 

</td><td>

A blank value.

</td></tr><tr><td>

10b

</td><td>

 

</td><td>

51–54

</td><td>

4

</td><td>

 

</td><td>

 

</td><td>

A blank value.

</td></tr><tr><td>

11

</td><td>

*For Use by User/Bureau*

</td><td>

55–80

</td><td>

26

</td><td>

 

</td><td>

 

</td><td>

A blank value.

</td></tr></tbody>
</table>

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

