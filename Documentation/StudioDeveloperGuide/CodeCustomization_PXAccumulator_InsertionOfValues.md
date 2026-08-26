# PXAccumulator: Insertion of Values Updated by an Accumulator Attribute {#_86033dbf-d781-4f97-83ed-95358563e717 .concept}

An accumulator attribute triggers only for data records that have the Inserted status in the cache object. Thus, you have to insert a data record into the cache to trigger an update via the accumulator attribute. Once inserted, the data record gets the Inserted status and maintains this status until it is saved to the database, even if you update the record in the cache. When a user saves the changes to the database, even though the record has the Inserted status in the cache object, the framework generates the correct SQL statement that updates the record or inserts it into the database. By default, if there is no record with such a key in the database, a new one is inserted. If a record with these key values already exists, it is correctly updated in the database because of the accumulator attribute.

**Note:** When you invoke Update\(\) on an Inserted record \(inserted into the cache\), the record remains Inserted. When you invoke Update\(\) on an unchanged record that is retrieved from the database, the record becomes Updated, and the accumulator will not trigger on this record. For more information on the statuses of data records, see [Modification of Data in a PXCache Object](AD__con_ModifyData.md).

**Tip:** You can insert a data record with unique key values into the cache only once. The framework will not insert the duplicate record. After you have inserted the record, use Update\(\) to modify its values in the cache within the current unsaved session.

In an accumulator attribute, you can specify which database operations are allowed. By default, the accumulator attribute inserts a new record if it does not exist in the database and updates the existing record, if any. To allow only insert or update operations, set the InsertOnly or UpdateOnly property of the `columns` collection in the PrepareInsert\(\) method before you invoke columns.Update\(\).

**Parent topic:**[Updating Data with a Custom PXAccumulator Attribute](../StudioDeveloperGuide/CodeCustomization_PXAccumulator_Mapref.md)

