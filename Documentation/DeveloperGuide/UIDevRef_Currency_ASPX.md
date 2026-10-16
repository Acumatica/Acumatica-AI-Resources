# Currency: Conversion from ASPX to HTML and TypeScript

The following tables will help you to convert the ASPX elements that are related to the currency control to HTML or TypeScript elements.

## PXCurrencyRate

The following table shows the correspondence between the PXCurrencyRate element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_53b158c3-95c7-4d0b-b468-cfb18f27756e"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXCurrencyRate```
<pxa:PXCurrencyRate 
  DataField="CuryID" 
  ID="edCury" 
  runat="server" 
  DataSourceID="ds" 
  RateTypeView="_SOOrder_CurrencyInfo_"
  DataMember="_Currency_">
</pxa:PXCurrencyRate>
```

</td><td>

Use the field tag with control-type="qp-currency" in the HTML template.```
<field name="CuryID" 
  control-type="qp-currency" 
  view.bind="_SOOrder_CurrencyInfo_">
</field>
```

</td></tr><tr><td>

DataField```
<pxa:PXCurrencyRate 
  DataField="CuryID" ... >
</pxa:PXCurrencyRate>
```

</td><td>

Use the name attribute of the field tag.```
<field name="CuryID" ...>
</field>
```

</td></tr><tr><td>

RateTypeView```
<pxa:PXCurrencyRate 
  ...
  RateTypeView="_SOOrder_CurrencyInfo_">
</pxa:PXCurrencyRate>
```

</td><td>

Use the view.bind property of the field tag.```
<field name="CuryID" ... 
  view.bind="_SOOrder_CurrencyInfo_">
</field>
```

**Note:** The view should be defined in TypeScript and should implement the `ICurrencyInfo` interface.

</td></tr></tbody>
</table>

## Obsolete ASPX Controls and Properties

The following table lists the obsolete ASPX elements that are related to the currency control. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

<table id="_41289709-97c0-49e8-889b-0b2cf1319062"><thead><tr><th>

ASPX Control

</th><th>

Properties

</th></tr></thead><tbody><tr><td>

PXCurrencyRate

</td><td>

-   DataMember
-   DataSourceID
-   runat

</td></tr><tr><td>

CurrencyEditor

</td><td>

The control is no longer supported because the form view is no longer supported for a table. To define a column with the currency control, use the qp-currency-selector control.-   ID
-   SuppressLabel
-   Hidden
-   DataField
-   runat
-   DataSourceID
-   DataMember

</td></tr></tbody>
</table>

**Parent topic:**[Currency](../DeveloperGuide/UIDevRef_Currency_Mapref.md)

