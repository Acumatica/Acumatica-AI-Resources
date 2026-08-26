# Custom Barcode-Driven Form: To Create an ASPX Page {#_f206fbaf-0e75-4b5b-bd15-9e43397bc31f .task}

This activity will walk you through the creation of an ASPX page for a custom barcode-driven form.

## Story { .section}

Suppose that you have implemented the business logic of a custom barcode-driven form. Now you need to create an ASPX page for the form so that the form is available in the UI of Acumatica ERP.

## Process Overview { .section}

You will create an ASPX page form from an ASPX template that contains the scripts required for a barcode-driven form to work and adjust this template for the custom form. You will also add the ASPX and ASPX.CS files to the customization project, add the form to the site map, and create the Site Map item for the form in the customization project.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Prepare an Acumatica ERP instance by performing the [Test Instance: To Deploy an Instance](WMSEngine_InitialConfiguration_Activity_DeployInstance.md) prerequisite activity.
2.  Add a barcode scan class and implement its functionality by performing the [Barcode Scan Class: To Create a Barcode Scan Class](WMSEngine_BarcodeScanClass_Activity_CreateClass.md) prerequisite activity.
3.  Create a scan mode and implement its required properties by performing the [Barcode Scan Mode: To Define the Required Properties](WMSEngine_ScanMode_CreateScanMode_Activity.md) prerequisite activity.
4.  To define the scan mode, do the following:
    1.  Define the list of scan states for the scan mode by performing the [Barcode Scan States: To Create the Set of Scan States](WMSEngine_ScanState_Activity_CreateSetOfStates.md) prerequisite activity.
    2.  Define transition rules by performing the [Barcode Scan Transitions: To Implement Transitions](WMSEngine_ScanTransition_Activity.md) prerequisite activity.
    3.  Define the list of commands by performing the [Barcode Scan Commands: To Define the List of Commands](WMSEngine_Command_Activity.md) prerequisite activity.
    4.  Define the list of mode redirects by performing the [Scan Mode Redirects: To Define the List of Redirects](WMSEngine_Redirect_Activity.md) prerequisite activity.
    5.  Define the resetting logic of the scan mode by performing the [Reset of Barcode Scan Mode: To Define the Resetting Logic](WMSEngine_ScanMode_Activity_DefineResettingLogic.md) prerequisite activity.
5.  Implement scan states as follows:
    1.  Create an input state by performing the [Barcode Scan States: To Create the Input State](WMSEngine_ScanState_Activity_CreateInputState.md) prerequisite activity.
    2.  Create a confirmation state by performing the [Barcode Scan States: To Create the Confirmation State](WMSEngine_ScanState_Activity_CreateConfirmationState.md) prerequisite activity.
    3.  Alter the predefined scan states by performing the [Extension of Scan Components: To Extend Predefined Scan States for a Custom Form](WMSEngine_ExtendedComponent_Activity_NewScanStates.md) prerequisite activity.
6.  Implement scan commands as follows:
    1.  Define custom commands by performing the [Barcode Scan Commands: To Add Quantity Support](WMSEngine_Command_Activity_AddQuantitySupport.md) prerequisite activity.
    2.  If you want to add logic that handles quantity input, add the quantity support command by performing the [Barcode Scan Commands: To Add Quantity Support](WMSEngine_Command_Activity_AddQuantitySupport.md) prerequisite activity.

## Step 1: Creating the ASPX Page { .section}

To create the ASPX page for a custom barcode-driven form, do the following:

1.  In the website project, which is the `PhoneRepairShop` project by default, add a new item named `RS302000.aspx` based on the *Web Form* template in the **PhoneRepairShop** &gt; **Pages** &gt; **RS** folder.

    The `RS302000.aspx` and `RS302000.aspx.cs` files are created.

2.  In the `RS302000.aspx` file, replace the code with the following code.

    **Tip:** This is the minimum of markup needed to make a barcode-driven form work. You can use this piece of code as a template for creating any new barcode-driven ASPX page.

    ```
    <%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="RS302000.aspx.cs" Inherits="Page_IN305020" Title="Scan and Count" %>
    <%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>
     
    <asp:content id="cont1" contentplaceholderid="phDS" runat="Server">
        <script type="text/javascript">
            function Barcode_Initialize(ctrl) { // This script makes focus to be kept on the Barcode field's control.
                ctrl.element.addEventListener('keydown', function (e) {
                    if (e.keyCode === 13) { // Enter key
                        e.preventDefault();
                        e.stopPropagation();
                    }
                });
            };
        </script>
     
        <script type="text/javascript">
            function ActionCallback(callbackContext) { // This script plays the sound that corresponds to the message type of the barcode-driven engine.
                var baseUrl = (location.href.indexOf("HideScript") > 0) ? "../../Sounds/" : "../../../Sounds/";
                var edInfoMessageSoundFile = px_alls["edInfoMessageSoundFile"];
     
                if ((callbackContext.info.name.toLowerCase().startsWith("scan") || callbackContext.info.name == "ElapsedTime") && callbackContext.control.longRunInProcess == null && edInfoMessageSoundFile != null) {
                    var soundFile = edInfoMessageSoundFile.getValue();
                    if (soundFile != null && soundFile != "") {
                        var audio = new Audio(baseUrl + soundFile + '.wav');
                        audio.play();
                    }
                }
            };
            window.addEventListener('load', function () { px_callback.addHandler(ActionCallback); });
        </script>
      
        <%-- Note that the datasource binds to the host graph of the barcode scan class --%>
        <px:PXDataSource ID="ds" runat="server" TypeName="PhoneRepairShopt.INScanCount+Host" PrimaryView="HeaderView">
            <CallbackCommands>
            </CallbackCommands>
        </px:PXDataSource>
    </asp:content>
     
    <asp:content id="cont2" contentplaceholderid="phF" runat="Server">
        <px:PXFormView ID="formHeader" runat="server" DataSourceID="ds" Height="120px" Width="100%" DataMember="HeaderView" DefaultControlID="edBarcode">
            <Template>
                <px:PXLayoutRule runat="server" StartColumn="True" LabelsWidth="S" ControlSize="L" />
                <px:PXTextEdit ID="edBarcode" runat="server" DataField="Barcode">
                    <AutoCallBack Command="Scan" Target="ds">
                        <Behavior CommitChanges="True" />
                    </AutoCallBack>
                    <ClientEvents Initialize="Barcode_Initialize"/>
                </px:PXTextEdit>
     
                <px:PXLayoutRule runat="server" StartColumn="True" LabelsWidth="S" ControlSize="L" ColumnWidth="M" />
                <px:PXTextEdit ID="edMessage" runat="server" DataField="Message"
                    Height="55px" Width="800px" Style="font-size: 10pt; font-weight: bold;"
                    SuppressLabel="true" TextMode="MultiLine" SkinID="Label" DisableSpellcheck="True" Enabled="False" />
            </Template>
        </px:PXFormView>
        <px:PXFormView ID="formInfo" runat="server" DataSourceID="ds" DataMember="Info">
            <Template>
                <px:PXTextEdit ID="edInfoMode" runat="server" DataField="Mode"/>
                <px:PXTextEdit ID="edInfoMessage" runat="server" DataField="Message"/>
                <px:PXTextEdit ID="edInfoMessageSoundFile" runat="server" DataField="MessageSoundFile"/>
                <px:PXTextEdit ID="edInfoPrompt" runat="server" DataField="Prompt"/>
            </Template>
        </px:PXFormView>
    </asp:content>
     
    <asp:content id="cont3" contentplaceholderid="phG" runat="Server">
    </asp:content>
    ```

3.  Add the `RefNbr` and `SiteID` fields after the `Barcode` field.

    ```
    <px:PXSelector ID="edRefNbr" runat="server" DataField="RefNbr" AllowEdit="true" />
    <px:PXSelector ID="edSiteID" runat="server" DataField="SiteID" AllowEdit="true" />
    ```

4.  Add a tab item with a grid that shows physical inventory details to the third content placeholder.

    ```
    <px:PXTab ID="tab" runat="server" Height="540px" Style="z-index: 100;" Width="100%">
        <Items>
            <px:PXTabItem Text="Count">
                <Template>
                    <px:PXGrid ID="gridPIDetail" runat="server" DataSourceID="ds" SyncPosition="true" Width="100%" SkinID="DetailsInTab">
                        <Levels>
                            <px:PXGridLevel DataMember="PIDetail">
                                <Columns>
                                    <px:PXGridColumn DataField="LineNbr" />
                                    <px:PXGridColumn DataField="Status" />
                                    <px:PXGridColumn DataField="LocationID" />
                                    <px:PXGridColumn DataField="InventoryID" />
                                    <px:PXGridColumn DataField="InventoryID_InventoryItem_descr"/>
                                    <px:PXGridColumn DataField="LotSerialNbr" />
                                    <px:PXGridColumn DataField="BookQty" TextAlign="Right" />
                                    <px:PXGridColumn DataField="PhysicalQty" TextAlign="Right" />
                                    <px:PXGridColumn DataField="VarQty" TextAlign="Right" />
                                </Columns>
                                <RowTemplate>
                                    <px:PXLayoutRule runat="server" StartColumn="True" LabelsWidth="M" ControlSize="XM" />
                                    <px:PXSegmentMask ID="edLocationID" runat="server" DataField="LocationID" AutoRefresh="True" />
                                    <px:PXNumberEdit ID="edBookQty" runat="server" DataField="BookQty" />
                                    <px:PXNumberEdit ID="edPhysicalQty" runat="server" DataField="PhysicalQty" />
                                    <px:PXNumberEdit ID="edVarQty" runat="server" DataField="VarQty" />
                                </RowTemplate>
                            </px:PXGridLevel>
                        </Levels>
                        <AutoSize Container="Window" Enabled="True" MinHeight="400" />
                    </px:PXGrid>
                </Template>
            </px:PXTabItem>
        </Items>
        <AutoSize Enabled="True" Container="Window" />
    </px:PXTab>
    ```

5.  Optional: Add another tab item that displays the logs of the barcode-driven engine.

    ```
    <px:PXTabItem Text="Scan Log">
        <Template>
            <px:PXGrid ID="gridScanLog" runat="server" DataSourceID="ds" Style="height: 250px;" Width="100%" SkinID="Inquire" Height="372px" >
                <Levels>
                    <px:PXGridLevel DataMember="Logs">
                        <Columns>
                            <px:PXGridColumn DataField="ScanTime" />
                            <px:PXGridColumn DataField="Mode" />
                            <px:PXGridColumn DataField="Prompt" />
                            <px:PXGridColumn DataField="Scan" />
                            <px:PXGridColumn DataField="Message" />
                        </Columns>
                    </px:PXGridLevel>
                </Levels>
                <AutoSize Container="Window" Enabled="True" MinHeight="400" />
            </px:PXGrid>
        </Template>
    </px:PXTabItem>
    ```

6.  Save your changes.
7.  In the `RS302000.aspx.cs` file, replace the code with the following code.

    ```
    using System;
    using System.Drawing;
    using System.Web.UI.WebControls;
    using PX.Data;
    using PX.BarcodeProcessing;
    
    public partial class Page_IN305020 : PX.Web.UI.PXPage
    {
    	private static class PickCss
    	{
    		public const string Complete = "CssComplete";
    		public const string Partial = "CssPartial";
    		public const string Overpick = "CssOverpick";
    	}
    
    	protected void Page_Init(object sender, EventArgs e) { }
    
    	protected void Page_Load(object sender, EventArgs e)
    	{
    		RegisterStyle(PickCss.Complete, null, Color.Green, true);
    		RegisterStyle(PickCss.Partial, null, Color.Black, true);
    		RegisterStyle(PickCss.Overpick, null, Color.OrangeRed, true);
    	}
    
    	private void RegisterStyle(string name, Color? backColor, Color? foreColor, bool bold)
    	{
    		Style style = new Style();
    		if (backColor.HasValue) style.BackColor = backColor.Value;
    		if (foreColor.HasValue) style.ForeColor = foreColor.Value;
    		if (bold) style.Font.Bold = true;
    		this.Page.Header.StyleSheet.CreateStyleRule(style, this, "." + name);
    	}
    
    	protected void LogGrid_RowDataBound(object sender, PX.Web.UI.PXGridRowEventArgs e)
    	{
    		var log = PXResult.UnwrapMain(e.Row.DataItem);
    		if (log is ScanLog bdsmLog)
    		{
    			if (bdsmLog.MessageType == ScanMessageTypes.Error)
    				e.Row.Style.CssClass = PickCss.Overpick;
    			else if (bdsmLog.MessageType == ScanMessageTypes.Warning)
    				e.Row.Style.CssClass = PickCss.Partial;
    		}
    	}
    }
    ```


## Step 2: Adding ASPX and ASPX.CS Files to the Customization Project { .section}

To add the new files to the customization project, do the following:

1.  Open the *PhoneRepairShop* customization project in the Customization Project Editor.
2.  In the navigation pane, click **Files**. The [Files](../UserGuide/AU_20_45_00.md) page opens.
3.  On the page toolbar, click **Add New Record**.
4.  In the **Add Files** dialog box, select the unlabeled check boxes for the `Pages\RS\RS302000.aspx` and `Pages\RS\RS302000.aspx.cs` items, and click **Save**.

## Step 3: Adding the Form to the Site Map { .section}

To be able to see the new form in the UI of Acumatica ERP, you need to add the new form to the site map. Do the following:

1.  On the toolbar of the [Site Map](../UserGuide/SM_20_05_20.md) \(SM200520\) form, click **Add Row**.
2.  In the new row, specify the following settings:
    -   **Screen ID**: `RS302000`
    -   **Title**: `Scan and Count`
    -   **URL**: `~/Pages/RS/RS302000.aspx`
    -   **Workspaces**: *Phone Repair Shop*
    -   **Category**: *Automated Operations*
3.  Save your changes and close the form.

## Step 4: Adding the Site Map Item to the Customization Project { .section}

To add to the customization project the site map item that corresponds to the form, do the following:

1.  Open the *PhoneRepairShop* customization project in the Customization Project Editor.
2.  On the navigation pane, click **Site Map** to open the [Site Map](../UserGuide/AU_20_80_00.md) page.
3.  On the page toolbar, click**Add New Record**.
4.  In the **Add Site Map** dialog box, which is opened, find the row with the *RS302000* screen ID, and select the unlabeled check box in that row.
5.  Click **Save**.

**Parent topic:**[Creating a Custom Barcode-Driven Form](../DeveloperGuide/WMSEngine_CustomForm_Mapref.md)

