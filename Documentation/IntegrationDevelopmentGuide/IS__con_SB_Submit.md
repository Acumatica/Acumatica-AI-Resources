# Submit\(\) Method {#_01682a06-8f36-4aec-b1ed-4fe17ae510db .reference}

You use the proper Submit\(\) method of a Screen object to submit data to Acumatica ERP. You select the needed Submit\(\) method by using in the name of the method the prefix that contains the ID of the Acumatica ERP form with which the method works.

## Syntax { .section}

```
public Content[] Submit(Command[] commands)
```

## Parameter { .section}

-   commands: You use this parameter to specify the data that you are going to submit. In this parameter, you pass to the web service an array of Command objects in which you can specify commands that do the following:
    -   Set the values of elements on the form by using Value commands.
    -   Click buttons on the form \(for example, the **Save** button\) by using Action commands.
    -   Get the result of data processing by using Field commands.

## Return value { .section}

The result of processing of the data submitted by using the Submit\(\) method is returned as a Content object specific to the form to which the data has been submitted. This object contains the values of the elements that you specified by using Field commands in the array of Command objects, which you pass to the Submit\(\) method. The values of the elements that were not specified by using Field commands are `null`.

If you want only to submit data to an Acumatica ERP form and do not need to obtain any values of elements after submitting, do not specify any Field commands in the array of the Command object that you pass to a Submit\(\) method. In this case, the Submit\(\) method does not return any value.

## Example 1: Submitting Data and Obtaining the Result of Processing { .section}

Suppose that you want to submit a customer record to the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form and obtain as a result of processing the values of the **Customer Name** and **Customer Class** elements. You pass the list of commands, which includes Field commands for the CustomerName and CustomerClass fields, to the AR303000Submit\(\) method, as the following code shows. In this example, the AR303000Submit\(\) method returns a AR303000Content object that has non-null values of the CustomerName and CustomerClass fields. The values of the other elements of the returned AR303000Content object are `null`.

```
AR303000Content custSchema = context.AR303000GetSchema();
var commands = new Command[]
{
    ...
    custSchema.Actions.Save,
    custSchema.CustomerSummary.CustomerName,
    custSchema.GeneralInfoFinancialSettings.CustomerClass 
};
AR303000Content customer = context.AR303000Submit(commands)[0];
```

## Example 2: Submitting Data without Obtaining the Result of Processing { .section}

Suppose that you want to create a customer record on the [Customers](../UserGuide/AR_30_30_00.md) form and do not need to get the values of any element on the form after the customer record is created. You pass the list of commands, which sets the needed values and saves the changes on the form \(the list of commands does not include any Field commands\), to the AR303000Submit\(\) method, as the following code shows. In this example, the AR303000Submit\(\) method does not return any value.

```
AR303000Content custSchema = context.AR303000GetSchema();
var commands = new Command[]
{
    new Value 
    {
        ... 
    },
    custSchema.Actions.Save 
};
context.AR303000Submit(commands);
```

**Parent topic:**[Screen-Based SOAP API Reference](../IntegrationDevelopmentGuide/IS__IS_SB_API_Reference.md)

