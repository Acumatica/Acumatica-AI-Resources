# Contract Configuration: To Create Entities for a Support Contract {#_c3c74749-ab99-4096-9ff6-4114e0c1a42b .task}

In this activity, you will learn how to create a labor non-stock item and a case class of the *Per Case* billing mode to create an empty template for a support contract.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the SweetLife Fruits &amp; Jams company, in addition to deploying juicers, also specializes in providing maintenance. The Unifruit LLC customer previously purchased juicers and now needs to enter into a maintenance support contract. On *3/8/2026*, the support contract was signed by both parties.

According to the terms of the contract, it has the *Expiring* type, and the contract span is three months. The service of maintenance specialists costs $120 per hour, and the price is not dependent on the skills and position of the employee who performs this service. The billing of the contract will be performed on a per-case basis. On *3/10/2026*, the service under the contract was provided by one regular specialist for hours for a total sum of $480.

Acting as an accountant, you will add a new GL account to the chart of accounts.

Then acting as a sales manager, you will create a non-stock labor item and a case class to be used in an empty contract template for a support contract.

## Process Overview { .section}

On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, you will update the chart of accounts. On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, you will create a labor non-stock item and specify the default price of the item. Then on the [Case Classes](CR_20_60_00.md) \(CR206000\) form, you will create a new case class for the support services and specify the reaction time for cases with different priority levels.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Contract Management* feature has been enabled.
-   On the [Customers](AR_30_30_00.md) \(AR303000\) form, the *UNIFRUIT \(Unifruit LLC\)* customer has been created.
-   On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, the *79000* \(*Contract Expenses*\) expense account has been created.

## System Preparation { .section}

To prepare to perform the instructions of this activity, launch the Acumatica ERP website with the *U100* dataset preloaded, and for Step 1 sign in to the system as the accountant Anna Johnson by using the *johnson* username and the *123* password. For Step 2 and Step 3 sign in as the sales manager David Chubb by using the *chubb* username and the *123* password.

## Step 1: Updating the Chart of Accounts {#section_sny_5pl_ht .section}

First, you need to add a new GL account to the chart of accounts. This account will accumulate the revenue earned when SweetLife Fruits &amp; Jams provides support services. To add this account, proceed as follows:

1.  On the table toolbar of the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, click **Add Row**, and specify the following settings:
    -   **Account**: `40400`
    -   **Account Class**: *SALES*
    -   **Description**: `Sales - Support Hours`
2.  Save your changes.

## Step 2: Creating a Labor Item {#section_i55_csl_ht .section}

Now you need to create a labor non-stock item and specify the default price of the item. Do the following:

1.  Sign in to the system as a sales manager by using the *chubb* username and the *123* password.
2.  Create the non-stock labor item for the support service as follows:
    1.  On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, add a new record.
    2.  Specify the following settings in the Summary area:
        -   **Inventory ID**: `CTSUPPORT`
        -   **Description**: `Support service by contract`
    3.  On the **General** tab, specify the following settings:
        -   **Type**: *Labor*
        -   **Posting Class**: *NONSTOCK*
        -   **Tax Category**: *EXEMPT*
        -   **Require Receipt**: Cleared
        -   **Require Shipment**: Cleared
        -   **Base Unit**: *HOUR*
        -   **Sales Unit**: *HOUR*
        -   **Purchase Unit**: *HOUR*
    4.  On the **Price/Cost** tab, specify `120` in the **Default Price** box.
    5.  On the **GL Accounts** tab, specify the following settings:
        -   **Expense Account**: *79000* \(*Contract Expenses*\)
        -   **Sales Account**: *40400* \(*Sales - Support Hours*\)
    6.  On the form toolbar, click **Save** to save the non-stock item.

## Step 3: Creating a Case Class of the Per Case Billing Mode {#section_mm4_xcm_ht .section}

Now you need to create a case class. A case class contains the settings specific to a particular category of cases. The system will automatically add these settings to the case that you create later.

To create a case for support contract on the [Case Classes](CR_20_60_00.md) \(CR206000\) form, do the following:

1.  Add a new record.
2.  Specify the following settings in the Summary area:
    -   **Case Class ID**: *REGULARSUP*
    -   **Description**: *Regular support services*
3.  On the **Details** tab, specify the following settings:
    -   **Require Customer**: Selected

        With this check box selected, a customer must be specified for each new case of the class; otherwise, the user will not be able to save the case.

    -   **Require Contract**: Selected

        With this check box selected, a contract must be specified for each new case of the class; otherwise, the user will not be able to save the case.

    -   **Billable**: Selected

        With this check box selected, all new cases of the class are marked as billable.

    -   **Billing Mode**: *Per Case*

        The *Per Case* billing mode indicates that the cases of the class will be billed on a per-case basis. A case of this class can be billed only after all work related to the case is completed and the case is closed.

    -   **Labor Item**: *CTSUPPORT*
    -   **Overtime Labor Item**: *CTSUPPORT*

        In the **Labor Item** and **Overtime Labor Item** boxes, you have selected non-stock items of the *Labor* type. These items will be used as the sources of prices for billing.

    -   On the **Commitments** tab, specify the resolution time for cases with different priority levels, as shown in the table below. \(The settings in the first row, for example, mean that a case with the *Urgent* severity level should be updated by SweetLife's employee within half an hour after the case has been submitted.\) You specify these settings for informational purposes. The system does not enforce them.

        |Severity|**Enable** \(with the **Target Resolution Time** Tooltip\) Check Box|Target Resolution Time|
        |--------|--------------------------------------------------------------------|----------------------|
        |*Urgent*|Selected|`000d 00h 30m`|
        |*High*|Selected|`000d 01h 00m`|
        |*Medium*|Selected|`000d 08h 00m`|
        |*Low*|Selected|`002d 00h 00m`|

4.  Click **Save** to save the created case class.

In this activity, you have created the labor item and a case class you will use later for creating an empty contract template for support contracts.

**Parent topic:**[Configuring Contracts](../UserGuide/Contracts_Configuring_Contracts_Mapref.md)

