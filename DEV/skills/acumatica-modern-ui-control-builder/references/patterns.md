# Acumatica Modern UI Custom Control Patterns

## Table of Contents

- [Control skeleton](#control-skeleton)
- [Control HTML with qp-button](#control-html-with-qp-button)
- [Attached field pattern](#attached-field-pattern)
- [TypeScript extension pattern](#typescript-extension-pattern)
- [HTML extension pattern](#html-extension-pattern)
- [Backend integration quick decision tree](#backend-integration-quick-decision-tree)
- [Testing checklist](#testing-checklist)

## Control skeleton

Use this shape for a reusable custom control.

```ts
import { bindable } from "aurelia-framework";

export class MySummaryPanelCustomElement {
    @bindable title: string = "Summary";
    @bindable status: string = "";
    @bindable details: string = "";
    @bindable accent: string = "neutral";

    get statusClass(): string {
        switch ((this.accent || "").toLowerCase()) {
            case "success": return "accent-success";
            case "warning": return "accent-warning";
            case "danger": return "accent-danger";
            default: return "accent-neutral";
        }
    }
}
```

## Control HTML with qp-button

```html
<template>
  <require from="./my-summary-panel.scss"></require>

  <section class="my-summary-panel ${statusClass}">
    <header class="panel-header">
      <h3>${title}</h3>
      <qp-button
        caption="Refresh"
        click.capture="refresh()">
      </qp-button>
    </header>

    <div if.bind="status" class="status-badge">${status}</div>
    <div if.bind="details" class="details-block">${details}</div>
  </section>
</template>
```

## Attached field pattern

Use when values are graph-specific, read-only, virtual, and not stored in the database.

```csharp
// Acuminator disable once PX1016 ExtensionDoesNotDeclareIsActiveMethod extension should be constantly active
public class panelStatus :
    PXFieldAttachedTo<MyDac>.By<MyGraph>.AsString.Named<panelStatus>
{
    public override string? GetValue(MyDac row) =>
        PXMessages.LocalizeNoPrefix(GetPanelStatus(row));

    protected virtual string? GetPanelStatus(MyDac row)
    {
        if (row == null)
            return null;

        if (/* condition */)
            return MyMessages.NeedsAttention;

        return MyMessages.Ready;
    }
}
```

For technical styling values, do not localize:

```csharp
public class panelAccent :
    PXFieldAttachedTo<MyDac>.By<MyGraph>.AsString.Named<panelAccent>
{
    public override string? GetValue(MyDac row) => GetPanelAccent(row);

    protected virtual string? GetPanelAccent(MyDac row)
    {
        if (row == null) return null;
        return "neutral";
    }
}
```

## TypeScript extension pattern

Use this shape when exposing additional fields through an existing screen/view.

```ts
import { PXFieldState } from "client-controls";
import {
  MYSCREEN,
  MyDac
} from "src/customizationScreens/Company/screens/XX/MYSCREEN/MYSCREEN";

export interface MYSCREEN_Project_MyPanel extends MYSCREEN {}
export class MYSCREEN_Project_MyPanel {}

export interface MyDac_Project_MyPanel extends MyDac {}
export class MyDac_Project_MyPanel {
  PanelStatus: PXFieldState;
  PanelDetails: PXFieldState;
  PanelAccent: PXFieldState;
}
```

## HTML extension pattern

```html
<template>
  <require from="controls/my-summary-panel/my-summary-panel"></require>
  <my-summary-panel
    before="#form-Main"
    title="Summary"
    status.bind="MainView.PanelStatus.value"
    details.bind="MainView.PanelDetails.value"
    accent.bind="MainView.PanelAccent.value">
  </my-summary-panel>
</template>
```

## Backend integration quick decision tree

- Is the data stored and part of the business entity? Use a bound DAC field.
- Is the data derived but meaningful across multiple screens/graphs? Consider an unbound DAC field with field event logic.
- Is the data read-only, virtual, graph-specific, and only for one screen? Prefer `PXFieldAttachedTo`.
- Is the value calculated by SQL/BQL during retrieval? Consider `PXDBCalced`.
- Is the value a user-editable filter criterion? Use `PXFilter`.
- Is the data unrelated to any view or a large binary payload? Consider custom data handlers or specialized client API calls.

## Testing checklist

- Control renders when added through the HTML extension.
- Bindable values display correctly.
- Null or empty values do not break layout.
- Buttons use `qp-button` and call expected methods.
- Backend-derived states update when the current record changes.
- Technical visual-state tokens map to frontend CSS classes.
- Browser console has no TypeScript or binding errors.
