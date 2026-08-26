# Commands for Clicking Buttons on a Form {#_2b88f7ea-e3e9-4d94-a334-98dc054afd03 .concept}

As you specify the sequence of commands in an array of Command objects, when you need to reflect the clicking of a button on a form \(such as clicking **Save**, **Delete**, or **Release** to perform the action on a document\), you should use the corresponding Action command. Actions are available for all buttons on the form.

In an array of Command objects, to use an Action command, you have to select the needed action in the Actions subobject of the Content object that corresponds to the form. Actions have names that are similar to the names of the buttons on the form.

The following code reflects the clicking of the **Save** button on the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form in a command.

```
//custSchema is an AR303000Content object
var commands = new Command[]
{
    ...
    custSchema.Actions.Save,
    ...
};
```

**Parent topic:**[Working with Commands of the Screen-Based SOAP API](../IntegrationDevelopmentGuide/IS__mng_Screen-Based_API_Commands.md)

