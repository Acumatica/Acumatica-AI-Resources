# Data Entry Form: Definition in TypeScript and HTML {#_593f6c89-c735-4143-83df-bcebe2ae8996 .concept}

The following topic describes how to configure a data entry form depending on its layout.

## View Definition in TypeScript { .section}

For a form with a Summary area and multiple tabs, you use the following in the TypeScript file of the form:

-   For the summary view and the views that display one record, the createSingle method.
-   For each property for the view that displays a grid, the createCollection method.
-   For the summary view and each view for a tab, a class that extends PXView with the full list of fields to be displayed.
-   The [headerDescription](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=42eca698-eaf6-0c59-3fe2-cca1ea8432e3) decorator for fields in the Summary area whose value should be included in the record title below the form name.
-   The [gridConfig](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=0307daab-31d8-32d7-f9d0-d61137b7919f) and [columnConfig](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=174c3931-2148-bc0c-ee45-705f27e1aec6) decorators for each grid and its columns. For details, see [Table \(Grid\): Configuration of the Table and Its Columns](UIDevRef_Grid_Configuration.md).

The following code shows an example of the TypeScript configuration for the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form.

```language-javascript
import
{
    createCollection,
    createSingle,
    PXScreen,
    graphInfo,
    PXActionState
} from "client-controls";
  
@graphInfo({
    graphType: 'PX.Objects.SO.SOOrderEntry',
    primaryView: 'Document'
})
export class SO301000 extends PXScreen {
    //Actions that are used in qp-button tags in HTML
    AddInvoiceOK: PXActionState;
    OverrideBlanketTaxZone: PXActionState;
    ...
 
    //Properties for view classes
    Document = createSingle(SOOrderHeader);
    Transactions = createCollection(SOLine);
    Taxes = createCollection(SOTaxTran);
    CurrentDocument = createSingle(SOOrder);
    ...
}
  
//View classes
export class SOOrderHeader extends PXView {
    OrderType: PXFieldState;
    OrderNbr: PXFieldState;
    Status: PXFieldState<PXFieldOptions.Disabled>;
    DontApprove: PXFieldState<PXFieldOptions.Disabled>;
    Approved: PXFieldState<PXFieldOptions.Disabled>;
    OrderDate: PXFieldState<PXFieldOptions.CommitChanges>;
    RequestDate: PXFieldState<PXFieldOptions.CommitChanges>;
    CustomerOrderNbr: PXFieldState<PXFieldOptions.CommitChanges>;
    CustomerRefNbr: PXFieldState;
    CuryInfoID: PXFieldState;
 
    @headerDescription
    CustomerID: PXFieldState<PXFieldOptions.CommitChanges>;
    CustomerLocationID: PXFieldState<PXFieldOptions.CommitChanges>;
    ContactID: PXFieldState<PXFieldOptions.CommitChanges>;
    CuryID: PXFieldState<PXFieldOptions.CommitChanges>;
    DestinationSiteID: PXFieldState<PXFieldOptions.CommitChanges>;
    ProjectID: PXFieldState<PXFieldOptions.CommitChanges>;
    OrderDesc: PXFieldState;
 
    OrderQty: PXFieldState<PXFieldOptions.Disabled>;
    CuryDiscTot: PXFieldState<PXFieldOptions.CommitChanges>;
    CuryVatExemptTotal: PXFieldState<PXFieldOptions.Disabled>;
    CuryVatTaxableTotal: PXFieldState<PXFieldOptions.Disabled>;
    CuryTaxTotal: PXFieldState<PXFieldOptions.Disabled>;
    CuryOrderTotal: PXFieldState<PXFieldOptions.Disabled>;
    CuryControlTotal: PXFieldState<PXFieldOptions.CommitChanges>;
    ArePaymentsApplicable: PXFieldState<PXFieldOptions.CommitChanges>;
    IsRUTROTDeductible: PXFieldState<PXFieldOptions.CommitChanges>;
    IsFSIntegrated: PXFieldState<PXFieldOptions.Disabled>;
 
    ShowDiscountsTab: PXFieldState;
    ShowShipmentsTab: PXFieldState;
    ShowOrdersTab: PXFieldState;
}
 
export class SOOrder extends PXView {
    BranchID: PXFieldState<PXFieldOptions.CommitChanges>;
    BranchBaseCuryID: PXFieldState;
    DisableAutomaticTaxCalculation: PXFieldState<PXFieldOptions.CommitChanges>;
    ...
}
 
@gridConfig({
    preset: GridPreset.Details,
    initNewRow: true,
    syncPosition: true,
    wrapToolbar: true,
    statusField: "Availability"
})
export class SOLine extends PXView {
    //Table toolbar actions
    AddInvBySite: PXActionState;
    ShowMatrixPanel: PXActionState;
    ...
  
    //Table columns
    Availability: PXFieldState<PXFieldOptions.Hidden>;

    @columnConfig({ allowShowHide: GridColumnShowHideMode.Server })
    ExcludedFromExport: PXFieldState;
    IsConfigurable: PXFieldState;

    @columnConfig({ hideViewLink: true })
    BranchID: PXFieldState<PXFieldOptions.CommitChanges>;
    ...
}
```

## Layout in HTML { .section}

You define the layout of a data entry form by adding the following tags to the HTML code of the form:

-   A qp-template tag. For details on using templates, see [Form Layout: Predefined Templates](UIDev_DesigningLayout_Templates.md).
-   A qp-tabbar tag with a nested qp-tab element for each tab.
-   For each tab that does not contain a grid, a nested qp-template tag.

The following example shows the HTML template for the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form.

```language-xml
<template>
    <qp-template name="7-10-7" id="form-Document" wg-container>
        <qp-fieldset id="fsColumnA" slot="A" view.bind="Document">
            <field name="OrderType"></field>
            <field name="OrderNbr"></field>
            ...
        </qp-fieldset>
        <qp-fieldset id="fsColumnB" slot="B" view.bind="Document">
            <field name="CustomerID" config-allow-edit.bind="true"></field>
            <field name="CustomerLocationID" config-allow-edit.bind="true"></field>
            ...
        </qp-fieldset>
        <qp-fieldset id="fsColumnC-summary" slot="C" view.bind="Document" 
            caption="Summary">
            <field name="OrderQty"></field>
            <field name="CuryDiscTot"></field>
            ...
        </qp-fieldset>
    </qp-template>
 
    <qp-tabbar active-tab-id="tabDetails" id="tabs">
        <qp-tab id="tabDetails" caption="Details">
            <qp-grid view.bind="Transactions" topBarConfig.bind="{disableMenu: false}">
            </qp-grid>
        </qp-tab>
        <qp-tab id="tabFinancial" caption="Financial">
            <qp-template id="form-Financial" name="1-1-1">
                <qp-fieldset id="fsColumnA-Financial" slot="A" view.bind="CurrentDocument"
                             caption="Financial Information">
                    <field name="BranchID"></field>
                    <field name="BranchBaseCuryID"></field>
                    ...
                </qp-fieldset>
                <div slot="B">
                    <qp-fieldset id="fsColumnB-Payment"
                                 view.bind="CurrentDocument"
                                 caption="Payment Information">
                        <field name="OverridePrepayment"></field>
                        <field name="PrepaymentReqPct"></field>
                        ...
                    </qp-fieldset>
                    <qp-fieldset id="fsColumnB-Ownership"
                                 view.bind="CurrentDocument"
                                 caption="Ownership">
                        <field name="WorkgroupID"></field>
                        <field name="OwnerID"></field>
                    </qp-fieldset>
                    <qp-fieldset id="fsColumnB-Other" view.bind="CurrentDocument"
                                 caption="Other Information">
                        <field name="OrigOrderType" config-enabled.bind="false"></field>
                        <field name="OrigOrderNbr" config-allow-edit.bind="true"
                               config-enabled.bind="false"></field>
                        ...
                    </qp-fieldset>
                </div>
            </qp-template>
        </qp-tab>
        ...
    </qp-tabbar>
</template>
```

**Parent topic:**[Defining a Data Entry Form](../DeveloperGuide/UIDev_DataEntryScreen_Mapref.md)

