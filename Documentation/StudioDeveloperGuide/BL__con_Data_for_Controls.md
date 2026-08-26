# Data for Controls {#_16fbe106-2f81-4bd3-8a44-fcca6a0d114e .concept}

In a graph, you have to define a separate data view for each container control on the ASPX page, including nested container controls. Each data view should refer to a unique main data access class \(DAC\) unless you want to display the same data record in multiple container controls.

The two data views defined in the following code example have the same main DAC and work with the same PXCache object, which stores the `Product` data records.

```
public SelectFrom<Product>.View Products;
public SelectFrom<Product>. 
    Where<Product.productID.IsEqual<Product.productID.FromCurrent>>.View
    ProductDetails;
```

The two data views in this example can be used as data members for only UI containers that display the same data record at the same time. In this definition of data views, the first one is used to display brief information of a product on a form, and the second one is used to display the detail information of the same product on a tab. For both data views, the Current property of the PXCache cache object returns the same Product data record. If a user selects a data record in one UI container, the same data record appears in the second container.

To bind a container control with a data view, you specify the data view in the DataMember property of the container control. Each container control should be bound to a data view. You can bind any number of container controls to the same data view, unless the data view is specified in the PrimaryView property of the datasource control.

**Parent topic:**[Configuring the UI from the Backend](../StudioDeveloperGuide/BL__mng_Configuring_UI_from_Back_End.md)

