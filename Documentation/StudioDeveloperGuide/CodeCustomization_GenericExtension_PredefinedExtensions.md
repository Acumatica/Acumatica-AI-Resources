# Generic Graph Extensions: Classes Declared in Acumatica ERP {#_0fd80806-d566-405c-b8cf-58ec58336b1f .concept}

The Acumatica ERP source code includes predefined generic graph extensions, which are described in detail in the following sections. These graph extensions are declared in the PX.Objects.Extensions namespace. You can use them to include the implemented functionality in the forms of your application. For details on how to include this functionality, see [To Insert Reusable Business Logic That Has Already Been Declared](BL__how_Insert_Reusable_Business_Logic.md).

## Multicurrency Extension { .section}

To support multiple currencies on a form, you can insert an implementation of the MultiCurrencyGraph&lt;TGraph, TPrimary&gt; `abstract` class into the graph that provides the form’s business logic.

The MultiCurrencyGraph&lt;TGraph, TPrimary&gt; class works with the following mapped cache extensions:

-   Document: Represents a document that supports multicurrency
-   CurySource: Contains information about the currency source

## Sales Price Extension { .section}

To work with multiple price lists on a form, you can insert an implementation of the SalesPriceGraph&lt;TGraph, TDocument, TDetailOpt, TPriceClassSourceOpt&gt; `abstract` class into the graph that provides the form’s business logic. For more information on sales prices, see [Sales Prices: General Information](../UserGuide/Prices_Reviewing_Sales_Prices_GeneralInfo.md).

The SalesPriceGraph class works with the following mapped cache extensions:

-   Document: Represents a document that supports multiple price lists
-   Detail: Represents a detail line of the document
-   PriceClassSource: Provides information about the source of the price class

## Discount Extension { .section}

To support discounts on a form, you can insert an implementation of the DiscountGraph&lt;TGraph, TDocument, TDetail, TDiscount&gt; `abstract` class into the graph that provides the form’s business logic. For information about discounts, see [Customer Discounts: General Information](../UserGuide/Prices_Customer_Discounts_GeneralInfo.md).

The DiscountGraph class works with the following mapped cache extensions:

-   Document: Represents a document that supports discounts
-   Detail: Represents a detail line of the document
-   Discount: Provides information about the discount

## Sales Tax Extension { .section}

To apply sales taxes to amounts on a form, you can insert an implementation of the TaxBaseGraph&lt;TGraph, TPrimary&gt; `abstract` class into the graph that provides the form’s business logic.

The TaxBaseGraph class works with the following mapped cache extensions:

-   Document: Represents a document that supports sales taxes
-   Detail: Represents a detail line of the document
-   TaxTotal: Represents the tax total amount
-   TaxDetail: Represents a tax detail line

**Parent topic:**[Reusing Business Logic with Generic Graph Extensions](../StudioDeveloperGuide/CodeCustomization_GenericExtension_Mapref.md)

