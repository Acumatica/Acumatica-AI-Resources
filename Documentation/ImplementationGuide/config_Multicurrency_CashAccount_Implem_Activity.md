# Multicurrency Cash Accounts: To Configure an Account {#_c5235bc2-af63-40ce-8a7c-5570d3898c4c .task}

In this implementation activity, you will learn how to create a denominated cash account.

## Story { .section}

Suppose that the SweetLife Fruits &amp; Jams company has opened a bank account in Canadian dollars \(the *CAD* currency defined in the system\), because it has customers and a few big vendors in Canada and wants to use Canadian dollars for payments to these partners.

Acting as a SweetLife accountant, you need to configure the following accounts:

-   A GL account denominated in *CAD* to which the cash account will be linked
-   A cash account denominated in *CAD* and an entry type for processing bank charges

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Standard Financials*, which provides the standard financial functionality
    -   *Multibranch Support*, which supports multiple branches in your instance of Acumatica ERP
    -   *Multicompany Support*, which supports multiple companies within one tenant
    -   *Multicurrency Accounting*, which enables multicurrency operations in the system
-   On the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, the *SWEETLIFE* company has been defined.
-   On the [Branches](../UserGuide/CS_10_20_00.md) \(CS102000\) form, the *HEADOFFICE* branch of the *SWEETLIFE* company has been created.
-   On the [Account Classes](../UserGuide/GL_20_20_00.md) \(GL202000\) form, the *CASHASSET* account class has been predefined.
-   On the [Entry Types](../UserGuide/CA_20_30_00.md) \(CA203000\) form, the *BANKFEE* entry type has been configured.
-   On the [Payment Methods](../UserGuide/CA_20_40_00.md) \(CA204000\) form, the *WIRE* payment method for wire transfers has been predefined.
-   On the [Currency Rate Types](../UserGuide/CM_20_10_00.md) \(CM201000\) form, the *SPOT* rate type has been defined.

## Process Overview { .section}

On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, you will manually create a GL account denominated in *CAD*. On the [Cash Accounts](../UserGuide/CA_20_20_00.md) \(CA202000\) form, you will create a cash account linked to the new GL account and add the *BANKFEE* entry type for this cash account.

## System Preparation { .section}

Before you begin creating GL and cash accounts, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant Anna Johnson by using the *johnson* username and the *123* password.
2.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu button to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.
3.  Make sure that the settings of the base currency \(*USD*\) and the foreign currencies \(*CAD* and *EUR*\) have been defined on the [Currencies](../UserGuide/CM_20_20_00.md) \(AP101000\) form, as described in [Multicurrency Functionality: Implementation Activity](config_Multicurrency_Basic_Implem_Activity.md).
4.  Make sure that currency rates for *CAD* and *EUR* have been created, as described in [Configuration of Rate Types and Rates: To Configure Rates](config_Multicurrency_Configuring_Rates_Activity1.md).

## Step 1: Creating a GL Account { .section}

To create a GL account, do the following:

1.  Open the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form.
2.  On the form toolbar, click **Add Row**, and specify the following settings in the added row:

    -   **Account**: `10215`
    -   **Account Class**: *CASHASSET*
    -   **Description**: `Checking Account CAD`
    -   **Post Option**: *Detail*
    -   **Currency**: *CAD*
    -   **Revaluation Rate Type**: *SPOT*
    This denominated checking account will be used for performing operations in Canadian dollars; thus, *CAD* is the currency of denomination specified for the account. The specified revaluation rate type will later be used for the account revaluation.

    **Important:** If an account had at least one journal entry posted in a currency other than the currency of denomination, you would not be able to make this account denominated.

3.  On the form toolbar, click **Save** to save your changes.

## Step 2: Creating a Cash Account { .section}

To create a cash account denominated in *CAD*, do the following:

1.  Open the [Cash Accounts](../UserGuide/CA_20_20_00.md) \(CA202000\) form.
2.  On the form toolbar, click **Add New Record** and specify the following settings in the Summary area:

    -   **Cash Account**: `10215WH`
    -   **Account**: *10215 \(Checking Account CAD\)*
    -   **Branch**: *HEADOFFICE* \(inserted automatically\)
    -   **Currency**: *CAD* \(selected automatically\)
    -   **Curr. Rate Type**: *SPOT*

        This is the currency rate type to be used by default in the transactions posted to the cash account. If this box is empty, the system will use the currency rate type specified in the **CA Rate Type** box on the [Currency Management Preferences](../UserGuide/CM_10_10_00.md) \(CM101000\) form.

    The system uses the currency of the denominated account to which the cash account is linked as the currency of the created cash account, so *CAD* is automatically specified in the **Currency** box. You cannot change the currency for the created cash account.

3.  On the **Payment Methods** tab, click **Add Row** on the table toolbar, and specify the following settings for the added row:
    -   **Payment Method**: *WIRE*
    -   **Use in AP**: Selected
    -   **Use in AR**: Selected
4.  On the **Entry Types** tab, click **Add Row** on the table toolbar and in the **Entry Type ID** column, select *BANKFEE*.
5.  On the form toolbar, click **Save** to save your changes.

**Parent topic:**[Configuring Cash Accounts in Foreign Currencies](../ImplementationGuide/config_Multicurrency_CashAccount_Mapref.md)

