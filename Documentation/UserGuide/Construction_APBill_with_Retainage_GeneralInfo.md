# AP Bills with Retainage: General Information {#_407cc657-e66f-4a5c-97d1-155c5e41668d .concept}

In some situations, your company may opt to retain a part of the amount of an AP bill until the vendor’s work has been completed. In this case, to process the total amount of the bill, at least two bills are created in Acumatica ERP: the bill for which part of the amount is retained, and the retainage bill, which contains the retained amount to be paid.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create and process a bill with retainage held at the line level
-   Release the retainage from the bill
-   Enter a payment for a retainage bill
-   Pay the outstanding balance of an original bill for which retainage was held

## Applicable Scenarios { .section}

You create a bill with retainage when it is necessary to withhold a portion of the contract amount until the work has been completed to assure that the vendor will satisfy its obligations and complete a particular project or project task.

**Important:** Retainage is not supported for AP documents created in a foreign currency.

## The Processing Workflow of a Bill with Retainage { .section}

Typically, an AP bill with retainage goes through the following general steps during its life cycle:

1.  Entry of the bill with retainage and preparation of the bill for release: A data entry person creates the bill with retainage on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. The balance of this bill equals the sum of the extended costs minus the line discounts of the lines of the bill, with this subtotal reduced by the retainage amount. The total amount of the bill \(which is shown on the **Retainage** tab\) is the detail total amount plus the retained amount.
2.  Release of the bill with retainage: An accountant releases the prepared bill with retainage. This released bill is assigned the *Open* status, and it affects the balances of the selected vendor and the GL accounts.
3.  Payment of the bill with retainage: The accountant creates a payment on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form to pay the bill with retainage and then processes and releases the payment. The system reduces the balance of the bill with retainage by the amount paid. When the payment is released, the balance of the vendor is reduced by the paid amount, and the GL accounts are updated. The bill with retainage still has the *Open* status.
4.  Release of retainage: To reflect that the work has been completed, the accountant releases the retainage for the original bill on the [Release AP Documents](AP_50_10_00.md) \(AP501000\) form. The user can release a part of the retained amount or the full retained amount. When this retainage is released, a retainage bill with the *Open* status is created in the system.

    When the retainage bill is released, the system updates the balances of the vendor, the related GL accounts, and the unreleased retainage amount of the bill with retainage.

5.  Payment of a retainage bill: The accountant creates a payment in the system to pay the retainage bill. This employee then processes and releases the payment. The system reduces the balance of the retainage bill by the amount paid. The balance of the vendor is reduced by the paid amount, and the GL accounts are updated.

    If the full retained amount has been released and paid, the bill with retainage is assigned the *Closed* status, and its unreleased and unpaid retainage amounts are *0*.

    If a part of the retained amount has been released and paid, the bill with retainage keeps the *Open* status. The system reduces the bill’s unreleased and unpaid retainage amounts by the retainage released and the retainage paid, respectively.


**Important:** For documents with retainage, the invoice rounding functionality, which is available when the *Invoice Rounding* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, is not supported; that is, amounts in documents with retainage cannot be rounded.

Open AP balances and unreleased retainage \(retainage held\) balances can be tracked at the AP bill level or at the line level, depending on whether the **Pay by Line** check box is cleared or selected, respectively, on the [Bills and Adjustments](AP_30_10_00.md) form. By default, when you create a new AP bill, the system copies the level of the vendor to the bill—that is, it copies the state of the **Pay by Line** check box on the **Payment** tab of the [Vendors](AP_30_30_00.md#) \(AP303000\) form. If balances are tracked at the line level, payments are also applied to these AP bills at the line level.

For more information, see [Processing AP Documents with Retainage](AP__MNG_Managing_Bills_with_Retainage.md).

**Parent topic:**[Processing AP Bills with Retainage](../UserGuide/Construction_APBill_with_Retainage_Mapref.md)

