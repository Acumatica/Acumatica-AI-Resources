# Company with Branches that Do Not Require Balancing: General Information {#_a718a27b-3683-4d86-a26e-4b8fb7981f1c .concept}

When you initially implement Acumatica ERP, you perform the company configuration that makes it possible for system implementation to proceed. This configuration includes enabling the necessary set of features and configuring the company in the system. You can then proceed to further Acumatica ERP implementation, which includes specifying the basic settings related to the general ledger and to cash management, accounts payable, and accounts receivable.

When you configure a company in Acumatica ERP, it can be defined as being without branches, as consisting of branches that require balancing entries \(if transactions involve multiple branches\), or as having branches that do not require balancing entries. The topics of this chapter describe the configuration of a company with branches that do not require balancing.

## Learning Objectives { .section}

In this chapter, you will learn how to perform configuration of a company with branches that do not require balancing.

## Applicable Scenarios { .section}

You configure a company with branches that do not require balancing if the company has multiple offices, but balance sheets are provided for the whole company \(not separately for each branch\).

You perform company configuration as a first phase of the implementation of Acumatica ERP, before the creation of the entities needed for business processes. You can also add a new company or a new branch to the existing companies in the tenant at any time.

## Company Settings { .section}

In Acumatica ERP, you create new companies or maintain existing companies by using the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form. On this form, to configure the company with branches that do not require balancing, you have to specify the company's identifier, name, and address, and you ensure that the *With Branches Not Requiring Balancing* type is selected. You also specify the base currency of the company, which you cannot change after you save the newly created company for the first time. If you create multiple companies in the tenant, this base currency will be used automatically for all companies and cannot be changed if the *Multiple Base Currencies* feature is disabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form. \(If the company is not the first company you are creating in the tenant, the base currency is already filled in.\)

After you have created the company, you add branches to it on the [Branches](../UserGuide/CS_10_20_00.md#) \(CS102000\) form. You can navigate directly to this form or open it by clicking **Add Branch** on the [Companies](../UserGuide/CS_10_15_00.md) form. On the [Branches](../UserGuide/CS_10_20_00.md#) form, for each branch you want to add, you specify its general information, including its identifier, name, address, default location, and employees.

**Attention:** After the company has been configured, the *With Branches Not Requiring Balancing* company type can still be changed to *Without Branches* if the company has only one branch or no branches at all. The type can also be changed to *With Branches Requiring Balancing* if no transactions have been posted by company branches or the company has only one branch.

**Parent topic:**[Company with Branches that Do Not Require Balancing](../ImplementationGuide/config_Company_with_Branches_No_Balancing_Mapref.md)

