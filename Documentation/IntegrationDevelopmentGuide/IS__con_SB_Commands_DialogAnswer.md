# Commands for Pop-Up Dialog Boxes and Pop-Up Forms {#_1efc8a35-443f-4133-884c-0f0c44beb29c .concept}

In this topic, you will learn how to enter data to pop-up dialog boxes and pop-up forms by using the screen-based SOAP API.

## Pop-Up Dialog Boxes { .section}

When you update specific fields on some forms under certain circumstances, the system displays pop-up dialog boxes where you need to respond to a question \(by clicking a button\) in order to proceed. For example, when you update the **Customer Class** value on the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form for an existing customer, the system displays a **Warning** dialog box with the text *Please confirm if you want to update current customer settings with the customer class defaults. Otherwise, original settings will be preserved.* and the **Yes** and **No** buttons. You should click **Yes** to proceed with changing the customer class.

When you are specifying the sequence of commands in an array of Command objects for a processing method and you need to specify an answer to a question that would appear in a pop-up dialog box if the data was being entered manually, you should create a Value command and set its properties as follows:

-   In the Value property, specify the answer that you select in the dialog box during manual entry of a record.
-   In the LinkedCommand property, use a DialogAnswer service command, which is available through the ServiceCommands subobject of an object that invokes the appearance of the pop-up dialog box.

You should insert this Value command directly before the field that causes the appearance of the dialog box.

The following code shows how you would update the customer class in an existing customer record on the [Customers](../UserGuide/AR_30_30_00.md#) form.

```
//custSchema is an AR303000Content object
var commands = new Command[]
{
    ...
    new Value 
    {
        Value = "Yes", 
        LinkedCommand = custSchema.CustomerSummary.ServiceCommands.DialogAnswer
    },
    new Value 
    {
        Value = "INTL", 
        LinkedCommand = custSchema.GeneralInfoFinancialSettings.CustomerClass 
    },
    ...
};
```

## Pop-Up Forms { .section}

When you click specific buttons on some forms, the system opens a pop-up window with another Acumatica ERP form where you can specify or edit the values of elements as needed. For example, if you click **Add Contact** on the **Contacts** tab of the [Customers](../UserGuide/AR_30_30_00.md#) form, the system displays the [Contacts](../UserGuide/CR_30_20_00.md#) \(CR302000\) form.

**Note:** Do not confuse a situation when the system opens a pop-up window that contains an Acumatica ERP form with a situation when the system opens a pop-up panel \(where you can specify needed settings but no Acumatica ERP form is shown\). A pop-up window that contains a form has an address line in the browser where you can see the ID of the form. A pop-up panel looks like a dialog box and does not have an address line.

When you are specifying a sequence of commands in an array of Command objects for a processing method and you need to reflect the setting of values of elements of a pop-up form in these commands, you should perform the following steps:

1.  Call an action that invokes a pop-up form as follows:
    1.  By using the GetSchema\(\) method of the `PX.Soap.Helper` class, get the Content object that corresponds to the form that invokes a pop-up form.
    2.  Specify the command that invokes a pop-up form in the sequence of commands by using the corresponding Action command.
    3.  Submit this sequence of commands to the form that invokes the pop-up form by using the corresponding Submit\(\) method.
2.  Specify the values on the pop-up form as follows:
    1.  By using the GetSchema\(\) method of the `PX.Soap.Helper` class, get the Content object that corresponds to the form that appears as a pop-up.
    2.  Specify the list of commands that specifies the values of needed elements of the pop-up form.
    3.  Add the Save action to the list of commands.
    4.  Submit this sequence of commands to the pop-up form by using the corresponding Submit\(\) method.

The following code illustrates the setting of the values of the [Contacts](../UserGuide/CR_30_20_00.md#) form, which appears as a pop-up after the user clicks **Add Contact** on the **Contacts** tab of the [Customers](../UserGuide/AR_30_30_00.md#) form.

```
//context is a Screen object
//custSchema is an AR303000Content object
var commands = new Command[]
{
    new Value 
    {
        Value = customerID, 
        LinkedCommand = custSchema.CustomerSummary.CustomerID 
    },

    custSchema.Actions.NewContact
};
context.AR303000Submit(commands);

//contSchema is a CR302000Content object
commands = new Command[]
{
    new Value 
    {
        Value = "Green", 
        LinkedCommand = contSchema.DetailsSummary.LastName 
    },
    contSchema.Actions.Save,
};
context.CR302000Submit(commands);
```

**Parent topic:**[Working with Commands of the Screen-Based SOAP API](../IntegrationDevelopmentGuide/IS__mng_Screen-Based_API_Commands.md)

