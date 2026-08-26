# Using Dirty and Global Caches {#_2415b2c1-aae8-47ef-9516-d119f3b0df7e .concept}

When you are using the Find method to select a record, you can specify whether the Dirty and global caches should be used. With the flexibility to specify whether each of these caches should be used, you can extend the ways of using the retrieved record or retrieve a specific version of the record when it is updated by multiple graphs at a time.

## Allowing the Use of the Dirty Cache { .section}

You can specify whether the Dirty cache should be used, which gives you the ability to utilize the record returned by the Find method in any place, including the Current property of the cache; you can also change the returned record.

To specify that the records marked as Dirty in the cache \(that is, updated, inserted, or deleted in the cache\) should be included in the query result, you should specify the PKFindOptions.IncludeDirty flag when calling the Find method. An example is shown in the following code.

```
shipmentEntry.Document.Current = SOShipment.PK.Find(shipmentEntry, 
                                                    doc.ShipmentNbr, 
                                                    PKFindOptions.IncludeDirty);
```

## Ignoring the Global Cache { .section}

To retrieve a record from the cache and exclude the result from the global cache, you provide the PKFindOptions.SkipGlobalCache value for the options parameter. Ignoring the global cache may be needed, for example, when a record has been modified by multiple graphs at a time, and you need to retrieve a record that has been modified by one of them. Because the global cache is updated only once during a round trip to the server, the modified value of the record is not stored in the global cache.

**Note:** The use of the PKFindOptions.IncludeDirty option includes the PKFindOptions.SkipGLobalCache option.

**Parent topic:**[Defining Relationships Between DACs](../StudioDeveloperGuide/AD__mng_Defining_PK_and_FK.md)

