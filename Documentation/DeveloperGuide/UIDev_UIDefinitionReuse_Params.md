# Reusing of UI Definitions: Reusable UI Definitions with Parameters {#_bb5fdf2c-2e22-4ef9-a7ec-57e8ae13a706 .concept}

You can define a reusable UI definition with string parameters—such as a view value—and then provide values for these parameters when you’re referencing the reusable UI definition.

## Defining a Reusable UI Definition with Parameters { .section}

To define parameters in a reusable UI definition, you add the parameter names in the qp-include-parameters tag, which is inside the template tag of the reusable UI definition. You define parameters by using the mustache.js library. For details about the library, see [https://github.com/janl/mustache.js](https://github.com/janl/mustache.js).

You can define a parameter as being required by using the required modifier for the parameter. When this modifier is specified, a developer must provide a value for the parameter while inserting the reusable UI definition in a particular form. You can also specify the default value for a parameter.

To reference the parameters in the tags of the reusable UI definition, you specify the parameter name in double braces, for example, `"{{id}}"`.

The following code shows an example of the **Address** section. In this example, the `id`, `address-view`, and `wg-container` parameters are required. The `caption` parameter has `Address` as the default value.

```language-xml
<template>
  <qp-include-parameters
    id.required
    address-view.required
    caption="Address">
  </qp-include-parameters>

  <qp-fieldset
    id="{{id}}"
    view.bind="{{address-view}}"
    caption="{{caption}}"
    >
      <field name="FakeField" unbound>
        <qp-address-lookup class="col-12" view.bind="{{address-view}}">
        </qp-address-lookup>
      </field>
      ...
  </qp-fieldset>
</template>
```

## Inserting a Reusable UI Definition with Parameters { .section}

When you want to insert a reusable UI definition, you specify the parameters in the qp-include tag.

The following example shows the insertion of the reusable UI definition for the **Address** section, whose HTML code is defined in the previous section.

```language-xml
<div slot="B">
  <qp-include url="../../../common/forms/form-address/form-address.html"
    id="formA"
    address-view="AddressCurrent"
  ></qp-include>
</div>
```

**Parent topic:**[Reusing a UI Definition](../DeveloperGuide/UIDev_UIDefinitionReuse_Mapref.md)

