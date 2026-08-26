# Workflow Actions: Categories of the More Menu {#_938bb4c9-cb50-49dc-9b2c-702e504eb66f .concept}

On the More menu of an Acumatica ERP form, the commands corresponding to actions are listed under categories. You can specify the category of an action by using Workflow API or attributes. If a category is not specified for an action, the action is represented in the following ways:

-   As a command listed under the **Other** category of the More menu
-   As a button on the form toolbar

Conversely, if a category has no actions added to it, then it will not be displayed on the More menu until at least one action is assigned to it.

## Specifying a Category for an Action on a Form with a Workflow {#section_g3d_njm_4qb .section}

To specify a category for an action on a form that uses a workflow, you perform the following general steps:

1.  You define and configure the category, as described in [Creating a Category](#section_ohb_5mm_4qb)
2.  In the action definition, you call the WithCategory method and specify the object that defines the category. An example is shown in the following code.

    ```
    actions.Add(g => g.printSalesOrder, c =>
        c.WithCategory(ActionCategory.printAndEmailCategory));
    ```


## Specifying the Order of Actions in a Category { .section}

You can specify the location of an action in a category, which determines the placement of its corresponding command on the More menu. An action can be placed first, last, or before or after another specified action. To specify the location, you use the Place method or the Placement parameter of the WithCategory method.

The following code shows an example of the usage of the Placement parameter.

```
actions.Add(g => g.putOnHold, c =>
     c.WithCategory(processingCategory, Placement.First));
```

In the code example above, the `putOnHold` action is placed first in the `processingCategory` by specifying Placement.First. For more details, see [Enum Placement](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=13832e69-5dff-77e2-1f96-f6f325aeffee).

## Creating a Category {#section_ohb_5mm_4qb .section}

You can create a category on the More menu by creating a new object that can later be used for multiple actions. To define a category by creating an object, you perform the following general steps:

1.  You call the Categories.CreateNew method and provide the display name of the category. An example is shown in the following code.

    ```
    var processSalesCategory = context.Categories.CreateNew
      (ActionCategories.ProcessSalesCategoryID,
        category => category.DisplayName(CategoryNames.ProcessSales)
          .Place(Placement.Before, labelsCategory));
    );
    ```

    In the preceding code, you have created a new category with the `CategoryNames.ProcessSales` display name and placed it before the `labelsCategory`.

2.  You add the category to the screen configuration by using the WithCategories method, as the following code shows.

    ```
    .WithCategories(categories =>categories.Add(processSalesCategory))
    ```


## Specifying the Order of Categories { .section}

You can specify the location of a category on the More menu by calling the Place method. A category can be placed first, last, or before or after a specified category by using the Placement parameter of this method.

In the following code example, the existing **Printing Email** category \(which corresponds to `printingEmailingCategory` in code\) is placed last on the More menu.

```
.WithCategories(
  actions.Update(printingEmailingCategory, 
    category => category.Place(Placement.Last));
);
```

You can define the order of categories by using the PlaceAfter and PlaceBefore methods in the WithCategories method. An example is shown in the following code.

```
.WithCategories(categories =>
{
  categories.Add(processingCategory);
  categories.Add(intercompanyCategory);
  categories.Add(printingEmailingCategory);
  categories.Add(otherCategory);
  categories.Update(FolderType.ReportsFolder,
    category => category.PlaceAfter(otherCategory));
})
```

By default, the **Actions**, **Inquiries**, and **Reports** categories are the first categories on the menu if there is at least one action in any of these categories.

## Specifying a Category for an Action on a Form Without a Workflow {#section_wfc_4jm_4qb .section}

You can place an action in a category by specifying the category in the PXButton attribute for an action. An example is shown in the following code.

```
[PXButton(Category = "Publish")]
protected virtual void ViewXml()
```

In the code above, the `ViewXml` action is placed in the **Publish** category. If the specified category does not exist, it will be created by the system.

If there are multiple actions in the same category, the order of actions in the category is the same as the order in which the actions are declared in code: first, the actions declared in the code of the graph, in their order of declaration in code; and then the actions in all graph extensions, in the order in which they are declared in code.

**Parent topic:**[Implementing Workflow Actions](../DeveloperGuide/WorkflowAPI_Actions_Mapref.md)

