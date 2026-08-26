# To Configure a Connection to BILL {#_d3c365e0-b313-46c8-9c9b-d0b71a0339d9 .task}

You use the [External Payment Processor](AP_20_55_00.md) \(AP205500\) form to configure a connection between the payment processor and BILL.

## Before You Proceed { .section}

Make sure that you have set up an external payment processor as described in [To Create a Payment Processor](AP__HOW_Create_Payment_Processor.md).

## To Configure the Connection to BILL { .section}

1.  Open the [External Payment Processor](AP_20_55_00.md) \(AP205500\) form.
2.  In the **Payment Processor ID** box, make sure that the created payment processor is selected.
3.  In the **Companies** table, click **Add Row** on the table toolbar and in the **Company ID** box, select the needed company. Repeat this step for each company that you need to add.
4.  Select the needed company in the table and, on the table toolbar, click **Onboard**.
5.  Follow the instructions displayed in the widgets to set up 2-step verification, specify your business type and industry, add a payment method, and select a financial institution.

    Each onboarded company will have the **Onboarded** check box selected in the table.

6.  On the table toolbar, click **Create Webhook**.

    **Attention:** For creation of webhooks, your Acumatica ERP instance must be hosted over HTTPS.

    The system creates a webhook on the [Webhooks](SM_30_40_00.md) \(SM304000\) form. The system uses the ID of the BILL organization mapped to the company and the ID of the BILL user mapped to the current user.

    If the webhook is created successfully, the webhook name is inserted in the **Webhook** column.

7.  On the **Users** tab, select a row with the needed user and click **Activate** on the tab toolbar.

    The system changes the user's status to *Active*, gets the user ID from BILL, and adds it in the **External User ID** column.

8.  On the tab toolbar, click **Onboard**.

    The system gets the ID of the BILL organization mapped to the company, creates a BILL user, and maps it to the current user.

9.  On the **Funding Accounts** tab, click **Manage Accounts**. The system opens the **Funding Accounts** widget.
10. Follow the instructions in the widget to create and verify the funding accounts under this organization ID, and to nominate and verify a user for each funding account.

    You can review the list of users on the **Funding Account Users** tab.

    Alternatively, you can verify yourself as a user of a funding account on the [User Profile](SM_20_30_10.md) \(SM203010\) as described later.

11. To map the funding account to a cash account, select the funding account and in the **Cash Account** column, select an Acumatica ERP cash account.

## Optional: To Verify Yourself as a User of a Funding Account { .section}

1.  Open the [User Profile](SM_20_30_10.md) \(SM203010\) form by clicking **My Profile** under your username in the Info area of Acumatica ERP.
2.  Go to the **Funding Accounts** tab.
3.  In the table, select a company with the *Nominated* status.
4.  On the form toolbar, click **Verify**. The system opens a widget where you set up 2-step verification.
5.  Follow the instructions in the widget to enter your phone number and other information.

    Once your user has been verified, the system changes its status to *Verified* in the **Verification Status** column of the table.


**Parent topic:**[Setup of Integration with BILL](../UserGuide/AP__CON_BillCom_Integration_Setup.md)

