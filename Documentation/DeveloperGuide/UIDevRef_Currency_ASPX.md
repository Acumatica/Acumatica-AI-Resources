# Currency: Conversion from ASPX to HTML and TypeScript {#_a5f06a24-455b-4136-8c3b-647839627922 .concept}

The following tables will help you to convert the ASPX elements that are related to the currency control to HTML or TypeScript elements.

## PXCurrencyRate { .section}

The following table shows the correspondence between the PXCurrencyRate element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXCurrencyRate```
<pxa:PXCurrencyRate 
  DataField="CuryID" 
  ID="edCury" 
  runat="server" 
  DataSourceID="ds" 
  RateTypeView="_SOOrder_CurrencyInfo_"
  DataMember="_Currency_">
</pxa:PXCurrencyRate>
```

|Use the field tag with control-type="qp-currency" in the HTML template.```
<field name="CuryID" 
  control-type="qp-currency" 
  view.bind="_SOOrder_CurrencyInfo_">
</field>
```

|
|DataField```
<pxa:PXCurrencyRate 
  DataField="CuryID" ... >
</pxa:PXCurrencyRate>
```

|Use the name attribute of the field tag.```
<field name="CuryID" ...>
</field>
```

|
|RateTypeView```
<pxa:PXCurrencyRate 
  ...
  RateTypeView="_SOOrder_CurrencyInfo_">
</pxa:PXCurrencyRate>
```

|Use the view.bind property of the field tag.```
<field name="CuryID" ... 
  view.bind="_SOOrder_CurrencyInfo_">
</field>
```

**Note:** The view should be defined in TypeScript and should implement the `ICurrencyInfo` interface.

|

## Obsolete ASPX Controls and Properties { .section}

The following table lists the obsolete ASPX elements that are related to the currency control. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

|ASPX Control|Properties|
|------------|----------|
|PXCurrencyRate|-   DataMember
-   DataSourceID
-   runat

|
|CurrencyEditor|The control is no longer supported because the form view is no longer supported for a table. To define a column with the currency control, use the qp-currency-selector control.-   ID
-   SuppressLabel
-   Hidden
-   DataField
-   runat
-   DataSourceID
-   DataMember

|

**Parent topic:**[Currency](../DeveloperGuide/UIDevRef_Currency_Mapref.md)

