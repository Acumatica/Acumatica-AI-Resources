# Reusing of UI Definitions: General Information {#_7d69fd20-b37e-4698-baec-45daa7d40fc5 .concept}

You can reuse a UI definition as follows:

-   To reuse a TypeScript declaration, extend a screen class or a class that derives from a screen class.
-   To reuse an HTML declaration or any part of it, use one of the following approaches:
    -   Add the qp-include tag
    -   Specify the template tag’s id in the ref attribute of the control tag

## Learning Objectives { .section}

In this chapter, you’ll learn how to:

-   Reuse the whole UI definition of an Acumatica ERP form for another form
-   Create and use a reusable UI definition with and without parameters

## Applicable Scenarios { .section}

You reuse a UI definition when:

-   You need to implement two almost-identical Acumatica ERP forms, such as [Site Map](../UserGuide/SM_20_05_20.md) \(SM200520\) and [Portal Map](../UserGuide/SM_20_05_21.md) \(SM200521\). You reuse the UI definition of one form to define the other.
-   You need to implement multiple Acumatica ERP forms with similar UI definitions, such as [Scan and Receive](../UserGuide/IN_30_10_20.md) \(IN301020\), [Scan and Issue](../UserGuide/IN_30_20_20.md) \(IN302020\), [Scan and Transfer](../UserGuide/IN_30_40_20.md) \(IN304020\), and [Scan and Count](../UserGuide/IN_30_50_20.md) \(IN305020\). You implement a reusable UI definition for the common parts and adjust the definition for each form.
-   You need to use identical form components—such as sections, tabs, or dialog boxes—on multiple forms.

## Use of the Whole UI Definition of a Form {#section_mtk_lsq_qgc .section}

A reusable UI definition that defines an entire form usually contains the declaration of a screen class and view classes. So to use it for your form, you need your screen class to extend the screen class of the UI definition. This way, your screen class will have the same logic and properties \(that is, views\) as the original screen class. To reuse the HTML template of the UI definition, you need to add the qp-include tag with the reference to the original HTML template.

To reuse the UI definition of a form, you need to reuse both the TypeScript declaration and the HTML code:

1.  In the TypeScript file, import the classes from the reusable UI definition, as shown below. You need to import the screen class and all view classes you plan to use.

    ``` {#codeblock_sr4_cpq_qgc}
    import { SM200520 } from "../SM200520/SM200520";
    ```

2.  In the TypeScript file, extend the screen class defined in the reusable definition. You must specify the graph type and primary view of the new form in the [graphInfo](https://help.acumatica.com/(W(5))/Help?ScreenId=ShowWiki&pageid=ba15979b-3ec3-9ddb-913c-3345acb5106f) decorator.

    **Attention:** In the Modern UI, each Acumatica ERP form must use its own graph type.

    For example, suppose that a reusable definition declares the SM200520 screen class, and you need to reuse it for the screen with SM200521 screen ID. You define the SM200521 class that extends the SM200520 class and specify the graph for the SM200521 screen, as shown below.

    ``` {#codeblock_qtk_lsq_qgc .language-javascript}
    @graphInfo({
      graphType: "PX.SiteMap.Graph.PortalMapMaint"
      primaryView: "SiteMap",
    })
    export class SM200521 extends SM200520 {}
    ```

    You can use an exact copy of the original class or modify the UI definition inherited from the base class.

3.  In the HTML file for the new form, insert the HTML code of the existing form by using the qp-include tag, as shown below.

    ``` {#codeblock_rtk_lsq_qgc .language-xml}
    <template>
      <qp-include url="../SM200520/SM200520.html">
    </template>
    ```


## Use of a Reusable UI Definition That Defines Part of a Form {#section_syr_lsq_qgc .section}

A reusable UI definition that defines a part of a form usually contains declarations of view classes but no screen class. So to use the definition for your form, you need to import the view classes from the reusable definition and initialize the views in your screen class. To reuse the HTML template of the UI definition, you need to add the qp-include tag with a reference to the original HTML template.

To use a reusable UI definition that defines part of a form, such as a fieldset:

1.  In the TypeScript file of the form where you need to insert the reusable UI definition, import the view classes, as shown below.

    ``` {#codeblock_tyr_lsq_qgc .language-javascript}
    import { Address } from "src/screens/common/form-address/form-address";
    ```

2.  In your form’s screen class, initialize the views and specify the imported view classes as parameters.

    ``` {#codeblock_zxg_lpq_qgc}
    @graphInfo({ ... })
    export class AM310000 extends PXScreen {
      @viewInfo({ containerName: "Ship-To Address" })
      ShippingAddress = createSingle(Address);
    }
    ```

3.  In the HTML code of the form where you need to insert the reusable UI definition, add the qp-include tag with a reference to this reusable UI definition. If the reusable definition has parameters, provide their values in the qp-include tag.

    **Note:** You can determine whether the reusable definition has parameters by reviewing the qp-include-parameters tag in the HTML template of the reusable definition.

    The following example shows the insertion of a reusable UI definition with parameters. \(For details, see [Reusing of UI Definitions: Reusable UI Definitions with Parameters](UIDev_UIDefinitionReuse_Params.md).\)

    ``` {#codeblock_uyr_lsq_qgc .language-xml}
    <div slot="B">
      <qp-include 
        url="src/screens/common/form-address/form-address.html" 
        fs-id="formB" 
        address-view="ShippingAddress" 
        fs-caption="Ship-To Address">
      </qp-include>
    </div>
    ```


## Adjusting of the Reusable UI Definition {#section_kpt_wsq_qgc .section}

After inserting a reusable UI definition into a form’s UI definition, you may need to add, remove, or replace particular elements to adjust the definition. Do the following:

1.  In the TypeScript code of the form, you define the elements that aren’t included in the reusable UI definition, as shown below. You can add more view classes, initialize views, or define more logic \(for example, in event handlers\).

    ``` {#codeblock_ppt_wsq_qgc .language-javascript}
    export class IN202520 extends BarcodeProcessingScreen {
      @viewInfo({ containerName: "Scan Header"  })
      HeaderView = createSingle(ScanHeader);
    }
    ```

    You can find examples of TypeScript code adjustments in [UI Adjustments in HTML and TypeScript: TypeScript Examples](UIDev_AdjustmentInExtension_TS.md).

2.  Adjust the HTML template as follows:

    1.  Add the tags you need to modify after or inside the qp-include tag.

        If the reusable UI definition defines a whole form—that is, your screen class extends the screen class of the UI definition—adjust the layout by adding tags **after** the qp-include tag. These tags must be located in the top-level template tag of the HTML file.

        If the reusable UI definition defines a part of a form \(for example, a fieldset\), adjust the layout by adding tags **inside** the qp-include tag.

    2.  Specify the attribute that indicates the type of modification, which can be one of these:
        -   before: Places the element before the element referenced in this attribute.
        -   after: Places the element after the element referenced in this attribute.
        -   append: Places the element after all child elements of the element referenced in this attribute.
        -   prepend: Places the element before all child elements of the element referenced in this attribute.
        -   modify: Modifies the attribute values of the element referenced in this attribute.
        -   remove: Removes the element referenced in this attribute.
        -   replace: Replaces the element referenced in this attribute.
    3.  As the value of the attribute, specify a CSS selector that defines the element relative to which you need to place the new element, such as *\#main* or *\#secondary \[name='OriginalFieldName'\]"*.

        **Tip:** You can use the following approaches when specifying the CSS selector:

        -   **Specifying the exact location of the element**, such as the fieldset’s ID and the field’s name.

            If no element satisfies the CSS selector, the build process fails. For example, suppose that you want to place a box right after the specific box in the specific fieldset of a form. You specify the exact location of the new field in the CSS selector, including the fieldset’s ID and the field’s name. If in a future version of Acumatica ERP, the field relative to which the new field is placed is moved to another fieldset, the build process will fail for this CSS selector.

        -   **Specifying only the field’s name.**

            If more than one item satisfies the specified CSS selector, the build process fails. For example, suppose that you want to place a new box right after a specific box and it doesn’t matter where this specific box is located on the form. You specify only the field’s name in the CSS selector. If the field is moved to another fieldset in a future version of Acumatica ERP, the build process will be successful for this CSS selector.

        Below you can see an example of adjusting a reusable UI definition that defines a whole form. The code adds three boxes in various fieldsets of the reusable UI definition and adds a tab with a table.

        ``` {#codeblock_xzm_3rq_qgc}
        <template>
        	<qp-include url="../../barcodeProcessing/BarcodeProcessingScreen.html"></qp-include>
        
        	<field append="#fsColumnA-Header" name="RefNbr" config-allow-edit.bind="true"></field>
        	<field append="#fsColumnA-Header" name="SiteID"></field>
        
        	<field append="#fsColumnB-Header" name="Mode"></field>
        
        	<qp-tab id="tabIssue" before="#tab-Logs" caption="Issue">
        		<qp-grid id="gridPicked" view.bind="transactions"></qp-grid>
        	</qp-tab>
        </template>
        ```

        The following example shows an adjustment of a reusable UI definition that defines a part of a form. The code modifies a field in the reusable UI definition.

        ``` {#codeblock_sy4_fsq_qgc}
        <qp-include url="src/screens/common/form-address/form-address.html"
        	fs-id="groupAccountAddress"
        	address-view="DefAddress"
        	fs-caption="Account Address"
        	fs-wg-container="DefAddress_DefAddress"
        	override-fieldname
        	view-on-map-action-name="ViewMainOnMap"
        >
        	<field modify="#groupAccountAddress [name='CountryID']" 
                after="#groupAccountAddress [name='PostalCode']"></field>
        </qp-include>
        ```

    You add as many adjustments as you need. You can find examples of layout adjustments in [UI Adjustments in HTML and TypeScript: HTML Examples](UIDev_AdjustmentInExtension_HTML.md).


## Predefined Reusable UI Definitions { .section}

A number of predefined reusable UI definitions are available in the following locations:

-   The `FrontendSources/screen/src/screens/common` folder of the Acumatica ERP instance
-   The `common` folder for particular functionality, such as the `FrontendSources/screen/src/screens/IN/common` folder of the Acumatica ERP instance for inventory functionality

You can use these reusable UI definitions in your UI customization projects.

**Parent topic:**[Reusing a UI Definition](../DeveloperGuide/UIDev_UIDefinitionReuse_Mapref.md)

