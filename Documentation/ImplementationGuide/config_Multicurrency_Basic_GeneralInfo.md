# Multicurrency Functionality: General Information {#_55f2a7c2-322d-4854-83d8-c313ea68661a .concept}

To start working with multiple currencies, you have to configure this functionality in Acumatica ERP. This chapter describes how to prepare for the configuration and how to perform configuration that meets your business needs.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Enable the required system feature
-   Review the base currency and configure foreign currencies
-   Manually configure a foreign currency

## Applicable Scenarios { .section}

You configure the multicurrency functionality if your company works with foreign vendors and customers and you want to perform the following processes in Acumatica ERP:

-   Maintaining the actual exchange rates for foreign currencies used in the system
-   Maintaining bank accounts denominated in a foreign currency
-   Creating and processing documents in a foreign currency
-   Estimating unrealized gains and losses by revaluing open AP and AR documents
-   Revaluing bank account balances
-   Translating financial statements into a foreign currency to meet reporting needs

## Scope of the Multicurrency Functionality in Acumatica ERP { .section}

The following subledgers and functional areas of Acumatica ERP support the processing of documents and transactions in foreign currencies:

-   General ledger
-   Cash management
-   Accounts payable
-   Accounts receivable and contract management
-   Taxes \(you can report taxes in a currency other than the base currency\)
-   Sales orders
-   Purchase orders
-   Purchase requisitions
-   Time and expenses

Transactions can be processed in the base currency only in functionality related to fixed assets, deferred revenue, inventory, and project accounting in Acumatica ERP.

## Workflow of the Implementation of the Multicurrency Functionality { .section}

To implement the multicurrency functionality in Acumatica ERP, you perform the following general steps:

1.  On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, you create the accounts that will be used in multicurrency operations. For more information, see [General Ledger: Chart of Accounts](config_Basic_Company_COA.md).
2.  If subaccounts are used in your system and the **Allow Adding New Values On the Fly** check box is cleared for the *SUBACCOUNT* segmented key on the [Segmented Keys](../UserGuide/CS_20_20_00.md#) \(CS202000\) form, you use the [Subaccounts](../UserGuide/GL_20_30_00.md) \(GL203000\) form to create the subaccounts that have been planned for the foreign currencies. For details on subaccounts, see [Subaccounts: General Information](config_Subaccounts_GeneralInfo.md).
3.  On the [Currencies](../UserGuide/CM_20_20_00.md) form, you configure the foreign currencies to be used in the system. For an example with instructions, see [Multicurrency Functionality: Implementation Activity](config_Multicurrency_Basic_Implem_Activity.md).
4.  On the [Currencies](../UserGuide/CM_20_20_00.md) \(CM202000\) form, you specify the accounts the system will use for recording rounding gains and losses, and the accounts the system will use for recording realized gains and losses. For details, see [Multicurrency Functionality: Currency Rounding Rules](config_Multicurrency_Basic_RoundingRules.md).
5.  Optional: On the [Currency Rate Types](../UserGuide/CM_20_10_00.md) \(CM201000\) form, you create each of the planned rate types. For details, see [Configuration of Rate Types and Rates: General Information](config_Multicurrency_Configuring_Rates_GeneralInfo.md).
6.  On the [Currency Rates](../UserGuide/CM_30_10_00.md) \(CM201000\) form, you define the effective exchange rates to be used by default in the created transactions and documents. For details, see [Configuration of Rate Types and Rates: To Configure Rates](config_Multicurrency_Configuring_Rates_Activity1.md).
7.  You define denominated accounts on the [Chart of Accounts](../UserGuide/GL_20_25_00.md) form. For details, see [Denominated Accounts](../UserGuide/GL__con_Denominated_Accounts.md).
8.  Optional: On the [Automation Schedules](../UserGuide/SM_20_50_20.md) \(SM205020\) form, you set up a schedule for the system to automatically update the exchange rates. For details on using automation schedules, see [Scheduling Automated Processing](../UserGuide/SA_Scheduling_Automated_Processing_Mapref.md).

**Parent topic:**[Multicurrency Functionality](../ImplementationGuide/config_Multicurrency_Basic_Mapref.md)

