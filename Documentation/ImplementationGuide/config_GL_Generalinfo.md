# General Ledger: General Information {#_de1256fd-7e02-465d-9009-9bc8f3769b71 .concept}

When you initially implement Acumatica ERP, you implement the general ledger functionality that makes it possible for system implementation to proceed and for users to record and track GL transactions in the system. The implementation process includes creating an actual ledger for a company you have created, defining the chart of accounts, specifying the general ledger preference settings, and defining the company's financial year in the system.

## Learning Objectives { .section}

In this chapter, you will learn how to implement the basic configuration of the general ledger functionality for a company. In particular, you will learn how to do the following:

-   Create an actual ledger
-   Define the chart of accounts
-   Specify the general ledger preference settings
-   Set up the first financial year in the system
-   Generate periods for the financial year
-   Open the generated periods in the system

## Applicable Scenarios { .section}

You perform the basic configuration of the general ledger functionality during the implementation of Acumatica ERP, after a company has been configured in the system and before other parts of the system have been configured.

## Workflow of the Implementation of the General Ledger Functionality { .section}

To implement the general ledger functionality in Acumatica ERP, you perform the following general steps:

1.  On the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, you create the actual ledger for a company. For details, see [General Ledger: Actual Ledger](config_Basic_Company_Actual_Ledger.md).
2.  On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, you add the accounts that are necessary for performing the company's financial operations. For more information, see [General Ledger: Chart of Accounts](config_Basic_Company_COA.md).
3.  On the [General Ledger Preferences](../UserGuide/GL_10_20_00.md) \(GL102000\) form, you specify the settings for processing transactions in the general ledger, as described in [General Ledger: To Specify General Ledger Preferences](config_Basic_Company_Implem_Activity_GL_Preferences.md).
4.  On the [Financial Year](../UserGuide/GL_10_10_00.md) \(GL101000\) form, you set up the first financial year when the company starts processing its operations in Acumatica ERP. You then generate periods on the [Master Financial Calendar](../UserGuide/GL_20_10_00.md) \(GL201000\) form and open them on the [Manage Financial Periods](../UserGuide/GL_50_30_00.md) \(GL503000\) form. For details, see [General Ledger: Financial Years](config_Basic_Company_FinYear.md).

**Parent topic:**[General Ledger](../ImplementationGuide/config_Mapref_GL.md)

