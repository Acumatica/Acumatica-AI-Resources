# Commands for Record Searching: Filter Service Command {#_748c9761-8fc2-41cf-820e-fecca16a6d22 .concept}

The system uses the key element or elements on a form to find records that belong to different documents. For example, on the [Invoices and Memos](../UserGuide/AR_30_10_00.md) \(AR301000\) form, there are two key elements: **Type** and **Reference Nbr**.

If you know the values of the key element or elements of the needed record, you can select this record for update by specifying the key values in the sequence of commands that you pass to the processing method of the web services API. In the sequence of commands, you should first specify key element or elements to identify the record that you are going to update. After you have specified the values of key element or elements, you should specify the values of other elements in the order in which you would specify them on the form.

If you do not know the values of the key element or elements of the needed record, you can update records in the system by searching for them using their unique field values that you know. For example, you can identify customers by email addresses or phone numbers. To search for a record, you have to imitate the use of a column of a **Select** dialog box, declare a custom key, or declare a custom field in the sequence of commands that you pass to a processing method. In this topic, you will find a detailed description of the Filter service command, which imitates the use of a selector column. You can find a description of two other approaches in [Commands for Record Searching: Key Command](IS__con_SB_Commands_Key.md#) and [Commands for Record Searching: Custom Field](IS__con_SB_Commands_!FieldName.md#).

## Filter Service Command { .section}

Selector columns on an Acumatica ERP form appear when a user clicks the Magnifier icon of the key element of the form to bring up the **Select** dialog box. Service commands for selector columns have the Filter prefix in their names. For example, to search for a customer record, you can use the FilterCity, FilterCountry, FilterEmail, and FilterPhone1 service commands.

To use a column of a **Select** dialog box for a search, you have to do the following:

1.  Create a Field object, and initialize its properties with the values of the properties of the key field.
2.  Concatenate the FieldName property of this object \(which is now equal to the value of the FieldName property of the key field\) with `!` and the FieldName property of the needed Filter service command.
3.  In the Value command in the array of Command objects, set the Value property to the value that should be used for the search and the LinkedCommand property to the created Field object.

For example, the following code searches for a customer record by email address.

```
//custSchema is an AR303000Content object
Field customerIDSelector = custSchema.CustomerSummary.CustomerID;
customerIDSelector.FieldName += "!" + 
        custSchema.CustomerSummary.ServiceCommands.FilterEmail.FieldName;

var commands = new Command[]
{
    new Value 
    {
        Value = "demo@gmail.com", 
        LinkedCommand = customerIDSelector 
    },
    ...
};
```

**Note:** If you need to get the value of the field that was used for a search as a result of the processing, you should assign an initial FieldName to the field before getting the value. For example, the following code shows how to get the value of the Customer ID element after you have modified the corresponding field for the search.

```
//custSchema is an AR303000Content object
//Save the initial field name of the CustomerID field
string initialCustomerIDFieldName = 
custSchema.CustomerSummary.CustomerID.FieldName;

//Configure the command that searches for a customer record 
//by using the FilterEmail service command
Field customerIDSelector = custSchema.CustomerSummary.CustomerID;
customerIDSelector.FieldName += "!" +
custSchema.CustomerSummary.ServiceCommands.FilterEmail.FieldName;

//Configure the list of commands
var commands = new Command[]
{ 
    //Search for the needed customer record
    new Value 
    {
         Value = customerMainContactEmail, 
         LinkedCommand = customerIDSelector 
    },

    //Do the needed modifications and save changes on the form
    ...
};

//context is a Screen object
//Submit commands to the form
context.AR303000Submit(commands);

//Assign an initial field name to the CustomerID field
custSchema.CustomerSummary.CustomerID.FieldName = initialCustomerIDFieldName;

//Get the customer ID
commands = new Command[]
{
    custSchema.CustomerSummary.CustomerID
};

//Submit commands to the form
AR303000Content customer = context.AR303000Submit(commands)[0];
```

**Parent topic:**[Working with Commands of the Screen-Based SOAP API](../IntegrationDevelopmentGuide/IS__mng_Screen-Based_API_Commands.md)

