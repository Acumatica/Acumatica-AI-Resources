# Sales with Payments and Prepayments: Sales Orders with a Required Prepayment Amount {#_d4efa93c-1c71-4084-9958-a958ac0d3e11 .concept}

If a sales order has credit terms with the **Prepayment Required** check box selected and a defined prepayment percent in the **Prepayment Percent** box on the [Credit Terms](CS_20_65_00.md) \(CS206500\) form, its workflow on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form consists of the following general steps:

1.  When you create a sales order and remove it from hold, the system checks whether any prepayments or payments have been applied to the sales order.

    **Note:** If the approval is configured for the type of the sales order, the order must be approved before the system performs this check.

2.  If the sales order has applied prepayments or payments, the system checks the following conditions and performs the noted steps:
    1.  If at least one credit card payment requiring validation has been applied to the sales order, the system assigns the *Pending Processing* status to the sales order until the prepayment or payment is validated. When all of these payments have been validated, the system performs the next step.
    2.  If the sum of all applied prepayments or payments is not sufficient to satisfy the required prepayment amount, the system assigns the *Awaiting Payment* status to the sales order which causes the **Create Shipment** command on the More menu of the [Sales Orders](SO_30_10_00.md) form to be unavailable. If the amount of the applied prepayments or payments is greater than or equal to the required prepayment amount, the system performs the next step.

        Prepayments and payments with the cash, check, or credit card payment method can satisfy the prepayment amount requirement. Pre-authorized payments with the credit card payment method can also satisfy the prepayment requirement.

    3.  If any option except *Disabled* is selected in the **Credit Verification** box on the **Financial** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form for the customer specified in the sales order and the **Hold Documents on Failed Credit Check** check box is selected on the [Order Types](SO_20_10_00.md) \(SO201000\) form for the order's type, the customer's credit limit is verified.

        If the verification fails, the system assigns the *Credit Hold* status to the sales order.


**Parent topic:**[Processing Sales with Payments and Prepayments](../UserGuide/OrderMgmt_Sales_Orders_with_Payments_and_Prepayments_Mapref.md)

