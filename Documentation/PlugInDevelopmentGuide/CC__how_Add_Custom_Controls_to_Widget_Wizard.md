# To Add Custom Controls to the Widget Properties Dialog Box {#_eaa0ee1b-73ce-4bc4-8a9f-18dadf3af55a .task}

The **Widget Properties** dialog box is displayed when a user creates or edits a widget. If you need to add custom controls, such as buttons or grids, to this dialog box, you need to create these controls in the RenderSettings\(\) or RenderSettingsComplete\(\) method of the widget class, as is described in the sections below.

## To Add Buttons to the Widget Properties Dialog Box Dynamically { .section}

If you need to add buttons to the **Widget Properties** dialog box that appear based on a particular user action in the dialog box, override the RenderSettings\(\) method of the widget class so that it dynamically adds the needed controls to the dialog box. The method must return `true` if all controls are created in the method implementation \(that is, no automatic generation of controls is required\). The default implementation of the RenderSettings\(\) method of the PXWidgetBase class returns `false`.

The following example provides the implementation of this method in the predefined Power BI tile widget. When a user clicks the **Sign In** button in the **Widget Properties** dialog box and successfully logs in to Microsoft Entra ID, the **Dashboard** and **Tile** boxes appear in the dialog box.

```
public override bool RenderSettings(PXDataSource ds, WebControl owner)
{
    var cc = owner.Controls;
    var btn = new PXButton() { ID = "btnAzureLogin", Text = 
      PXLocalizer.Localize(Messages.PowerBISignIn, typeof(Messages).FullName), 
      Width = Unit.Pixel(100) };
    btn.ClientEvents.Click = "PowerBIWidget.authorizeButtonClick";

    cc.Add(new PXLayoutRule() { StartColumn = true, ControlSize = "XM", 
    LabelsWidth = "SM" });
    cc.Add(new PXTextEdit() { DataField = "ClientID", CommitChanges = true });
    cc.Add(new PXLayoutRule() { Merge = true });
    cc.Add(new PXTextEdit() { DataField = "ClientSecret", 
      CommitChanges = true });
    cc.Add(btn);
    cc.Add(new PXLayoutRule() { });
    cc.Add(new PXDropDown() { DataField = "DashboardID", 
      CommitChanges = true });
    cc.Add(new PXDropDown() { DataField = "TileID", CommitChanges = true });
    cc.Add(new PXTextEdit() { DataField = "AccessCode", 
      CommitChanges = true });
    cc.Add(new PXTextEdit() { DataField = "RedirectUri" });
    cc.Add(new PXTextEdit() { DataField = "AccessToken" });
    cc.Add(new PXTextEdit() { DataField = "RefreshToken" });

    foreach (Control wc in cc)
    {
        IFieldEditor fe = wc as IFieldEditor;
        if (fe != null) wc.ID = fe.DataField;
        wc.ApplyStyleSheetSkin(ds.Page);

        PXTextEdit te = wc as PXTextEdit;
        if (te != null) switch (te.ID)
            {
                case "ClientID":
                    te.ClientEvents.Initialize = 
                      "PowerBIWidget.initializeClientID";
                    break;
                case "ClientSecret":
                    te.ClientEvents.Initialize = 
                      "PowerBIWidget.initializeClientSecret";
                    break;
                case "AccessCode":
                    te.ClientEvents.Initialize = 
                      "PowerBIWidget.initializeAccessCode";
                    break;
                case "RedirectUri":
                    te.ClientEvents.Initialize = 
                      "PowerBIWidget.initializeRedirectUri";
                    break;
            }
    }
    return true;
}
```

## To Open a Pop-Up Panel in the Widget Properties Dialog Box { .section}

If you need to open a pop-up panel in the **Widget Properties** dialog box, override the RenderSettingsComplete\(\) method of the widget class and create the panel within it.

The following code shows a sample implementation of the method in the predefined chart widget. The method adds the buttons to the dialog box and creates the pop-up panel after the standard controls of the dialog box have been created.

```
public override void RenderSettingsComplete(PXDataSource ds, WebControl owner)
{
    var btn = _btnConfig = new PXButton() { 
      ID = "btnConfig", Width = Unit.Pixel(150),
      Text = PXLocalizer.Localize(Messages.ChartConfigure, 
        typeof(Messages).FullName), 
      PopupPanel = "pnlConfig", Enabled = false, CallbackUpdatable = true };
    owner.Controls.Add(btn);
    btn.ApplyStyleSheetSkin(owner.Page);

    owner.Controls.Add(CreateSettingsPanel(ds, ds.PrimaryView));
    (ds.DataGraph as ChartSettingsMaint).InquiryIDChanged += (s, e) => 
      _btnConfig.Enabled = !string.IsNullOrEmpty(e);
    base.RenderSettingsComplete(ds, owner);
}
```

**Parent topic:**[Creating Widgets for Dashboards](../PlugInDevelopmentGuide/CC__mng_Creating_Widgets_for_Dashboards.md)

