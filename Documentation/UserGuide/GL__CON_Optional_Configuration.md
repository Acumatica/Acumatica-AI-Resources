# Advanced GL Configuration {#_5477f831-6681-4c03-aa38-615089cfc9ad .concept}

If you want to perform any of the advanced activities in the General Ledger module—such as managing subaccounts, budgets, allocations, or consolidations—you should configure the necessary settings to make it possible for employees to perform these processes. You can perform most of the optional configuration tasks before you start using the system or when you are already using the system.

**Note:** If you plan to use subaccounts, we recommend that you configure subaccounts before you start using the system.

In this topic, you will read about the optional configuration tasks in the General Ledger module, which give users in your system the ability to perform the advanced business processes.

## Managing Subaccounts {#_5ffd7bb4-b7ad-4246-8085-6983f76e9927 .section}

To better track the revenue and expenses of your company and keep your chart of accounts of a manageable size at the same time, you can use subaccounts to virtually split your accounts into smaller and more specific accounts. To use subaccounts in the system, you do the following:

1.  Enable the *Subaccount* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

    **Note:** Each particular feature may be subject to additional licensing; please consult the Acumatica ERP sales policy for details.

2.  Configure the *SUBACCOUNT* segmented key on the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form, and define the list of possible values for segments on the [Segment Values](CS_20_30_00.md) \(CS203000\) form. For details on the *SUBACCOUNT* segmented key, see [Subaccounts: General Information](../ImplementationGuide/config_Subaccounts_GeneralInfo.md).
3.  Optional: Define the needed subaccounts on the [Subaccounts](GL_20_30_00.md) \(GL203000\) form.

After you have defined subaccounts, you can start recording transactions to account-subaccount pairs.

**Note:** You can set up restriction groups to control which users can view or use certain General Ledger accounts and subaccounts. For details, see [Account and Subaccount Security](RS__con_Account_and_Subaccount_Security.md).

## Managing Budgets {#section_oh2_mjv_vxb .section}

To create and keep budgets in the system, you have to do the following:

-   Create at least one ledger of the *Budget* type on the [Ledgers](GL_20_15_00.md) \(GL201500\) form. For details, see [Budget Ledger: General Information](../ImplementationGuide/BudgetLedger_GeneralInfo.md).
-   Configure a budget tree on the [Budget Configuration](GL_20_50_00.md) \(GL205000\) form. The budget tree defines the budget articles that automatically appear in a budget when you create one in the system. For details, see the [Budget Tree](../ImplementationGuide/config_Budget_Tree_Mapref.md) chapter.

    **Note:** We recommend that you define the budget tree because it makes easier to prepare budgets and analyze them. Additionally, you can use a budget tree to restrict access rights to specific budget nodes for particular users. However, you can instead work with plain budgets, which are simple lists of budget articles, without the preliminary configuration of the budget tree.


After you have prepared and reviewed a budget tree and budget ledger, you can create budgets in the system.

## Managing Allocations {#section_sh2_mjv_vxb .section}

For faster data entry, all transactions can be recorded to one account and then distributed between different accounts, or some operation expenses can be posted to one subaccount and then distributed between different subaccounts \(for example, between subaccounts related to a company's locations or departments\). To periodically distribute amounts between account-subaccount pairs, you can configure and run allocations as follows:

1.  Enable the *General Ledger Allocations Template* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

    **Note:** Each particular feature may be subject to additional licensing; please consult the Acumatica ERP sales policy for details.

2.  Create allocation rules on the [Allocations](GL_20_45_00.md) \(GL204500\) form. For details, see [Allocation Rules](../ImplementationGuide/config_Allocation_Rules_Mapref.md).

After you create the rule, you can run allocations for a specific period, which will create a batch of transactions according to the rule.

## Managing Consolidations {#section_wh2_mjv_vxb .section}

To be able to import consolidation data to a parent company \(or to a company dedicated to holding consolidation data\), you perform the following steps:

1.  Enable the *General Ledger Consolidation* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

    **Note:** Each particular feature may be subject to additional licensing; please consult the Acumatica ERP sales policy for details.

2.  Configure consolidation for the parent company as follows:
    1.  Optional: Create a ledger of the *Reporting* type on the [Ledgers](GL_20_15_00.md) \(GL201500\) form. For details on reporting ledgers, see [Reporting Ledgers](GL__CON_Reporting_Ledger.md).
    2.  Optional: Create a branch \(or multiple branches\) on the [Branches](CS_10_20_00.md) \(CS102000\) form to hold the data imported from the subsidiaries.
    3.  Set up access to Acumatica ERP website of each subsidiary, and synchronize the involved websites on the [Consolidation](GL_10_30_00.md) \(GL103000\) form.
3.  Configure consolidation for the subsidiaries as follows:
    1.  Map the subsidiary General Ledger accounts to the parent company accounts on the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form.
    2.  Map the subsidiary subaccount segments to the parent company subaccount segments by using the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form.
    3.  Map the subsidiary segment values to the parent company segment values by using the [Segment Values](CS_20_30_00.md) \(CS203000\) form.
    4.  Set up the source ledger for consolidation on the [Ledgers](GL_20_15_00.md) form.

After you perform these steps, you can prepare the data to be consolidated and import it to the parent company. For details on consolidations, see [GL Consolidation Configuration: General Information](Finance_GL_Consolidation_Config_GeneralInfo.md) and [GL Consolidation: General Information](Finance_GL_Consolidation_GeneralInfo.md).

