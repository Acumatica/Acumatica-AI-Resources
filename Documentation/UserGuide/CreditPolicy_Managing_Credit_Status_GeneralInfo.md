# Credit Status: General Information {#_729a2be2-ecb1-48bf-85dd-2fa250c5450e .concept}

On a regular basis, you can view a list of the customers that have not paid for a long time and have ignored the dunning letters. You can put these customers on credit hold in the system. If a customer record is on credit hold, users cannot create invoices, debit memos, and overdue charges for the customer.

## Learning Objectives {#section_q32_hjv_vxb .section}

In this chapter, you will learn how to do the following:

-   Generate the final dunning letter for a customer
-   Put the customer on credit hold
-   Remove the credit hold for the customer

## Applicable Scenarios {#section_s32_hjv_vxb .section}

You put customers on credit hold to prevent users from creating documents for these customers. You remove credit hold for customers that have paid the debt to enable sales on credit for these customers.

## Managing Customers' Credit Status {#section_vv2_1y4_y4b .section}

You can set the *Credit Hold* or *Active* status for a customer in either of the following ways:

-   By processing the customer record on the [Manage Credit Holds](AR_52_30_00.md) \(AR523000\) form
-   By manually changing the customer status on the [Customers](AR_30_30_00.md) \(AR303000\) form

The credit verification that executes automatically every time you create or edit a customer document does not affect the customer status in any way. That is, based on the results of the credit verification, the system does not assign the *Credit Hold* status to the customer if it fails the credit check, and the system does not release the customer from credit hold by restoring the *Active* status once the customer pays the debt. For more details on automatic credit verification, see [Automatic Credit Verification: General Information](CreditPolicy_Automatic_Credit_Verification_GeneralInfo.md).

To put a customer on credit hold by using the [Manage Credit Holds](AR_52_30_00.md) form, you need to generate the final dunning letter first \(the letter with the highest dunning level\).

**Parent topic:**[Managing Customers' Credit Status](../UserGuide/CreditPolicy_Managing_Credit_Status_Mapref.md)

