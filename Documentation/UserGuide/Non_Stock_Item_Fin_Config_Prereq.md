# Non-Stock Item: Configuration Prerequisites {#_418f0b2a-ad7f-48ef-bcfc-9bb6657f732f .concept}

Before you start configuring a non-stock item, you need to configure the entities that will ease the processes of non-stock item creation and maintenance.

## Settings Required to be Configured {#section_tdm_4jv_vxb .section}

-   You need to perform the task of minimum system configuration. For details, see [Accounts Receivable: General Information](../ImplementationGuide/config_AR_GeneralInfo.md).
-   Make sure that the *Inventory and Order Management* group of features has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. Non-stock items can also be created for a system in which the *Inventory and Order Management* features are disabled.
-   On the [Posting Classes](IN_20_60_00.md) \(IN206000\) form, make sure that the *NONSTOCK* posting class has been configured. For details on configuring a posting class, see [Posting Classes: Implementation Activity](Posting_Classes_Implem_Activity.md).

    **Note:** While the U100 dataset you are going to use to configure a non-stock item uses posting classes, in a production environment you can configure a non-stock item without posting classes.

-   On the [Tax Categories](TX_20_55_00.md) \(TX205500\) form, make sure that the *EXEMPT* tax category has been defined, which you will assign to the new non-stock item to make it tax-exempt. \(Accounting for taxes is not part of the current business process.\)

**Parent topic:**[Creating a Non-Stock Item](../UserGuide/Non_Stock_Item_Fin_Mapref.md)

