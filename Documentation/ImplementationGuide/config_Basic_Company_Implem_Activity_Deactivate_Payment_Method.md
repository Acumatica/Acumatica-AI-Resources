# Cash Management: To Deactivate a Payment Method {#_4ec07880-1c62-4437-886c-7c331018f23a .task}

The following activity will walk you through the process of deactivating a payment method in the system.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the SweetLife company decided to stop using one of the payment methods for accounts payable—FEDWIRE. Acting as an administrator, you have to deactivate this payment method in the system.

## Process Overview { .section}

You deactivate a payment method on the [Payment Methods](../UserGuide/CA_20_40_00.md) \(CA204000\) form, to make it unavailable for selection for new documents on entry forms.

## Step: Deactivating a Payment Method { .section}

To deactivate a payment method, do the following:

1.  Open the [Payment Methods](../UserGuide/CA_20_40_00.md) \(CA204000\) form.
2.  In the **Payment Method ID** box, select *FEDWIRE*.
3.  In the Summary area, clear the **Active** check box.
4.  On the form toolbar, click **Save** to save your changes.

In a production environment, after you have deactivated a payment method, you can process documents that use this payment method on the [Release Payments](../UserGuide/AP_50_52_00.md) \(AP505300\) form.

**Parent topic:**[Cash Management](../ImplementationGuide/config_CA_Mapref.md)

