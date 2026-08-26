# Standard Buttons of the Form Toolbar {#_8426aecd-5671-4e61-9f61-245110ed1486 .concept}

With the standard form toolbar buttons, you can manipulate with data records, navigate between them, and use the clipboard.

The standard form toolbar includes the following buttons:

-   For data manipulation: **Insert**, **Delete**, **Save**, and **Cancel**
-   For navigation: **Next**, **Previous**, **First**, and **Last**
-   For the use of the clipboard: **Copy** and **Paste**

Every toolbar button corresponds to an action declared in the graph. To add standard buttons to the toolbar, you can use explicit or implicit declaration of these actions.

In any declaration, the DAC that you specify for actions must be the same as the main DAC of the primary view of the form. The form toolbar manipulates data records of the main DAC of the primary view. If the DAC specified for an action differs from the main DAC of the primary view, the button will not appear on the toolbar.

Suppose that you are developing the Countries form, where users work with a table of records and need only the **Cancel** and **Save** toolbar buttons. \(The users work with a table of records on the form and do not need the other standard buttons, such as **Previous** and **Next** for navigation.\) In the example of the `CountryMaint` graph \(shown in the following code\), we explicitly declare two actions that correspond to the **Cancel** and **Save** standard toolbar buttons.

```
// Explicit definition of the required standard buttons
public class CountryMaint : PXGraph<CountryMaint>
{
    **public PXCancel&lt;Country&gt; Cancel;
    public PXSave&lt;Country&gt; Save;**
    ...
}
```

**Attention:** For a form with one PXGrid container where multiple records can be edited and these records do not depend on one another, such as the [Charts of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) or [Site Map](../UserGuide/SM_20_05_20.md) \(SM200520\) form, you need to use the `PXSavePerRow` action instead of the `PXSave` action. If you use `PXSavePerRow`, an error that may occur during saving of one record does not prevent saving of other records.

To implicitly declare standard buttons, you need to specify the second type parameter in the base PXGraph class, as the following code shows in bold type.

```
// Implicit declaration of standard actions
public class CustomerMaint : PXGraph<CustomerMaint, **Customer**>
{
    public PXSelect<Customer> Customers;
}
```

The following code shows two equivalent declarations of actions for standard buttons that work with data records of the `Customer` DAC. Based on these declarations, the system automatically adds to the form toolbar the standard buttons for manipulating the `Customer` records if the main DAC of the primary view specified in the datasource control on the ASPX page is also `Customer`.

```
// Implicit declaration of standard actions
public class CustomerMaint : PXGraph<CustomerMaint, Customer>
{
    public PXSelect<Customer> Customers;
}

// Explicit declaration of standard actions
public class CustomerMaint : PXGraph<CustomerMaint>
{
    public PXSave<Customer> Save;
    public PXCancel<Customer> Cancel;
    public PXInsert<Customer> Insert;
    public PXCopyPasteAction<Customer> CopyPaste;
    public PXDelete<Customer> Delete;
    public PXFirst<Customer> First;
    public PXPrevious<Customer> Previous;
    public PXNext<Customer> Next;
    public PXLast<Customer> Last;
   
    public SelectFrom<Customer>.View Customers;
}
```

**Parent topic:**[Configuring the UI from the Backend](../StudioDeveloperGuide/BL__mng_Configuring_UI_from_Back_End.md)

