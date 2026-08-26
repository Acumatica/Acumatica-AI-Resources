# The Features.xml File {#_9ce76518-8acc-46d2-97c6-f909f5514df7 .concept}

Every instance of Acumatica ERP has a `Feature.xml` file, located in the PX.Data.dll library. This file contains the description of the out-of-the-box features that are available in the instance and displayed on the Enable/Disable Features \(CS100000\) form.

Each feature is represented in the `Features.xml` file by a `Feature` element with a number of `Access` subelements. \(For an example, see the following code.\)

```
<Feature Name="Branch">
   <Access ScreenID="GL201500"
           CacheName="PX.Objects.GL.Ledger"
           FieldName="DefBranchID" />
   <Access ScreenID="GL101010" />
   <Access FieldClass="BRANCH"/>
</Feature>
```

For all custom features you are implementing, you should create a new `Features.xml` file of the same structure that contains information about all new features.

## Targets for Rules { .section}

By using the `Access` element, you can set up rules for the following items:

-   A specific page, as shown in the following example.

    ```
    <Access ScreenID="AP506500" />
    ```

-   All pages whose identifiers start with the provided value; see the following code line.

    ```
    <Access ScreenID="IN" />
    ```

-   A specific data field on a page, as shown below.

    ```
    <Access ScreenID="GL201500"
            CacheName="PX.Objects.GL.Ledger"
            FieldName="PostInterCompany" />
    ```

-   Data fields having a specific field class. \(See the following example.\)

    ```
    <Access FieldClass="BRANCH"/>
    ```

    To apply this rule to a field, you should specify the name of the field class in the PXUIField attribute added to the field definition in the data access class, as follows.

    ```
    [PXUIField(DisplayName = "Active", FieldClass="BRANCH")]
    public bool? Active{
        get;
        set;
    }
    ```

-   A specific action on a page, as demonstrated in the following code line.

    ```
     <Access ScreenID="AR303000" ActionName="NewSalesOrder"/>
    ```

-   A user role, as the following example shows.

    ```
    <Access Role="Consultant"/>
    ```


**Parent topic:**[To Add a Custom Feature Switch](../CustomizationPlatform/CG_AddFeatureSwitch.md)

