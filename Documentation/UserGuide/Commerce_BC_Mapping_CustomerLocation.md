# Customer Location Entity

This topic provides reference information about the standard filtering and field mapping used for the *Customer Location* entity during the synchronization between Acumatica ERP and BigCommerce.

## Customer Location Filtering

Filters are applied during the export of customer locations to BigCommerce. A customer location is skipped if any of the following is true:

-   The customer location is a location of the guest customer. The guest customer is excluded from synchronization so its locations are not synchronized.
-   The customer to which the customer location refers has not been synchronized.

During the import of customer locations to Acumatica ERP, the customer location is skipped if the corresponding customer has not been synchronized.

## Customer Location Export Mapping

The following table shows the mapping of Acumatica ERP fields to BigCommerce fields that is used during the export of customer location data to BigCommerce.

<table id="_bda17ba8-afc3-4741-ac88-98e94517576b"><thead><tr><th colspan="2">

**Source Fields \(Acumatica ERP\)**

</th><th colspan="3">

**Target Fields \(BigCommerce\)**

</th></tr><tr><th>

Field Name

</th><th>

Form Object

</th><th>

Field Name

</th><th>

Page Object

</th><th>

Notes

</th></tr></thead><tbody><tr><td colspan="2">

[Customer Locations](AR_30_30_20.md) \(AR303020\) form

</td><td colspan="3">

 

</td></tr><tr><td>

**Attention** \(part before the first space\)

</td><td>

**General** tab &gt; **Additional Location Info** section

</td><td>

**First Name**

</td><td>

**Edit Customer Address** page &gt; **Customer Address Details** section

</td><td>

-   If **Attention** is empty, **Location Name** is used.
-   If **Attention** consists of one word, it is used for both **First Name** and **Last Name**.

</td></tr><tr><td>

**Attention** \(part after the first space\)

</td><td>

**General** tab &gt; **Additional Location Info** section

</td><td>

**Last Name**

</td><td>

**Edit Customer Address** page &gt; **Customer Address Details** section

</td><td>

-   If **Attention** is empty, **Location Name** is used.
-   If **Attention** consists of one word, it is used for both **First Name** and **Last Name**.

</td></tr><tr><td>

**Account Name**

</td><td>

**General** tab &gt; **Additional Location Info** section

</td><td>

**Company Name**

</td><td>

**Edit Customer Address** page &gt; **Customer Address Details** section

</td><td>

If **Account Name** is empty, **Location Name** is used.

</td></tr><tr><td>

Phone 1

</td><td>

**General** tab &gt; **Additional Location Info** section

</td><td>

**Phone Number**

</td><td>

**Edit Customer** page &gt;**Customer Details** section

</td><td>

If Phone 1 is empty, Phone 2 is used.

</td></tr><tr><td>

**Address Line 1**

</td><td>

**General** tab &gt; **Location Address** section

</td><td>

**Address Line 1**

</td><td>

**Edit Customer Address** page &gt; **Customer Address Details** section

</td><td>

 

</td></tr><tr><td>

**Address Line 2**

</td><td>

**General** tab &gt; **Location Address** section

</td><td>

**Address Line 2**

</td><td>

**Edit Customer Address** page &gt; **Customer Address Details** section

</td><td>

 

</td></tr><tr><td>

**City**

</td><td>

**General** tab &gt; **Location Address** section

</td><td>

**Suburb/City**

</td><td>

**Edit Customer Address** page &gt; **Customer Address Details** section

</td><td>

 

</td></tr><tr><td>

**Country**

</td><td>

**General** tab &gt; **Location Address** section

</td><td>

**Country**

</td><td>

**Edit Customer Address** page &gt; **Customer Address Details** section

</td><td>

The ISO country code is transformed to the company name.

</td></tr><tr><td>

**State**

</td><td>

**General** tab &gt; **Location Address** section

</td><td>

**State/Province**

</td><td>

**Edit Customer Address** page &gt; **Customer Address Details** section

</td><td>

The state code is transformed to the state name.

</td></tr><tr><td>

**Postal Code**

</td><td>

**General** tab &gt; **Location Address** section

</td><td>

**Zip/Postcode**

</td><td>

**Edit Customer Address** page &gt; **Customer Address Details** section

</td><td>

**Zip/Postcode** is a required field in BigCommerce.

</td></tr><tr><td>

 

</td><td>

 

</td><td>

**Address Type**

</td><td>

**Edit Customer Address** page &gt; **Customer Address Details** section

</td><td>

Default: *Residential*

</td></tr></tbody>
</table>

## Customer Location Import Mapping

The following table shows the mapping of Acumatica ERP fields to BigCommerce fields that is used during the import of customer location data to Acumatica ERP.

|**Source Fields \(BigCommerce\)**|**Target Fields \(Acumatica ERP\)**|
|Field Name|Page Object|Field Name|Form Object|Notes|
|---------------------------------|-----------------------------------|
|----------|-----------|----------|-----------|-----|
| |[Customer Locations](AR_30_30_20.md) \(AR303020\) form|
| | |**Customer**|Summary area|The customer ID is generated based on the numbering sequence specified for customers on the **Customers** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form.|
| | |**Location ID**|Summary area|The location ID is generated based on the numbering sequence specified for customer locations on the **Customers** tab of the [BigCommerce Stores](BC_20_10_00.md) form.|
| | |**Status**|Summary area|By default, a customer location imported from a BigCommerce store is assigned the *Active* status.|
|**Company Name**|**Edit Customer Address** page &gt; **Customer Address Details** section|**Location Name**|Summary area|If **Company Name** is empty, **First Name** and **Last Name** are used.|
| | |**General** tab &gt;**Additional Location Info** section|
| | |**Override**|**General** tab &gt; **Additional Location Info** section|Default: Selected|
|**Company Name**|**Edit Customer Address** page &gt; **Customer Address Details** section|**Account Name**|**General** tab &gt; **Additional Location Info** section|If **Company Name** is empty, **First Name** and **Last Name** are used.|
|**First Name** and **Last Name**|**Edit Customer Address** page &gt; **Customer Address Details** section|**Attention**|**General** tab &gt; **Additional Location Info** section| |
|**Email Address**|**Edit Customer** page &gt; **Customer Details** section|**Email**|**General** tab &gt; **Additional Location Info** section| |
|**Phone Number**|**Edit Customer Address** page &gt; **Customer Address Details** section|Phone 1|**General** tab &gt; **Additional Location Info** section|The phone number from the first address in the customer address book is used.|
|**Phone Number**|**Edit Customer** page &gt;**Customer Details** section|Phone 2|**General Info** tab &gt; **Additional Location Info** section| |
| | |**General Info** &gt; **Location Address**|
| | |**Override**|**General** tab &gt; **Location Address** section|Default: Selected|
|**Address Line 1**|**Edit Customer Address** page &gt; **Customer Address Details** section|**Address Line 1**|**General** tab &gt; **Location Address** section| |
|**Address Line 2**|**Edit Customer Address** page &gt; **Customer Address Details** section|**Address Line 2**|**General** tab &gt; **Location Address** section| |
|**Suburb/City**|**Edit Customer Address** page &gt; **Customer Address Details** section|**City**|**General** tab &gt; **Location Address** section| |
|**Country**|**Edit Customer Address** page &gt; **Customer Address Details** section|**Country**|**General** tab &gt; **Location Address** section|The country name is transformed to the ISO country code.|
|**State/Province**|**Edit Customer Address** page &gt; **Customer Address Details** section|**State**|**General** tab &gt; **Location Address** section|The state name is transformed to the state code.|
|**Zip/Postcode**|**Edit Customer Address** page &gt; **Customer Address Details** section|**Postal Code**|**General** tab &gt; **Location Address** section| |

**Parent topic:**[BigCommerce Mapping Reference](../UserGuide/Commerce_BC_Mapping_Reference.md)

