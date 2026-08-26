# Use of the PXPanel Container {#_664a1925-03f2-41c2-a35a-348fb7738580 .concept}

PXPanel is a container that provides an independent set of controls on the form and is used to define complex layouts. A PXPanel container has no DataMember property and cannot be independently bound to a data view. The panel can display only fields from the data view to which the parent form or tab control is bound. The panel is used only for defining blocks of controls within a form. You can add layout rules to the panel to arrange the controls within the container.

If you need to add controls that display DAC fields retrieved by an another data view, use a nested form \(a PXFormView control\) instead of a panel. Unlike PXPanel, the PXFormView control has the DataMember property and can be bound to a data view.

You can configure the appearance of a PXPanel container in the UI by specifying the following properties of the control:

-   Caption: Defines the caption for the set of controls enclosed in the panel.
-   RenderStyle: Defines the panel style in the UI:
    -   RoundBorder \(default\): The panel border and caption are displayed in the UI. This style requires the Caption property.
    -   Fieldset: The underlined caption is displayed in the UI. This style requires the Caption property.
    -   Simple: No border or caption is displayed in the UI. This style does not require the Caption property.

In the ASPX code, the PXPanel container is always nested in a form or tab item and is defined as follows.

```
<px:PXFormView ID="form" ...>
    <Template>
        <px:PXLayoutRule runat="server" StartRow="True"></px:PXLayoutRule>
       ** &lt;px:PXPanel ID="PXPanel1" runat="server" Caption="Shipment Information"&gt;**
            ...
        **&lt;/px:PXPanel&gt;**
    </Template>
</px:PXFormView>
```

**Parent topic:**[Configuring Containers](../StudioDeveloperGuide/CW__mng_Configuring_Containers.md)

