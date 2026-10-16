# Integration with AvidXchange

In many organizations, AP payments such as checks, ACH transfers, or virtual cards are processed through dedicated payment platforms rather than directly from the ERP system. You can integrate Acumatica ERP with AvidXchange to pay your vendors. With this integration, you can do the following:

-   Enroll your organization with AvidXchange from within Acumatica ERP.
-   Onboard the bank accounts you want to pay from and map each of them to a cash account.
-   Pay any US vendor in USD without maintaining the vendor's bank details or payment preferences.
-   Track the progress of each payment from the moment AvidXchange receives it until the vendor collects the payment.
-   Download a proof-of-payment document if you need to answer a vendor's questions about a payment.
-   Void a payment or request that AvidXchange stop a payment that it has already started to process.
-   Update the status of multiple payments at once, manually or on a schedule.

## Limitations

-   **Currency**: Only USD payments are supported by AvidXchange. Non-USD documents cannot be processed.
-   **Country**: Only companies and cash accounts based in the United States are supported.
-   **Document Types**: Only documents of the *Payment* and *Prepayment* types are supported for external payment processing.
-   **Cash Purchases**: Documents created on the [Cash Purchases](AP_30_40_00.md) \(AP304000\) form are excluded from AvidXchange processing.
-   **Migration Mode**: You cannot create payments for processing in AvidXchange while the system is in migration mode.
-   **Single Active Processor**: You can have only one active AvidXchange payment processor at a time.
-   **Remittance Address**: The payment's remittance address must have all of the following values specified: **Address Line 1**, **City**, **State**, and **Postal Code**.
-   **Funding Account Deletion**: Funding accounts cannot be deleted after onboarding has started.
-   **Processor Deletion**: The payment processor cannot be deleted once onboarding has started for the organization.
-   **Document Release:** A payment with the *Pending Processing* status is excluded from processing on the [Release AP Documents](AP_50_10_00.md) \(AP501000\) form. The system releases this payment after AvidXchange reports that it has started to process it.
-   **Hold:** After a payment has been processed by the external payment processor, the **Hold** command on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form is unavailable, and the payment cannot be reassigned the *On Hold* status.

-   **[Setup of Integration with AvidXchange](../UserGuide/AP__CON_AvidXchange_Config.md)**  

-   **[To Set Up and Enroll Your Organization in AvidXchange](../UserGuide/AP__HOW_AvidXchange_Setup.md)**  

-   **[Optional: To Add a Funding Account](../UserGuide/AP__HOW_Avid_Add_Funding_Account.md)**  

-   **[To Switch Vendors to the AvidXchange Payment Method](../UserGuide/AP__HOW_Avid_Mass-Update_PMs.md)**  


**Parent topic:**[Configuring Payment Processing](../UserGuide/CA__MNG_Payment_Processing.md)

