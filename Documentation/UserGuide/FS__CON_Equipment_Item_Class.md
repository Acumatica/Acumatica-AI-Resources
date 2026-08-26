# Item Classes for Equipment and Components {#_cbd3c3fe-c9cc-4df8-b588-04fb89ff359d .concept}

In Acumatica ERP, if you use the equipment management functionality to keep track of stock items and their parts after they are sold, you need to create appropriate item classes. Item classes, which are created and maintained on the [Item Classes](IN_20_10_00.md) \(IN201000\) form, are used to group stock or non-stock items with similar properties and to provide default settings for new items.

In this topic, you will read about the equipment and component item classes that you can create in the system.

## Part or Other Inventory Item Class { .section}

You create an item class of the **Part or Other Inventory** type in one of the following situations:

-   You need to create an item class of this type for stock items that are not related to equipment entities and should not be tracked in the Equipment Management functional area.
-   Your company has stock items that can be sold as parts of equipment entities and can be covered as a part of the equipment entity warranty. For example, suppose that a vehicle purchased by a customer is defined in the system as target equipment under warranty. You want to register that a sale of a spark plug for this vehicle is covered by the vehicle warranty. You have to create at least one item class of the **Part or Other Inventory** equipment type and assign an item class of this type to the spark plug stock item.

To create this type of item class on the [Item Classes](IN_20_10_00.md) \(IN201000\) form, you select the **Part or Other Inventory** option button under **Equipment Item Class** in the **Equipment Management** section on the **Service Management** tab.

## Model Equipment Item Class {#_f9c92619-5185-4b02-a3ad-f8ea87347a5d .section}

You create at least one model equipment item class if after stock items are sold, you want to track them \(and their components if necessary\) for preventive maintenance or warranty handling. When you create this item class, to specify that it is a model equipment item class, you select the **Model Equipment** option button under **Equipment Item Class** in the **Equipment Management** section on the **Service Management** tab of the [Item Classes](IN_20_10_00.md) \(IN201000\) form.

If you need to track the components of model equipment and perform actions \(such as selling and replacing\) upon these components, you should first create at least one component item class \(for details, see the next section of this topic\). In the table on the **Service Management** tab of the [Item Classes](IN_20_10_00.md) form for the model equipment item class, you then specify these components and assign them component item classes. You also specify the default quantity of each component and whether it is optional. Then when a stock item is created on the [Stock Items](IN_20_25_00.md) \(IN202500\) form and the model equipment class is selected, the system fills in the components in the table on the **Service Management** tab.

**Tip:** You can create model equipment with components only if components have been specified for its item class.

For instructions on how to create a model equipment item class, see [Stock Items to Be Tracked Post-Sale: To Create a Stock Item with No Components](EquipMgmt_Creating_Equipment_with_No_Components_Process_Activity.md).

## Component Item Class {#_7d72e1f4-e4ce-4b38-94a9-66d6b656e081 .section}

You create at least one component item class if a stock item, defined as a model equipment in the system, has components that you want to keep track of for preventive maintenance or warranty handling. Each component that you need to track and perform actions upon \(that is, selling and replacing them\) has to be defined on the [Stock Items](IN_20_25_00.md) \(IN202500\) form as a stock item assigned to a component item class. You define each component item class on the [Item Classes](IN_20_10_00.md) \(IN201000\) form. To specify that the item class is a component item class, you select the **Component** option button under **Equipment Item Class** in the **Equipment Management** section on the **Service Management** tab.

**Tip:** You need to associate a component with a stock item only if you will need to reflect in the system selling and replacing components.

For instructions on how to create a component item class, see [Stock Items to Be Tracked Post-Sale: To Create Components](EquipMgmt_Creating_Components_Process_Activity.md).

## Consumable Item Class { .section}

You create at least one consumable item class for items that are sold as parts of equipment entities but are not under a warranty. To specify that the item class is a consumable item class, you select the **Consumable** option button under **Equipment Item Class** in the **Equipment Management** section on the **Service Management** tab of the [Item Classes](IN_20_10_00.md) \(IN201000\) form.

For example, a vehicle is a customer's target equipment under warranty. You want to register in the system an oil change for the vehicle. To do this, you have to assign an item class of the **Consumable** equipment type to the stock item representing the oil.

**Parent topic:**[Managing Equipment](../UserGuide/FS__MNG_Equipment_chapter.md)

