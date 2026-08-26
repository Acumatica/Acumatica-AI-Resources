# Business Account Security {#_29284dce-7077-4271-9b45-b8097a4f2935 .concept}

In Acumatica ERP a user can convert a business account to a customer account, a vendor account, or both by using the [Business Accounts](../Shared/../UserGuide/CR_30_30_00.md) \(CR303000\) form. After this conversion, the business account continues to exist and is used in marketing processes.

Access to a business account is defined by rules based on restriction groups that are configured for the customer or vendor accounts that were created from this business account. The system applies these rules to the business account as well.

## Visibility of Business Account and Related Entities by User { .section}

If access to a customer or vendor account has been restricted to deny access to a group of employees, these employes will not be able to view the related business account on the [Business Accounts](../Shared/../UserGuide/CR_30_30_00.md) form. Also, the access will be denied to any related entity, such as contact, case, opportunity, marketing list, and marketing campaign.

However, if a customer and a vendor account were created from the same business account and then different restriction rules were configured for the customer account than those configured for the vendor accounts, the system does not apply either set of rules to the business account and its related entities.

## Limitations to Visibility of Contacts { .section}

If a contact of a business account has been added to a marketing list and then access to the business account was restricted \(through restriction groups\) to a group of employees, these employees will see the contact in the marketing list but will not be able to review its details on the [Contacts](../Shared/../UserGuide/CR_30_20_00.md) \(CR302000\) form.

**Parent topic:**[Managing Visibility with Restriction Groups](../UserGuide/RS__mng_Managing_Restriction_groups.md)

