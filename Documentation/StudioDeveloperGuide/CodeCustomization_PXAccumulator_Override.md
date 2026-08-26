# PXAccumulator: Customization of an Existing Accumulator Attribute {#_a4ca2d89-50c1-49d2-9d1a-a9524468a52e .concept}

Suppose that a field on an Acumatica ERP form is updated with an accumulator attribute and you need to modify this field behavior, which is implemented in the accumulator attribute. For example, you may need to eliminate restrictions that are defined in an accumulator attribute. To customize an existing accumulator attribute, instead of overriding it, you do the following:

1.  Create a custom accumulator attribute that is derived from PXAccumulatorAttribute, and include all needed code. For details about implementation, see [PXAccumulator: Implementation of a Custom PXAccumulator Attribute](CodeCustomization_PXAccumulator_CustomAccumulator.md).
2.  In the Initialize\(\) method of the graph extension, replace PXCache.Interceptor with a new instance of the custom attribute, as shown in the following code example.

    **Note:** The system will use the custom accumulator attribute only in the graph for which you override the Initialize\(\) method.

    ```
    public class INDocumentRelease_Extension : PXGraphExtension<INDocumentRelease>
    {
        public override void Initialize()
        {
            base.Initialize();
            PXCache cacheBase = Base.Caches[typeof(AverageCostStatus)];
            cacheBase.Interceptor = new CustomCostStatusAccumulatorAttribute(
                typeof(AverageCostStatus.qtyOnHand), 
                typeof(AverageCostStatus.totalCost), 
                typeof(AverageCostStatus.inventoryID), 
                typeof(AverageCostStatus.costSubItemID), 
                typeof(AverageCostStatus.costSiteID), 
                typeof(AverageCostStatus.layerType), 
                typeof(AverageCostStatus.receiptNbr));
        }
    }
    ```


**Parent topic:**[Updating Data with a Custom PXAccumulator Attribute](../StudioDeveloperGuide/CodeCustomization_PXAccumulator_Mapref.md)

