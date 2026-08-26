# Funds Transfers with Taxable Fees: General Information {#_eec418fa-3bc8-4e77-8e46-a6ef7bde7511 .concept}

In Acumatica ERP, you can record cash transfers from one bank account to another, or between cash accounts that are linked to the same GL account and that represent the same bank account. When you record a funds transfer, you can also register a taxable charge associated with it. For example, when you move funds between different bank accounts, you can immediately record a service fee associated with the transfer.

## Learning Objectives {#section_qfj_fjv_vxb .section}

In this chapter, you will learn how to perform a funds transfer between two cash accounts and how to record a taxable bank fee for this transfer.

## Applicable Scenarios {#section_sfj_fjv_vxb .section}

You perform a funds transfer with taxable fees when you need to move funds from one bank account to another—for example, when you want to deposit funds from one of the company's checking accounts to a company savings account, and the bank fees are taxable.

## Workflow of a Funds Transfers with Taxable Fees {#section_ufj_fjv_vxb .section}

The workflow of creating a funds transfer with taxable fees is the same as for any funds transfer. For more details, see [Funds Transfers: General Information](Finance_Performing_Funds_Transfer_GenInfo.md).

When creating an expense for a funds transfer, on the [Funds Transfers](CA_30_10_00.md) \(CA301000\) form, in addition to the required settings of the expense line, you specify the following settings:

-   **Tax Zone**: The tax zone applied to the expense. By default, the tax zone is copied from the tax zone of the selected cash account specified for the selected entry type in the **Tax Zone** column on the **Entry Types** tab of the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form.
-   **Tax Category**: The tax category of the tax zone. By default, it is copied from the tax zone, but you can override this value.

## Tax Calculation for Expenses Recorded in Funds Transfers {#section_xfj_fjv_vxb .section}

The system automatically calculates the amount of the tax applied to an expense line and displays it as a link in the **Tax Amount** column in the table of the [Funds Transfers](CA_30_10_00.md) \(CA301000\) form. You can click the link and open the **Expense Taxes** dialog box, where you can review, create, delete, and modify the taxes applied to this expense line. One expense line can have multiple tax lines applied to it.

The **Total Amount** column in the table displays the amount automatically calculated by the system and based on the following formulas, which differ depending on whether the taxes are inclusive:

-   For non-inclusive taxes: `Total Amount = Amount + Tax Amount` where `Taxable Amount = Amount`
-   For inclusive taxes: `Total Amount = Taxable Amount + Tax Amount` where `Total Amount = Amount`

In these formulas, `Amount` is the amount of the expense manually defined by a user. For non-inclusive taxes, this amount is also known as the taxable amount. `Tax Amount` is the total amount of the taxes applied to this expense manually or automatically.

**Parent topic:**[Processing Funds Transfers with Taxable Fees](../UserGuide/Taxes_Processing_Funds_Transfers_with_Taxable_Expenses_Mapref.md)

