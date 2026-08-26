# Override of a Method: Overriding the Persist Method {#_070c0055-816f-421a-8c79-a406e292672a .concept}

In this topic, you can learn how to customize the `Persist` method to control data-saving behavior.

## Applicable Scenarios { .section}

You generally override the PXGraph.Persist method when you need to implement one of the following scenarios:

-   Verifying the changes made to records of an entity type before persisting them to the database, and preventing the changes from being persisted if the verification fails.
-   Verifying the changes made to records of an entity type that are to be persisted to the database, while adding some changes that should also be persisted in the same transaction in which the persist operation is executed.
-   Performing a validation or other operation right before a transaction is closed.
-   Performing an operation right after a change is successfully persisted to the database. These operations usually involve tasks that are not part of the transaction in which the persist operation is executed—such as resetting a custom cache, querying the database, or displaying a message to the user.

## Approaches to Override the Persist Method { .section}

When you are dealing with these scenarios, we recommend that you not override the PXGraph.Persist method directly because this approach can be error prone. Instead, we recommend that you use the appropriate targeted override of this method. To give you more granular control, the PXGraph.Persist method has the following targeted overrides:

-   bool PXGraph.PrePersist\(\): Makes it possible for you to define the logic that should be executed before the definition of the persisting logic. This method is triggered before a transaction is opened. The base implementation of this method raises the PXGraph.BeforePersist event.
-   void PXGraph.PerformPersist\(IPersistPerformer persister\): Provides the ability for you to change the order and composition of the caches that should be persisted within the definition of the persisting logic. This method is triggered within an open transaction.
-   void PXGraph.PreCommit\(\): Gives you the ability to inject some logic just before a transaction is closed. This method is triggered within an open transaction. The base implementation of this method raises the PXGraph.OnBeforeCommit event.
-   void PXGraph.PostPersist\(\): Delivers the capability for you to define the logic that should be executed after the definition of the persisting logic. This method is triggered after a transaction has been closed. The base implementation of this method raises the PXGraph.AfterPersist event.

**Attention:** When you override any of the above methods, you must call the base version of the method. The only exception to this rule is when you need to suppress the base logic for some reason.

By using the methods described in the preceding list, you can inject your logic into the existing logic of the persist process without affecting the existing logic. This approach makes your code less error prone.

## Example: Overriding in a Graph Extension { .section}

This example shows how you can inject your custom logic in a graph via a graph extension by using the targeted overrides of the PXGraph.Persist method.

Review the source code of a graph below.

```language-csharp
protected override bool PrePersist()
{
 if (Document.Current != null && Document.Current.Hold == false)
   {
       foreach (POReceiptLine poReceiptLine in transactions.Select())
         if (poReceiptLine.ReceiptQty == 0m && Document.Current.ReceiptType 
              == POReceiptType.TransferReceipt)
                 transactions.Delete(poReceiptLine);

       ValidateDuplicateSerialsOnDropship();
   }

    /* You can use a graph extension to insert custom logic
       by overriding the PXGraph.PrePersist method */
   return base.PrePersist();
}

protected override void PostPersist()
{
 base.PostPersist();
 this.poLinesSelection.Cache.Clear();
 this.openOrders.Cache.Clear();
}
```

The following code shows an example of how the bool PXGraph.PrePersist\(\) method can be overridden in a graph extension to define the custom logic for the preceding code example. Notice that you need to use the [PXOverride](https://help.acumatica.com/(W(6))/Help?ScreenId=ShowWiki&pageid=cdc4f1df-a4cc-5de5-a379-5078ad449965) attribute and follow other guidelines, which are described in [Override of a Method: General Information](CodeCustomization_OverrideMethod_GeneralInfo.md).

```language-csharp
/// Overrides <seealso cref="PXGraph.PrePersist"/>
[PXOverride]
public bool PrePersist(Func<bool> base_PrePersist)
{
 if (!base_PrePersist())
      return false;
 
 var linesCache = Base.transactions.Cache;
 var modifiedLines = linesCache.Updated.Concat_(linesCache.Inserted);
 
 foreach (POReceiptLine line in modifiedLines)
      SyncUnassigned(line);

 return true;
}
```

## Examples: Using the PrePersist Method in a Graph { .section}

The following code example shows how you can use the bool PXGraph.PrePersist\(\) method in a graph when you need to perform both a check and an assignment operation before the persist operation.

```language-csharp
protected override bool PrePersist()
{
 if (setup.Current != null && string.IsNullOrEmpty(setup.Current.DfltLotSerClassID) 
      && !IsFeatureInstalled<FeaturesSet.lotSerialTracking>())
   {
       setup.Current.DfltLotSerClassID = INLotSerClass.GetDefaultLotSerClass(this);
   }
 return base.PrePersist();
}
```

The following code example shows how you may use the bool PXGraph.PrePersist\(\) method in a graph when you need to perform a validation before the persist operation.

```language-csharp
protected override bool PrePersist()
{
 if (CMSetup.Select().Count == 0)
      throw new PXException(CS.Messages
             .RequiredConfigurationDataIsNotEnteredOnCurrencyManagementPreferencesForm);

 return base.PrePersist();
}
```

## Example: Using the PrePersist, PerformPersist, and PostPersist Methods in a Graph Extension { .section}

Suppose that you need to use a graph extension to find some records of some specific entities and persist them to the database in the scope of another graph. This graph extension should:

1.  Search for those records and store them into a field by overriding the bool PXGraph.PrePersist\(\) method.
2.  At the end of the void PXGraph.PerformPersist\(IPersistPerformer persister\) method, pass those stored records to a special method that creates a new graph in which those records should be saved; the graph extension then saves them. Since you are calling this special method in the scope of the void PXGraph.PerformPersist\(IPersistPerformer persister\) method, it is automatically available in the scope of the same transaction that is used in the initial graph \(the one that overrides the persist methods\). Hence, you don't need to open another transaction.
3.  Clear the field with the stored records by overriding the void PXGraph.PostPersist\(\) method.

The following code example shows how you can implement the scenario described above.

```language-csharp
/// Overrides <seealso cref="PXGraph.PrePersist"/>
[PXOverride]
public bool PrePersist(Func<bool> base_PrePersist)
{
 _affectedOrders = GetAffectedEntities().ToArray();
 return base_PrePersist();
}

/// Overrides <seealso cref="PXGraph.PerformPersist(IPersistPerformer)"/>
[PXOverride]
public void PerformPersist(PXGraph.IPersistPerformer persister,
 Action<PXGraph.IPersistPerformer> base_PerformPersist)
{
 base_PerformPersist(persister);
 
 if (_affectedOrders != null)
 {
     ProcessAffectedEntities(_affectedOrders);
     _affectedOrders = null;
 }
}

/// Overrides <seealso cref="PXGraph.PostPersist"/>
[PXOverride]
public void PostPersist(Action base_PostPersist)
{
  _affectedOrders = null;
}
```

## Example: Using the PerformPersist Method in a Graph { .section}

The following example shows how the logic of the void PXGraph.PerformPersist\(IPersistPerformer persister\) method is overridden in a graph. Note that the void PXGraph.PerformPersist\(IPersistPerformer persister\) base method is not called anywhere in this code because your goal is to take full control of the persisting process.

```language-csharp
protected override void PerformPersist(IPersistPerformer persister)
{
   persister.Insert(APPayment_DocType_RefNbr.Cache);
   persister.Update(APPayment_DocType_RefNbr.Cache);
   persister.Update(APDocument.Cache);
   persister.Update(APTran_TranType_RefNbr.Cache);
   persister.Update(APPaymentChargeTran_DocType_RefNbr.Cache);
   persister.Insert(APTaxTran_TranType_RefNbr.Cache);
   persister.Update(APTaxTran_TranType_RefNbr.Cache);
   persister.Insert(SVATConversionHistory.Cache);
   persister.Update(SVATConversionHistory.Cache);
   persister.Insert(APAdjust_AdjgDocType_RefNbr_VendorID.Cache);
   persister.Update(APAdjust_AdjgDocType_RefNbr_VendorID.Cache);
   persister.Delete(APAdjust_AdjgDocType_RefNbr_VendorID.Cache);
   persister.Insert<APHist>();
   persister.Insert<CuryAPHist>();
   persister.Insert<APTranPost>();
   persister.Insert(AP1099Year_Select.Cache);
   persister.Insert(AP1099History_Select.Cache);
   persister.Update(CurrencyInfo_CuryInfoID.Cache);
   persister.Insert<CADailySummary>();
   persister.Insert<PMCommitment>();
   persister.Update<PMCommitment>();
   persister.Delete<PMCommitment>();
   persister.Insert<PMHistoryAccum>();
   persister.Insert<PMBudgetAccum>();
   persister.Insert<PMForecastHistoryAccum>();
   persister.Update<APTax>();
}
```

## Example: Using the void PostPersist Method in a Graph { .section}

The following code example shows how you can use the void PXGraph.PostPersist\(\) method in a graph when you need to perform some operations after the persist operation.

```language-csharp
protected override void PostPersist()
{
 base.PostPersist();
 this.Quotes.Cache.Clear();
 this.Quotes.View.Clear();
 this.Quotes.Cache.ClearQueryCache();
 this.Quotes.View.RequestRefresh();
}
```

**Parent topic:**[Overriding a Graph Method](../StudioDeveloperGuide/CodeCustomization_OverrideMethod_Mapref.md)

