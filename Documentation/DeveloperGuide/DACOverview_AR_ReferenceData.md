# AR DACs: Reference Data {#_d4b54697-415e-4668-99f5-747a95797992 .concept}

In this topic, you can find information about the data access classes \(DACs\) that contain reference data that is used in most other DACs in accounts receivable. This data includes customers, locations, and addresses.

## Accounts Receivable Preferences { .section}

The preferences for accounts receivable are available in the [ARSetup](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARSetup) DAC. An administrative user can edit these preferences on the [Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) \(AR101000\) form.

## Customers { .section}

The [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form is used to define any business account that satisfies the following condition: `BAccount.Type = CU OR BAccount.Type = VC`. \(That is, the business account is a customer or both a vendor and a customer.\) Business accounts of these types are extended with the information from the [Customer](https://help.acumatica.com/dacBrowser/PX.Objects.AR/Customer) DAC, as shown in the following query.

```
SELECT 
    * 
FROM 
    BAccount 
    INNER JOIN Customer 
        ON BAccount.CompanyID = Customer.CompanyID 
        AND BAccount.BAccountID = Customer.BAccountID 
```

A Customer record contains AR-specific business account data related to customer payment methods, statement cycles, and credit verification rules.

## Locations { .section}

As is true of any other business account, a Customer record can have multiple [Location](https://help.acumatica.com/dacBrowser/PX.Objects.CR/Location) records associated with it. The default customer location is stored in the BAccount.DefLocationID field.

The Location DAC contains multiple AR-specific fields whose names start with the *C* prefix. Examples of these fields are shown in the following table.

|Field|Description|
|-----|-----------|
|CTaxZoneID|The default [TaxZone](https://help.acumatica.com/dacBrowser/PX.Objects.TX/TaxZone) associated with the customer location.|
|CSalesAcctID|The default sales revenue GL account associated with the location.|
|CARAccountID|The default accounts receivable account associated with the location.|

The tax zones and accounts specified in the Location record can be overridden at the document level. For example, if you specify a particular location in a customer invoice, the tax zone \(ARInvoice.TaxZoneID\) has the default value copied from Location.CTaxZoneID, but a user can override this value with any other tax zone.

Customer locations can be defined on the [Customer Locations](../UserGuide/AR_30_30_20.md) \(AR303020\) form.

## Addresses and Contacts { .section}

Three types of addresses and contacts are defined for every customer in the system:

-   The main contact and address, which are specified on the **General** tab of the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form.

    The main contact and address are referenced by BAccount.DefContactID and BAccount.DefAddressID fields.

-   The billing contact and address, which are specified on the **Billing** tab of the [Customers](../UserGuide/AR_30_30_00.md) form.

    The billing contact and address are referenced by the Customer.DefBillContactID and Customer.DefBillAddressID fields, respectively.

    **Tip:** The billing [Address](https://help.acumatica.com/dacBrowser/PX.Objects.CR/Address) and [Contact](https://help.acumatica.com/dacBrowser/PX.Objects.CR/Contact) records serve as templates for the invoice-level bill-to address and contact \(which are stored in the [ARAddress](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARAddress) and [ARContact](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARContact) DACs\).

-   The default shipping contact and address, which are specified on the **Shipping** tab of the [Customers](../UserGuide/AR_30_30_00.md) form.

    This contact and address are referenced by Location.DefContactID and Location.DefAddressID of the customer's default location \(which is identified by the BAccount.DefLocationID field\).

    **Tip:** The shipping Address and Contact records serve as templates for the ship-to invoice-level address and contact \(ARAddress and ARContact\).


The selection of the following types of addresses and contacts is illustrated in the queries shown below:

-   Selection of the main customer address and contact

    ```
    SELECT 
        *  
    FROM 
        Customer 
        INNER JOIN BAccount 
            ON BAccount.CompanyID = Customer.CompanyID 
            AND BAccount.BAccountID = Customer.BAccountID 
        INNER JOIN Contact 
            ON Contact.CompanyID = BAccount.CompanyID 
            AND Contact.ContactID = BAccount.DefContactID 
        INNER JOIN Address 
            ON Address.CompanyID = BAccount.CompanyID 
            AND Address.AddressID = BAccount.DefAddressID 
    ```

-   Selection of the default shipping customer address and contact

    ```
    SELECT 
        * 
    FROM 
        Customer 
        INNER JOIN BAccount 
            ON BAccount.CompanyID = Customer.CompanyID 
            AND BAccount.BAccountID = Customer.BAccountID 
        -- Default location
        INNER JOIN Location  
            ON Location.CompanyID = Customer.CompanyID 
            AND Location.LocationID = BAccount.DefLocationID 
        LEFT JOIN Contact 
            ON Contact.CompanyID = Location.CompanyID 
            AND Contact.ContactID = Location.DefContactID 
        LEFT JOIN Address 
            ON Address.CompanyID = Location.CompanyID 
            AND Address.AddressID = Location.DefAddressID 
    ```


## Customer Payment Methods { .section}

The [CustomerPaymentMethod](https://help.acumatica.com/dacBrowser/PX.Objects.AR/CustomerPaymentMethod) and [CustomerPaymentMethodDetail](https://help.acumatica.com/dacBrowser/PX.Objects.AR/CustomerPaymentMethodDetail) DACs store the customer-specific settings of a payment method. The general settings of a payment method are stored in the [PaymentMethod](https://help.acumatica.com/dacBrowser/PX.Objects.CA/PaymentMethod) DAC, which is defined in cash management. For details on payment methods, see [CA DACs: Reference Data](DACOverview_CA_ReferenceData.md).

For credit card payment methods, a customer payment method record is required. This record defines all details \(that is, CustomerPaymentMethodDetail records\) necessary to use the method to record payments \(that is, ARPayment records\).

For generic payment methods \(such as cash payment or wire transfer\), the presence of a customer-specific payment method record is optional, but it can nevertheless be defined to override the default payment method settings.

Customer-specific payment methods are defined on the [Customer Payment Methods](../UserGuide/AR_30_30_10.md) \(AR303010\) form.

## Discount Codes and Sequences { .section}

[ARDiscount](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARDiscount) represents an accounts receivable discount code used to define discount sequences \(which are stored in [DiscountSequence](https://help.acumatica.com/dacBrowser/PX.Objects.AR/DiscountSequence)\). The primary function of a discount code is to specify the type of discounts that are based on that code. For example, a document discount can be applicable to only specific customers, or a line discount can be applicable to only specific inventory items. The ARDiscount records are defined on the [Discount Codes](../UserGuide/AR_20_90_00.md) \(AR209000\) form.

DiscountSequence represents a specific discount based on a discount code. The discount sequence specifies how the discount is calculated based on the amount or quantity of the line item, or on the amount of the document. Discount sequences can be defined on the [Discounts](../UserGuide/AR_20_95_00.md) \(AR209500\) form.

## Price Lists { .section}

The system uses the [ARSalesPrice](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARSalesPrice) reference DAC to suggest the unit price in document details \(that is, in the ARTran.UnitPrice field\) that the user inserts into a bill or adjustment. The records store inventory item prices broken down by the following:

-   Price type \(which is stored in the PriceType field\)
-   Price code \(PriceCode\), such as specific customer or customer class, depending on the price type
-   Inventory item \(InventoryID\)
-   Warehouse \(SiteID\)
-   Currency \(CuryID\)
-   Unit of measure \(UOM\)
-   Break quantity \(BreakQty\)
-   An indicator of whether the price is promotional \(IsPromotionalPrice\)

All these fields form the compound key of customer price records, meaning that they should be unique across the combination of these dimensions.

All existing customer prices are defined on the [Sales Prices](../UserGuide/AR_20_20_00.md) \(AR202000\) form. However, a user can update an ARSalesPrice record indirectly by creating and releasing AR price worksheets, which are stored in [ARPriceWorksheet](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARPriceWorksheet) and are editable on the [Sales Price Worksheets](../UserGuide/AR_20_20_10.md) \(AR202010\) form. The system uses the details of a price worksheet \([ARPriceWorksheetDetail](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARPriceWorksheetDetail)\) to automatically update the ARSalesPrice record once the user releases the worksheet.

**Parent topic:**[Reviewing Accounts Receivable DACs](../DeveloperGuide/DACOverview_AR_Mapref.md)

