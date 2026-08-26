# Withholding Taxes: General Information {#_94614c47-4616-4909-b6e0-7706fa3d4585 .concept}

A *withholding tax* is a type of tax withheld from certain types of payments. For example, in the United States \(and some other countries\), a withholding tax is applied to the employment income and withheld from wages, and then paid to the government. In Singapore, a withholding tax is a tax applicable to non-resident individuals and companies that derive income from services provided or work done in Singapore; for example, it is withheld from such types of payments as the rent of movable property.

**Attention:** In Acumatica ERP, the system calculates withholding taxes on the release of payments in accounts payable.

## Learning Objectives { .section}

In this chapter, you will learn how to configure a withholding tax.

## Applicable Scenarios { .section}

You use withholding taxes in the following cases:

-   You need to withhold a tax from certain types of payments and pay the tax to the tax authority
-   You make a payment to a foreign vendor and need to calculate a withholding tax

## Configuration of Taxes { .section}

The entities that you have configured in the taxes subledger should be linked with the following entities, which you create in other Acumatica ERP subledgers:

-   Stock items and non-stock items: To calculate tax amounts in the documents in which you specify inventory IDs, you should create stock items \(for goods\) and non-stock items \(for services\) and associate each item with the appropriate tax category. The tax category defines the taxes that can be applied to this stock or non-stock item.
-   Vendor and customer accounts: You should create needed vendors in accounts payable and customers in accounts receivable if they do not already exist. Depending on the geographical location of the sale or purchase transaction, different taxes can be applied to the document. To define which taxes are applied in the location of your vendor or customer, you should assign the appropriate tax zone to each new or existing vendor and customer.

Once these entities are configured, the system will calculate tax amounts when a user enters a document in the system. The system does this by applying the particular tax or taxes determined by the system according to the location of the selected customer or vendor and the type of stock or non-stock item specified in the document.

**Parent topic:**[Withholding Taxes](../ImplementationGuide/Taxes_Configuring_Withholding_Mapref.md)

