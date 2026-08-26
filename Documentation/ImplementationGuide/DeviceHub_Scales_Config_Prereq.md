# Scales: Configuration Prerequisites {#_6eb9af6a-a82f-44e7-a54f-e9fbe4449cf1 .concept}

Before starting to set up scales in DeviceHub, you should be sure that the needed features have been enabled and Acumatica ERP and DeviceHub have been configured, as described in the following sections.

## Enabling the Needed Features { .section}

On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *DeviceHub* feature must be enabled.

## Configuring the System { .section}

You need to make sure the following tasks have been performed in Acumatica ERP before you begin to configure printers in DeviceHub:

-   On the [Users](../UserGuide/SM_20_10_10.md) \(SM201010\) form, a user with the *Administrator* user role has been created. DeviceHub will use it for connecting to the Acumatica ERP. For details, see [DeviceHub: Configuration of a DeviceHub User](DeviceHub_Configuration_of_Application_User.md).
-   On the [Access Rights by Role](../UserGuide/SM_20_10_25.md) \(SM201025\) or [Access Rights by Screen](../UserGuide/SM_20_10_20.md) \(SM201020\) form, the user for connecting to the Acumatica ERP instance has been granted the *Edit* access rights to the [Scales](../UserGuide/SM_20_65_30.md) \(SM206530\) form.
-   If the UOM specified in the **Weight UOM** box on the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form differs from *KG*, make sure that a conversion rule to *KG* is created for this UOM on the [Units of Measure](../UserGuide/CS_20_35_00.md) \(CS203500\) form.

## Configuring the Application { .section}

You need to make sure that on the **Connection** tab of the **Configuration** window, the connection settings have been specified in DeviceHub before you begin to configure scales.

For more information about configuring the connection, see [DeviceHub: To Set Up the Connection Between DeviceHub and the Acumatica Instance](Devicehub_To_Set_Up_the_Connection_Implem_Activity.md).

**Parent topic:**[Configuring Digital Scales](../ImplementationGuide/Config_Scales_DeviceHub_Mapref.md)

