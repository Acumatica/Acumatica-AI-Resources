# To Add an Actual Ledger {#_436a5d6f-ea0e-4fb0-a122-89bd98251cbb .task}

In Acumatica ERP, you add a new ledger of the *Actual* type as follows:

-   To add a new ledger and associate it with existing companies and branches, you use the [Ledgers](GL_20_15_00.md) \(GL201500\) form.
-   To create a new company and add a new ledger, you use the [Companies](CS_10_15_00.md) \(CS101500\) form.

For details on actual ledgers, see [General Ledger: Actual Ledger](../ImplementationGuide/config_Basic_Company_Actual_Ledger.md).

## To Add an Actual Ledger on the Ledgers Form {#section_gn2_mjv_vxb .section}

1.  Open the [Ledgers](../Shared/../UserGuide/GL_20_15_00.md) \(GL201500\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the **Ledger ID** box of the Summary area, type the unique identifier to be used for the ledger.
4.  If needed, in the **Description** box, enter a brief description of the ledger.
5.  In the **Type** box, select *Actual*.
6.  In the **Currency** box \(if applicable\), select the currency of the ledger, which must be the base currency.
7.  On the **Companies** tab, for each company that you want to associate with this ledger, do the following:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Company** column, select the identifier of the company.
8.  On the form toolbar, click **Save**.

## To Add an Actual Ledger on the Companies Form {#section_hn2_mjv_vxb .section}

1.  Open the [Companies](CS_10_15_00.md) \(CS101500\) form.
2.  In the **Company ID** box of the Summary area, select the company for which you want to add a ledger.
3.  In the form toolbar, click **Create Ledger**.

    The **Create Ledger** dialog box opens.

4.  In the **Ledger ID** box, type the identifier of the ledger.
5.  Optional: In the **Description** box, check the description of the ledger, and change it if necessary.
6.  Click **Create**.

## Notes About the Procedure {#section_jn2_mjv_vxb .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note the following about the Summary area of the form: The **Currency** box is available only if the *Multicurrency Accounting* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

You can later delete the ledger or modify its properties only if it has no journal entries or other records.

The **Branches** tab appears on the form only if the *Multibranch Support* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form.

**Parent topic:**[Managing Ledgers](../UserGuide/GL__MNG_Managing_Ledgers.md)

