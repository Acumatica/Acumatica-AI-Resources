# Cash Management: Cash Accounts {#_2f56337a-d98d-4f85-8f3b-54cf3b931a55 .concept}

Cash accounts are used to keep records of the outgoing and incoming payments and cash. You can create cash accounts that represent bank accounts, amounts of cash on hand, or amounts of cash in transit. Each cash account is linked to a general ledger account.

## Configuration of Cash Accounts { .section}

In general, the configuration process of a cash account involves the following steps:

1.  You determine which existing GL account the cash transactions will be recorded to, or you create a GL account designated for this purpose.
2.  You create the cash account and link it to the GL account that you decided to use for this purpose.
3.  If any transactions may have been posted to the GL account before you created the cash account and linked it to the GL account, you run validation of the cash account balance.

This configuration is enough for you to start making funds transfers between your cash accounts. To be able to record transactions other than funds transfers \(cash entry transactions and incoming and outgoing payments\), you also need to perform the following steps:

1.  You configure the following entities:
    -   *Entry types*: You use entry types to classify cash transactions so that they can be processed correctly. For details on entry types, see [Cash Management: Entry Types](config_Basic_Company_Entry_Types.md).
    -   *Payment methods*: You use payment methods to define the way the money is transferred into and out of the organization. For details on payment methods, see [Cash Management: Payment Methods](config_Basic_Company_Payment_Methods.md).
2.  You associate entry types and payment methods with the appropriate cash accounts.

**Parent topic:**[Cash Management](../ImplementationGuide/config_CA_Mapref.md)

