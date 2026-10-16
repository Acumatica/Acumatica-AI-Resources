# SetBusinessDate\(\) Method

You use the SetBusinessDate\(\) method to specify the business date in Acumatica ERP. You can set the business date to any date to make the system insert this date into the date fields by default. The business date is inserted into any new document that you create and is used in the default selection parameters that appear on processing and inquiry screens.

## Syntax

```
public void SetBusinessDate(System.DateTime businessDate)
```

## Parameter

-   businessDate: The business date that should be used in Acumatica ERP.

## Usage Notes

The business date resets to the current date of your computer after each login. Therefore, if you need to specify a business date in your application, you should call the SetBusinessDate\(\) method after each client application login.

**Parent topic:**[Screen-Based SOAP API Reference](../IntegrationDevelopmentGuide/IS__IS_SB_API_Reference.md)

