# Tax Zones and Categories: Automatic Assignment of a Tax Zone in Documents {#_3e2f1acf-b363-4bb3-bab4-c9449ca86e9b .concept}

On the [Tax Zones](../UserGuide/TX_20_60_00.md) \(TX206000\) form, tax zones can be defined based on combinations of country, state, and postal code, and ranges of postal codes can be specified. The system supports three types of tax zones:

-   Tax zones based on one country or multiple countries. With this type of tax zone, a user can include entire countries in the tax zone.
-   Tax zones based on one state or multiple states. A user can assign any combination of states of the same country to this tax zone. With this type, the tax zone consists of the entire state or states.
-   Tax zones based on one postal code or multiple postal codes. Multiple ranges of postal codes within the same country can be assigned to this tax zone.

To select a type of for a specific tax zone, on the **Ship-To Addresses** tab of the [Tax Zones](../UserGuide/TX_20_60_00.md) form, you select one of the following options in the **Tax Zone Is Based On** box:

-   *Countries*: The tax zone is based on any number of countries. To add each country in the tax zone, you click **Add Row** on the table toolbar and select the country from the list in the **Country** column.
-   *States*: The tax zone is based on any number of states of a specific country. You select a country in the **Country** box and then add each state in the tax zone by clicking **Add Row** on the table toolbar and selecting the state in the list in the **State** column.
-   *Postal Codes* \(default\): The tax zone is based on any number of ranges of postal codes within a specific country. You select a country in the **Country** box and then add each range of postal codes in the tax zone by clicking **Add Row** on the table toolbar and entering the needed values in the **From Postal Code** and **To Postal Code** columns.

On data entry forms, if a customer has an empty tax zone, the system searches for a tax zone that matches the range of postal codes specified on the [Tax Zones](../UserGuide/TX_20_60_00.md) form. If no tax zone is found, the system continues searching for a tax zone that matches the state of the shipping address. If no tax zone is found, the system searches for a tax zone that matches the country of the shipping address. The system considers the combination of the country, state, and postal code in the shipping address while searching for a matching tax code.

The automatic search for a tax zone is applied in the following boxes on the following forms:

-   [Invoices and Memos](../UserGuide/AR_30_10_00.md) \(AR301000\): **Customer Tax Zone** \(**Financial** tab\)
-   [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\): **Customer Tax Zone** \(**Financial** tab\)
-   [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\): **Customer Tax Zone** \(**Financial** tab\)
-   [Opportunities](../UserGuide/CR_30_40_00.md) \(CR304000\): **Tax Zone** \(**Additional Info** tab\)
-   [Project Quotes](../UserGuide/PM_30_45_00.md) \(PM304500\): **Tax Zone** \(**Financial** tab\)
-   [Sales Quotes](../UserGuide/CR_30_45_00.md) \(CR304500\): **Tax Zone** \(**Additional Info** tab\)
-   [Service Orders](../UserGuide/FS_30_01_00.md) \(FS300100\): **Customer Tax Zone** \(**Financial** tab\)
-   [Appointments](../UserGuide/FS_30_02_00.md) \(FS300200\): **Customer Tax Zone** \(**Financial** tab\)

**Parent topic:**[Tax Zones and Tax Categories](../ImplementationGuide/Taxes_TaxZones_and_Categories_Mapref.md)

