# Setup of Integration with BILL {#_56123cbf-6050-48c6-90bb-3ad460b60645 .concept}

You can directly integrate Acumatica ERP with **BILL**—a trusted external payment processor that simplifies accounts payable. BILL handles the end-to-end processing of ACH payments, virtual cards, and checks, allowing you to securely delegate payment execution and focus on higher-value.

With the integration with BILL, you:

-   Won't need to spend time on check printing and mailing, configuring an export scenario or a plug-in for Electronic Funds Transfers \(EFT\), and uploading files to your banks. BILL will do all of this.
-   Won't need to maintain vendors' bank account details in Acumatica ERP for vendors connected to BILL. BILL has a vendor database with prefilled bank account details and preferred payment methods. This database is kept up-to-date in case a vendor changes its name or address or goes out of business.

**Attention:** This functionality is available in the system if the *BILL Integration* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

For information about processing payments through BILL, see [Creating Documents for External Payment Processing](AP__con_Create_Doc_External_Processing.md).

## Configuring the Connection to BILL { .section}

You configure the connection to BILL on the [External Payment Processor](AP_20_55_00.md) \(AP205500\) form. You create a payment processor and specify its settings, such as companies, users, and funding accounts. For details, see [To Create a Payment Processor](AP__HOW_Create_Payment_Processor.md).

To be able to create a payment processor, you must have the *Administrator* or *AP Admin* role assigned on the [Users](SM_20_10_10.md) \(SM201010\) form. Users with the *AP Clerk*, *AP Viewer*, and *AcumaticaSupport* roles can only view the settings.

**Attention:** You can create only one active payment processor on this form. An active payment processor has the **Active** check box selected in the Summary area.

To configure the connection to BILL, perform the following general steps:

1.  **Onboard Acumatica ERP companies to BILL**.

    Once you create a payment processor on the [External Payment Processor](AP_20_55_00.md) form, you add a company and click **Onboard** on the toolbar of the **Companies** table. The system creates an organization and a user in BILL by using an API call.

    **Attention:** A company can be added if all of the following conditions are met:

    -   The company is active
    -   The current user has access to the company in Acumatica ERP
    -   The company is located in the United States
    -   The company hasn't yet been added to the payment processor
2.  **Subscribe each company to a BILL webhook**.

    **Attention:** For creation of webhooks, your Acumatica ERP instance must be hosted over HTTPS.

    Webhooks allow users to track the status of payments in the external payment processor. The system automatically creates a webhook on the [Webhooks](SM_30_40_00.md) \(SM304000\) form during company onboarding. The system makes an API request to BILL to create the webhook subscription.

3.  **Add, activate, and onboard users to BILL**.

    You do this on the **Users** tab of the [External Payment Processor](AP_20_55_00.md) form. To onboard the user, you click **Onboard** on the table toolbar. To deactivate an active user, you click **Deactivate** on the table toolbar. To re-activate an inactive user, you click **Activate** on the table toolbar.

4.  **Create and verify BILL funding accounts for each company**.

    There are two ways of creating a funding account:

    -   By using the Plaid processing center. You will need to log in with your credentials. The funding account will be created with the *Verified* status.
    -   By entering bank details manually. In this case, after some time you will receive a bank transfer from BILL to your bank account. You should then enter this amount, which is usually less than a dollar, to verify that you really have access to that bank account.
    To enter bank details manually, you click the **Manage Accounts** button on the table toolbar. The system opens the **Funding Accounts** widget. You use it to create, manage, and verify the funding accounts under this organization ID. You can also identify yourself for those funding accounts.

    When you close the **Funding Accounts** widget, accounts are automatically refreshed. However, you can click **Refresh Accounts** to update the accounts that changed in BILL but weren't updated in Acumatica ERP.

    **Attention:** If you click the **Disable** button or the **Delete** button on the **Funding Accounts** widget that you can open with the **Manage Accounts** button on the table toolbar, the selected funding account will be permanently disabled.

5.  **Map a funding account to a cash account**.

    You do this by selecting an active cash account in the **Cash Account** column on the **Funding Accounts** tab.

    **Attention:** A cash account can be mapped to a funding account if all of the following conditions are met:

    -   The cash account is assigned to the company on the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form
    -   The cash account is nominated in US dollars \(USD\)
    -   The cash account hasn't been mapped to another funding account even in a different company in the same processor
6.  **Verify your identity for each company to use its verified accounts**.

    Once you verify your identity on the company level, you'll be able to use all the accounts that were already verified or will be verified in future.

    All users who are onboarded on a company are nominated for all the verified cash accounts in either of the following ways:

    -   When the user is onboarded
    -   When the account is verified
    You verify yourself on the **Funding Accounts** tab by clicking **Manage Accounts**. Alternatively, you can verify yourself on the [User Profile](SM_20_30_10.md) \(SM203010\) form, as explained in the section below. Another way of verifying yourself is by clicking **Verify Funding Accounts** on the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form.

    You can click **Refresh Accounts** to update the users of the funding accounts that changed in BILL but weren't updated in Acumatica ERP.

    **Attention:** If you click the **Disable** button, the selected user will be permanently disabled from using the funding account.


For detailed steps of configuring the connection, see [To Configure a Connection to BILL](AP__HOW_Configure_Connection_to_BillCom.md).

## Setting Up the Payment Method { .section}

For integration with BILL, the *External Payment Processor* means of payment is used. You set up a payment method on the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.

If you want to send payments through ACH, you must fill in the settings on the **Settings for Use in AP** tab of the [Payment Methods](CA_20_40_00.md) form. The table below shows the payment method details to be added on this tab.

|ID|Description|Required|Entry Mask|Validation Reg. Exp.|Control Type|
|---|-----------|--------|----------|--------------------|------------|
|1|`Beneficiary Account No`|Cleared| |`^\d{1,17}$`|*Text*|
|2|`Beneficiary Name`|Cleared| |`^([\w]|\s){0,22}$`|*Text*|
|3|`Bank Routing Number (ABA)`|Cleared|`000000000`|`^\d{9,9}$`|*Text*|
|4|`Bank Name`|Cleared| |`^([\w]|\s){0,22}$`|*Text*|
|5|`Account Type`|Cleared| | |*Account Type List*|

For details, see [To Create a Payment Method for External Payment Processing](AP__HOW_Create_PayMethod_BillCom.md).

## Verifying the Vendor Settings { .section}

For a vendor to get connected to the BILL network, you should make sure that it has a correct name and address in Acumatica ERP.

For vendors not connected to BILL, you should make sure that their bank details are up to date. These settings are located in the **Payment Instructions** section on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form.

BILL will try to verify the bank account and if it gets verified \(usually within one or two working days\), they will start paying the vendor through ACH. If the verification fails, they will send a check to the vendor's address that you specified in Acumatica ERP.

For details, see [To Set Up a Vendor for External Payment Processing](AP__HOW_Setup_Vendor_for_BillCom.md).

## Specifying BILL as Default Payment Method for Vendors { .section}

When the *BILL Integration* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the system automatically creates:

-   The *BILL* payment processor that appears on the [External Payment Processor](AP_20_55_00.md) \(AP205500\) form
-   The *BILL* payment method that appears on the [Payment Methods](CA_20_40_00.md) \(CA204000\) form

To mass-update vendor payment methods with the BILL payment method, update cash accounts, and unpaid AP documents, you use the [Update Vendor Payment Methods](AP_50_71_00.md) \(AP507100\) form.

If the **Update Open Documents** check box is selected on the form, the system updates the payment method of each document that meets all of the following conditions:

-   The document type is *Bill*, *Credit Adj.*, *Debit Adj.*, or *Prepayment*.
-   The document has the same payment location as one of the vendor locations selected in the table. The document's payment location is specified on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
-   The status isn't *Closed*, *Rejected*, or *Voided*.
-   The document has a nonzero open balance.

For details, see [To Update the Default Payment Method for Vendors](AP__HOW_Update_PM_with_BILL.md).

-   **[To Create a Payment Processor](../UserGuide/AP__HOW_Create_Payment_Processor.md)**  

-   **[To Configure a Connection to BILL](../UserGuide/AP__HOW_Configure_Connection_to_BillCom.md)**  

-   **[To Create a Payment Method for External Payment Processing](../UserGuide/AP__HOW_Create_PayMethod_BillCom.md)**  

-   **[To Set Up a Vendor for External Payment Processing](../UserGuide/AP__HOW_Setup_Vendor_for_BillCom.md)**  

-   **[To Update the Default Payment Method for Vendors](../UserGuide/AP__HOW_Update_PM_with_BILL.md)**  

-   **[International Payments with BILL](../UserGuide/AP__CON_BILL_International_Payments.md)**  


**Parent topic:**[Configuring Payment Processing](../UserGuide/CA__MNG_Payment_Processing.md)

