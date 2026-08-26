# Matrix Items: Implementation Activity {#_2269b44e-6e51-4584-8d11-c3fe6cf1f57d .task}

In the following implementation activity, you will learn how to create attributes, template items, and matrix items. In addition, you will learn how to delete matrix items and apply changes to multiple related matrix items.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that SweetLife Fruit &amp; Jams company has decided to extend the assortment of items it sells, and to sell various packed nuts of two brands: Bronko's Nuts and Merry Squirrel. Packed nuts of the Bronko's Nuts brand have multiple variants, with each variant defined by the type of nut, the package weight, the specialty \(salted, spicy, roasted, raw, yogurt-covered, or chocolate-covered\), and the state of the shell. The Merry Squirrel brand has the same variants of packed nuts as the Bronko's nuts brand excluding the shell state because all nuts of this brand are always shelled. For now, sales managers are going to sell Merry Squirrel nuts in packages of 4 ounces; depending on sales, other sizes may be available in the future. The following combinations of specialty and nut type will be available initially:

-   Raw almonds, cashews, and hazelnuts
-   Roasted pecans and peanuts
-   Salted pistachios
-   Spicy peanuts
-   Chocolate-covered almonds, cashews, hazelnuts, and peanuts

Further suppose that according to the naming policy of matrix items, the identifier of each matrix item must contain segments with values that represent all attributes, separated by hyphens. The descriptions of the matrix items must contain descriptions of the same attributes, separated by spaces.

You as an implementation manager have a task to prepare the system for these nuts to be purchased and sold. You will use the functionality of matrix items.

## Configuration Overview { .section}

For the purposes of this lesson, the following features have been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form:

-   *Matrix Items*
-   *Inventory*

The following entities, which you will use in this activity, have been predefined in the system:

-   The *WHOLESALE* warehouse on the [Warehouses](IN_20_40_00.md) \(IN204000\) form
-   The *MNUTS* item class on the [Item Classes](IN_20_10_00.md) \(IN201000\) form
-   The following attributes on the [Attributes](CS_20_50_00.md) \(CS205000\) form: *WEIGHT*, *SPECIALTY*, and *SHELL*.

## Process Overview { .section}

As you create matrix items and specify the related settings to prepare the system for matrix items to be purchased and sold, you will do the following:

1.  On the [Attributes](CS_20_50_00.md) \(CS205000\) form, create an attribute that you will use for the matrix items you will create
2.  On the [Attributes](CS_20_50_00.md) form, review the settings of the existing attributes, which you will also use for creating matrix items
3.  On the [Item Classes](IN_20_10_00.md) \(IN201000\) form, add the required attributes to the item class \(which has been predefined for your convenience\) that you will use to provide the default settings for the needed template item, and specify the appropriate category for each attribute
4.  On the [Template Items](IN_20_30_00.md) \(IN203000\) form, create a template item for Bronko's Nuts
5.  On the [Template Items](IN_20_30_00.md) form, create another template item for Merry Squirrel to be used to create the matrix items
6.  On the [Create Matrix Items](IN_20_35_00.md) \(IN203500\) form, create the matrix items from the second template item

    **Tip:** You can also create matrix items on the [Template Items](IN_20_30_00.md) form.

7.  On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, review the settings of a matrix item

    **Tip:** In production implementation, you do not need to review the settings of each matrix item. In this activity, you will do this to become familiar with the viewing of matrix items on this form.

8.  On the [Template Items](IN_20_30_00.md) form, delete a matrix item
9.  On the [Template Items](IN_20_30_00.md) form, modify the settings of the created matrix items through the template item

## System Preparation { .section}

Before you start creating template items and matrix items, do the following:

1.  Download the [Matrix\_Items\_Nutype\_Attribute](Files/Matrix_Items_Nutype_Attribute.xlsx) file, which holds the values of the *NUTYPE* attribute; you will create this attribute in this activity and upload the values.
2.  Sign in to a company with the *U100* dataset preloaded; you should sign in as a system administrator with the *gibbs* login and *123* password.

## Step 1: Creating an Attribute { .section}

You will first create the attribute for nut types, which you will later add to the item class and use for the creating matrix items. Do the following:

1.  Open the [Attributes](CS_20_50_00.md) \(CS205000\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the Summary area, specify the following settings:
    -   **Attribute ID**: `NUTYPE`
    -   **Description**: `Type of nuts`
    -   **Control Type**: *Combo*
4.  On the table toolbar, click **Load Records from File**.
5.  In the **File Upload** dialog box, which opens, select the file path to the [Matrix\_Items\_Nutype\_Attribute](Files/Matrix_Items_Nutype_Attribute.xlsx) file, and click **Upload**.
6.  In the **Common Settings** dialog box, which opens, leave the default settings, and click **OK**.
7.  In the **Columns** dialog box, leave the current mapping, and click **OK**.
8.  On the form toolbar, click **Save**.

You have created the attribute for nut types that will be used for creation of matrix items and uploaded the values of the attribute.

## Step 2: Reviewing the Settings of Existing Attributes { .section}

Review the settings of the *WEIGHT*, *SPECIALTY*, and *SHELL* attributes, which have already been defined in the dataset, as follows:

1.  While you are still viewing the [Attributes](CS_20_50_00.md) \(CS205000\) form, in the **Attribute ID** box, select *WEIGHT*.
2.  In the **Control Type** box, make sure that *Combo* is selected.
3.  In the table, review the list of attribute values and their settings \(listed below\) and make sure that the *04OZ* value exists.

    |Value ID|Description|Sort Order|
    |--------|-----------|----------|
    |*04OZ*|*4 oz*|*1*|
    |*08OZ*|*8 oz*|*2*|
    |*16OZ*|*16 oz*|*3*|
    |*1LB*|*1 lb*|*4*|

4.  In the **Attribute ID** box, select *SPECIALTY*.
5.  In the **Control Type** box, make sure that *Combo* is selected.
6.  In the table, review the list of attribute values and their settings \(listed below\).

    |Value ID|Description|Sort Order|
    |--------|-----------|----------|
    |*RAW*|*Raw*|1|
    |*RST*|*Roasted*|2|
    |*SLT*|*Salted*|3|
    |*SPC*|*Spicy*|4|
    |*CHT*|*Chocolate-covered*|5|
    |*YGT*|*Yogurt-covered*|6|

7.  In the **Attribute ID** box, select *SHELL*.
8.  In the **Control Type** box, make sure that *Combo* is selected.
9.  In the table, review the list of attribute values and their settings \(listed below\).

    |Value ID|Description|Sort Order|
    |--------|-----------|----------|
    |*Shelled*|*No shell*|*Empty*|
    |*Unshelled*|*Whole nuts*|*Empty*|


All attributes required for creating the matrix items for nuts have been defined.

## Step 3: Adding Attributes to the Needed Item Class { .section}

In this step, you will add the attributes to be used for matrix items to the *MNUTS* item class, which will provide default settings for the template item, as follows:

1.  Open the [Item Classes](IN_20_10_00.md) \(IN201000\) form.
2.  In the **Class ID** box, select *MNUTS*.
3.  On the **Attributes** tab, add the following attributes to the table:
    -   *NUTYPE*
    -   *WEIGHT*
    -   *SPECIALTY*
    -   *SHELL*
4.  In the **Category** column, select *Variant* for each attribute. This option indicates that the attribute will be used for generating matrix items of the item class.
5.  On the form toolbar, click **Save**.

You have added the attributes to the item class and specified the *Variant* category for the attributes.

## Step 4: Creating a Template Item { .section}

Now you will create the template item that for the Bronko's Nuts brand. Do the following:

1.  Open the [Template Items](IN_20_30_00.md) \(IN203000\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the Summary area, specify the following:
    -   **Template ID**: `NUTSBRONKO`
    -   **Description**: `Nuts: Bronko's Nuts`
    -   **Stock Item**: Selected
4.  In the **Item Class** box of the **General** tab, select *MNUTS*. The system copies the default settings from this item class to the corresponding boxes of the current form for the template item.
5.  On the **Configuration** tab, make sure that the *Type of nuts*, *The type of the shell*, *Specialties*, and *Weight* attributes are displayed in the table of the **Attributes** section.
6.  In the **Default Column Attribute ID** box \(below the table\), select *NUTYPE*. The values of this attribute will be displayed in the matrix columns by default when you create the matrix items.
7.  In the **Default Row Attribute ID** box, select *SPECIALTY*. The values of this attribute will be displayed in the matrix rows by default when you create the matrix items.
8.  In the **Inventory ID Segment Settings** table, add the inventory ID segments and settings listed below.

    |Segment Type|Attribute ID|Number of Characters|Separator|
    |------------|------------|--------------------|---------|
    |*Attribute Value*|*NUTYPE*|`3`|*-*|
    |*Attribute Value*|*SPECIALTY*|`3`|*-*|
    |*Attribute Value*|*WEIGHT*|`4`|*-*|
    |*Attribute Value*|*SHELL*|`9`| |

    Below the table, you can view the example of the inventory ID generated according to these settings.

9.  In the **Description Segment Settings** table, add the description segments and settings listed below.

    |Segment Type|Attribute ID|Number of Characters|Use Space as Separator|
    |------------|------------|--------------------|----------------------|
    |*Attribute Caption*|*NUTYPE*|`10`|Selected|
    |*Attribute Caption*|*SPECIALTY*|`12`|Selected|
    |*Attribute Caption*|*WEIGHT*|`5`|Selected|
    |*Attribute Caption*|*SHELL*|`10`|Selected|

    Below the table, you can view the example of the description generated according to these settings.

10. On the form toolbar, click **Save**.

You have created the template item that will provide default settings for the matrix items representing the variants of nuts.

## Step 5: Creating Another Template Item {#section_bsc_cwn_4wb .section}

Now you will create the template item that for the Merry Squirrel brand. Do the following:

1.  While you are still on the [Template Items](IN_20_30_00.md) \(IN203000\) form, click **Add New Record**.
2.  In the Summary area, specify the following:
    -   **Template ID**: `NUTSMERRY`
    -   **Description**: `Nuts: Merry Squirrel`
    -   **Stock Item**: Selected
3.  In the **Item Class** box of the **General** tab, select *MNUTS*. The system copies the default settings from this item class to the corresponding boxes of the current form for the template item.
4.  On the **Configuration** tab, make sure that the *Type of nuts*, *The type of the shell*, *Specialties*, and *Weight* attributes are displayed in the table of the **Attributes** section.
5.  Clear the unlabeled check box for the *The type of the shell* attribute.
6.  In the **Default Column Attribute ID** box \(below the table\), select *NUTYPE*. The values of this attribute will be displayed in the matrix columns by default when you create the matrix items.
7.  In the **Default Row Attribute ID** box, select *SPECIALTY*. The values of this attribute will be displayed in the matrix rows by default when you create the matrix items.
8.  In the **Inventory ID Segment Settings** table, add the inventory ID segments and settings listed below.

    |Segment Type|Attribute ID|Number of Characters|Separator|
    |------------|------------|--------------------|---------|
    |*Attribute Value*|*NUTYPE*|`3`|*-*|
    |*Attribute Value*|*SPECIALTY*|`3`|*-*|
    |*Attribute Value*|*WEIGHT*|`4`| |

    Below the table, you can view the example of the inventory ID generated according to these settings.

9.  In the **Description Segment Settings** table, add the description segments and settings listed below.

    |Segment Type|Attribute ID|Number of Characters|Use Space as Separator|
    |------------|------------|--------------------|----------------------|
    |*Attribute Caption*|*NUTYPE*|`10`|Selected|
    |*Attribute Caption*|*SPECIALTY*|`12`|Selected|
    |*Attribute Caption*|*WEIGHT*|`5`|Selected|

    Below the table, you can view the example of the description generated according to these settings.

10. On the form toolbar, click **Save**.

## Step 6: Creating the Matrix Items { .section}

Now that you have configured the template item that contains the settings for the group of matrix items, you will create the matrix items as follows:

1.  Open the [Create Matrix Items](IN_20_35_00.md) \(IN203500\) form.
2.  In the **Template ID** box of the Summary area, select *NUTSMERRY*.
3.  In the Additional Attributes table \(which is immediately below the Summary area\), in the only row of the **Weight** column, select *04OZ*. The system will use this value to generate all items of this group.
4.  In the Matrix table \(the bottom table on the form\), select the check boxes according to the following table. The system will create items with the selected combinations of attributes in columns and rows.

    |Attribute Value|Almonds|Cashews|Hazelnuts|Pecans|Pistachios|Peanuts|
    |---------------|-------|-------|---------|------|----------|-------|
    |**Raw**|Selected|Selected|Selected| | | |
    |**Roasted**| | | |Selected| |Selected|
    |**Salted**| | | | |Selected| |
    |**Spicy**| | | | | |Selected|
    |**Chocolate-covered**|Selected|Selected|Selected| | |Selected|
    |**Yogurt-covered**| | | | | | |

5.  On the form toolbar, click **Create Matrix Items**.
6.  In the **Create Matrix Items** dialog box, which opens, review the items to be generated \(shown in the following table\).

    |Selected|Inventory ID|Description|
    |--------|------------|-----------|
    |Yes|*ALD-RAW-04OZ*|*Almonds Raw 04 oz*|
    |Yes|*CHW-RAW-04OZ*|*Cashews Raw 04 oz*|
    |Yes|*HZT-RAW-04OZ*|*Hazelnuts Raw 04 oz*|
    |Yes|*PCN-RST-04OZ*|*Pecans Roasted 04 oz*|
    |Yes|*PNT-RST-04OZ*|*Peanuts Roasted 04 oz*|
    |Yes|*PHS-SLT-04OZ*|*Pistachios Salted 04 oz*|
    |Yes|*PNT-SPC-04OZ*|*Peanuts Spicy 4 oz*|
    |Yes|*ALD-CHT-04OZ*|*Almonds Chocolate-covered 04 oz*|
    |Yes|*CHW-CHT-04OZ*|*Cashews Chocolate-covered 04 oz*|
    |Yes|*HZT-CHT-04OZ*|*Hazelnuts Chocolate-covered 04 oz*|
    |Yes|*PNT-CHT-04OZ*|*Peanuts Chocolate-covered 04 oz*|

7.  Click **Confirmation**. The system creates the items and closes the dialog box.
8.  Open the [Template Items](IN_20_30_00.md) \(IN203000\) form, and select the *NUTSMERRY* template item.
9.  On the **Matrix Items** tab, view the list of matrix items.

You have created all of the matrix items that are based on the *NUTS* template.

## Step 7: Reviewing the Settings of a Matrix Item { .section}

Review the settings of the *ALD-CHT-04OZ* matrix item as follows:

1.  While you are still viewing the **Matrix Items** tab on the [Template Items](IN_20_30_00.md) \(IN203000\) form with the *NUTSMERRY* template item selected, click the link in the **Inventory ID** column for the *ALD-CHT-04OZ* row. The system opens the [Stock Items](IN_20_25_00.md) \(IN202500\) form in a new window.
2.  On the **General** tab, make sure that the *NUTS* template item is specified in the **Template ID** box.
3.  On the **Attributes** tab, view the list of attribute values specific to this matrix item.
4.  Close the window with the [Stock Items](IN_20_25_00.md) form.

## Step 8: Deleting a Matrix Item { .section}

Suppose that you were told that spicy peanuts cannot be supplied by the vendor, so this item is not needed. To delete the stock item for the spicy peanuts, do the following:

1.  While you are still viewing the **Matrix Items** tab on the [Template Items](IN_20_30_00.md) \(IN203000\) form with the *NUTS* template item selected, select the check box in the unlabeled column for the *PNT-SPC-04OZ* row.
2.  On the table toolbar, click **Delete**. The item is deleted.

## Step 9: Changing the Settings of the Template Item { .section}

Suppose that you were told that by default, all nuts will be stored in the wholesale warehouse. You will specify the warehouse in the template item settings and apply this change to existing matrix items based on this template. Do the following:

1.  While you are still viewing the [Template Items](IN_20_30_00.md) \(IN203000\) form with the *NUTSMERRY* template item selected, open the **General** tab.
2.  In the **Default Warehouse** box of the **Warehouse Details** section, select *WHOLESALE*.
3.  On the form toolbar, click **Save**.
4.  On the form toolbar, click **Update Matrix Items**.
5.  On the **Matrix Items** tab, click the link in the **Inventory ID** box for the *ALD-CHT-04OZ* row. The system opens the [Stock Items](IN_20_25_00.md) \(IN202500\) form.
6.  On the **General** tab, make sure that the *WHOLESALE* warehouse is selected in the **Default Warehouse** box of the **Warehouse Details** section. This means that the default warehouse has been updated for this matrix item \(and for other matrix items, too\).

You have successfully created a template item and then created, deleted, and modified the settings of the matrix items based on this template item.

**Parent topic:**[Managing Matrix Items](../UserGuide/Matrix_Items_Mapref.md)

