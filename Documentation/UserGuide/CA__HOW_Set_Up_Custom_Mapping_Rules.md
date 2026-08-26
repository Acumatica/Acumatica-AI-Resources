# To Set Up Mapping Rules {#_c69e5e52-0f17-4d7a-b0af-4db0b01f73d8 .task}

On the **Custom Mapping Rules** tab of the [Bank Feeds](CA_20_55_00.md) \(CA205500\) form, you can set up optional mapping between the bank feed fields and the bank transaction fields by specifying the source and target fields, respectively, and using formulas in the source field. You can specify your own mapping or set up the default mapping.

The following table shows the default mapping settings for Plaid bank feeds.

|Active|Target Field|Source Field|
|------|------------|------------|
|Selected|*Ext. Ref. Nbr.*|*=ISNULL\(\[Check Number\], \[Transaction ID\]\)*|
|Selected|*Card Number*|*=TRIM\(ISNULL\(\[Account Owner\], ''\)\)*|

The following table shows the default mapping settings for MX bank feeds.

|Active|Target Field|Source Field|
|------|------------|------------|
|Selected|*Ext. Ref. Nbr.*|*=ISNULL\(\[Check Number\], \[Transaction ID\]\)*|

If mapping is defined in the table for a target field and the **Active** check box is selected, the custom mapping rule will have a priority over the core program mapping, if it exists for this field. The specified rules will affect all bank transactions that will be created for all cash accounts from the current bank feed.

## To Set Up Mapping Rules { .section}

To set up mapping rules, do the following:

1.  On the [Bank Feeds](CA_20_55_00.md) form, select the needed bank feed and go to the **Custom Mapping Rules** tab.
2.  On this tab, set up mapping rules in either of the following ways:
    -   To set up custom mapping rules, click **Add Row** on the table toolbar and specify the needed settings in the **Target Field** and **Source Field or Value** columns.
    -   To set up default mapping rules, click **Set Default Mapping** on the form toolbar. The system will fill in the settings automatically based on the bank feed selected on the form.
3.  Click **Save** to save the changes.

**Parent topic:**[Integrating Acumatica ERP with Bank Feeds](../UserGuide/CA__MNG_Bank_Feed_Integration.md)

