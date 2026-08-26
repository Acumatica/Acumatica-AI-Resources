# Interbranch Invoices with Balancing: General Information {#_44c32235-6c12-4fdd-ba9e-7644fe78a03c .concept}

If a company consists of multiple branches, it may have invoices whose lines include goods or services that multiple branches of the company have provided to the customer. If branches use separate accounting—that is, the *With Branches Requiring Balancing* type is selected on the [Companies](CS_10_15_00.md) \(CS101500\) form—you have to configure the system so that it generates balancing entries for these invoices.

When you enter an interbranch invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you perform the same steps as when you add an invoice for a single branch and specify the branch that earned the income for each line of the invoice in addition to specifying the originating branch for the invoice on the **Financial** tab. For details on creating an invoice, see [AR Invoices: General Information](Finance_ARInvoices_GeneralInfo.md).

On posting of an interbranch transaction related to an invoice between branches that require balancing, the system adds a balancing entry to the batch according to the account mapping rules that have been specified in the system. For details, see [Interbranch Account Mapping: General Information](../ImplementationGuide/config_InterBranch_Mapping_Rules_GeneralInfo.md).

## Learning Objectives {#section_ngr_4jv_vxb .section}

In this chapter, you will learn how to do the following:

-   Process an invoice between branches that require balancing
-   Review the balances of accounts involved in transactions

## Applicable Scenarios {#section_pgr_4jv_vxb .section}

You create interbranch invoices if one branch bills a customer for goods or services provided by another branch or multiple branches of your company.

**Parent topic:**[Processing Interbranch Invoices with Balancing](../UserGuide/Finance_Invoice_Between_Branches_Requiring_Balancing_Mapref.md)

