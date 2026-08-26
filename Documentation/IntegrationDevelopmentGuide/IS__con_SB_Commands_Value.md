# Commands for Setting the Values of Elements {#_2821c688-6e5b-4636-93c8-6c78545701f7 .concept}

As you specify the sequence of commands in an array of Command objects, when you need to specify the value of an element on a form, you should use Value commands.

To set the value of an element on a form, you should do the following:

1.  Create a Value object.
2.  Specify the value of the element on the form in the Value property of the created Value object.
3.  Specify the element on the form whose value should be set by using the LinkedCommand property of the Value object.

The following code illustrates setting the value of the **Customer Name** element on the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form.

```
//custSchema is an AR303000Content object
var commands = new Command[]
{
    ...
    new Value 
    {
        Value = "John Good", 
        LinkedCommand = custSchema.CustomerSummary.CustomerName 
    },
    ...
}
```

**Parent topic:**[Working with Commands of the Screen-Based SOAP API](../IntegrationDevelopmentGuide/IS__mng_Screen-Based_API_Commands.md)

