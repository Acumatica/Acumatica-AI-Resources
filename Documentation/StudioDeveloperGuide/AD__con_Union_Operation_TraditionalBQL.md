# UNION and UNION ALL Operations in Traditional BQL {#_6d2f5af3-e9e5-4c63-b684-b0bd54de9922 .concept}

The Acumatica Framework natively supports the standard `UNION` and `UNION ALL` SQL database operations in traditional BQL. You can write BQL queries that support these operations by using the Union and UnionAll keywords in your traditional BQL statements.

## Performing a Union Operation in BQL { .section}

Suppose that you are working with two data access classes \(DACs\), called `ExternalStorage` and `InternalStorage`. These DACs are shown in the following code.

```language-csharp
public class ExternalStorage : PXBqlTable, IBqlTable
{
   #region StorageID
   [PXDBInt(IsKey = true)]
   public virtual Int32? StorageID { get; set; }
   public abstract class storageID : BqlInt.Field<storageID> { }
   #endregion

   #region StorageCD
   [PXDBString]
   public string StorageCD { get; set; }
   public abstract class storageCD : BqlString.Field<storageCD> { }
   #endregion

   #region Active
   [PXDBBool]
   public virtual Boolean? Active { get; set; }
   public abstract class active : BqlBool.Field<active> { }
   #endregion

   #region StorageType
   [PXDBInt]
   public virtual int? StorageType { get; set; }
   public abstract class storageType : BqlInt.Field<storageType> { }
   #endregion
}

public class InternalStorage : PXBqlTable, IBqlTable
{
   #region StorageID
   [PXDBInt(IsKey = true)]
   public virtual Int32? StorageID { get; set; }
   public abstract class storageID : BqlInt.Field<storageID> { }
   #endregion

   #region StorageCD
   [PXDBString]
   public string StorageCD { get; set; }
   public abstract class storageCD : BqlString.Field<storageCD> { }
   #endregion

   #region Active
   [PXDBBool]
   public virtual Boolean? Active { get; set; }
   public abstract class active : BqlBool.Field<active> { }
   #endregion

   #region TheType
   [PXDBCalced(typeof(int_1), typeof(int))]
   public virtual int? TheType { get; set; }
   public abstract class theType : BqlInt.Field<theType> { }
   #endregion
}

```

Further suppose that you want to perform a `UNION` operation by using the DACs that have been defined above. You need to declare a DAC that will store the result of the `UNION` operation. To do this, you can declare a shared DAC called `Storage` as follows.

```language-csharp
public class Storage : PXBqlTable, IBqlTable
{
   #region StorageID
   [PXDBInt(IsKey = true)]
   public virtual Int32? StorageID { get; set; }
   public abstract class storageID : BqlInt.Field<storageID> { }
   #endregion

   #region StorageCD
   [PXDBString]
   public string StorageCD { get; set; }
   public abstract class storageCD : BqlString.Field<storageCD> { }
   #endregion

   #region Active
   [PXDBBool]
   public virtual Boolean? Active { get; set; }
   public abstract class active : BqlBool.Field<active> { }
   #endregion

   #region StorageTypeCD
   [PXDBCalced(typeof(Switch<Case<Where<storageType, Equal<int_1>>, 
                 string_Int, Case<Where<storageType, Equal<int_2>>, 
                 string_Nas, Case<Where<storageType, Equal<int_3>>,
                 string_Clo>>>, string_Unk>), typeof(string))]
   public virtual string StorageTypeCD { get; set; }
   public abstract class storageTypeCD : BqlInt.Field<storageTypeCD> { }
   #endregion

   #region StorageType
   [PXDBInt]
   public virtual Int32? StorageType { get; set; }
   public abstract class storageType : BqlInt.Field<storageType> { }
   #endregion

}
```

You will perform the `UNION` operation on the `ExternalStorage` and `InternalStorage` DACs and store the resulting data in the shared `Storage` DAC. Before you do that, you must define the relationship—the field mapping—between the fields of the `ExternalStorage` and `InternalStorage` DACs and the fields of the shared `Storage` DAC in the relevant graph. You can do this by first using the BqlFieldMapper class to define the field mappings, and then using the BqlTableMapper class to bind the DAC to the BqlFieldMapper implementation. The following code shows an example.

```language-csharp
// Use BqlFieldMapper to define the field mappings between InternalStorage
// and Storage DACs.
public class InternalStorageToStorage : BqlFieldMapper<InternalStorage, Storage>
{
    public InternalStorageToStorage()
    {
        Map<Storage.storageType.EqualTo<InternalStorage.theType>>();
    }
}
// Use BqlTableMapper to bind the InternalStorage DAC to the BqlFieldMapper implementation above.
public class InternalStorageMapped : BqlTableMapper<InternalStorage, InternalStorageToStorage>
{ }
```

By default, the BqlFieldMapper class maps these fields based on their names. However, you can override this mapping in a number of ways, as shown in the following code.

```language-csharp
// Use BqlFieldMapper to define the field mappings between ExternalStorage
// and Storage DACs.
public class ExternalStorageToStorage : BqlFieldMapper<ExternalStorage, Storage>
{
    public ExternalStorageToStorage()
    {
        // Examples of various approaches to overriding the default mapping.          
        Map<Storage.storageType.EqualTo<ExternalStorage.theType>>();
        Map<Storage.storageID.EqualTo<const_int_1>>();
        Map<Storage.storageCD.EqualTo<ConvertToStr<ExternalStorage.storageID>>>();
        Map<Storage.active.EqualTo<ConvertToBool<DateDiff<PXDateAndTimeAttribute.now, 
         PXDateAndTimeAttribute.now, DatePart.day>>>>();
    }
}
// Use BqlTableMapper to bind the ExternalStorage DAC to the BqlFieldMapper implementation above.
public class ExternalStorageMapped : BqlTableMapper<ExternalStorage, ExternalStorageToStorage>
{ }

```

You can use the BqlFieldMapper class to create multiple field mappings for the same table to accomodate different scenarios.

**Tip:** The shared DAC can have more or fewer fields than the DACs on which the `UNION` operation is to be performed. The shared DAC may also have fields that are calculated.

Finally, to perform the `UNION` operation by using the Union keyword, you can execute the following BQL statement.

```language-csharp
MappedSelect<Storage, From<InternalStorageMapped, Union<ExternalStorageMapped>>,
 Where<Storage.storageID, Greater<int_1>>, OrderBy<Asc<Storage.storageID>>>
```

You use the MappedSelect command to facilitate the use of the Union and UnionAll operations in traditional BQL. This command is used to specify the following:

-   How the union operation will be performed on a set of DACs representing the relevant database tables
-   Which shared DAC the data of this operation will be stored in

In the preceding code example, the first parameter of the MappedSelect command has specified the shared `Storage` DAC that will store the result of the `UNION` operation. The From command in the second parameter has specified the DACs \(`InternalStorageMapped` and `ExternalStorageMapped`\) on which the `UNION` operation will be performed. Finally, the Where and OrderBy clauses, respectively, have specified the filtering and ordering criteria for the operation. The following code shows the SQL equivalent of the BQL statement in the preceding code example.

```
SELECT [Storage].[StorageID],
       [Storage].[StorageCD],
       [Storage].[Active],
       (CASE
            WHEN ([Storage].[StorageType] = 1) THEN 'INTERNAL'
            WHEN ([Storage].[StorageType] = 2) THEN 'NAS'
            WHEN ([Storage].[StorageType] = 3) THEN 'CLOUD'
            ELSE 'UNKNOWN' END),
       [Storage].[StorageType]
FROM (SELECT [InternalStorage].[StorageID] AS [StorageID],
             [InternalStorage].[StorageCD] AS [StorageCD],
             [InternalStorage].[Active]    AS [Active],
             [InternalStorage].[TheType]   AS [StorageType]
      FROM [InternalStorage] [InternalStorage]
      WHERE ([InternalStorage].[CompanyID] = 2)
      UNION
      (SELECT [ExternalStorage].[StorageID]   AS [StorageID],
              [ExternalStorage].[StorageCD]   AS [StorageCD],
              [ExternalStorage].[Active]      AS [Active],
              [ExternalStorage].[StorageType] AS [StorageType]
       FROM [ExternalStorage] [ExternalStorage]
       WHERE ([ExternalStorage].[CompanyID] = 2))) [Storage]
WHERE ([Storage].[StorageID] > 1)
ORDER BY [Storage].[StorageID]
```

To perform a `UNION ALL` operation by using the UnionAll keyword, you can perform steps that are similar to the ones described in this section and exclude the filtering criteria from your BQL statement, if necessary.

**Parent topic:**[Creating Traditional BQL Queries](../StudioDeveloperGuide/AD__mng_Traditional_BQL.md)

