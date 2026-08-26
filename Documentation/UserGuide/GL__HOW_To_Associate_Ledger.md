# To Associate a Ledger with at Least One Company {#_9b9ebf4b-9330-4145-ae02-7d97fb301b2d .task}

In Acumatica ERP, you associate existing ledgers with companies as follows:

-   To associate a ledger with multiple companies, you use the [Ledgers](GL_20_15_00.md) \(GL201500\) form.
-   To associate multiple ledgers with a particular company, you use the [Companies](CS_10_15_00.md) \(CS101500\) form.

    **Note:** You can associate only one ledger of the *Actual* type with a company.


For details on ledgers, see [Managing Ledgers](GL__MNG_Managing_Ledgers.md).

**Attention:** To open any form, you can navigate to it or search for it \(by its name or by its form ID without periods\).

## Before You Proceed {#section_e42_mjv_vxb .section}

Before you start associating ledgers with branches, make sure that the necessary ledgers have been added on the [Ledgers](GL_20_15_00.md) \(GL201500\) form. For details, see [To Add an Actual Ledger](GL__HOW_To_Add_a_Ledger.md).

## To Associate a Ledger with Multiple Companies {#section_g42_mjv_vxb .section}

1.  Open the [Ledgers](../Shared/../UserGuide/GL_20_15_00.md) \(GL201500\) form.
2.  In the **Ledger ID** box of the Summary area, select the ledger of the *Actual* type to which all financial transactions will be posted for the company.
3.  On the **Companies** tab, for each company that you want to associate with the selected ledger, do the following:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Company** column, select the identifier of the company.
4.  On the form toolbar, click **Save**.

## To Associate Multiple Ledgers with a Particular Company {#section_h42_mjv_vxb .section}

1.  Open the [Companies](CS_10_15_00.md) \(CS101500\) form.
2.  In the **Company ID** box of the Summary area, select the company with which you want to associate each ledger listed on the **Ledgers** tab for the selected company.
3.  On **Ledgers** tab, do the following for each ledger that you want to associate with the selected company:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Ledger** column, select the identifier of the ledger.
4.  On the form toolbar, click **Save**.

**Parent topic:**[Managing Ledgers](../UserGuide/GL__MNG_Managing_Ledgers.md)

