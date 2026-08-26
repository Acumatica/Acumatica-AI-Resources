# Interbranch Account Mapping: General Information {#_96d6e9bb-8217-432e-80b2-a4cedf883723 .concept}

Organizations can be configured in Acumatica ERP in a variety of ways, with multiple companies and multiple branches within companies. As such, multiple branches or companies may be involved in a particular transaction.

In interbranch or intercompany transactions, because credit and debit amounts are posted to different branches or companies, the account balances of the branches or companies may not be in balance. You may need to configure the system to automatically generate balancing entries for interbranch or intercompany transactions so that transactions are balanced in each involved branch or company.

**Tip:** If you have extended a branch as a customer or as a vendor and want to use them in AP and in AR documents, you do not need to configure the account mapping. For more details on how to extend a branch as a customer and as a vendor, review [Intercompany Sales Setup: Implementation Activity](Finance_Intercompany_SalesSetup_Implem_Activity.md).

## Learning Objectives { .section}

You will learn how to configure account mapping rules for transactions between companies and between branches that require balancing.

## Applicable Scenarios { .section}

You need to configure account mapping if you need to post GL transactions with different lines associated with different companies or branches, and you need to balance the transactions in the books of each company or branch.

For details on processing such interbranch and intercompany documents, see the following topics:

-   [Interbranch Bills with Balancing: General Information](../UserGuide/Finance_Bill_Between_Branches_Requiring_Balancing_GeneralInfo.md)
-   [Interbranch Invoices with Balancing: General Information](../UserGuide/Finance_Invoice_Between_Branches_Requiring_Balancing_GeneralInfo.md)
-   [Intercompany Funds Transfers: General Information](../UserGuide/Finance_Funds_Transfer_Between_Companies_GeneralInfo.md)

## Interbranch Balancing Entries { .section}

You need to set up the generation of balancing entries for interbranch transactions if any of the following transactions can be generated in the organization:

-   Transactions between different companies
-   Transactions between branches of different companies
-   Transactions between branches of one company that have separate accounting—that is, branches of a company with the *With Branches Requiring Balancing* company type specified on the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form

In these cases, transactions should be balanced in each company or branch involved so that the accounts of each entity will be in balance and so that you can prepare financial statements for each company or branch.

**Important:** Balancing entries between Due To and Due From accounts cannot be used for entities with different base currencies. If you need to create a transaction between entities in different base currencies, you should first extend the involved companies to customers or vendors, and then create transactions for these customers or vendors. For details on extending companies to be customers or vendors, see [Intercompany Sales: General Information](../UserGuide/Finance_Intercompany_Sales_GeneralInfo.md).

## Configuration of Interbranch Transactions with Balancing Entries { .section}

To configure in the system the rules the system will use to generate balancing entries, you have to do the following:

1.  Make sure that the *Inter-Branch Transactions* feature has been enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
2.  Define the rules according to which the system will generate balancing entries on the [Inter-Branch Account Mapping](../UserGuide/GL_10_10_10.md) \(GL101010\) form. In each rule, you specify the following:
    -   The originating branch in which an interbranch transaction is initiated. This is the branch specified for the document whose release causes the transaction to be generated.
    -   For the balancing entry in the originating branch, you specify the following:
        -   The destination branch to which the interbranch transaction is targeted. This is the branch specified in the particular line of the document whose release causes the transaction to be generated.
        -   The account range for mapping. That is, the range of accounts of the destination branch to which the rule applies.
        -   The offset account to which the system will post the balancing entry in the originating branch. You can use as this offset account any asset or liability account assigned to an appropriate account class, depending on the organization reporting needs.
    -   For the balancing entry in the destination branch, you specify the following:
        -   The destination branch to which the interbranch transaction is targeted. This is the branch specified in the particular line of the document whose release causes the transaction to be generated.
        -   The account range for mapping. That is, the range of accounts of the destination branch to which the rule applies.
        -   The offset account to which the system will post the balancing entry in the destination branch.

**Parent topic:**[Interbranch Account Mapping](../ImplementationGuide/config_InterBranch_Mapping_Rules_Mapref.md)

