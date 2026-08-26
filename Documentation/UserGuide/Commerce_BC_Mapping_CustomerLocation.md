# Customer Location Entity {#_4840535c-a18f-4ced-acd9-fc34ae9111aa .concept}

This topic provides reference information about the standard filtering and field mapping used for the *Customer Location* entity during the synchronization between Acumatica ERP and BigCommerce.

## Customer Location Filtering { .section}

Filters are applied during the export of customer locations to BigCommerce. A customer location is skipped if any of the following is true:

-   The customer location is a location of the guest customer. The guest customer is excluded from synchronization so its locations are not synchronized.
-   The customer to which the customer location refers has not been synchronized.

During the import of customer locations to Acumatica ERP, the customer location is skipped if the corresponding customer has not been synchronized.

## Customer Location Export Mapping { .section}

The following table shows the mapping of Acumatica ERP fields to BigCommerce fields that is used during the export of customer location data to BigCommerce.

|**Source Fields \(Acumatica ERP\)**|**Target Fields \(BigCommerce\)**|
|Field Name|Form Object|Field Name|Page Object|Notes|
|-----------------------------------|---------------------------------|
|----------|-----------|----------|-----------|-----|
|[Customer Locations](AR_30_30_20.md) \(AR303020\) form| |
|**Attention** \(part before the first space\)|**General** tab &gt; **Additional Location Info** section|**First Name**|**Edit Customer Address** page &gt; **Customer Address Details** section|-   If **Attention** is empty, **Location Name** is used.
-   If **Attention** consists of one word, it is used for both **First Name** and **Last Name**.

|
|**Attention** \(part after the first space\)|**General** tab &gt; **Additional Location Info** section|**Last Name**|**Edit Customer Address** page &gt; **Customer Address Details** section|-   If **Attention** is empty, **Location Name** is used.
-   If **Attention** consists of one word, it is used for both **First Name** and **Last Name**.

|
|**Account Name**|**General** tab &gt; **Additional Location Info** section|**Company Name**|**Edit Customer Address** page &gt; **Customer Address Details** section|If **Account Name** is empty, **Location Name** is used.|
|Phone 1|**General** tab &gt; **Additional Location Info** section|**Phone Number**|**Edit Customer** page &gt;**Customer Details** section|If Phone 1 is empty, Phone 2 is used.|
|**Address Line 1**|**General** tab &gt; **Location Address** section|**Address Line 1**|**Edit Customer Address** page &gt; **Customer Address Details** section| |
|**Address Line 2**|**General** tab &gt; **Location Address** section|**Address Line 2**|**Edit Customer Address** page &gt; **Customer Address Details** section| |
|**City**|**General** tab &gt; **Location Address** section|**Suburb/City**|**Edit Customer Address** page &gt; **Customer Address Details** section| |
|**Country**|**General** tab &gt; **Location Address** section|**Country**|**Edit Customer Address** page &gt; **Customer Address Details** section|The ISO country code is transformed to the company name.|
|**State**|**General** tab &gt; **Location Address** section|**State/Province**|**Edit Customer Address** page &gt; **Customer Address Details** section|The state code is transformed to the state name.|
|**Postal Code**|**General** tab &gt; **Location Address** section|**Zip/Postcode**|**Edit Customer Address** page &gt; **Customer Address Details** section|**Zip/Postcode** is a required field in BigCommerce.|
| | |**Address Type**|**Edit Customer Address** page &gt; **Customer Address Details** section|Default: *Residential*|

## Customer Location Import Mapping { .section}

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

