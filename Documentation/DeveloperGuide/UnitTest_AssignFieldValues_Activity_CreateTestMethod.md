# Correct Assignment of Field Values in Tests:To Test the Effect of Changing Field Values {#_21a2ed23-7b7f-4d98-886c-1cae26904c80 .task}

The following activity will walk you through the process of creating a method that tests complicated business logic involving the assignment of field values.

## Story { .section}

Suppose that you want to make sure that the following behavior of the Services and Prices \(RS203000\) form has not changed:

-   If changes are made to the state of the **Required** or **Default** check box \(or both check boxes\) of a row, these changes aﬀect the states of these check boxes in other rows.
-   The prices are calculated correctly.

You need to create a test method. In this method, you need to create at least three repair items of different types and a labor item, configure them, and make sure that the fields that correspond to the **Required** and **Default** check boxes have the correct states and that the boxes with prices have the correct values.

## Process Overview { .section}

You will create a test method without parameters for the Services and Prices \(RS203000\) form. In this method, you will create an instance of the tested graph, `RSSVRepairPriceMaint`. In the cache of the graph, you will create the necessary objects by using the PXCache.Insert method, and configure them by using the PXCache.Update method. Then you will use the methods of the `Assert` class to verify that the necessary conditions for the values of the objects' fields are met.

## System Preparation { .section}

Before you begin creating the test method, do the following:

1.  Make sure that you have performed the [Test Instance for Unit Testing: To Deploy an Instance](UnitTest_InitialConfiguration_Activity_DeployInstance.md) prerequisite activity to prepare the Acumatica ERP instance that you will use.
2.  Make sure that you have performed the [Test Project and Test Class: To Create a Test Project](UnitTest_TestProject_Activity_CreateProject.md) prerequisite activity to create and configure the `PhoneRepairShop_Code.Tests.csproj` test project.
3.  Create the `RSSVRepairPriceMaintTests` test class. For an example that shows how to create a test class, see [Test Project and Test Class: To Create a Test Class](UnitTest_TestProject_Activity_CreateClass.md).

## Step 1: Creating a Test Method for the Services and Prices Form { .section}

In this step, you will create a test method for the Services and Prices \(RS203000\) form. \(For basic information on the creation of a test method without parameters, see [Test Method: General Information](UnitTest_TestMethod_GeneralInfo.md).\) Do the following:

1.  In the `RSSVRepairPriceMaintTests` class, create a `public void` method, and name it `TestServicesAndPricesForm`.
2.  Specify the `[Fact]` attribute for the method to indicate that this unit test is called without parameters.

## Step 2: Creating Necessary Objects { .section}

To create the objects that are necessary for testing the business logic, do the following:

1.  In the `TestServicesAndPricesForm` method, create an instance of the `RSSVRepairPriceMaint` graph by adding the following code.

    ```language-csharp
                var graph = PXGraph.CreateInstance<RSSVRepairPriceMaint>();
    ```

2.  Create a device to repair \(an `RSSVDevice` object\) and a service for repairing the device \(an `RSSVRepairService` object\) by adding the following code. You will use the IDs of the device and the service to create an `RSSVRepairPrice` object.

    ```language-csharp
                graph.Caches[typeof(RSSVDevice)].Insert(new RSSVDevice
                {
                    DeviceCD = "Device1"
                });
                graph.Caches[typeof(RSSVRepairService)].Insert(new
                 RSSVRepairService
                {
                    ServiceCD = "Service1"
                });
    ```

    **Important:** When you are creating an object, you need to specify values for its key fields. If you do not specify a value for an object's key field during the creation of the object, you cannot change the field value later.

3.  Create an `RSSVRepairPrice` object that will contain details about the repair service as follows.

    ```language-csharp
                RSSVRepairPrice repairPrice =
                    (RSSVRepairPrice)graph.Caches[typeof(RSSVRepairPrice)].
                    Insert(new RSSVRepairPrice());
    ```

    You could have specified the values for the key fields, `DeviceID` and `ServiceID`, but you did not because the `DeviceID` and `ServiceID` fields are assigned their values from the `Current` properties of the `RSSVDevice` and `RSSVRepairService` types.

4.  Make sure that you have added the `using PX.Objects.IN;` directive to the `RSSVRepairPriceMaintTests` class.
5.  Create three repair items—two of the `Battery` type, and one of the `BackCover` type—by using the following code.

    ```language-csharp
                InventoryItem battery1 = (InventoryItem)graph.
                    Caches[typeof(InventoryItem)].Insert(new
                    InventoryItem
                    {
                        InventoryCD = "Battery1"
                    });
                graph.Caches[typeof(InventoryItemCurySettings)].Insert(new
                    InventoryItemCurySettings
                    {
                        InventoryID = battery1.InventoryID,
                        CuryID = "USD"
                    });
                InventoryItemExt batteryExt1 =
                    battery1.GetExtension<InventoryItemExt>();
                batteryExt1.UsrRepairItem = true;
                batteryExt1.UsrRepairItemType = RepairItemTypeConstants.Battery;
                graph.Caches[typeof(InventoryItem)].Update(battery1);
    
                InventoryItem battery2 =
                 (InventoryItem)graph.Caches[typeof(InventoryItem)].Insert(new
                    InventoryItem
                 {
                     InventoryCD = "Battery2"
                 });
                graph.Caches[typeof(InventoryItemCurySettings)].Insert(new
                    InventoryItemCurySettings
                    {
                        InventoryID = battery2.InventoryID,
                        CuryID = "USD"
                    });
                InventoryItemExt batteryExt2 =
                    battery2.GetExtension<InventoryItemExt>();
                batteryExt2.UsrRepairItem = true;
                batteryExt2.UsrRepairItemType = RepairItemTypeConstants.Battery;
                graph.Caches[typeof(InventoryItem)].Update(battery2);
    
                InventoryItem backCover1 =
                 (InventoryItem)graph.Caches[typeof(InventoryItem)].Insert(new
                    InventoryItem
                 {
                     InventoryCD = "BackCover1"
                 });
                graph.Caches[typeof(InventoryItemCurySettings)].Insert(new
                    InventoryItemCurySettings
                    {
                        InventoryID = backCover1.InventoryID,
                        CuryID = "USD"
                    });
                InventoryItemExt backCoverExt1 =
                 backCover1.GetExtension<InventoryItemExt>();
                backCoverExt1.UsrRepairItem = true;
                backCoverExt1.UsrRepairItemType = RepairItemTypeConstants.BackCover;
                graph.Caches[typeof(InventoryItem)].Update(backCover1);
    ```

    This code adds an `InventoryItemCurySettings` object to the cache for each created repair item to give users the ability to specify the price of the repair items.

    This code also demonstrates the right order of instructions when you are implementing unit tests: You insert a new object into the cache by calling the PXCache.Insert method, and then you change non-key fields of the object and call the PXCache.Update method.

6.  Create a non-stock item that represents the work to be done by adding the following code.

    ```language-csharp
                InventoryItem work1 = (InventoryItem)graph.
                    Caches[typeof(InventoryItem)].Insert(new InventoryItem
                    {
                        InventoryCD = "Work1",
                        StkItem = false
                    });
    ```

7.  Create repair items based on the stock items, and configure them by adding the following code.

    ```language-csharp
                // Configure the back cover repair item
                RSSVRepairItem repairItemBackCover1 =
                    (RSSVRepairItem)graph.Caches[typeof(RSSVRepairItem)].Insert(
                        new RSSVRepairItem
                        {
                            InventoryID = backCover1.InventoryID,
                            Required = true,
                            BasePrice = 10,
                            IsDefault = true
                        });
    
                // Configure the first battery repair item
                RSSVRepairItem repairItemBattery1 =
                    (RSSVRepairItem)graph.Caches[typeof(RSSVRepairItem)].Insert(
                        new RSSVRepairItem
                        {
                            InventoryID = battery1.InventoryID
                        });
                repairItemBattery1.Required = true;
                repairItemBattery1.BasePrice = 20;
                repairItemBattery1.IsDefault = true;
                graph.Caches[typeof(RSSVRepairItem)].Update(repairItemBattery1);
    
                // Configure the second battery repair item
                RSSVRepairItem repairItemBattery2 =
                    (RSSVRepairItem)graph.Caches[typeof(RSSVRepairItem)].Insert(
                        new RSSVRepairItem
                        { InventoryID = battery2.InventoryID });
                repairItemBattery2.Required = false;
                repairItemBattery2.BasePrice = 30;
                repairItemBattery2.IsDefault = true;
                graph.Caches[typeof(RSSVRepairItem)].Update(repairItemBattery2);
    ```

    This code creates three repair items: one back cover, and two batteries.


## Step 3: Testing the Calculated Values { .section}

To test the calculated values, do the following:

1.  Add the following code to check the values of the `Required` and `IsDefault` fields.

    ```language-csharp
                // 2nd battery is not required -> 1st battery is also not required
                Assert.False(repairItemBattery1.Required);
                // 2nd battery is used by default -> 1st battery is not used by default
                Assert.False(repairItemBattery1.IsDefault);
                // The back cover's Required and Default fields are not affected
                Assert.True(repairItemBackCover1.Required);
                Assert.True(repairItemBackCover1.IsDefault);
    ```

2.  Add the following code to ensure that the prices are calculated correctly.

    ```language-csharp
                RSSVLabor labor = (RSSVLabor)graph.Caches[typeof(RSSVLabor)].
                    Insert(new RSSVLabor
                    {
                        InventoryID = work1.InventoryID,
                        DefaultPrice = 2,
                        Quantity = 3
                    });
                Assert.Equal(6, labor.ExtPrice);
                Assert.Equal(66, repairPrice.Price);
    ```

3.  Run the created test, and make sure that it succeeds.

**Parent topic:**[Correctly Assigning Field Values in Tests](../DeveloperGuide/UnitTest_AssignFieldValues_Mapref.md)

