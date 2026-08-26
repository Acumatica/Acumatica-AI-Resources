# Interbranch Bills with Balancing: General Information {#_1caafd78-5d6e-436e-ac26-110e45e388bd .concept}

If a company consists of multiple branches, it may have bills that involve multiple branches of the company for the purchase of goods or services from the specified vendor. If branches use separate accounting—that is, the *With Branches Requiring Balancing* type is selected on the [Companies](CS_10_15_00.md) \(CS101500\) form—you have to configure the system so that it generates balancing entries for these bills.

When you enter an interbranch bill on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you perform the same steps as you do when you add a bill that involves only one branch, except that you specify the branch that incurs the expenses for each line of the bill in addition to specifying the originating branch for the bill on the **Financial** tab. For details on creating a bill, see [AP Bills: General Information](Finance_ProcessingAPBills_GeneralInfo.md).

On posting of an interbranch transaction related to a bill, the system adds balancing entries to the batch according to the account mapping rules that have been specified in the system. For details, see [Interbranch Account Mapping: General Information](../ImplementationGuide/config_InterBranch_Mapping_Rules_GeneralInfo.md).

## Learning Objectives {#section_xxm_njv_vxb .section}

In this chapter, you will learn how to do the following:

-   Process a bill between branches that require balancing
-   Review the balances of accounts involved in the transaction

## Applicable Scenarios {#section_zxm_njv_vxb .section}

You create interbranch bills in the following cases:

-   If one branch purchases goods for this branch and for other branches of the company
-   If one branch purchases services for this branch and for other branches of the company

**Parent topic:**[Processing Interbranch Bills With Balancing](../UserGuide/Finance_Bill_Between_Branches_Requiring_Balancing_Mapref.md)

