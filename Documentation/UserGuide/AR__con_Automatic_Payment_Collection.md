# Automatic Payment Collection {#_37cd80e5-5a61-4dab-8958-68d40b3f3d9c .concept}

With Acumatica ERP, you can configure automatic payment collection from customers, maintain up-to-date information about customer credit cards, notify customers about expiring credit cards by using template-based notifications, and deactivate expired cards.

In Acumatica ERP, automatic collection of customer payments can be configured as follows:

-   Enable the *Integrated Card Processing* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   Subscribe to processing center services and configure access to them within Acumatica ERP. Processing centers will process card transactions. For details on configuring processing centers, see [Configuring Payment Processing](CA__MNG_Payment_Processing.md).
-   In Acumatica ERP, configure payment methods, based on the card types accepted by the processing centers your company subscribes to.
-   Enter information about customer cards. Acumatica ERP will maintain it securely, by using encryption and masking, so that sensitive customer data is fully protected.
-   Maintain current information about customer cards. On a regular basis, search for expiring cards and notify the customers.

The steps required to configure automatic payment collection are discussed in more detail in the respective sections below.

## Enabling and Disabling the Integrated Card Processing Feature {#section_rms_4jv_vxb .section}

When the system administrator enables the *Integrated Card Processing* feature, all the UI elements and forms related to credit card processing are displayed in the system.

If the *Integrated Card Processing* feature has been disabled, the system behavior will change as follows:

-   If there are unreleased documents that have credit card transactions, these documents will not be shown on the [Release AR Documents](AR_50_10_00.md) \(AR501000\) form, so an AR clerk should review each document manually by voiding or releasing the documents without processing a transaction in the system. In this case, the transactions will be processed in an external system, such as an ecommerce solution.

    You will not be able to delete documents that have credit card transactions associated with them. On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, the system will display an error message if you try to delete such a document.

-   The [Validate Card Payments](AR_51_30_00.md) \(AR513000\) form will not be available in the system, so the documents that require validation can no longer be validated. These documents can be voided, released, or deleted, even if they required validation when the feature was in use.
-   If a process runs an action that includes credit card processing, the system will display a warning message to inform you that the action could not be completed because the *Integrated Card Processing* feature is disabled.

With the *Integrated Card Processing* feature disabled, you can create documents with payment methods that have *Credit Card* selected in the **Means of Payment** box on the [Payment Methods](CA_20_40_00.md) \(CA204000\) form. Documents associated with credit card payment methods will not require integrated processing.

If the *Integrated Card Processing* feature is disabled after is was formerly used, the following actions related to processing of documents that have the *Pending Processing* status are recommended:

-   If you are going to close financial periods that may have documents in the *Pending Processing* status, to review the documents, you should run the *Unreleased AR Documents* report on the [Close Financial Periods](AR_50_90_00.md) \(AR509000\) form by clicking **Unreleased Documents** on the form toolbar.
-   On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, the sales orders that have the *Pending Processing* status should be further processed by sales managers as if the order payments had the *Balanced* status.

If the *Integrated Card Processing* feature is disabled, you should stop automation schedules, if any, for the following forms:

-   [Generate Payments](AR_51_10_00.md) \(AR511000\)
-   [Capture Payments](AR_51_15_00.md) \(AR511500\)
-   [Card Payments Pending Review](CA_40_30_00.md) \(CA403000\)
-   [Deactivate Expired Cards](AR_51_25_00.md) \(AR512500\)
-   [Notify About Expiring Cards](AR_51_20_00.md) \(AR512000\)
-   [Payment Method Transaction History](AR_40_60_00.md) \(AR406000\)
-   [Payment Processing Log](AR_40_65_00.md) \(AR406500\)
-   [Processing Centers](CA_20_50_00.md) \(CA205000\)
-   [Synchronize Cards](CA_20_60_00.md) \(CA206000\)
-   [Validate Card Payments](AR_51_30_00.md) \(AR513000\)
-   [Import Settlement Batches](CA_50_70_00.md)
-   [Settlement Batches](CA_30_70_00.md) \(CA307000\)
-   [Credit Card Processing for Sales](SO_50_70_00.md) \(SO507000\)
-   [Credit Card Payments With Multiple Applications](SO_40_10_00.md) \(SO401000\)

## Configuring Payment Methods Based on Cards {#section_yms_4jv_vxb .section}

For each type of credit card \(such as Visa or MasterCard\) that can be processed by the processing centers whose services your company is subscribed to, you use the [Payment Methods](CA_20_40_00.md) \(CA204000\) form to configure a payment method specific to the type of credit cards. Acumatica ERP provides built-in elements for configuring payment methods based on various types of credit cards.

For each payment method based on a specific credit card type, you can specify which elements are used and which are not. For the elements to be used, you can specify which should be used as the card identifier, which elements should be encrypted and masked on display, and how each of these elements should be masked.

For additional details, see [Payment Methods for Customers](CA__CON_PMs_for_Customers.md).

## Collecting Information on Customer Cards {#section_cns_4jv_vxb .section}

For each customer that will use credit cards to cover its payments automatically, users can enter information about the customer's cards on the [Customer Payment Methods](AR_30_30_10.md) \(AR303010\) form. One of the cards should be selected as the default customer payment method on the **Payment Settings** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form.

Acumatica ERP stores card numbers and other information encrypted in the database and masks this information when it is displayed on the forms. Sensitive data, such as the card's security code, is stored encrypted prior to the first successful authorization. After that, this data is deleted from the database, and subsequent transactions require no verification of the security code with the processing center.

## Collecting Payments {#section_fns_4jv_vxb .section}

Automatic payment collection can be initiated from the [Capture Payments](AR_51_15_00.md) \(AR511500\) form, which allows the users to perform mass-processing of customer payments for invoices that have the specific credit terms assigned. For more details on processing payments, see [Card Payments](AR__con_Card_Payments.md).

**Tip:**

The process of collecting payments by using credit cards may be assigned to an automation schedule to be performed at night or on weekends.

The automation schedule should be configured to process payments that do not have failed transactions on the **Credit Card Processing Info** tab of the [Payments and Applications](AR_30_20_00.md)\(AR302000\) form. Otherwise, credit card payments with expired customer payment methods or incorrectly imported transactions will be processed by the automation schedule every time it is run and as a result, users will not be able to open the payments on the [Payments and Applications](AR_30_20_00.md) form. For more information on automation schedules, see [Automated Processing: General Information](SA_Scheduling_Automated_Processing_GeneralInfo.md).

You can configure the system to process the credit card payments as deposits—each credit card transaction processed by a processing center is recorded to a clearing account associated with the bank account to which the processing center periodically transfers the collected payments as lump sums. Configuring credit card payments as deposits will make it easier to perform reconciliation of the bank account transactions with the bank statement. For details, see [Deposits for Credit Card Payments](CA__CON_CC_Deposits.md).

## Configuring a Synchronization Schedule for Validating Card Payments { .section}

On the [Validate Card Payments](AR_51_30_00.md) \(AR513000\) form, you can use a predefined synchronization schedule for validating card payments, which runs once a day. You can review the *Validate Card Payments* schedule on the [Automation Schedules](SM_20_50_20.md) \(SM205020\) form.

The *Validate Card Payments* schedule has the following default settings on the [Automation Schedules](SM_20_50_20.md) form:

-   **Active**: Cleared
-   **Executions to Keep in History**: *5*
-   **Next Execution**: *&lt;Date&gt; 12:00 AM*

    **Tip:** This setting is read-only but can be overridden on the **Schedule** tab.


This schedule can be configured by a user to which the *Administrator*, *AR Admin*, or *AR Clerk* role is assigned on the [Users](SM_20_10_10.md) \(SM201010\).

On the [Validate Card Payments](AR_51_30_00.md) form, to set up the predefined automation schedule, a system administrator should perform the following general instructions:

1.  On the form toolbar, click **Schedules**.
2.  In the **Automation Schedules** dialog box, which is opened, select *Validate Card Payments* in the **Screen ID** box.
3.  Select the **Active** check box.
4.  Specify the required settings for the schedule, and save the new schedule.

The *Validate Card Payments* schedule will run for all active processing centers to which it has been added. For details, see [To Schedule Validation of Card Payments](AR__HOW_To_Schedule_Validation_of_Card_Payments.md).

## Maintaining Valid Card Information {#section_lns_4jv_vxb .section}

If your company has automatic payment collection configured, credit card expiration dates must be monitored closely. Use the following forms to manage expired cards and those that will expire soon:

-   On the [Notify About Expiring Cards](AR_51_20_00.md) \(AR512000\) form, users can view the cards that will expire soon and send notifications to customers about approaching expiration dates on their cards.
-   By using the [Deactivate Expired Cards](AR_51_25_00.md) \(AR512500\) form, users can deactivate selected cards that have expired or all expired cards.

**Parent topic:**[Processing Credit Card Payments](../UserGuide/AR__MNG_ProcessingCCPayments.md)

