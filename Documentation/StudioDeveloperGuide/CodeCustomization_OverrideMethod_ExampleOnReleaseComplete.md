# Override of a Method: Customizing the Release Process for CA Documents {#_0288781f-11a6-412a-974e-e4c942ed2472 .concept}

In this topic, you can learn how to customize the release process for CA documents.

## Customizing the Release Process for CA Documents { .section}

You can customize the release process for CA documents by overriding the Insert\*\*\*Transaction methods. In the override method, you can modify the process of inserting a line to the general ledger.

In this way, you can customize the actions that include the ReleaseDocProc&lt;TCADocument&gt; method call. For example, you can customize the actions executed with the **Release** button on the following forms:

-   [Release Cash Transactions](../UserGuide/CA_50_20_00.md) \(CA502000\)
-   [Cash Transactions](../UserGuide/CA_30_40_00.md) \(CA304000\)
-   [Funds Transfers](../UserGuide/CA_30_10_00.md) \(CA301000\)
-   [Process Bank Transactions](../UserGuide/CA_30_60_00.md) \(CA306000\)
-   [Journal Vouchers](../UserGuide/GL_30_40_00.md) \(GL304000\)
-   [Bank Deposits](../UserGuide/CA_30_50_00.md) \(CA305000\)

## Overriding the Insert\*\*\*Transaction methods { .section}

You can override the following methods:

-   ```language-csharp
public virtual GLTran **InsertDocumentTransaction**(
    JournalEntry, GLTran, GLTranInsertionContext)
```

    The method inserts GL transactions of the document.

-   ```language-csharp
public virtual GLTran **InsertSplitTransaction**(
    JournalEntry, GLTran, GLTranInsertionContext)
```

    The method inserts GL transactions of the document details.

-   ```language-csharp
public virtual GLTran **InsertRoundingTransaction**(
    JournalEntry, GLTran, GLTranInsertionContext)
```

    The method processes the rounding of the document lines sum and document total.

-   ```language-csharp
public virtual GLTran **InsertDepositChargeTransaction**(
    JournalEntry, GLTran, GLTranInsertionContext)
```

    The method inserts GL transactions for deposit charges. The method is available only for the [Bank Deposits](../UserGuide/CA_30_50_00.md) \(CA305000\) form.


The `GLTranInsertionContext` parameter of the methods contains the context of the release process—that is, a field or multiple fields of the GLTranInsertionContext class instance have values assigned by the system. The context depends on the document being released. For example, for the InsertDocumentTransaction method, the CATranRecord field contains the context of the release process. See the class members below.

```language-csharp
public class GLTranInsertionContext
{
	public virtual CAAdj CAAdjRecord { get; set; }
	public virtual CASplit CASplitRecord { get; set; }
	public virtual CATaxTran CATaxTranRecord { get; set; }

	public virtual CATransfer CATransferRecord { get; set; }
	public virtual CAExpense CAExpenseRecord { get; set; }

	public virtual CADeposit CADepositRecord { get; set; }
	public virtual CADepositDetail CADepositDetailRecord { get; set; }
	public virtual CADepositCharge CADepositChargeRecord { get; set; }

	public virtual CATran CATranRecord { get; set; }
}
```

## Example { .section}

The following code shows the override of the InsertDocumentTransaction method. In this code, you at first check whether the current context \(a record of the CATranRecord type\) is not empty.

```language-csharp
public delegate GLTran InsertDocumentTransactionDelegate(
    JournalEntry je, 
    GLTran tran, 
    CAReleaseProcess.GLTranInsertionContext context);
/// Overrides <seealso cref="CAReleaseProcess.InsertDocumentTransaction(JournalEntry, GLTran, CAReleaseProcess.GLTranInsertionContext)"/>
[PXOverride]
public GLTran InsertDocumentTransaction(
    JournalEntry je, 
    GLTran tran, 
    CAReleaseProcess.GLTranInsertionContext context, 
    InsertDocumentTransactionDelegate base_InsertDocumentTransaction)
{
    if (context.CATranRecord!= null)
    {
        // Add your code
    }
    return base_InsertDocumentTransaction(je,tran,context);
} 
```

**Parent topic:**[Overriding a Graph Method](../StudioDeveloperGuide/CodeCustomization_OverrideMethod_Mapref.md)

