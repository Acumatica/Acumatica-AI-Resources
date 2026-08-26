# Invoice Prepayments: Release of Prepayments {#_a909ed0c-bd72-43d2-b4f1-a6f9777fbdb3 .concept}

In Acumatica ERP, payment documents that can be released manually have the following document types on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form: *Payment*, *Prepayment*, *Prepayment Invoice*, *Refund*, and *Voided Payment*. The information in this topic applies to documents of the *Prepayment* type.

This topic describes the forms you may use to release a prepayment and the details of releasing prepayments and their application records.

## Releasing a Prepayment {#section_rtw_skl_2w .section}

In Acumatica ERP, if a prepayment has the *Balanced* status, you can release the prepayment by using one of the following forms:

-   [Payments and Applications](AR_30_20_00.md) \(AR302000\): You release a prepayment and any of its applications by clicking the **Release** button on the form toolbar.
-   [Release AR Documents](AR_50_10_00.md) \(AR501000\): You use this mass-processing form to release a particular prepayment or multiple prepayments.

For details on the generated GL transactions, see [Invoice Prepayments: Generated Transactions](Finance_ProcessingPrepaymentsAR_Transactions.md).

## Releasing a Prepayment Without Applications {#section_q2p_4jv_vxb .section}

When you record a prepayment, you may not specify any outstanding documents on the **Documents to Apply** tab of the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form. Thus, the available balance of the prepayment is equal to the prepayment amount. When you release such a prepayment, the system does the following:

-   Changes the prepayment status to *Open*
-   Decreases the customer's balance by the prepayment amount
-   Decreases the customer's prepayment balance by the prepayment amount
-   Generates a GL batch to update the involved asset accounts

In this case, the system generates a GL batch that contains only prepayment transactions and transactions for any bank charges. For details, see [Releasing a Prepayment](#section_rtw_skl_2w) and [Invoice Prepayments: Generated Transactions](Finance_ProcessingPrepaymentsAR_Transactions.md).

## Releasing a Partially Applied Prepayment {#section_t2p_4jv_vxb .section}

When you record a prepayment, you may specify some outstanding documents on the **Documents to Apply** tab of the [Payments and Applications](AR_30_20_00.md) form. The system creates application records for each document listed on the tab; the records include the applied amount. Thus, the available balance of the prepayment becomes less than the prepayment amount. When you release such a prepayment, the system does the following:

-   Changes the prepayment status to *Open*.
-   Releases any application records.
-   Decreases the balances of the paid documents. If the balance of a paid document becomes *0.00*, the system changes its status to *Closed*.
-   Decreases the customer's balance by the paid amount.
-   Increases the customer's prepayments balance by the available prepayment amount.
-   Generates a General Ledger batch to update the involved asset accounts. For details, see [Releasing a Prepayment](#section_rtw_skl_2w).

For details on the generated batch, see [Batch Generated for a Partially Applied Prepayment](Finance_ProcessingPrepaymentsAR_Transactions.md#_654af9d4-b7a2-4545-bb8e-70092d92ba26).

## Releasing a Fully Applied Prepayment {#section_w2p_4jv_vxb .section}

When you record a prepayment you may fully apply its available balance to any number of outstanding documents.

You distribute the entire available prepayment balance among the outstanding documents you add to the table on the **Documents to Apply** tab of the [Payments and Applications](AR_30_20_00.md) form. The system creates application records \(which include the applied amount\) for each document listed on the tab. Thus, the available prepayment balance becomes 0. When you release such a prepayment, the system does the following:

-   Changes the prepayment status to *Closed*.
-   Releases the application records.
-   Decreases the balances of the paid documents. If the balance of a paid document becomes *0.00*, the system changes its status to *Closed*.
-   Decreases the customer's balance by the paid amount.
-   Generates a GL batch to update the involved asset accounts.

For details on the generated batch, see [Batch Generated for a Fully Applied Prepayment](Finance_ProcessingPrepaymentsAR_Transactions.md#_49f4f6a1-23ec-4d73-b462-6f23e6c1ae2a).

## Releasing a Prepayment Associated with a Project {#section_afp_4jv_vxb .section}

When you release a prepayment document that has a project and project task specified on the **Financial** tab of the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, the system generates the batch of transactions that are associated with the non-project code, which is specified on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form, and no project task. That is, the generated transactions do not affect the project and project task.

**Parent topic:**[Processing Prepayments](../UserGuide/Finance_ARProcessing_Prepayments_Mapref.md)

