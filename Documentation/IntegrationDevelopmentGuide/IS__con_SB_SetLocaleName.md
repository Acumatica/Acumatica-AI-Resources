# SetLocaleName\(\) Method

You use the SetLocaleName\(\) method to specify the locale for Acumatica ERP to correctly recognize the format of dates, numbers, and other country-specific data that is passed by using the web services API. By default, Acumatica ERP uses the invariant locale, which is similar to the English \(United States\) locale.

## Syntax

```
public void SetLocaleName(string localeName)
```

## Parameter

-   localeName: The locale that should be used in Acumatica ERP. You should specify the locale in the `System.Globalization.CultureInfo` format converted to `string`, such as `"EN-US"`.

## Example

The following code shows how to specify the appropriate locale with the SetLocaleName\(\) method of the Screen object.

```
...
using System.Threading;
...
Screen context = new Screen();
context.SetLocaleName(Thread.CurrentThread.CurrentCulture.ToString());
```

**Parent topic:**[Screen-Based SOAP API Reference](../IntegrationDevelopmentGuide/IS__IS_SB_API_Reference.md)

