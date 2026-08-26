# Value-Added Taxes: Reverse VAT {#_6f3a4876-551d-4d93-802b-20a20d8a7082 .concept}

A *reverse VAT* is a type of value-added tax used in some countries of the European Union. The reverse VAT has been implemented as a simplification measure for companies that supply goods or services to other EU countries. With this tax applied, these companies avoid the need to register in the countries to which they supply the goods or services. Thus, if a vendor normally must report the VAT due on their supplies to the tax authorities, so when this type of VAT applies, the liability of reporting VAT is reversed and goes to the customer. The customer in this case acts as both the vendor and the customer. The customer credits the tax payable account in the needed output tax amount on purchases from abroad, and at the same time debits a required account with the amount of input tax to be paid under the standard tax rules.

Thus, to satisfy the legal requirements related to the reverse-charged VAT, in Acumatica ERP, you configure this type of VAT by creating two tax codes of the following types on the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form:

-   A reverse VAT: For this tax, you select the **Reverse VAT** check box and specify a reporting group of the *Output* type. This tax should be paid to the agency.
-   A general-type VAT: For this tax, you specify a reporting group of the *Input* type, and specify the same rate as the reverse VAT has. This tax can be claimed from the tax agency \(if it is allowed\).

The system calculates these taxes on the same bills so that the tax amounts will be rolled back and will not update the document total.

**Attention:** You must consider the legal requirements of your country in order to decide how you must report a reverse VAT and configure the tax report that meets these requirements.

**Parent topic:**[Value-Added Taxes](../ImplementationGuide/Taxes_Configuring_VAT_Mapref.md)

