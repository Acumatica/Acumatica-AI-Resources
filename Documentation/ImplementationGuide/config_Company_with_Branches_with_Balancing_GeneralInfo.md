# Company with Branches that Require Balancing: General Information {#_a618a27b-3683-4d86-a26e-4b8fb7981f1c .concept}

When you initially implement Acumatica ERP, you perform the company configuration that makes it possible for system implementation to proceed. This configuration includes enabling the necessary set of features and configuring the company in the system. You can then proceed to further Acumatica ERP implementation, which includes specifying the basic settings related to the general ledger and to cash management, accounts payable, and accounts receivable.

When you configure a company in Acumatica ERP, it can be defined as being without branches, as consisting of branches that require balancing entries \(if transactions involve multiple branches\), or as having branches that do not require balancing entries. The topics of this chapter describe the configuration of a company with branches that require balancing.

## Learning Objectives { .section}

In this chapter, you will learn how to perform configuration of a company with branches that require balancing.

## Applicable Scenarios { .section}

You configure a company with branches that require balancing if the company has multiple offices, but reports are provided separately for each branch. The offices all use the same base currency, ledger, units of measure, chart of accounts, and financial year structure.

You perform company configuration as a first phase of the implementation of Acumatica ERP, before the creation of the entities needed for business processes. You can also add a new company or a new branch to the existing companies in the tenant at any time.

## Workflow of the Configuration of a Company With Branches that Require Balancing { .section}

To implement the basic configuration of a company with branches requiring balancing in Acumatica ERP, you perform the following general steps:

1.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, you enable the default set of features and the *Multibranch Support*, *Multicompany Support*, and *Inter-Branch Transactions* features. For details, see [Company with Branches that Require Balancing: Implementation Activity](config_Company_with_Branches_with_Balacing_Implem_Activity.md).

    With the *Multicompany Support* feature enabled, users can create multiple companies within a tenant; with the *Multibranch Support* feature enabled, users can create companies with multiple branches.

    The *Inter-Branch Transactions* feature gives the users the ability to configure the automatic generation of interbranch balancing transactions for each transaction that involves any of the following: multiple companies, branches of different companies, or branches that belong to one company and require balancing. If this feature is disabled, the users can create interbranch transactions between only branches that belong to one company and do not require balancing.

    **Tip:** In a production environment, after the features are enabled, you have to activate the Acumatica ERP license by using the [Activate License](../UserGuide/SM_20_15_10.md) \(SM201510\) form. Each particular feature may be subject to additional licensing; please consult the Acumatica ERP sales policy for details.

2.  On the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, you create the company entity in the system, and specify a type. You then add branches on the [Branches](../UserGuide/CS_10_20_00.md#) \(CS102000\) form. For details, see [Company with Branches that Do Not Require Balancing: Implementation Activity](config_Company_with_Branches_No_Balacing_Implem_Activity.md).
3.  On the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, you create the company’s actual ledger. All branches of the company will use this single ledger for posting. For details, see [General Ledger: To Create an Actual Ledger](config_Basic_Company_Implem_Activity_Actual_Ledger.md).

    **Attention:** Regardless of the company type, you can configure and use only one actual ledger for a company, which all branches will use.


## Company Settings { .section}

In Acumatica ERP, you create new companies or maintain existing companies by using the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form. On this form, to configure the company with branches that require balancing, you have to specify the company's identifier, name, and address, and you ensure that the *With Branches Requiring Balancing* type is selected. You also specify the base currency of the company, which you cannot change after you save the newly created company for the first time. If you create multiple companies in the tenant, this base currency will be used automatically for all companies and cannot be changed, if the *Multiple Base Currencies* feature is disabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form. \(If the company is not the first company you are creating in the tenant, the base currency is already filled in.\)

After you have created the company, you add branches to it on the [Branches](../UserGuide/CS_10_20_00.md#) \(CS102000\) form. You can navigate directly to this form or open it by clicking **Add Branch** on the [Companies](../UserGuide/CS_10_15_00.md) form. On the [Branches](../UserGuide/CS_10_20_00.md#) form, for each branch you want to add, you specify its general information, including its identifier, name, address, default location, and employees.

**Attention:** After the company has been configured, the *With Branches Requiring Balancing* company type can still be changed to *Without Branches* if the company has only one branch or no branches at all.

The company type can be changed from *With Branches Requiring Balancing* to *With Branches Not Requiring Balancing* at any time even if there are transactions posted for the company.

The company type can be changed from *With Branches Not Requiring Balancing* to *With Branches Requiring Balancing* if there are no transactions posted for the company.

**Parent topic:**[Company with Branches that Require Balancing](../ImplementationGuide/config_Company_with_Branches_with_Balacing_Mapref.md)

