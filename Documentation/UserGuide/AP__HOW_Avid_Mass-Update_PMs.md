# To Switch Vendors to the AvidXchange Payment Method

After you enroll your organization in AvidXchange, you specify the AvidXchange payment method as the default payment method for the vendors you want to pay through AvidXchange. You can do this for multiple vendors at once on the [Update Vendor Payment Methods](AP_50_71_00.md) \(AP507100\) form.

## Before You Proceed

Make sure that the **Onboarding Status** box of the *AVIDPAY* payment processor contains *Enrolled*. For details, see [To Set Up and Enroll Your Organization in AvidXchange](AP__HOW_AvidXchange_Setup.md).

## To Update the Payment Method for Multiple Vendors

1.  Open the [Update Vendor Payment Methods](AP_50_71_00.md) \(AP507100\) form.
2.  In the **New Payment Method** box, select *AVIDPAY*.
3.  Optional: In the **Cash Account** box, select a cash account to update only the vendors that use this cash account by default.
4.  To also change the payment method in the vendors' open AP documents, select the **Update Open Documents** check box.
5.  In the table, select the unlabeled check boxes in the rows of the vendors you want to update.

    **Attention:** Select only the vendors that are located in the United States and that you pay in USD. AvidXchange cannot process payments to other vendors.

6.  On the form toolbar, click **Process**.

    The system updates the default payment method for the selected vendors. You can view the updated payment method in the **Payment Method** box on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form.

    **Tip:** Specifying the AvidXchange payment method for a vendor is not sufficient for paying this vendor through AvidXchange. The cash account used for the payment must also be mapped to a funding account that has the *Active* status. For details, see [Optional: To Add a Funding Account](AP__HOW_Avid_Add_Funding_Account.md).


**Parent topic:**[Integration with AvidXchange](../UserGuide/AP__CON_Integration_with_AvidXchange.md)

