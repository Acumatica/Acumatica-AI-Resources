# Test Method:To Create a Test Method with Parameters {#_2622d6f8-f0ff-4814-ad89-ee220aabd32d .task}

The following activity will walk you through the process of creating a test method with parameters.

## Story { .section}

Suppose that you want to make sure that the following behavior of the customized [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form has not changed:

-   The selection of the **Repair Item** check box causes the **Repair Item Type** drop-down list to be available.
-   The clearing of the **Repair Item** check box causes the **Repair Item Type** drop-down list to be unavailable.

You need to create a test method that selects or clears the **Repair Item** check box and checks whether the **Repair Item Type** drop-down list is available or unavailable, respectively.

## Process Overview { .section}

To create the test method, you will create a `public void` method with one Boolean parameter. You will assign the method the `[Theory]` attribute and two `[InlineData]` attributes, each of which has the possible values of the method parameter \(*true* and *false*\). In the method, you will create an instance of the tested graph. In the cache of the graph, you will create a record. For this record, by using the `GetExtension` generic method, you will retrieve the extension, which contains custom fields. Depending on the method parameter, you will change the state of the check box, update the cache of the graph, and make sure that the availability of the drop-down list has been changed according to the tested logic of the graph.

## System Preparation { .section}

Before you begin creating the test method, do the following:

1.  Make sure that you have performed the [Test Instance for Unit Testing: To Deploy an Instance](UnitTest_InitialConfiguration_Activity_DeployInstance.md) prerequisite activity to prepare the Acumatica ERP instance that you will use.
2.  Make sure that you have performed the [Test Project and Test Class: To Create a Test Project](UnitTest_TestProject_Activity_CreateProject.md) prerequisite activity to create and configure the `PhoneRepairShop_Code.Tests.csproj` test project.
3.  Create the `InventoryItemMaintTests` test class. For an example that shows how to create a test class, see [Test Project and Test Class: To Create a Test Class](UnitTest_TestProject_Activity_CreateClass.md).

## Step 1: Creating and Configuring a Test Method with Parameters { .section}

To create and configure a method for testing the business logic of the `InventoryItemMaint` class, do the following:

1.  In the `InventoryItemMaintTests` class, create a public void method, and name it *RepairItemTypeEnabled\_WhenRepairItemSelected*.
2.  To specify that this unit test is called with parameters, assign the `[Theory]` attribute to the method as follows.

    ```language-csharp
            [Theory]
            public void RepairItemTypeEnabled_WhenRepairItemSelected
    ```

3.  Add the Boolean `enabled` parameter to the `RepairItemTypeEnabled_WhenRepairItemSelected` method as follows.

    ```language-csharp
            public void RepairItemTypeEnabled_WhenRepairItemSelected
                (bool enabled)
    ```

4.  Add two `[InlineData]` attributes, which provide two values for the `enabled` parameter, as follows.

    ```language-csharp
            [Theory]
            [InlineData(true)]
            [InlineData(false)]
            public void RepairItemTypeEnabled_WhenRepairItemSelected
                (bool enabled)
    ```

    The `RepairItemTypeEnabled_WhenRepairItemSelected` method will be called twice: The first call will pass *true* as its argument, and the second will pass *false*.


## Step 2: Implementing a Method for Testing the InventoryItemMaint Class { .section}

To test the business logic of the `InventoryItemMaint` class, do the following:

1.  In the `RepairItemTypeEnabled_WhenRepairItemSelected` method, create an instance of the `InventoryItemMaint` graph by adding the following code.

    ```language-csharp
                var graph = PXGraph.CreateInstance<InventoryItemMaint>();
    ```

2.  After the `InventoryItemMaint` graph is initialized, create an `InventoryItem` object as follows.

    ```language-csharp
                InventoryItem item =
                    (InventoryItem)graph.Caches[typeof(InventoryItem)].Insert(
                        new InventoryItem
                        {
                            InventoryCD = "Item1",
                            Descr = "Item 1"
                        });
    ```

3.  Get the `InventoryItemExt` extension of the `InventoryItem` object as follows.

    ```language-csharp
                InventoryItemExt itemExt = item.GetExtension<InventoryItemExt>();
    ```

4.  Select \(or clear\) the **Repair Item** check box by using the needed value of the `enabled` parameter, and make sure that the **Repair Item Type** drop-down list is available \(or, respectively, unavailable\) by adding the following code.

    ```language-csharp
                itemExt.UsrRepairItem = enabled;
                graph.Caches[typeof(InventoryItem)].Update(item);
                PXFieldState fieldState =
                    ((PXFieldState)graph.Caches[typeof(InventoryItem)].GetStateExt<
                    InventoryItemExt.usrRepairItemType>(item));
                Assert.True(enabled == fieldState.Enabled);
    ```

    **Attention:** A call of the PXCache.Update method for the `InventoryItem` object updates both the object and its extension.


As a result of the actions you have performed in this activity, the `InventoryItemMaintTests.cs` file contains the following code.

```language-csharp
using Xunit;
using PX.Data;
using PX.Tests.Unit;
using PX.Objects.IN;
using PhoneRepairShop;

namespace PhoneRepairShop_Code.Tests
{
    public class InventoryItemMaintTests : TestBase
    {
        [Theory]
        [InlineData(true)]
        [InlineData(false)]
        public void RepairItemTypeEnabled_WhenRepairItemSelected
            (bool enabled)
        {
            var graph = PXGraph.CreateInstance<InventoryItemMaint>();

            InventoryItem item =
                (InventoryItem)graph.Caches[typeof(InventoryItem)].Insert(
                    new InventoryItem
                    {
                        InventoryCD = "Item1",
                        Descr = "Item 1"
                    });

            InventoryItemExt itemExt = item.GetExtension<InventoryItemExt>();

            itemExt.UsrRepairItem = enabled;
            graph.Caches[typeof(InventoryItem)].Update(item);
            PXFieldState fieldState =
                ((PXFieldState)graph.Caches[typeof(InventoryItem)].GetStateExt<
                InventoryItemExt.usrRepairItemType>(item));
            Assert.True(enabled == fieldState.Enabled);
        }
    }
}
```

**Note:** This test uses the *arrange-act-assert* pattern.

In some circumstances, running this test method may fail. To learn the actions that you must perform to make this test method successful, see [Test Method: To Register a Service](UnitTest_TestMethod_Activity_RegisterServices.md).

**Parent topic:**[Creating a Test Method](../DeveloperGuide/UnitTest_TestMethod_Mapref.md)

