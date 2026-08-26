# To Display a Dialog Box {#_0893a861-ee7d-49f5-84ea-1740df9f11d6 .task}

When a user clicks a button on a form of an Acumatica Framework-based application, you may need to display a dialog box that displays the settings related to the action to be performed. For example, on the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, if you click **Create Ledger**, the system opens the **Create Ledger** dialog box, where a user can specify the setting related to the action.

## To Display a Dialog Box { .section}

1.  In the graph that corresponds to the form, add the action and the delegate for the button that opens the dialog box, as shown in the following example.

    ```
    public PXAction<MainDAC> openDialogBox;
    
    [PXUIField(DisplayName = "Open Dialog Box",
        MapEnableRights = PXCacheRights.Update,
        MapViewRights = PXCacheRights.Update)]
    [PXButton]
    public virtual IEnumerable OpenDialogBox(PXAdapter adapter)
    {
        return adapter.Get();
    }
    ```

    In this example, the `MainDAC` DAC is the main DAC of the primary view of the graph; therefore, the action is added to the toolbar of the form by default.

2.  In the graph that corresponds to the form, add the data view for the dialog box, as shown in the following code.

    ```
    [PXHidden]
    public class DialogBoxParameters : PXBqlTable, IBqlTable
    {
        public abstract class parameter1 : IBqlField { }
        [PXString(10, IsUnicode = true)]
        public virtual string Parameter1 { get; set; }
    
        public abstract class parameter2 : IBqlField { }
        [PXString(10, IsUnicode = true)]
        public virtual string Parameter2 { get; set; }
    }
    
    PXFilter<DialogBoxParameters> OpenDialogBoxView;
    ```

    In this code, you have added a simple DAC with two unbound fields and use a data view based on the PXFilter class.

3.  In the ASPX code of the form, add the PXSmartPanel container with the Key property equal to the name of the data view you created for the dialog box, as shown in the following code. In the PXPanel container inside PXSmartPanel, add the commit buttons of the dialog box \(such as **OK**, **Cancel**\).

    ```
    <px:PXSmartPanel ID="pnlOpenDialogBox" runat="server" 
    Style="z-index: 108;" Caption="Open Dialog Box" CaptionVisible="True" 
    Key="OpenDialogBoxView" LoadOnDemand="true" AutoCallBack-Command="Refresh" 
    AutoCallBack-Target="formOpenDialogBox" AutoCallBack-Enabled="true" 
    AcceptButtonID="cbOk" CancelButtonID="cbCancel">
        <px:PXFormView ID="formOpenDialogBox" runat="server" 
          DataSourceID="ds" DataMember="OpenDialogBoxView" 
          SkinID="Transparent">
            <ContentStyle BorderWidth="0px"></ContentStyle>
            <Template>
                <px:PXLayoutRule runat="server" StartColumn="True" 
                  LabelsWidth="SM" ControlSize="M" />
                <px:PXTextEdit  ID="edParameter1" runat="server" 
                  DataField="Parameter1" CommitChanges="True"/>
                <px:PXTextEdit  ID="edParameter2" runat="server" 
                  DataField="Parameter2" CommitChanges="True" />
            </Template>
        </px:PXFormView>
        <px:PXPanel ID="PXPanel3" runat="server" SkinID="Buttons">
            <px:PXButton ID="cbOK" runat="server" Text="OK" 
              CommandSourceID="ds" DialogResult="OK" />
            <px:PXButton ID="cbCancel" runat="server" Text="Cancel" 
              DialogResult="Cancel" />
        </px:PXPanel>
    </px:PXSmartPanel>
    ```

4.  In the button delegate, perform a call to an [AskExt](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=e7c4f1c1-9ffc-5a84-5837-ca9ade8e5f29) method of the view specified in the Key property of the PXSmartPanel container.

    ```
    public virtual IEnumerable OpenDialogBox(PXAdapter adapter)
    {
        if (OpenDialogBoxView.AskExt() == WebDialogResult.OK &&
            string.IsNullOrEmpty(OpenDialogBoxView.Current.Parameter1) 
            == false)
        {
            ...
        }
        return adapter.Get();
    }
    ```

    When the user clicks the button on the form, the execution interrupts on the AskExt call, and the dialog box is displayed. After the user clicks a button in the dialog box, the AskExt method returns the dialog box result.

5.  Rebuild the project.

**Parent topic:**[Configuring the UI from the Backend](../StudioDeveloperGuide/BL__mng_Configuring_UI_from_Back_End.md)

