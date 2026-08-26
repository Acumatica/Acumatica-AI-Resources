# To Configure Validation Rules in Salesforce Lightning {#_d9fe88a8-6def-4b20-9204-de7034c281d9 .task}

This topic explains how you can configure validation rules for the billing country and state fields. You should use similar expressions to configure the shipping address fields.

To configure lead and contact validation rules, you navigate to the appropriate pages and perform the steps described below.

For information about other validation formulas that you may find useful, see the [Examples of Validation Rules](https://help.salesforce.com/articleView?id=fields_useful_field_validation_formulas.htm&type=0) topic in Salesforce Help.

## To Configure Validation Rules { .section}

1.  In **Setup** mode, select **Objects and fields** &gt; **Object Manager** &gt; **Accounts** &gt; **Validation Rules**.
2.  Click **New**.
3.  Specify the following settings:
    -   **Rule Name**: `Billing_Country_Complete`
    -   **Active**: Selected
    -   **Description**: `Prevents the saving of an account with no billing country specified`
    -   **Error Condition Formula**: `ISBLANK(BillingCountry)`
    -   **Error Message**: `Country code is required.`
    -   **Error Location**: Preferred location
4.  Click **Save &amp; New**.
5.  Specify the following settings:
    -   **Rule Name**: `Billing_Country_Code`
    -   **Active**: Selected
    -   **Description**: `Validates that the billing country code specified for the account is a valid ISO 3166 two-letter code`
    -   **Error Condition Formula**:

        ```
        OR(
        LEN(BillingCountry) = 1,
        NOT(
        CONTAINS(
        "AF:AX:AL:DZ:AS:AD:AO:AI:AQ:AG:AR:AM:" &
        "AW:AU:AZ:BS:BH:BD:BB:BY:BE:BZ:BJ:BM:BT:BO:" &
        "BA:BW:BV:BR:IO:BN:BG:BF:BI:KH:CM:CA:CV:KY:" &
        "CF:TD:CL:CN:CX:CC:CO:KM:CG:CD:CK:CR:CI:HR:" &
        "CU:CY:CZ:DK:DJ:DM:DO:EC:EG:SV:GQ:ER:EE:ET:FK:" &
        "FO:FJ:FI:FR:GF:PF:TF:GA:GM:GE:DE:GH:GI:GR:GL:" &
        "GD:GP:GU:GT:GG:GN:GW:GY:HT:HM:VA:HN:HK:HU:" &
        "IS:IN:ID:IR:IQ:IE:IM:IL:IT:JM:JP:JE:JO:KZ:KE:KI:" &
        "KP:KR:KW:KG:LA:LV:LB:LS:LR:LY:LI:LT:LU:MO:MK:" &
        "MG:MW:MY:MV:ML:MT:MH:MQ:MR:MU:YT:MX:FM:MD:MC:" &
        "MC:MN:ME:MS:MA:MZ:MM:MA:NR:NP:NL:AN:NC:NZ:NI:" &
        "NE:NG:NU:NF:MP:NO:OM:PK:PW:PS:PA:PG:PY:PE:PH:" &
        "PN:PL:PT:PR:QA:RE:RO:RU:RW:SH:KN:LC:PM:VC:WS:" &
        "SM:ST:SA:SN:RS:SC:SL:SG:SK:SI:SB:SO:ZA:GS:ES:" &
        "LK:SD:SR:SJ:SZ:SE:CH:SY:TW:TJ:TZ:TH:TL:TG:TK:" &
        "TO:TT:TN:TR:TM:TC:TV:UG:UA:AE:GB:US:UM:UY:UZ:" &
        "VU:VE:VN:VG:VI:WF:EH:YE:ZM:ZW",
        BillingCountry)))
        ```

    -   **Error Message**: `A valid two-letter country code is required.`
    -   **Error Location**: Preferred location
6.  Click **Save &amp; New**.
7.  Specify the following settings:
    -   **Rule Name**: `Billing_State_USA`
    -   **Active**: Selected
    -   **Description**: `Validates that the code of the billing state or province specified for the account is a valid two-character abbreviation if the billing country is set to US or blank`
    -   **Error Condition Formula**:

        ```
        AND (
        OR(BillingCountry = "US",
        ISBLANK(BillingCountry)),
        OR(
        LEN(BillingState) < 2,
        NOT(
        CONTAINS("AL:AK:AZ:AR:CA:CO:CT:DE:DC:FL:GA:HI:ID:"
        &
        "IL:IN:IA:KS:KY:LA:ME:MD:MA:MI:MN:MS:MO:MT:NE:NV:NH:"
        &
        "NJ:NM:NY:NC:ND:OH:OK:OR:PA:RI:SC:SD:TN:TX:UT:VT:VA:"
        &
        "WA:WV:WI:WY", BillingState))))
        ```

    -   **Error Message**: `A valid two-letter state code is required.`
    -   **Error Location**: Preferred location
8.  Click **Save**.

**Parent topic:**[Setting Up Synchronization with Salesforce](../UserGuide/SF_00_00_00.md)

