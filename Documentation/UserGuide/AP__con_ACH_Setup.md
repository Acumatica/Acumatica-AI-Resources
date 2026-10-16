# Setting Up ACH Payment Methods

Acumatica ERP provides the functionality for setting up ACH payments to your vendors. Acumatica ERP demo data has the *ACH* and *ACHBA* payment methods, which you can modify to meet your specifications. You can configure multiple payment methods for ACH payments by using the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.

Alternatively, you can use the U.S. ACH plug-in when you are configuring ACH payments. For details, see [Setup of ACH Payment Processing](CA__CON_Setup_ACH_Payments.md).

On the form, make sure that each payment method intended for ACH payments has a list of allowed cash accounts and that the following check boxes are selected for it:

-   **Use in AP** \(in the Summary area\)
-   **Require Remittance Information for Cash Account** \(in the Summary area\)
-   **Create Batch Payments** \(on the **Settings for Use in AP** tab\)

A payment method for ACH payments should have additional user-defined elements to collect the vendor information required for processing of ACH payments. For example, the *ACHBA* payment method provides the following elements:

-   **Beneficiary Account No.**: For the vendor's account number with the ACH system.
-   **Beneficiary Name**: For the name of the vendor as it is used in the ACH system.
-   **Bank Routing Number \(ABA\)**: For the routing number of the bank where the vendor has an account.
-   **Bank Name**: For the name of the bank where the vendor has an account.

These elements will appear on the [Vendors](AP_30_30_00.md) \(AP303000\) form, so that this information can be entered for each vendor.

The export of payments is based on built-in functionality, and is performed in accordance with one of the following:

-   A scenario specified for the ACH payment method if the *Export Scenario* option is selected in the **Export Method** box on the **Settings for Use in AP** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form
-   The U.S. ACH plug-in settings specified for the payment method if the *U.S. ACH Plug-In* option is selected in the **Export Method** box on the **Settings for Use in AP** tab of the [Payment Methods](CA_20_40_00.md) form

When you are using the predefined payment method *ACH* or *ACHBA*, the export is performed in accordance with the *Export AP Payments to ACH v2* or *Export AP Payments to ACH Balanced v2* export scenario, respectively. If necessary, these scenarios can be adjusted according to a bank's requirements.

The *Export AP Payments to ACH v2* scenario uses the `ACHExportProvider` provider.

**Important:** Do not delete the *ACHExportProvider* provider. If you have accidentally deleted it, you can restore it from the appropriate automation definition.

## Configuration of Cross-Border ACH Payments

The ACH094 file format, based on the ACH IAT standard, is accepted by the Royal Bank of Canada \(RBC\) for cross-border payments. In Acumatica ERP, the RBC ACH094 plug-in is available to configure payment methods to process cross-border payments from a USD account in Canada to a USD account in the United States.

For details, see [Setting Up U.S. and Canada ACH Cross-Border Payment Processing](CA__CON_Setup_Canadian_ACH.md).

## Setup of Quick Batch Processing

You can set up quick processing of batch payments if you need to quickly generate payments to vendors and export them as a payment batch for further bank processing. You set up quick batch processing as follows:

1.  On the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, you create a payment method with the **Create Batch Payment** option button selected on the **Settings for Use in AP** tab.
2.  On the **Allowed Cash Accounts** tab, you add a cash account to the payment method and select the **Quick Batch Generation** check box for this cash account.

When you create and release AP documents \(bills, specific lines of a bill, debit and credit adjustments, and prepayments\) for which the configured cash account is specified, you can generate AP payments for them on the [Prepare Payments](AP_50_30_00.md) \(AP503000\) form, include them in one batch, and export the batch on the [Batch Payments](AP_30_50_00.md) \(AP305000\) form. For details, see [To Quickly Prepare a Batch of Payments](AP__how_Quickly_Prepare_a_Batch_of_Payments.md).

## Collecting Vendor Data

Once the payment method is defined and configured to export batches of AP payments to an ACH file \(through either an export scenario or the ACH plug-in\), you assign the payment method intended for ACH payments to each vendor that will accept ACH payments. You also need to collect appropriate ACH-related information from each vendor and enter it into the user-defined elements on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form.

**Parent topic:**[ACH Payments](../UserGuide/AP__con_ACH_Payment_Support.md)

