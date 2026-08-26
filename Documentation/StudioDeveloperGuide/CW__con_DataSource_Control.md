# Configuration of the Datasource Control {#_fdfe6193-c90e-4c23-ada5-c28a8768f6fe .concept}

Every ASPX page must have a single PXDataSource control. The datasource control performs the following functions:

-   Binds the ASPX page to the graph
-   Handles all client-server interactions
-   Is represented by the toolbar on the form that corresponds to the ASPX page

## TypeName and PrimaryView {#section_nn3_2rz_fm .section}

TypeName and PrimaryView are two required properties of a datasource control. For the TypeName property, you have to specify the graph that works with the page. For the PrimaryView property, you need to specify the data view that is used for navigation. The navigation actions work with the main DAC of this data view. Acumatica Framework adds callback commands to the datasource control for those actions whose data access class \(DAC\) is the same as the main DAC of PrimaryView.

```
public class CountryMaint : PXGraph<CountryMaint>
{
    // If PrimaryView is set to Countries, 
    // Framework adds the Cancel and Save callback commands to the
    // datasource control and the corresponding buttons appear on the
    // form toolbar
    public PXCancel<Country> Cancel;
    public PXSave<Country> Save;
   
    public SelectFrom<Country>.View Countries;
}
```

**Parent topic:**[Configuring the ASPX Page](../StudioDeveloperGuide/CW__mng_Configuring_Page.md)

