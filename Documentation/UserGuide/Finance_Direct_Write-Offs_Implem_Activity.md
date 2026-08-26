# Direct Write-Offs: Implementation Activity {#_1bcbbeef-b4cf-480d-ba44-6a18ec3c529b .task}

In the following implementation activity, you will learn how to implement the write-off functionality.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that SweetLife Fruits &amp; Jams decided to start using the write-off functionality for its customers. At first, users should be enabled to write off small balances in documents of the *ABAKERY* and *CITRUS* customers. The write-off threshold for *ABAKERY* is $5 and the write-off threshold for *CITRUS* is $10. The reason codes for credit write-offs and balance write-offs have already been defined in the system.

Acting as the chief accountant of SweetLife, you need to set up the write-off functionality.

## Process Overview { .section}

In this activity, you will first update the settings of one reason code on the [Reason Codes](CS_21_10_00.md) \(CS211000\) form. On the [Customers](AR_30_30_00.md) \(AR303000\) form, you will allow write-offs for the two customers. Finally, on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, you will specify the default reason code for one of the write-off types.

## System Preparation { .section}

Before you start setting up the write-off functionality, launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as the chief accountant with the *johnson* username and the *123* password.

## Step 1: Updating the Settings of the *BALWOFF* Reason Code { .section}

To update the settings of the reason code used for balance write-offs, do the following:

1.  On the [Reason Codes](CS_21_10_00.md) \(CS211000\) form, open the *BALWOFF* reason code.
2.  In the **Account** box, select the *61200 \(Small Balance Write-Offs\)* account.
3.  On the form toolbar, click **Save**.

## Step 2: Allowing Write-Offs for Particular Customers { .section}

To allow write-offs for the *ABAKERY* and *CITRUS* customers, do the following:

1.  On the [Customers](AR_30_30_00.md) \(AR303000\) form, open the *ABAKERY* customer.
2.  On the **Financial** tab \(**Financial Settings** section\), specify the following settings:
    -   **Enable Write-Offs**: Selected
    -   **Write-Off Limit**: `5`

        The write-off limit that you specify is the default limit that is used on the [Write Off Balances and Credits](AR_50_50_00.md) \(AR505000\) form; it is also the maximum limit that users may write off on the fly by using the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.

3.  On the form toolbar, click **Save**.
4.  In the **Customer ID** box, select the *CITRUS* customer.
5.  On the **Financial** tab \(**Financial Settings** section\), specify the following settings:
    -   **Enable Write-Offs**: Selected
    -   **Write-Off Limit**: `10`
6.  On the form toolbar, click **Save**.

## Step 3: Updating the Accounts Receivable Preferences { .section}

To update the accounts receivable preferences, do the following:

1.  Open the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form.
2.  On the **General** tab \(**Default Write-Off Reason Codes** section\), in the **Credit Write-Off Reason Code** box, select *CRWOFF*.

    The appropriate default reason code is inserted by the system when you select the credit or balance type of write-off process on the [Write Off Balances and Credits](AR_50_50_00.md) \(AR505000\) form or when you select a document to which the payment is applied on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form. However, you can override the default reason code.

3.  On the form toolbar, click **Save**.

**Parent topic:**[Processing Direct Write-Offs](../UserGuide/Finance_Direct_Write-Offs_Mapref.md)

