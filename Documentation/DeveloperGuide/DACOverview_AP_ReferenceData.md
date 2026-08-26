# AP DACs: Reference Data {#_88c3593a-4682-4ec1-a4cb-ded21caa6183 .concept}

In this topic, you can find information about the data access classes \(DACs\) that contain reference data that is used in most of the DACs in accounts payable, such as information about vendors, locations, and addresses.

## Accounts Payable Preferences { .section}

The general preferences for accounts payable are stored in the [APSetup](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APSetup) DAC. An administrative user can edit these preferences on the [Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\) form.

## Vendors { .section}

The [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form is used to define business accounts that satisfy the following condition: `BAccount.Type = VE OR BAccount.Type = VC`. \(That is, the business account is a vendor or both a vendor and a customer.\) Business accounts of these types are extended with the information from the [Vendor](https://help.acumatica.com/dacBrowser/PX.Objects.AP/Vendor) DAC, as shown in the following SQL query.

```
SELECT 
    * 
FROM 
    BAccount 
    INNER JOIN Vendor 
        ON BAccount.CompanyID = Vendor.CompanyID 
        AND BAccount.BAccountID = Vendor.BAccountID 
```

The Vendor DAC contains AP-specific business account data related to vendors, including default currency settings, credit terms, and tax reporting settings for tax agency vendors.

## Locations { .section}

As is true of any other business account record, a Vendor record can have multiple [Location](https://help.acumatica.com/dacBrowser/PX.Objects.CR/Location) records associated with it. The default vendor location is stored in the BAccount.DefLocationID field.

The Location DAC contains multiple AP-specific fields. The names of these fields start with the `V` prefix. Examples of these fields are shown in the following table.

|Field|Description|
|-----|-----------|
|VTaxZoneID|The default vendor [TaxZone](https://help.acumatica.com/dacBrowser/PX.Objects.TX/TaxZone) associated with the location.|
|VExpenseAcctID|The default expense GL account associated with the location.|
|VAPAccountID|The default AP account associated with the location.|
|VPaymentMethodID|The default [PaymentMethod](https://help.acumatica.com/dacBrowser/PX.Objects.CA/PaymentMethod) that is for use in AP and associated with the location.|

The tax zones and accounts specified in a Location record can be overridden at the document level. For example, if you specify a particular location in a vendor bill, the tax zone \(APInvoice.TaxZoneID\) has the default value copied from Location.VTaxZoneID, but a user can override this value with any other tax zone.

Vendor locations can be defined on the [Vendor Locations](../UserGuide/AP_30_30_10.md) \(AP303010\) form.

## Addresses and Contacts { .section}

Three types of addresses and contacts are defined for every vendor in the system:

-   The main contact and address, which are specified on the **General** tab of the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form.

    The main contact and address are referenced by the BAccount.DefContactID and BAccount.DefAddressID fields, respectively.

-   The default remittance contact and address, which are specified on the **Payment** tab of the [Vendors](../UserGuide/AP_30_30_00.md) form.

    These contact and address are referenced by the Location.VRemitContactID and Location.VRemitAddressID fields of the vendor's default location \(which is specified in BAccount.DefLocationID\).

    **Tip:** The remittance [Address](https://help.acumatica.com/dacBrowser/PX.Objects.CR/Address) and [Contact](https://help.acumatica.com/dacBrowser/PX.Objects.CR/Contact) records serve as templates for a bill-level address and contact.

-   The default shipper's contact and address, which are specified on the **Purchase Settings** tab of the [Vendors](../UserGuide/AP_30_30_00.md) form.

    These contact and address are referenced by the Location.DefContactID and Location.DefAddressID of the vendor's default location \(which is specified in BAccount.DefLocationID\).


The selection of particular types of addresses and contacts is illustrated in the following SQL queries:

-   Selection of the main vendor address and contact

    ```
    SELECT 
        * 
    FROM 
        Vendor 
        INNER JOIN BAccount 
            ON BAccount.CompanyID = Vendor.CompanyID 
            AND BAccount.BAccountID = Vendor.BAccountID 
        INNER JOIN Contact 
            ON Contact.CompanyID = BAccount.CompanyID 
            AND Contact.ContactID = BAccount.DefContactID 
        INNER JOIN Address 
            ON Address.CompanyID = BAccount.CompanyID 
            AND Address.AddressID = BAccount.DefAddressID
    ```

-   Selection of the default remittance and shipper's address and contact

    ```
    SELECT 
        * 
    FROM 
        Vendor 
        INNER JOIN BAccount 
            ON BAccount.CompanyID = Vendor.CompanyID 
            AND BAccount.BAccountID = Vendor.BAccountID 
        INNER JOIN Location -- Default Location 
            ON Location.CompanyID = Vendor.CompanyID 
            AND Location.LocationID = BAccount.DefLocationID 
        LEFT JOIN Contact AS DefaultRemittanceContact 
            ON DefaultRemittanceContact.CompanyID = Location.CompanyID 
            AND DefaultRemittanceContact.ContactID = Location.VRemitContactID 
        LEFT JOIN Address AS DefaultRemittanceAddress 
            ON DefaultRemittanceAddress.CompanyID = Location.CompanyID 
            AND DefaultRemittanceAddress.AddressID = Location.VRemitAddressID 
        LEFT JOIN Contact AS DefaultShipperContact 
            ON DefaultShipperContact.CompanyID = Location.CompanyID 
            AND DefaultShipperContact.ContactID = Location.DefContactID 
        LEFT JOIN Address AS DefaultShipperAddress 
            ON DefaultShipperAddress.CompanyID = Location.CompanyID 
            AND DefaultShipperAddress.AddressID = Location.DefAddressID 
    ```


## Vendor Payment Method Details { .section}

The [VendorPaymentMethodDetail](https://help.acumatica.com/dacBrowser/PX.Objects.AP/VendorPaymentMethodDetail) DAC stores vendor-specific values for AP-related payment method settings \(which are stored in [PaymentMethodDetail](https://help.acumatica.com/dacBrowser/PX.Objects.CA/PaymentMethodDetail)\). These settings are edited on the **Payment** tab of the [Vendor Locations](../UserGuide/AP_30_30_10.md)\(AP303010\) form. For the main vendor location, they can also be specified on the **Payment** tab of the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form.

## Discount Codes and Sequences { .section}

[APDiscount](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APDiscount) represents an accounts payable discount code that is used to define discount sequences \(which are stored in [VendorDiscountSequence](https://msk-app-001.int.adds.acumatica.com/tw-2023R1/(W(21))/dacBrowser/PX.Objects.AP/VendorDiscountSequence)\). The primary function of a discount code is to specify the type of discounts that are based on that code. For example, a document discount can be applicable only to specific vendors, or a line discount can be applicable to specific inventory items. The APDiscount records are defined on the [Vendor Discount Codes](../UserGuide/AP_20_40_00.md) \(AP204000\) form.

VendorDiscountSequence represents a specific discount sequence based on a discount code. The discount sequence specifies how the discount is calculated based on the amount or quantity of the line item, or on the amount of the document. Discount sequences can be defined on the [Vendor Discounts](../UserGuide/AP_20_50_00.md) \(AP205000\) form.

In the following examples, a discount code defines a type of discount, including its applicability, while discount sequences based on this code specify to which specific entities the discount applies:

-   Suppose that a discount code specifies a type of document-level discounts that are applicable to specific vendors. The discount sequence defines this discount as being applicable to the A, B, and C vendors, and provides a 50% discount if the line amount is greater than $200.
-   Suppose that a discount code specifies a type of line-level discounts that are applicable to specific inventory items. The discount sequence defines this discount as being for the D, E, and F inventory items, and provides a $25 discount if the document amount is greater than $1000.

## Price Lists { .section}

The system uses the [APVendorPrice](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APVendorPrice) DAC to suggest the unit cost in document details \(that is, the unit cost that is stored in the APTran.UnitCost field\) that the user inserts into a bill or adjustment. The records store inventory item prices broken down by the following:

-   Vendor
-   Warehouse
-   Inventory item
-   Currency
-   Unit of measure
-   Break quantity
-   An indicator of whether the price is promotional

All these fields form the compound key of vendor price records, meaning that they should be unique across the combination of these dimensions.

All existing vendor prices are defined on the [Vendor Prices](../UserGuide/AP_20_20_00.md) \(AP202000\) form. Also, a user can update the APVendorPrice records indirectly by creating and releasing AP price worksheets, which are stored in [APPriceWorksheet](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APPriceWorksheet) and are editable on the [Vendor Price Worksheets](../UserGuide/AP_20_20_10.md) \(AP202010\) form. The system uses the details of a price worksheet \(which are stored in [APPriceWorksheetDetail](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APPriceWorksheetDetail)\) to automatically update the APVendorPrice records once the user releases a worksheet.

**Parent topic:**[Reviewing Accounts Payable DACs](../DeveloperGuide/DACOverview_AP_Mapref.md)

