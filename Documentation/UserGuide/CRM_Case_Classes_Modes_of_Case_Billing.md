# Case Classes: Modes of Case Billing {#_cb6d2d98-a946-4352-b374-2606123e596c .concept}

In Acumatica ERP, you can select the mode of billing a customer—for a case or for each activity associated with a case—for each case class. If the *Time Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can select a billing mode in the **Billing Mode** box on the **Details** tab of the [Case Classes](CR_20_60_00.md) \(CR206000\) form, and the mode determines how cases of the class are billed. If the feature is disabled, the system automatically assigns the *Per Case* billing mode to every new case class, and you can bill a customer only for a case.

With the *Time Management* feature enabled, for the case class, you select one of the following modes of case billing:

-   *Per Case*: You select this mode if you want a case of the class to be billed after it is closed. The total amount in an invoice for the work done will include all activities associated with the case.

    If the *Contract Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form, you can select the **Require Contract** check box on the **Details** tab of the [Case Classes](CR_20_60_00.md) form, and the system will require a contract to be specified for each case of the class.

    Also, you can specify a labor item and an overtime labor item for the class in the **Labor Item** and the **Overtime Labor Item** box, respectively, on the **Details** tab of the form.

-   *Per Activity*: You select this mode if you want to bill individual activities associated with each case of the class. You can use this option for case classes that you select for long-lasting cases that cannot be closed by the end of the billing period.

    If the *Contract Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form, the system selects the **Require Contract** check box and makes it unavailable for editing; with this setting, a user must specify a contract for each case of the class in the **Contract** box on the **Additional Info** tab of the [Cases](CR_30_60_00.md) \(CR306000\) form.

    Also, when this mode is selected, the **Labor Items** tab appears on the [Case Classes](CR_20_60_00.md) form. On this tab, you can specify the labor items to be used for specific earning types. The system will use labor items as sources of general ledger accounts to be used for transactions; for details, see [Labor Items: General Information](Non_Stock_Item_Projects_GeneralInfo.md).


**Parent topic:**[Defining Case Classes](../UserGuide/CRM_Case_Classes_Mapref.md)

