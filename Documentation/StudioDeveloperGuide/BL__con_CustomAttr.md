# Custom Attributes {#_c15d3d56-f7c8-4026-8e06-c72982635451 .concept}

Typically, you use custom attributes for DAC fields to reuse the same behavior or business logic in multiple places of the application.

If you want to add new functionality that can be used in multiple places of the application \(for instance, automatic numbering of documents\), you can create a custom attribute from scratch. To implement the new logic, you need to handle the events on which the logic should be performed. Acumatica Framework automatically subscribes attribute methods that implement interfaces to the corresponding events; you do not have to manually subscribe these methods to events. In many cases, you can also add static methods to the attribute class to provide the dynamic API of the attribute. By using these methods, you can change the attribute parameters of DAC fields in a graph at runtime.

## Creation of a Custom Attribute { .section}

To create a custom attribute from scratch, you do the following \(see the sample code below\):

1.  Derive a new attribute class from PXEventSubscriberAttribute.
2.  Implement the constructor.
3.  Implement the `CacheAttached` method \(if you are reading parameters or data from the database\).
4.  Implement interfaces that correspond to the events.

```
public class MyFieldAttribute : PXEventSubscriberAttribute,   
                               // The FieldVerifying() method
                               IPXFieldVerifyingSubscriber 
{
    // Create internal objects here.
    // Do not read dynamic parameters or data from the database.
    public MyFieldAttribute()
    {
        // Code
    }
    
    // Process input parameters here; read dynamic parameters and data from
    // the database so that the data is current every time the cache is
    // initialized.
    public override void CacheAttached(PXCache sender)
    {
        // Code
    }
 
    // For instance, implement the IPXFieldVerifyingSubscriber interface.
    // The framework subscribes the method to the FieldVerifying event.
    // You do not have to manually subscribe this method to the event.
    public virtual void FieldVerifying(PXCache sender,
                                       PXFieldVerifyingEventArgs e)
    {
        // Code
    }

    // Add static methods to modify the attribute at runtime.
    // The first and second parameters are always the cache object
    // and data record.
    public virtual Type LastNumberField { get; private set; }
    public static void SetLastNumberField<Field>(
        PXCache sender, object row, Type lastNumberField)
        where Field : IBqlField
    {
        // Search for the attributes in the provided cache object
        foreach (PXEventSubscriberAttribute attribute in
                     sender.GetAttributes<Field>(row))
        {
            if (attribute is AutoNumberAttribute)
            {
                AutoNumberAttribute attr = (AutoNumberAttribute)attribute;
                attr.LastNumberField = lastNumberField;
                attr.CreateLastNumberCommand();
            }
        }
    } 
}
```

## Implementation of the Attribute Constructor and CacheAttached Methods { .section}

In the constructor, you usually validate input parameters and save them to internal objects of the attribute. However, to read data from the database or conditionally configure the attribute, you typically use the CacheAttached\(\) method of the attribute. When you create a custom attribute, you should take into account that the attribute constructor is invoked only during domain startup and on the initialization of a graph with the CacheAttached\(\) event handler \(see [CacheAttached: General Information](CodeCustomization_CacheAttached_GeneralInfo.md)\).

We recommend that you read the data from the database in the graph execution context. To do this, read the data and set the actual parameters for the attribute in the CacheAttached\(\) method that you override in your custom attribute. From the sender input parameter of the CacheAttached\(\) method, you can get the reference to the graph in whose context the attribute is used. Every time the framework initializes a cache within a graph, the CacheAttached\(\) method implemented in the attribute is invoked for each attribute on a DAC field for that particular graph. The graph is created on every round trip, so if you read data in CacheAttached\(\), the attribute retrieves the actual parameters every time. Also, you might need to read data in event handlers just before you use the data in the attribute. For instance, in [Example](#_42d05654-3d75-459f-89a4-c57f9bb7b602) in this topic, you retrieve the last assigned number in the RowPersisting\(\) method just before you calculate the new number and insert it into a document.

**Note:** Do not confuse the CacheAttached\(\) method that you implement in attributes with the `CacheAttached()` event handler that you define in a graph. The `CacheAttached()` event handler of the graph has no implementation and is used as a marker to substitute attributes on the specified DAC field in that particular graph. The CacheAttached\(\) method implemented in attributes is invoked on attributes that are current for the graph when the appropriate cache is initialized.

## Implementation of a Static Method of an Attribute { .section}

To implement a static method that provides dynamic configuration of the attribute, you can define a static method, taking into account the following considerations:

1.  You should pass a PXCache object and a data record as input parameters of the method.
2.  To be able to get the attribute object on a particular field of a record, you should define the generic method with the `<Field>` type parameter. To get the collection of attributes on the field, invoke the `GetAttributes<Field>(record)` method of the PXCache object that stores the record.
3.  To find the needed attribute, you should iterate the collection of attributes to find the object of the needed attribute type.

In the following code example, the static `SetPrefix<Field>` method of the `AutoNumberAttribute` class sets the `Prefix` property of the attribute object to the specified prefix.

```
// The static method of the AutoNumberAttribute attribute dynamically sets the number prefix
public static void SetPrefix<Field>(
    PXCache sender, object row, string prefix) where Field : IBqlField
{
    foreach (PXEventSubscriberAttribute attribute in sender.GetAttributes<Field>(row))
    {
        if (attribute is AutoNumberAttribute)
            ((AutoNumberAttribute)attribute).Prefix = prefix;
    }
}
// Assigning the number prefix depending on the document type
public virtual void Document_RowPersisting(PXCache cache, PXRowPersistingEventArgs e)
{
    Document doc = (Document)e.Row;
    if (doc != null)
    {
        switch (doc.DocType)
        {
            case DocType.R: // no prefix
                AutoNumberAttribute.SetPrefix<Document.docNbr>(cache, doc, null);
                break;
            case DocType.N:
                AutoNumberAttribute.SetPrefix<Document.docNbr>(cache, doc, "RET");
                break;
         }
    }
}
```

## Event Handlers Implemented in Attributes and Graphs { .section}

Event handlers implemented in graphs are stored in separate collections in the graph for each event. The framework determines which attribute handlers an attribute defines based on the interfaces the attribute implements.

The attribute and graph handlers that handle the same event are executed in the defined order. In *-ing* events, such as FieldDefaulting, the attribute handlers are invoked after the handlers of the graph. So if you generate the default value in a graph handler and do not want attributes to change it, you can cancel the execution of attribute handlers for this field by setting the e.Cancel property to `true` in the graph handler \(see the diagram in [Sequence of Events: Insertion of a Data Record](BL__con_Events_Insert.md)\).

In the *-ed* events, such as RowUpdated, attribute handlers are executed before handlers implemented in the graph. In *-ed* events, you typically implement some additional logic, and you cannot cancel attribute handlers.

## Example {#_42d05654-3d75-459f-89a4-c57f9bb7b602 .section}

In this section, you can find an example of the creation of a custom attribute that provides automatic numbering of documents.

**Note:** Instead of creating a custom attribute, you can use the predefined auto-numbering attributes of Acumatica ERP, such as PX.Objects.CS.AutoNumberAttribute.

In this example, the following event handlers are implemented for the attribute:

-   FieldDefaulting\(\), which inserts the placeholder into a new document.
-   FieldVerifying\(\), which prevents users from entering a nonexistent document number into the field. The nonexistent number is replaced with the *&lt;NEW&gt;* placeholder.
-   RowPersisting\(\), which assigns the new document number before the record is saved to the database and updates the last assigned number stored in the configuration.
-   RowPersisted\(\), which checks the database transaction status and resets the default number if the transaction fails.

As the runtime API of the attribute, the following static methods, which enable dynamic setup of the last number field and add a prefix to the number, are implemented:

-   `SetLastNumberField<Field>` sets the last number field for the attribute.
-   `SetPrefix<Field>` sets the number prefix.

To implement the attribute, you would do the following:

1.  Define the `AutoNumber` attribute as follows.

    ```
    public class AutoNumberAttribute : PXEventSubscriberAttribute, 
                                       IPXFieldVerifyingSubscriber,
                                       IPXFieldDefaultingSubscriber, 
                                       IPXRowPersistingSubscriber,
                                       IPXRowPersistedSubscriber
    {
    }
    ```

    The declared interfaces correspond to events that you handle in the attribute.

2.  In the `AutoNumber` attribute, define the listed fields for the internal objects \(the flag that enables or disables automatic numbering, and the command that retrieves the last number\) and two properties \(the last number field and the number prefix\). See the following code.

    ```
    public const string NewValue = "<NEW>";
    
    private bool _AutoNumbering;
    private Type _AutoNumberingField;
    private BqlCommand _LastNumberCommand;
    
    public virtual Type LastNumberField { get; private set; }
    public virtual string Prefix { get; private set; }
    ```

3.  Define two attribute constructors, one with one `Type` parameter and another with two `Type` parameters, and define the `CreateLastNumberCommand()` method. \(See the following code.\)

    ```
    public AutoNumberAttribute(Type autoNumbering)
    {
        if (autoNumbering != null && 
            (typeof(IBqlSearch).IsAssignableFrom(autoNumbering) ||
                typeof(IBqlField).IsAssignableFrom(autoNumbering) &&
                    autoNumbering.IsNested))
        {
            _AutoNumberingField = autoNumbering;
        }
        else
        {
            throw new PXArgumentException("autoNumbering");
        }
    }
    
    public AutoNumberAttribute(Type autoNumbering, Type lastNumberField)
        : this(autoNumbering)
    {
        LastNumberField = lastNumberField;
        CreateLastNumberCommand();
    } 
    
    private void CreateLastNumberCommand()
    {
        _LastNumberCommand = null;
    
        if (LastNumberField != null)
        {
            if (typeof(IBqlSearch).IsAssignableFrom(LastNumberField))
                _LastNumberCommand = BqlCommand.CreateInstance(LastNumberField);
            else if (typeof(IBqlField).IsAssignableFrom(LastNumberField) &&
                     LastNumberField.IsNested)
                _LastNumberCommand = BqlCommand.CreateInstance(
                    typeof(Search<>), LastNumberField);
        }
    
        if (_LastNumberCommand == null)
            throw new PXArgumentException("lastNumberField");
    }
    ```

    In the constructor, you validate input parameters and ensure that each of them is a valid DAC field type or a BQL Search&lt;&gt; type. The first parameter specifies the auto-numbering flag field that enables or disables automatic numbering of documents. The second parameter specifies the field from which the attribute will take the last assigned number to calculate the next number for a new document. In the `_LastNumberCommand` field, you construct the BQL Search&lt;&gt; type that selects the last number field from the database. You will use this command to retrieve the last assigned number from the setup parameters in the RowPersisting event handler.

4.  Override the CacheAttached\(\) method of the base PXEventSubscriberAttribute class, as shown in the following code.

    ```
    public override void CacheAttached(PXCache sender)
    {
        BqlCommand command = null;
        Type autoNumberingField = null;
        // Create the BqlCommand from Search<>
        if (typeof(IBqlSearch).IsAssignableFrom(_AutoNumberingField))
        {
            command = BqlCommand.CreateInstance(_AutoNumberingField);
            autoNumberingField = ((IBqlSearch)command).GetField();
        }
        // Otherwise, create the Bql command from the field.
        else
        {
            command = BqlCommand.CreateInstance(
                typeof(Search<>), _AutoNumberingField);
            autoNumberingField = _AutoNumberingField;
        }
        // In CacheAttached, get the reference to the graph.
        PXView view = new PXView(sender.Graph, true, command);
        object row = view.SelectSingle();
        if (row != null)
        {
            _AutoNumbering = (bool)view.Cache.GetValue(
                row, autoNumberingField.Name);
        }
    }
    ```

    In the CacheAttached\(\) method, you retrieve the auto-numbering flag from the database. To retrieve the flag, you create a BqlCommand object that is passed to a PXView object. The BqlCommand object represents a BQL statement that is translated into an SQL SELECT query and executed in the database by the PXView object.

    To select the data record, you invoke the SelectSingle\(\) method of the PXView object, which retrieves the data from the database by using the specified command. You use the SelectSingle\(\) method, which generates the SQL statement with `TOP 1` records to return, which executes faster. You can select a single row because only one record in the setup table has the configuration of the current company. If the retrieved flag is enabled, you set the `_AutoNumbering` field of the attribute to `true`.

    **Note:** For details about PXView, see [PXView Type and Views Collection](BL__con_Views.md).

5.  Add the FieldDefaulting\(\) and FieldVerifying\(\) methods, as follows.

    ```
    public virtual void FieldDefaulting(
        PXCache sender, PXFieldDefaultingEventArgs e)
    {
        if (_AutoNumbering)
        {
            e.NewValue = NewValue;
        }}
    
    public virtual void FieldVerifying(
        PXCache sender, PXFieldVerifyingEventArgs e)
    {
        if (_AutoNumbering && 
            PXSelectorAttribute.Select(sender, e.Row, _FieldName, e.NewValue)
                == null)
        {
            e.NewValue = NewValue;
        }
    }
    ```

    On the FieldDefaulting event, you insert the *&lt;NEW&gt;* placeholder into the number field for a new document. On the FieldVerifying event, you revert the number to the placeholder if a user has entered a nonexistent document number. If the user has entered the number of a document that exists, the document opens on the form.

6.  Add the RowPersisting\(\) method and the auxiliary `GetNewNumber()` method, which is called from RowPersisting\(\), as shown in the following code.

    ```
    protected virtual string GetNewNumber(PXCache sender, Type setupType)
    {
        if (_LastNumberCommand == null)
            CreateLastNumberCommand();
        PXView view = new PXView(sender.Graph, false, _LastNumberCommand);
    
        // Get the record from Setup
        object row = view.SelectSingle();
        if (row == null) return null;
    
        // Get the last assigned number
        string lastNumber = (string)view.Cache.GetValue(
            row, LastNumberField.Name);
        char[] symbols = lastNumber.ToCharArray();
    
        // Increment the last number
        for (int i = symbols.Length - 1; i >= 0; i--)
        {
            if (!char.IsDigit(symbols[i])) break;
    
            if (symbols[i] < '9')
            {
                symbols[i]++;
                break;
            }
            symbols[i] = '0';
        }
        lastNumber = new string(symbols);
    
        // Update the last number in the PXCache object for Setup
        view.Cache.SetValue(row, LastNumberField.Name, lastNumber);
        PXCache setupCache = sender.Graph.Caches[setupType];
        setupCache.Update(row);
        setupCache.PersistUpdated(row);
    
        // Insert the document number with the prefix
        if (!string.IsNullOrEmpty(Prefix))
        {
            lastNumber = Prefix + lastNumber;
        }
        return lastNumber;
    }
    
    public virtual void RowPersisting(PXCache sender, PXRowPersistingEventArgs e)
    {
        // For a new record inserted into the database table
        if ( _AutoNumbering && 
             (e.Operation & PXDBOperation.Command) == PXDBOperation.Insert )
        {
            Type setupType = BqlCommand.GetItemType(_AutoNumberingField);
    
            string lastNumber = GetNewNumber(sender, setupType);
            if (lastNumber != null)
            {
                // Updating the document number in the PXCache
                // object for the document
                sender.SetValue(e.Row, _FieldOrdinal, lastNumber);
            }
        }
    }
    ```

    On the RowPersisting event occurs, you retrieve the last number from the setup record, increment the number, insert the new value into the document, and update the last assigned number in the setup record. The RowPersisting event is the last event raised before Acumatica Framework commits changed data from cache objects to the database. To avoid duplicate numbers, you calculate the new value just before the data record is saved to the database.

7.  Define the RowPersisted\(\) method as the following code shows.

    ```
    public virtual void RowPersisted(PXCache sender, PXRowPersistedEventArgs e)
    {
    // If the database transaction does not succeed
        if ( _AutoNumbering && 
             (e.Operation & PXDBOperation.Command) == PXDBOperation.Insert &&
             e.TranStatus == PXTranStatus.Aborted )
        {
            // Roll back the document number to the default value.
            sender.SetValue(e.Row, _FieldOrdinal, NewValue);
            // If transaction is not successful, remove the setup record;
            // it has not been saved because of transaction rollback.
            Type setupType = BqlCommand.GetItemType(_AutoNumberingField);
            sender.Graph.Caches[setupType].Clear();
        }
    }
    ```

    The RowPersisted event, in which `e.TranStatus` may have the `Completed` or `Aborted` value, is raised after all changes from cache objects of the graph are committed to the database. If any error occurs during the transaction, you remove the new document number, which has not been saved for a document, from the PXCache object for the `setupType` DAC. For details on the process of saving changes to the database, see [Saving of Changes to the Database](BL__con_SavingChangesInDB.md).

8.  Define the static `SetLastNumberField<Field>()` method, as shown in the following code.

    ```
    public static void SetLastNumberField<Field>(PXCache sender, object row,
                                                 Type lastNumberField)
        where Field : IBqlField
    {
        foreach (PXEventSubscriberAttribute attribute in
                     sender.GetAttributes<Field>(row))
        {
            if (attribute is AutoNumberAttribute)
            {
                AutoNumberAttribute attr = (AutoNumberAttribute)attribute;
                attr.LastNumberField = lastNumberField;
                attr.CreateLastNumberCommand();
            }
        }
    }
    ```

    The `SetLastNumberField<Field>()` method provides the API that dynamically configures the attribute in graph handlers. By invoking this method in the RowPersisting event handler in the graph, you can dynamically change the last number field depending on some condition \(in this example, the document type\). In the `SetLastNumberField<Field>()` method, you update the `lastNumberField` type and command of the attribute. To get the attribute object, you iterate the collection of attributes on the specified field and search for the attribute by its type.

9.  Define the static `SetPrefix<Field>()` method of the attribute, as the following code shows.

    ```
    public static void SetPrefix<Field>(PXCache sender, object row, string prefix)
        where Field : IBqlField
    {
        foreach (PXEventSubscriberAttribute attribute in
                     sender.GetAttributes<Field>(row))
        {
            if (attribute is AutoNumberAttribute)
            {
                ((AutoNumberAttribute)attribute).Prefix = prefix;
            }
        }
    }
    ```

    The `SetPrefix<Field>()` method sets the prefix that is added to the number generated by the `AutoNumber` attribute.


Now the `AutoNumber` attribute is ready, and you can use it for the numbering of documents and sales orders. To use the attribute, add it to the document number field in the DAC, as shown in the code below.

```
// Enables auto-numbering of sales orders 
// in the SalesOrder.OrderNbr field
[AutoNumber(typeof(Setup.autoNumbering), typeof(Setup.salesOrderLastNbr))]
public virtual string OrderNbr
{...}
```

**Parent topic:**[Working with Attributes](../StudioDeveloperGuide/BL__mng_Working_With_Attributes.md)

