# Testing of Errors and Warnings:To Test the Display of Errors and Warnings {#_306d5c41-841a-4f2a-b1b5-c8b036a8e914 .task}

The following activity will walk you through the process of creating a method that tests the display of warning and error messages.

## Story { .section}

Suppose that you want to make sure that the following behavior of the Repair Work Orders \(RS301000\) form has not changed:

-   When a new work order is initialized, the system copies to it the repair items and labor items of the `RSSVRepairPrice` object that has the same `DeviceID` and `ServiceID` values as the work order being initialized.
-   Negative values of labor quantities are prohibited.
-   The values of labor quantities are not permitted to be less than the minimum values.
-   In work orders for which the priority is *Low*, repair services that are marked as requiring preliminary checks are prohibited.

You need to create a test method. In this method, you need to initialize the settings of the graph.

## Process Overview { .section}

You will create a test method without parameters for the Repair Work Orders \(RS301000\) form. In this method, you will initialize the settings of the tested graph `RSSVWorkOrderEntry` by calling the `Setup<>` generic method. Then you will create an instance of the `RSSVWorkOrderEntry` graph. In the cache of the graph, you will create the necessary objects and configure them. You will assign to the fields values that are not allowed by the business logic of the graph and ensure that the appropriate warnings or errors appear in the UI; you will do this by calling the `PXCache.GetStateExt` method.

## System Preparation { .section}

Before you begin creating the test method, do the following:

1.  Make sure that you have performed the [Test Instance for Unit Testing: To Deploy an Instance](UnitTest_InitialConfiguration_Activity_DeployInstance.md) prerequisite activity to prepare the Acumatica ERP instance that you will use.
2.  Make sure that you have performed the [Test Project and Test Class: To Create a Test Project](UnitTest_TestProject_Activity_CreateProject.md) prerequisite activity to create and configure the `PhoneRepairShop_Code.Tests.csproj` test project.
3.  Create the `RSSVWorkOrderEntryTests` test class. For an example that shows how to create a test class, see [Test Project and Test Class: To Create a Test Class](UnitTest_TestProject_Activity_CreateClass.md).

## Step 1: Creating a Test Method for the Repair Work Orders Form { .section}

In this step, you will create a test method for the Repair Work Orders \(RS301000\) form. \(For basic information on the creation of a test method without parameters, see [Test Method: General Information](UnitTest_TestMethod_GeneralInfo.md).\) Do the following:

1.  In the `RSSVWorkOrderEntryTests` class, create a `public void` method, and name it `TestRepairWorkOrdersForm`.
2.  Specify the `[Fact]` attribute for the method to indicate that this unit test is called without parameters.
3.  Initialize the settings for the `RSSVWorkOrderEntry` graph by adding the following code.

    ```language-csharp
                Setup<RSSVWorkOrderEntry>(new RSSVSetup());
    ```

    The `RSSVSetup` DAC contains settings for the `RSSVWorkOrderEntry` graph. The call of the Setup&lt;&gt; generic method is mandatory because it initializes an `RSSVSetup` object.

4.  Create an instance of the `RSSVWorkOrderEntry` graph as follows.

    ```language-csharp
                var graph = PXGraph.CreateInstance<RSSVWorkOrderEntry>();
    ```


## Step 2: Creating the Necessary Objects { .section}

In the `TestRepairWorkOrdersForm` method, create the objects that are needed to test the displaying of warnings and errors as follows:

1.  Create an `RSSVDevice` object and two `RSSVRepairService` objects \(one of these is the main object, and the other is auxiliary\) by adding the following code.

    ```language-csharp
                RSSVDevice device = (RSSVDevice)graph.Caches[typeof(RSSVDevice)].
                    Insert(new RSSVDevice { DeviceCD = "Device1" });
    
                RSSVRepairService repairService =
                    (RSSVRepairService)graph.Caches[typeof(RSSVRepairService)].
                    Insert(new RSSVRepairService
                    {
                        ServiceCD = "Service1"
                    });
                RSSVRepairService repairService2 =
                    (RSSVRepairService)graph.Caches[typeof(RSSVRepairService)].
                    Insert(new RSSVRepairService
                    {
                        ServiceCD = "Service2"
                    });
    ```

2.  Create an `RSSVRepairPrice` object, and initialize it with the `RSSVDevice` object and the main `RSSVRepairService` object. You do this by adding the following code.

    ```language-csharp
                graph.Caches[typeof(RSSVRepairPrice)].Insert(new RSSVRepairPrice
                {
                    DeviceID = device.DeviceID,
                    ServiceID = repairService.ServiceID
                });
    ```

3.  Make sure that you have added the `using PX.Objects.IN;` directive to the `RSSVWorkOrderEntryTests` class.
4.  Add the following code to create two stock items and one non-stock item, and to make the two stock items repair items.

    ```language-csharp
                InventoryItem battery1 =
                    (InventoryItem)graph.Caches[typeof(InventoryItem)].Insert(new
                    InventoryItem
                    {
                        InventoryCD = "Battery1"
                    });
                InventoryItemExt batteryExt1 =
                    battery1.GetExtension<InventoryItemExt>();
                batteryExt1.UsrRepairItem = true;
                batteryExt1.UsrRepairItemType = RepairItemTypeConstants.Battery;
                graph.Caches[typeof(InventoryItem)].Update(battery1);
    
                InventoryItem backCover1 =
                    (InventoryItem)graph.Caches[typeof(InventoryItem)].Insert(new
                 InventoryItem
                    {
                        InventoryCD = "BackCover1"
                    });
                InventoryItemExt backCoverExt1 =
                 backCover1.GetExtension<InventoryItemExt>();
                backCoverExt1.UsrRepairItem = true;
                backCoverExt1.UsrRepairItemType =
                    RepairItemTypeConstants.BackCover;
                graph.Caches[typeof(InventoryItem)].Update(backCover1);
    
                InventoryItem work1 =
                    (InventoryItem)graph.Caches[typeof(InventoryItem)].Insert(new
                 InventoryItem
                    {
                        InventoryCD = "Work1",
                        StkItem = false
                    });
    ```

5.  Create two repair items based on the two stock items as follows.

    ```language-csharp
                RSSVRepairItem repairItemBackCover1 =
                    (RSSVRepairItem)graph.Caches[typeof(RSSVRepairItem)].Insert(
                        new RSSVRepairItem
                        {
                            DeviceID = device.DeviceID,
                            ServiceID = repairService.ServiceID
                        });
                repairItemBackCover1.InventoryID = backCover1.InventoryID;
                repairItemBackCover1.Required = true;
                repairItemBackCover1.BasePrice = 10;
                repairItemBackCover1.IsDefault = true;
                repairItemBackCover1.RepairItemType =
                    backCoverExt1.UsrRepairItemType;
                graph.Caches[typeof(RSSVRepairItem)].Update(repairItemBackCover1);
    
                RSSVRepairItem repairItemBattery1 =
                    (RSSVRepairItem)graph.Caches[typeof(RSSVRepairItem)].Insert(
                        new RSSVRepairItem
                        {
                            DeviceID = device.DeviceID,
                            ServiceID = repairService.ServiceID
                        });
                repairItemBattery1.InventoryID = battery1.InventoryID;
                repairItemBattery1.Required = true;
                repairItemBattery1.BasePrice = 20;
                repairItemBattery1.IsDefault = true;
                repairItemBattery1.RepairItemType = batteryExt1.UsrRepairItemType;
                graph.Caches[typeof(RSSVRepairItem)].Update(repairItemBattery1);
    ```

6.  Create an `RSSVLabor` object based on the non-stock item by using the following code.

    ```language-csharp
                RSSVLabor labor = (RSSVLabor)graph.Caches[typeof(RSSVLabor)].
                    Insert(new RSSVLabor
                    {
                        InventoryID = work1.InventoryID,
                        DeviceID = device.DeviceID,
                        ServiceID = repairService.ServiceID
                    });
                labor.DefaultPrice = 2;
                labor.Quantity = 3;
                graph.Caches[typeof(RSSVLabor)].Update(labor);
    ```

7.  Create a work order with the same `DeviceID` and `ServiceID` values as those specified for the `RSSVRepairPrice` object, which was created in Instruction 2. To do this, add the following code.

    ```language-csharp
                RSSVWorkOrder workOrder = (RSSVWorkOrder)graph.
                    Caches[typeof(RSSVWorkOrder)].Insert(new RSSVWorkOrder());
                workOrder.DeviceID = device.DeviceID;
                workOrder.ServiceID = repairService.ServiceID;
                graph.Caches[typeof(RSSVWorkOrder)].Update(workOrder);
    ```


## Step 3: Testing the Display of Errors and Warnings { .section}

Now that the necessary objects have been created, perform the following instructions to test the display of errors and warnings:

1.  As the first test, add the following code to make sure that there are two `RSSVWorkOrderItem` objects, which have been created based on the two `RSSVRepairItem` objects, and an `RSSVWorkOrderLabor` object, which has been created based on the `RSSVLabor` object.

    ```language-csharp
                Assert.Equal(2, graph.RepairItems.Select().Count);
                Assert.Single(graph.Labor.Select());
    ```

2.  As the second test, add the following code to ensure that the changing of the `ServiceID` field of the work order does not affect the `RepairItems` and `Labor` views.

    ```language-csharp
                workOrder.ServiceID = repairService2.ServiceID;
                graph.Caches[typeof(RSSVWorkOrder)].Update(workOrder);
                Assert.Equal(2, graph.RepairItems.Select().Count);
                Assert.Single(graph.Labor.Select());
    ```

3.  Restore the `ServiceID` value as follows.

    ```language-csharp
                workOrder.ServiceID = repairService.ServiceID;
                graph.Caches[typeof(RSSVWorkOrder)].Update(workOrder);
    ```

4.  Obtain the `RSSVWorkOrderLabor` object \(the value of its `Quantity` field must be *3*\), and try to assign a negative value to its `Quantity` field by using the following code. An error message must be attached to the `Quantity` field instead.

    ```language-csharp
                RSSVWorkOrderLabor woLabor = graph.Labor.SelectSingle();
                Assert.Equal(3, woLabor.Quantity);
                woLabor.Quantity = -1;
                graph.Caches[typeof(RSSVWorkOrderLabor)].Update(woLabor);
                PXFieldState fieldState =
                    (PXFieldState)graph.Caches[typeof(RSSVWorkOrderLabor)].
                    GetStateExt<RSSVWorkOrderLabor.quantity>(woLabor);
                Assert.Equal(PhoneRepairShop.Messages.QuantityCannotBeNegative,
                    fieldState.Error);
                Assert.Equal(PXErrorLevel.Error, fieldState.ErrorLevel);
                graph.Labor.Cache.Clear();
    ```

    In the code, the `PXCache.Clear` method is called to clear the cache of the generated error.

5.  By using the following code, assign to the `Quantity` field of the `RSSVWorkOrderLabor` object a value that is less than the value of the corresponding `RSSVLabor.Quantity` field. Then make sure that the following result is achieved: A warning message is attached to the `RSSVWorkOrderLabor.Quantity` field, and the field is assigned the value of the corresponding `RSSVLabor.Quantity` field.

    ```language-csharp
                woLabor.Quantity = 1;
                graph.Caches[typeof(RSSVWorkOrderLabor)].Update(woLabor);
                woLabor = (RSSVWorkOrderLabor)graph.
                    Caches[typeof(RSSVWorkOrderLabor)].Locate(woLabor);
                fieldState = (PXFieldState)graph.
                    Caches[typeof(RSSVWorkOrderLabor)].
                    GetStateExt<RSSVWorkOrderLabor.quantity>(woLabor);
                Assert.Equal(PhoneRepairShop.Messages.QuantityTooSmall,
                    fieldState.Error);
                Assert.Equal(PXErrorLevel.Warning, fieldState.ErrorLevel);
                Assert.Equal(3, woLabor.Quantity);
    ```

    In the code, you use the `PXCache.Locate` method to obtain the proper `RSSVWorkOrderLabor` object from the cache to check the presence and text of the warning.

6.  By using the following code, configure the second repair service `repairService2` to require a preliminary check, and assign it to the work order. The code also sets the priority of the work order to *Low* and makes sure that an error message is attached to the `Priority` field of the work order; this error message informs the user that the priority of the work order is too low.

    ```language-csharp
                repairService2.PreliminaryCheck = true;
                graph.Caches[typeof(RSSVRepairService)].Update(repairService2);
                workOrder.ServiceID = repairService2.ServiceID;
                workOrder.Priority = WorkOrderPriorityConstants.Low;
                graph.Caches[typeof(RSSVWorkOrder)].Update(workOrder);
                workOrder = (RSSVWorkOrder)graph.Caches[typeof(RSSVWorkOrder)].
                    Locate(workOrder);
                fieldState = (PXFieldState)graph.Caches[typeof(RSSVWorkOrder)].
                    GetStateExt<RSSVWorkOrder.priority>(workOrder);
                Assert.Equal(PhoneRepairShop.Messages.PriorityTooLow, fieldState.Error);
                Assert.Equal(PXErrorLevel.Error, fieldState.ErrorLevel);
    ```

7.  Run the test method you have created, and make sure that it succeeds.

**Parent topic:**[Testing the Display of Errors and Warnings](../DeveloperGuide/UnitTest_TestErrorsWarnings_Mapref.md)

