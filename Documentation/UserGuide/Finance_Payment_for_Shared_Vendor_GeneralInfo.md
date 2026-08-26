# Payments for a Shared Vendor: General Information {#_c5367585-2262-434d-97e7-cbb607524add .concept}

To process payments for a vendor that is shared by different companies of the same tenant, the vendor and its payment methods should be configured properly. That is, no cash account has to be specified for the vendor on the [Vendors](AP_30_30_00.md) \(AP303000\) form and the necessary cash accounts have to be defined as the default accounts for the branches in the payment method of the vendor on the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.

After the necessary settings have been specified, you create bills in each company on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form as you usually create bills. The system will fill in the **Cash Account** box on the **Financial** tab of the form with the cash account that the originating branch uses for the selected payment method when making payments to vendors. For details on how to create bills, see [AP Bills: General Information](Finance_ProcessingAPBills_GeneralInfo.md).

You then prepare and process payments on the [Prepare Payments](AP_50_30_00.md) \(AP503000\) form.

## Learning Objectives {#section_dgn_njv_vxb .section}

In this chapter, you will learn how to do the following:

-   Create bills for different companies that share a vendor
-   Prepare payments from companies that use different cash accounts

## Applicable Scenarios {#section_fgn_njv_vxb .section}

You process payments for a shared vendor if multiple related companies in your organization purchase goods or services \(or both\) from the same vendor.

**Parent topic:**[Processing Payments for a Shared Vendor](../UserGuide/Finance_Payment_for_Shared_Vendor_Mapref.md)

