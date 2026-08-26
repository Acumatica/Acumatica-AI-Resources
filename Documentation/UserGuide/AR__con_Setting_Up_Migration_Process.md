# Activating Migration Mode {#_e6494219-6353-4d7d-be7d-528c6956b4bc .concept}

To add accounts receivable or accounts payable documents to Acumatica ERP without affecting the general ledger, you need to activate migration mode in the needed Acumatica ERP subledger \(or in both subledgers\). Also, if you need to migrate project balances, you need to activate migration mode for projects, as described below.

## Activating Migration Mode for Accounts Receivable { .section}

To turn on migration mode for the accounts receivable subledger, you use the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form. On this form, in the **Posting Settings** section of the **General** tab, you select the **Activate Migration Mode** check box; you then click **Save** on the form toolbar. You can select or clear this check box at any time.

**Note:** If migration mode has been activated, auto-application of payments to outstanding documents is not supported by the system.

## Activating Migration Mode for Accounts Payable { .section}

To turn on migration mode for the accounts payable subledger, you use the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form. On this form, in the **Posting Settings** section of the **General** tab, you select the **Activate Migration Mode** check box; you then click **Save** on the form toolbar. You can select or clear this check box at any time.

## Activating Migration Mode for Projects { .section}

To turn on migration mode for projects, you use the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form. On this form, in the **General Settings** section of the **General** tab, you select the **Activate Migration Mode** check box. Then you click **Save** on the form toolbar.

**Parent topic:**[Migrating Documents to Acumatica ERP](../UserGuide/AR__con_Migration_Process_Overview.md)

