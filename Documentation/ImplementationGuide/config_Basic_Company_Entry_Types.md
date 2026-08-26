# Cash Management: Entry Types {#_db6258e1-3609-4dcd-b3be-7d8fcefe8505 .concept}

In Acumatica ERP, you use entry types to classify cash transactions for correct processing and to provide default values for transaction settings.

## Entry Types { .section}

An entry type functions like a transaction template, providing default values for a transaction and indicating how the transaction should be processed in the system. When you define an entry type on the [Entry Types](../UserGuide/CA_20_30_00.md) \(CA203000\) form, you specify the type of transactions and documents for which the entry type can be used in the **Module** column, selecting one of the following options:

-   *CA* \(default option\): The entry type that is used for creating cash transactions \(receipts and disbursements\) or recording bank service charges on cash management, accounts receivable, and accounts payable forms. These transactions affect the balances of GL accounts only; that is, they do not affect customer or vendor balances.
-   *AP*: The entry type that is used for creating cash management transactions for which the system creates prepayments \(for transactions that are disbursements\) or refunds \(for transactions that are receipts\) in accounts payable. These transactions affect vendor balances. The *AP* entry type is used only on cash management forms.
-   *AR*: The entry type that is used for creating cash management transactions for which the system creates payments \(if the transaction is a receipt\) or refunds \(if the transaction is a disbursement\) in accounts receivable. These transactions affect customer balances. The *AR* entry type is used only on cash management forms.

In general, the configuration of entry types consists of the following steps:

1.  You determine which types of cash transactions the company usually generates.
2.  You create the required entry types by using the [Entry Types](../UserGuide/CA_20_30_00.md) form.
3.  On the [Cash Accounts](../UserGuide/CA_20_20_00.md) \(CA202000\) form, you associate each entry type you have created with the cash account that is involved in the cash transactions of the entry type.

**Parent topic:**[Cash Management](../ImplementationGuide/config_CA_Mapref.md)

