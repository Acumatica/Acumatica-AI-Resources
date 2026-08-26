# UI Definition in HTML and TypeScript: Joined Fields {#_4de7348e-aa46-424c-8b1d-9a882867bb6b .concept}

To add a field from a joined data access class \(DAC\) of the data view to the UI of an Acumatica ERP form, you can use one of the approaches described in this topic.

## Using Two Underscores { .section}

In this approach, you use two underscores to separate the name of the joined DAC and the field name in this DAC. The following example shows the declaration of a joined field in TypeScript.

```language-javascript
Customer__AcctName: PXFieldState;
```

The following HTML code uses this joined field.

```language-xml
<field name="Customer__AcctName"></field>
```

## Using Periods {#_2d55ab88-b795-4f4f-ba62-ca730fc05871 .section}

In this approach to adding a joined field, you use periods to separate the view class name, the name of the joined DAC, and the field name.

In the TypeScript code of the form, you do the following:

1.  Declare a class with any name, such as the name of the joined DAC.
2.  In the class, declare the properties for the joined fields that you’re going to use. The names of the properties are the names of the fields.

    For example, suppose that you need to add fields from the joined Customer class. The new class in TypeScript should look as follows.

    ```language-javascript
    export class Customer {
      AcctName: PXFieldState;
      ClassID: PXFieldState;
    }
    ```

3.  In the view class that corresponds to the data view with the joined DAC, declare a property for the joined DAC. The name of the property is the name of the joined DAC, and the type of the property is the class that you’ve just declared. The following example shows an example of the property for the joined DAC.

    ```language-javascript
    export class DiscountCustomer extends PXView {
      ...
      Customer : Customer;
    }
    
    export class RS209500 extends PXScreen {
      Discount = createSingle(DiscountCustomer);
    }
    ```


As a result of adding the joined fields in this way, you can use them in HTML. You can specify the full name of the field, which includes the following parts separated by periods: the view class name, the name of the joined DAC, and the field name. Alternatively, if the fieldset that contains the field has the data view specified, you can use a shorter name that omits the view class name. The following code shows both of these approaches.

```language-xml
<qp-fieldset id="columnOne" view.bind="Discount">
  <field name="DiscountCustomer.Customer.AcctName"></field>
  <field name=".Customer.AcctName"></field>
</qp-fieldset>
```

**Parent topic:**[Defining Acumatica ERP Forms in HTML and TypeScript](../DeveloperGuide/UIDev_UIDefinition_Mapref.md)

