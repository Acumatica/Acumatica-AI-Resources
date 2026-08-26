# Customer Entity {#_2519b473-12ba-4caa-b723-7a4fcee7c4c7 .concept}

This topic provides reference information about the standard filtering and field mapping used for the *Customer* entity during the synchronization between Acumatica ERP and BigCommerce. The topic also contains information about the merging of duplicate records during the synchronization.

## Customer Filtering { .section}

During the export of the *Customer* entity from Acumatica ERP, the guest customer account—which is the account selected in the **Generic Guest Customer** box on the **Customers** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form—is excluded from synchronization.

## Merging of Duplicates { .section}

During the synchronization of the *Customer* entity \(for both the *Export* direction and the *Import* direction\), a customer record in the source system is merged with an existing customer record in the target system if both records have the same email address.

## Customer Export Mapping { .section}

The following table shows the mapping of Acumatica ERP fields to BigCommerce fields that is used during the export of customer data to BigCommerce.

|**Source Fields \(Acumatica ERP\)**|**Target Fields \(BigCommerce\)**|
|Field Name|Form Object|Field Name|Page Object|Notes|
|-----------------------------------|---------------------------------|
|----------|-----------|----------|-----------|-----|
|[Customers](AR_30_30_00.md) \(AR303000\) form| |
|**Name** \(part before the first space\)|**General** tab &gt; **Primary Contact** section|**First Name**|**Edit Customer** page &gt; **Customer Details** section| |
|**Name** \(part after the first space\)|**General** tab &gt; **Primary Contact** section|**Last Name**|**Edit Customer** page &gt; **Customer Details** section| |
|**Account Name**|**General** tab &gt; **Account Info** section|**Company Name**|**Edit Customer** page &gt; **Customer Details** section| |
|**Account Email**|**General** tab &gt; **Additional Account Info** section|**Email**|**Edit Customer** page &gt; **Customer Details** section| |
|Phone 2|**General** tab &gt; **Additional Account Info** section|**Phone Number**|**Edit Customer** page &gt; **Customer Details** section|If Phone 2 is empty, Phone 1 is used.|
|**Price Class**|**Shipping** tab &gt; **Other Settings** section|**Customer Group**|**Edit Customer** page &gt; **Customer Details** section|Customer price classes are mapped to customer groups only if the *Customer Price Class* entity is activated on the [BigCommerce Stores](BC_20_10_00.md) form.|
|**Address Line 1**|**General** tab &gt; **Account Address** section|**Address Line 1**|**Edit Customer** page &gt; **Customer Address Book** section|These mappings apply if the *Customer Location* entity is activated on the **Entity Settings** tab of the [BigCommerce Stores](../Shared/../UserGuide/BC_20_10_00.md) \(BC201000\) form and the corresponding boxes are empty on the [Customer Locations](../Shared/../UserGuide/AR_30_30_20.md) \(AR303020\) form.|
|**Address Line 2**|**General** tab &gt; **Account Address** section|**Address Line 2**|**Edit Customer** page &gt; **Customer Address Book** section|
|**Account Name**|**General** tab &gt; **Account Info** section|**Company Name**|**Edit Customer** page &gt; **Customer Address Book** section|
|**Account Name** \(part before the first space\)|**General** tab &gt; **Account Info** section|**First Name**|**Edit Customer** page &gt; **Customer Address Book** section|
|**Account Name** \(part after the first space\)|**General** tab &gt; **Account Info** section|**Last Name**|**Edit Customer** page &gt; **Customer Address Book** section|
|**City**|**General** tab &gt; **Account Address** section|**Suburb/City**|**Edit Customer** page &gt; **Customer Address Book** section|
|**Country**|**General** tab &gt; **Account Address** section|**Country**|**Edit Customer** page &gt; **Customer Address Book** section|The ISO country code is transformed to the country name. This mapping applies if the *Customer Location* entity is activated on the **Entity Settings** tab of the [BigCommerce Stores](../Shared/../UserGuide/BC_20_10_00.md) \(BC201000\) form and the corresponding box is empty on the [Customer Locations](../Shared/../UserGuide/AR_30_30_20.md) \(AR303020\) form.|
|**State**|**General** tab &gt; **Account Address** section|**State/Province**|**Edit Customer Address** page &gt; **Customer Address Details** section|The state code is transformed to the state name. This mapping applies if the *Customer Location* entity is activated on the **Entity Settings** tab of the [BigCommerce Stores](../Shared/../UserGuide/BC_20_10_00.md) \(BC201000\) form and the corresponding box is empty on the [Customer Locations](../Shared/../UserGuide/AR_30_30_20.md) \(AR303020\) form.|
|**Postal Code**|**General** tab &gt; **Account Address** section|**Zip/Postcode**|**Edit Customer** page &gt; **Customer Address Book** section|**Zip/Postcode** is a required field in BigCommerce. This mapping applies if the *Customer Location* entity is activated on the **Entity Settings** tab of the [BigCommerce Stores](../Shared/../UserGuide/BC_20_10_00.md) \(BC201000\) form and the corresponding box is empty on the [Customer Locations](../Shared/../UserGuide/AR_30_30_20.md) \(AR303020\) form.|
|Phone 1|**General** tab &gt; **Additional Account Info** section|**Phone Number**|**Edit Customer** page &gt; **Customer Address Book** section|This mapping applies if the *Customer Location* entity is activated on the **Entity Settings** tab of the [BigCommerce Stores](../Shared/../UserGuide/BC_20_10_00.md) \(BC201000\) form and the corresponding box is empty on the [Customer Locations](../Shared/../UserGuide/AR_30_30_20.md) \(AR303020\) form.|
| | |**Address Type**|**Edit Customer Address** page &gt; **Customer Address Details** section|Default: *Residential*|

## Customer Import Mapping { .section}

The following table shows the mapping of BigCommerce fields to Acumatica ERP fields that is used during the import of customer data from BigCommerce.

|**Source Fields \(BigCommerce\)**|**Target Fields \(Acumatica ERP\)**|
|Field Name|Page Object|Field Name|Form Object|Notes|
|---------------------------------|-----------------------------------|
|----------|-----------|----------|-----------|-----|
| |[Customers](AR_30_30_00.md) \(AR303000\) form|
| | |**Customer ID**|Summary area|Auto-numbering of customers must be enabled, and a numbering sequence must be selected on the **Customers** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form.|
| | |**Customer Status**|Summary area|By default, a customer imported from a BigCommerce store is assigned the *Active* status.|
| | |**Customer Class**|Summary area|The default customer class that is specified on the **Customers** tab of the [BigCommerce Stores](BC_20_10_00.md) form is used.|
| | |**General** tab &gt; **Account Info** section|
|**Company Name**|**Edit Customer** page &gt; **Customer Details** section|**Account Name**|**General** tab &gt; **Account Info** section| |
| | |**General** tab &gt; **Additional Account Info** section|
|**Phone Number**|**Edit Customer** page &gt; **Customer Address Book** section|Phone 1|**General** tab &gt; **Additional Account Info** section|The phone number is copied from the first address in the customer address book.|
|**Phone Number**|**Edit Customer** page &gt; **Customer Details** section|Phone 2|**General** tab &gt; **Additional Account Info** section| |
|**Email Address**|**Edit Customer** page &gt; **Customer Details** section|**Account Email**|**General** tab &gt; **Additional Account Info** section| |
|Customer ID|**Edit Customer** page &gt; URL|**Ext. Ref. Nbr.**|**General** tab &gt; **Additional Account Info** section|The value in the **Ext. Ref. Nbr.** box consists of the customer ID from the customer's page URL in BigCommerce, a hyphen, and the name of the BigCommerce store.|
| | |**General** tab &gt; **Account Address** section|
|**Address Line 1**|**Edit Customer Address** page &gt; **Customer Address Details** section|**Address Line 1**|**General** tab &gt; **Account Address** section| |
|**Address Line 2**|**Edit Customer Address** page &gt; **Customer Address Details** section|**Address Line 2**|**General** tab &gt; **Account Address** section| |
|**Suburb/City**|**Edit Customer Address** page &gt; **Customer Address Details** section|**City**|**General** tab &gt; **Account Address** section| |
|**State/Province**|**Edit Customer Address** page &gt; **Customer Address Details** section|**State**|**General** tab &gt; **Account Address** section|The state name is transformed to the state code.|
|**Zip/Postcode**|**Edit Customer Address** page &gt; **Customer Address Details** section|**Postal Code**|**General** tab &gt; **Account Address** section| |
|**Country**|**Edit Customer Address** page &gt; **Customer Address Details** section|**Country**|**General** tab &gt; **Account Address** section|The country name is transformed to the ISO country code.|

**Parent topic:**[BigCommerce Mapping Reference](../UserGuide/Commerce_BC_Mapping_Reference.md)

