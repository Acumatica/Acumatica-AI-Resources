# Exception Certificate Management: Implementation Activity {#_ee45168e-268c-4a32-9de0-25dd0343f6b4 .task}

In the following implementation activity, you will learn how to add customers existing in Acumatica ERP to the Avalara exemption certificate management \(ECM\) account, and how to request an exemption certificate from the customer.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the SweetLife company, which sells juicers, has been expanding rapidly and has acquired a significant number of customers across various states in the US. As their customer base grows, SweetLife needs to ensure compliance with sales tax regulations in each jurisdiction where they conduct business.

Additionally, they have customers who qualify for tax exemptions. To streamline their sales tax compliance processes and efficiently manage exemption customers, SweetLife has decided to integrate their sales and tax systems with Avalara, and to implement its exemption certificate management functionality to accurately track and validate exemption certificates provided by eligible customers.

Acting as the a system administrator, you need to configure the exemption certificate management functionality in Acumatica ERP.

## Process Overview { .section}

In this activity, you will do the following:

1.  Add the Acumatica ERP tax-exempt customers to the ECM provider account.
2.  Request an exemption certificate from a customer.

## System Preparation { .section}

Before you start creating customers and requesting exempt certificates, you need to launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as the system administrator, Kimberly Gibbs, with the *gibbs* username and the *123* password.

As a prerequisite activity, be sure you have configured the Avalara account and set up integration with Avalara AvaTax, as described in the [To Set Up Integration With AvaTax](TX__how_To_Configure_Integration_with_AvaTax.md).

As a prerequisite activity, be sure the needed feature has been enabled in Acumatica ERP, and settings have been specified, as described in [Exception Certificate Management: Configuration Workflow](config_Exception_Certificate_Management_Prereq.md).

## Step 1: Adding Multiple Customers to the ECM Provider Account { .section}

To create multiple Acumatica ERP customers in the Avalara ECM account, do the following:

1.  Open the [Manage Exempt Customers](TX_50_50_00.md) \(TX505000\) form.
2.  In the **Action** box of the Selection area, select *Create Customer in ECM Provider*. When you select this option, the table displays all the active customers defined in Acumatica ERP.

    Notice that in the **Company Code** box of the selection area, *SWEETSTORE* is specified, and this box is unavailable for editing. The box was filled in because only one company created in the ECM provider account has been linked with the branches of the SweetLife company in Acumatica ERP on the **Company Code Mapping** tab of the [Tax Providers](TX_10_20_00.md) \(TX102000\) form. Because only this company code is available, the system has inserted this code in the box by default. The processed customers will be created in the company in the ECM account that corresponds to the selected company code.

3.  In the header row of the table, select the unlabeled check box, which selects all records on the current page.
4.  On the form toolbar, click **Process**.

Once the process is completed, the processed customers are created in the ECM provider, and the success message is displayed next to each customer on the **Processed** tab of the **Processing** dialog box. For these customers, the system populates the **Company Code** column in the table on the current form with the company code. If you click the **Go to Next Page** arrow button located at the bottom of the table, you can see that the **Company Code** column is empty for customers listed on the next page because you have not processed these customers.

## Step 2: Creating a Single Customer in the ECM Provider { .section}

To create a particular customer in the ECM provider, do the following:

1.  On the [Customers](AR_30_30_00.md) \(AR303000\) form, open the *HHEAVEN - Harmony Heaven* customer.
2.  On the More menu \(under **Exemption Certificates**\), click **Create Customer in ECM Provider**.

    Because only one company created in the ECM provider account has been linked to the branches of the SweetLife company in Acumatica ERP, the system adds the customer to the *SWEETSTORE* company in the ECM account by default.

3.  Once the process is completed, the notification message is displayed in the upper right corner of the form.

For the purposes of this activity, the customer has already been added to Avalara, so the warning message notifies you about it. If the customer had not been added to Avalara before, you would have received a message about the successful creation of the customer in the ECM account.

## Step 3: Requesting an Exemption Certificate for a Customer { .section}

To have a customer's valid exemption certificate, you need to send an email to the customer with a request to upload the certificate to Avalara. To request an exemption certificate from a customer, do the following

1.  On the [Customers](AR_30_30_00.md) \(AR303000\) form, open the *HHEAVEN - Harmony Heaven* customer.
2.  On the More menu \(under **Exemption Certificates**\), click **Request Certificate**. The **Request Certificate** command becomes available once you have created the customer in the ECM provider account in Instruction 2 of this activity.

    The **Request Certificate** dialog box opens.

3.  In the dialog box, do the following:
    -   In the **Certificate Request Template** box, select *Default Cover Letter*. This is the cover letter template that has been created in the Avalara ECM Provider and that the system will use to send the request.
    -   In the **State** box, select *NY*, which is the state for which the exemption certificate will be issued.
    -   In the **Company Code** box, notice that the system has inserted *SWEETSTORE* \(the only company linked to the branches of the SweetLife company in Acumatica ERP\).
    -   In the **Email** box, notice that the system has inserted the customer's default email address to be used for requesting a certificate.
    -   In the **Country** box, notice that the system has inserted the country of the customer. By default, *US* is selected.
4.  Click **Request**. The system sends a request to the provided email address and closes the dialog box.

The success message is displayed in the upper right corner of the [Customers](AR_30_30_00.md) form. This means that an email request has been successfully sent to the customer containing a request to upload the valid exemption certificate; the email included the link the user can click to upload the certificate. Once the customer uploads the certificate to Avalara, it will be available in the list of customer certificates in the ECM account. From there, it can be retrieved and viewed in Acumatica ERP.

## Retrieving a Certificate to Acumatica ERP { .section}

In this step, you will retrieve an exemption certificate in Acumatica ERP.

**Tip:** For testing purposes, assume that *HHEAVEN* customer has received a certificate request and has already uploaded a valid certificate to Avalara by using the link in the email.

Do the following:

1.  On the [Customers](AR_30_30_00.md) \(AR303000\) form, open the *HHEAVEN* customer.
2.  On the More menu \(under **Exemption Certificates**\), click **Retrieve Certificates**. The **Exemption Certificates** dialog box opens, in which the certificate is listed.
3.  In the **Certificate Status** column, notice that the status of the certificate is *Valid*.

    The status is valid because the certificate has a future expiration date and its `valid` flag is set to `true` in the ECM provider response.

4.  In the **Certificate ID** column, click the reference number of the certificate. The system opens it in a separate tab. You can review, save, or print the certificate.

As a result, when you create an invoice or sales order containing taxable items for this customer in Acumatica ERP, the taxes are not calculated, and the related tax total boxes contain *0*.

**Parent topic:**[Configuring Exception Certificate Management with Avalara](../UserGuide/config_Exception_Certificate_Management_Mapref.md)

