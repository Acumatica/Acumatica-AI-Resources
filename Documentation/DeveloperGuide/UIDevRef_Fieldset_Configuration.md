# Fieldset: Field Configuration

You can define properties of a field in a fieldset by using the [fieldConfig](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=a1284c74-b44a-cdf3-6d8f-3ebd9938f5fa) decorator or by using the [controlConfig](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=ece136fa-9f2c-a8b2-3b3c-aff23a4d1156) decorator, which is a shortcut for the fieldConfig decorator.

The controlConfig decorator accepts configuration of the associated control as a parameter. If you do not need to specify the type of the control \(in the controlType property\), you can use the controlConfig decorator instead of the fieldConfig decorator.

## Example

Suppose that you have the following code in HTML.

```xml
<field name="FormatLocale"
    control-type="qp-selector" config.bind="{ displayMode: 'text', 
        suggester: { descriptionName:'CultureReadableName' } }">
</field>
```

We recommend that you rewrite the code above by using the fieldConfig decorator as follows.

```javascript
@fieldConfig({
    controlType: "qp-selector",
    controlConfig: {
     displayMode: 'text',
     suggester: { descriptionName: 'CultureReadableName' },
    }
}) 
FormatLocale: PXFieldState;
```

If you do not need to change the default type of the control, you can make the TypeScript code shorter by using the controlConfig decorator, as shown in the following example.

```javascript
@controlConfig({
   displayMode: 'text',
   suggester: { descriptionName: 'CultureReadableName' },
}) 
FormatLocale: PXFieldState;
```

If you have defined the control properties in TypeScript by using one of the decorators as shown above, the code of the field in HTML looks as shown in the following code.

```xml
<field name="FormatLocale"></field>
```

**Parent topic:**[Fieldset](../DeveloperGuide/UIDevRef_Fieldset_Mapref.md)

