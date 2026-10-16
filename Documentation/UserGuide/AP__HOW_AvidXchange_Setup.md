# To Set Up and Enroll Your Organization in AvidXchange

You use the [External Payment Processor](AP_20_55_00.md) \(AP205500\) form to enroll your organization in AvidXchange. Your organization is ready to pay when the **Onboarding Status** is *Enrolled* and at least one of your funding accounts has the *Active* status. AvidXchange sets both after it finishes its compliance review.

Individual companies and users are not enrolled separately. Anyone who can create AP payments in Acumatica ERP can pay through AvidXchange if the cash account used for the payment is mapped to a funding account that has the *Active* status.

## Before You Proceed

Make sure that the license you use includes cloud services. For details on activating a license, see [Instance Deployment: To Enable Features and Activate the License](INST_Deploying_Instances_Enabling_Features_Activity.md).

## To Enable the AvidXchange Integration Feature

1.  Open the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
2.  On the form toolbar, click **Modify**.
3.  In the **Third-Party Integrations** group of features, select the **AvidXchange Integration** check box.
4.  On the form toolbar, click **Enable**.

When the feature is enabled, Acumatica ERP creates the setup records you need:

-   An active *AVIDPAY* external payment processor on the [External Payment Processor](AP_20_55_00.md) \(AP205500\) form.

    This payment processor has the **For Production Use** check box selected, which means that payment requests are sent to the live AvidXchange environment. If you want to use the sandbox environment instead, clear this check box before you start the onboarding. After the onboarding has started, the check box becomes unavailable.

-   An active *AVIDPAY* payment method on the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.

    The payment method immediately becomes available for selection in the **Payment Method** box on AP forms, but you cannot use it for payments until you complete the enrollment.


## To Onboard Your Organization

Enrollment happens once for the whole tenant, on the [External Payment Processor](AP_20_55_00.md) \(AP205500\) form. Before you start, on the **Funding Accounts** tab, add at least one bank account that you plan to pay from. For the account, specify the bank name, account holder, routing number, and account number.

1.  On the form toolbar, click **Onboard Organization**.
2.  In the **Onboard to AvidXchange** dialog box, specify the organization name in the **Organization Name** box, and specify the name and email address of the AvidXchange contact person in the **Contact First Name**, **Contact Last Name**, and **Contact Email Address** boxes.

    **Tip:** The organization name appears on checks and in the remittance emails your vendors receive, so use the name your vendors will recognize.


3.  Click **Onboard**.

    Acumatica ERP submits the application along with every funding account that has the *Pending Onboarding* status, and opens the AvidXchange portal in a new browser window.



## To Complete the Application in the AvidXchange Portal

The following steps describe the enrollment application as AvidXchange presents it at the time of this release. AvidXchange can change the application; if the pages you see differ, follow the instructions in the portal.

1.  Click **Get Started**.

    **Tip:** If you have to stop partway through, you can return to Acumatica ERP and click **Onboard Organization** again to continue the enrollment.

2.  Review the contact information that AvidXchange has received from Acumatica ERP, add any other contacts if necessary, and click **Next**.


3.  Click **Review** to verify your company data.


4.  Click **Review** next to **Control person**, enter the control person information, and click **Next**. Then click **Review** next to **Beneficial owner**.


5.  Select **Yes** or **No** to indicate whether any individual owns 25 percent or more of the company, and click **Confirm**.


6.  Click **Next**, and then click **Review and sign**.
7.  Complete the electronic signature information and click **Submit**.
8.  Click **Submit Enrollment**.


    When the enrollment is complete, AvidXchange displays a confirmation message.



## To Check the Enrollment Status

1.  Return to Acumatica ERP and open the [External Payment Processor](AP_20_55_00.md) \(AP205500\) form.
2.  Click **Refresh** on the form toolbar.

    The system retrieves the current onboarding status from AvidXchange, along with the statuses of your funding accounts. AvidXchange does not update these statuses automatically, so you click **Refresh** whenever you want to check the progress of the enrollment.


Your organization is ready to pay when the **Onboarding Status** box contains *Enrolled* and at least one funding account has the *Active* status.

**Attention:** If the **Onboarding Status** becomes *Expired*, *Rejected*, or *Canceled*, the application can no longer be continued. To try again, create a new external payment processor and start the enrollment from the beginning.

**Parent topic:**[Integration with AvidXchange](../UserGuide/AP__CON_Integration_with_AvidXchange.md)

