# To Denominate Accounts {#_e801ebc3-ce45-41cd-bb0c-7e1a3260191b .task}

You use the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form to denominate accounts.

**Note:**

-   You can denominate accounts only if the *Multicurrency Accounting* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   You can search for a form by its name or its form ID \(without periods\).

## Before You Proceed {#section_qcf_mjv_vxb .section}

Before you start denominating accounts, make sure that the necessary currencies and rate types have been created on the [Currencies](CM_20_20_00.md) \(CM202000\) and [Currency Rate Types](CM_20_10_00.md) \(CM201000\) forms, respectively. For details, see [Multicurrency Functionality](../ImplementationGuide/config_Multicurrency_Basic_Mapref.md) and [Currency Rate Types and Current Rates](../ImplementationGuide/config_Multicurrency_Configuring_Rates_Mapref.md).

## To Denominate an Account {#section_scf_mjv_vxb .section}

1.  Open the [Chart of Accounts](../Shared/../UserGuide/GL_20_25_00.md) \(GL202500\) form.
2.  In the chart of accounts, find the account that you want to denominate.
3.  In the **Currency** column, select the currency of denomination.
4.  If needed, if the currency of denomination is a foreign currency, in the **Revaluation Rate Type** column, select the rate type that will be used for revaluation of the account.
5.  Perform Steps 2 through 4 for each account you want to denominate.
6.  Click **Save** on the form toolbar.

**Parent topic:**[Managing the Chart of Accounts](../UserGuide/GL__MNG_Managing_Accounts_and_Subaccounts.md)

