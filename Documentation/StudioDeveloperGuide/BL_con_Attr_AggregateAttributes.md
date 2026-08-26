# Aggregation of Attributes {#_aa155a67-585e-47e7-a684-a1160d6ddbe8 .concept}

You can aggregate functionality from any number of attributes into a single attribute by using an aggregator attribute. An aggregator attribute is derived from the base PX.Data.PXAggregateAttribute attribute, which contains the logic that handles the aggregation process.

Suppose that you have the following definitions for the `CustomerID` field in the `ARInvoice` and `SOOrder` data access classes.

``` {#codeblock_cxr_w4f_zcc}
public class ARInvoice : IBqlTable
{
    [PXDBInt()]
    [PXUIField(DisplayName = "Customer")]
    [PXDefault()]
    [PXSelector(typeof(Search<BAccountR.bAccountID,
        Where<BAccountR.status, Equal<BAccount.status.active>>>))]
    public override Int32? CustomerID
}
public class SOOrder : IBqlTable
{
    [PXDBInt()]
    [PXUIField(DisplayName = "Customer")]
    [PXDefault()]
    [PXSelector(typeof(Search<BAccountR.bAccountID,
        Where<BAccountR.status, Equal<BAccount.status.active>>>))]
    public override Int32? CustomerID
}
```

For the `CustomerID` field specified in the classes in the code example above, you can aggregate the set of attributes by combining these attributes into a single class, as shown in the following code example.

``` {#codeblock_xb3_kpf_zcc}
[PXDBInt()]
[PXUIField(DisplayName = "Customer")]
[PXDefault()]
[PXSelector(typeof(Search<BAccountR.bAccountID,
    Where<BAccountR.status, Equal<BAccount.status.active>>>))]
public class CustomerActiveAttribute : PXAggregateAttribute { }
            
public class ARInvoice : IBqlTable
{
    [CustomerActive]
    public override Int32? CustomerID { get; set; }
}
            
public class SOOrder : IBqlTable
{
    [CustomerActive]
    public override Int32? CustomerID { get; set; }
}
```

In the code example above, you have aggregated all the attributes that are declared for the `CustomerID` field in the `ARInvoice` and `SOOrder` DACs by combining and declaring them in the `CustomerActiveAttribute` class. This class is extending the PXAggregateAttribute class, which serves as the base class from which an aggregator attribute is derived. You then simply replace all the originally defined attributes with the `CustomerActive` aggregator attribute for the `CustomerID` field in the `ARInvoice` and `SOOrder` DACs.

The PXAggregateAttribute attribute also contains the GetAttributes method, which returns the collection of all the combined attributes. The signature of this method is shown in the following code example.

``` {#codeblock_v5z_v2b_vcc}
public PXEventSubscriberAttribute[] GetAttributes()
```

**Important:** The PXAggregateAttribute attribute does not aggregate any attributes by itself. The aggregation is handled by the aggregator attributes derived from it.

## Approaches to Adding Attributes to an Aggregator Attribute { .section}

You can generally use the following approaches to add attributes to the aggregator attribute:

-   Add the attributes in code during runtime
-   Declare the attributes in the aggregator attribute's class definition

The preceding section provided an example of the second approach. To add attributes to the aggregator attribute in code during runtime, you add them to the aggregator attribute's constructor, as shown in the following code example.

``` {#codeblock_hrc_hbg_zcc}
 public VendorAttribute(Type search, params Type[] fields)
{
  ...
  var attr = new PXDimensionSelectorAttribute(DimensionName, cmd,
                              typeof(BAccountR.acctCD), fields));
  _Attributes.Add(attr);
  ...
  
}
```

In the code example above, the PXDimensionSelectorAttribute attribute has been added to the constructor of the PX.Objects.AP.VendorAttribute aggregator attribute. Note that in this case, the PXDimensionSelectorAttribute attribute itself is an aggregator attribute, which means that you can recursively declare aggregator attributes on other aggregator attributes \(though this approach is not recommended\).

## Best Practices for Working with an Aggregator Attribute {#section_wdy_spg_zcc .section}

The system determines a flattened \(non-hierarchical\) set of attributes added to a DAC field by an aggregator attribute by performing the following general steps \(in no particular order\):

-   The system adds the aggregator attribute itself and all of its base types.
-   The system adds the attributes aggregated by the aggregator attribute and all of their base types.
-   For all the aggregator attributes in the attributes acquired in the preceding step, the system recursively performs the preceding two steps until there are no more new attributes left to be added to the final set of attributes.

Note that PXCache automatically handles aggregator attributes. This means that calls to the PXCache.GetAttributes and PXCache.GetAttributesReadonly methods will return a list of flattened set of attributes.

You should try to avoid doing the following when you are working with an aggregator attribute:

-   Using complex combinations of multiple aggregator attributes on a DAC field. Although it is technically possible to correctly create these combinations, a change in the aggregated attributes of one of the aggregator attributes may easily break such a combination.
-   Declaring an aggregator attribute on another aggregator attribute.

## Common Use Cases of an Aggregator Attribute {#section_fsx_vmm_zcc .section}

You commonly use aggregator attributes to encode a fixed set of related attributes for some functionality in a single attribute. Additionally, you may use an aggregator attribute to define some business logic, as shown in the following code example.

``` {#codeblock_txw_knm_zcc}
[PXDBInt]
[PXUIField(DisplayName = "Project", Visibility = PXUIVisibility.Visible)]
[PXRestrictor(typeof(Where<PMProject.isActive, Equal<True>,
                      Or<PMProject.nonProject, Equal<True>>>),
                     Messages.InactiveContract, typeof(PMProject.contractCD))]
[PXRestrictor(typeof(Where<PMProject.isCompleted, Equal<False>>),
                     Messages.CompleteContract, typeof(PMProject.contractCD))]
[PXRestrictor(typeof(Where<PMProject.isCancelled, Equal<False>>),
                     Messages.CancelledContract, typeof(PMProject.contractCD))]
[PXRestrictor(typeof(Where<PMProject.baseType, NotEqual<CT.CTPRType.projectTemplate>,
                     And<PMProject.baseType, NotEqual<CT.CTPRType.contractTemplate>>>),
                     Messages.TemplateContract, typeof(PMProject.contractCD))]   
public class ActiveProjectOrContractBaseAttribute : PXEntityAttribute, IPXFieldVerifyingSubscriber
{...}
```

One of the most frequently used aggregator attributes is PX.Data.PXEntityAttribute, which serves as a base class for many other aggregator attributes, such as the one shown in the code example above. More than 200 aggregator attributes are derived from the PXEntityAttribute aggregator attribute. Other commonly used aggregator attributes include PX.Objects.GL.PeriodIDAttribute and PX.Objects.CM.CurrencyInfoAttribute.

**Parent topic:**[Working with Attributes](../StudioDeveloperGuide/BL__mng_Working_With_Attributes.md)

