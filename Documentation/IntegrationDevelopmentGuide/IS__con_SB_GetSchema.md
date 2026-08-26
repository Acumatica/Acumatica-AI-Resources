# GetSchema\(\) Method {#_7da354b3-0cff-4473-913e-8862d3a5ce7b .reference}

You use the GetSchema\(\) method of the Screen object to get the description of the structure \(schema\) of a form. This method is specific for each Acumatica ERP form, and you should use the method with the ID of the needed form in the prefix of the method name.

**Note:** To prevent application failures because of UI changes in Acumatica ERP, you can use the GetSchema\(\) method of the screen-based API wrapper instead of the GetSchema\(\) method of the Screen object. For more information on the screen-based API wrapper, see [Screen-Based API Wrapper](IS__con_Screen-Based_API_Wrapper.md#).

## Syntax { .section}

```
public Content GetSchema()
```

## Return Value { .section}

The method returns the schema of the form as the corresponding Content object, which is specific for each form.

## Example { .section}

To get the schema of the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, you should call the IN202500GetSchema\(\) method of the Screen object. You will receive the result as a IN202500Content object, as the following code shows.

```
Screen context = new Screen();
...
IN202500Content stockItemsSchema = context.IN202500GetSchema();
```

**Parent topic:**[Screen-Based SOAP API Reference](../IntegrationDevelopmentGuide/IS__IS_SB_API_Reference.md)

