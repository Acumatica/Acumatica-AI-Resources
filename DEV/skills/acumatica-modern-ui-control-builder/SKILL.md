---
name: acumatica-modern-ui-control-builder
description: Design, implement, review, and troubleshoot custom frontend controls for the Acumatica ERP Modern UI using Aurelia, TypeScript, HTML, SCSS, screen extensions, and appropriate backend field patterns. Use when building reusable Modern UI controls, binding DAC or graph-specific values, extending existing Acumatica screens, or diagnosing custom-control behavior and styling.
metadata:
  version: 1.0.1
---

# Acumatica Modern UI Control Builder

Use this skill to help users design and implement Acumatica ERP Modern UI custom frontend controls. Produce a practical implementation plan with code, not an internal course/activity format.

## First response workflow

1. Determine whether the user provided enough requirements to design the control.
2. If they provided a scenario, proceed and state assumptions briefly.
3. If requirements are missing or ambiguous, ask targeted questions before generating code. Offer two intake modes:
   - "Describe your scenario in a paragraph."
   - "Answer targeted questions."
4. If the user asks for a full implementation, include frontend files, optional backend integration, screen extension guidance, and a test checklist.
5. If the user asks only for review or troubleshooting, focus on the requested part and still apply the conventions below.

## Clarifying questions to ask when needed

Ask only the questions needed to resolve ambiguity. Prefer 3-6 focused questions.

- What should the control display or let the user do?
- Which Acumatica screen will host the control, and what is the primary view name?
- Which values should come from the backend, which are static, and which are purely frontend state?
- Are the displayed values stored in the database, derived from the current row, or unrelated to any graph view?
- Should the control be reusable across screens or specific to one screen?
- Does the control need interactive actions such as buttons, collapse/expand behavior, dismiss actions, or input fields?
- Should the control be added by editing the base form HTML or through an HTML extension? Prefer HTML extension when customizing existing screens.
- Does the project already use TypeScript/HTML extension files for the target screen?

## Output structure

Use a generic developer-facing structure such as the following and provide explanations about the generated code:

1. Summary of the recommended approach
2. Assumptions
3. Files to create or update
4. Frontend control implementation
5. Backend integration, if needed
6. TypeScript/HTML screen extensions, if needed
7. Styling
8. Testing checklist
9. Review notes and alternatives

## Required Modern UI custom control conventions

Follow these conventions by default:

- Put custom controls under `FrontendSources/screen/src/development/controls/<control-name>`.
- Use lowercase folder and file names with words separated by hyphens, for example `risk-summary-panel`.
- Do not include `CustomElement` in folder or file names.
- Name the TypeScript class in PascalCase plus `CustomElement`, for example `RiskSummaryPanelCustomElement`.
- Create matching files: `<control-name>.ts`, `<control-name>.html`, and optionally `<control-name>.scss`.
- Use Aurelia conventions: `@bindable` for external inputs, lifecycle methods such as `attached()` and `detached()` when needed, and cleanup for subscriptions or disposable resources.
- Keep business logic out of the custom control. The control should render values and manage presentation-level interaction only.
- Expose only required inputs through `@bindable`.
- Prefer `qp-button` for interactive actions inside composite controls so behavior and styling match the Modern UI. Basic HTML `button` may be acceptable for a minimal example, but do not default to it in production-style controls.
- Load the control SCSS from the control HTML with `<require from="./<control-name>.scss"></require>`.
- Include the control files in the customization project on the Modern UI Files page.
- Prefer adding the control to existing screens through an HTML extension rather than directly modifying the original form HTML.

## Backend integration decision guide

Recommend the least invasive backend pattern that fits the requirement.

### No backend integration
Use when all values are static, passed as literals, or calculated entirely from presentation-only frontend state. Warn the user not to duplicate business rules in frontend code.

### Bound DAC fields
Use when the data is stored in the database and belongs to the business entity. Expose the fields through the screen TypeScript view class or an extension, then bind them to the control.

### Unbound DAC fields
Use when values are not persisted but logically belong to the DAC across multiple screens or graphs, or when compatibility constraints make attached fields unsuitable. Populate display values with field events such as `FieldSelecting` when appropriate. Mention the downside: screen-specific UI fields can clutter a DAC if they are meaningful only for one graph.

### Attached fields with `PXFieldAttachedTo`
Prefer this for read-only, graph-specific, virtual values used only on one screen and not stored in the database. This avoids adding screen-specific fields to the DAC.

Use the pattern:

```csharp
public class panelStatus :
    PXFieldAttachedTo<MyDac>.By<MyGraph>.AsString.Named<panelStatus>
{
    public override string? GetValue(MyDac row) =>
        PXMessages.LocalizeNoPrefix(GetPanelStatus(row));

    protected virtual string? GetPanelStatus(MyDac row)
    {
        if (row == null) return null;
        // Return a localizable constant.
        return MyMessages.Ready;
    }
}
```

For user-facing strings, localize with `PXMessages.LocalizeNoPrefix(...)`. Do not localize technical tokens used by frontend code, such as CSS state values (`danger`, `warning`, `success`). Use `protected virtual` helper methods inside the attached-field class so customizations can override the logic and the related code remains grouped.

### PXDBCalced or database-calculated fields
Use when the value should be calculated as part of database retrieval and is naturally expressible as a database/BQL expression. Do not use this for UI-only text, status messages, or visual-state tokens.

### PXFilter
Use for user-editable filter parameters, especially in inquiry and processing forms. Do not recommend `PXFilter` just to supply derived read-only panel values for a primary record.

### Custom data handlers
Mention only for advanced cases where data is unrelated to any view, large binary data is involved, or the UI needs data injected into callback responses outside normal view binding.

## Screen TypeScript and HTML extension guidance

When a custom control needs values from a screen:

- If fields already exist on the view, expose them in the screen TypeScript view class or a TypeScript extension. 
- If the target screen already uses TypeScript extension files, prefer adding another extension that targets the existing screen/view class rather than changing the base generated screen file.
- Use properties whose names match the fields exposed by the graph/view.
- Add the custom control through an HTML extension when customizing an existing screen.
- Use placement attributes such as `before`, `after`, or the project’s supported extension placement syntax with a stable selector such as `#form-Order`.

Example HTML extension shape:

```html
<template>
  <require from="controls/my-panel/my-panel"></require>
  <my-panel
    before="#form-Order"
    title="Summary"
    status.bind="Orders.PanelStatus.value"
    details.bind="Orders.PanelDetails.value">
  </my-panel>
</template>
```

If the user’s project standards say the explicit `require` directive is unnecessary after Modern UI Files registration, follow that standard. Otherwise include it for self-contained examples.

## Frontend code generation rules

When generating TypeScript for a control:

- Import only what is needed.
- Use `@bindable` for configurable properties.
- Use internal fields for presentation state.
- Dispose subscriptions in `detached()`.
- Avoid unsupported or unapproved event mechanisms. Do not recommend custom application-level events with Aurelia `EventAggregator` unless the user explicitly asks and confirms their project allows it.
- Use Modern UI event handlers with `@handleEvent(...)` only for screen-level runtime UI behavior, not as a replacement for custom-control bindables.

When generating HTML:

- Use declarative binding (`${...}`, `.bind`, `if.bind`) consistently.
- Use `qp-button` for actions in composite controls.
- Keep business decisions out of the template.

When generating SCSS:

- Scope styles under the control’s root class.
- Avoid over-styling built-in Modern UI components.
- Use state classes for visual variants.
- Keep layout styles minimal and reusable.


## Existing Acumatica screens and generated frontend files

When discussing existing Acumatica ERP screens, do not imply that the screen, graph, views, or data members are generated or unknown. Treat screens such as AP303000, SO301000, AR303000, etc. as existing Acumatica screens that are being customized through Modern UI extension files.

Use the term "existing Modern UI screen definition" or "frontend screen definition file" instead of "generated screen" or "generated view" unless the user is explicitly working with a newly scaffolded/custom Modern UI screen.

For existing screens, assume the standard Acumatica views/data members are stable unless the user says they are working with a heavily customized screen or a nonstandard version. Ask the user to confirm only the local import path, selector ID, or project-specific extension filename when necessary.

Preferred wording:
- "Import the existing AP303000 screen definition."
- "Extend the existing BAccount view."
- "Add the control through an AP303000 HTML extension."
- "Confirm the local frontend import path used by your project."

Avoid wording such as:
- "Check the generated AP303000 screen."
- "The view name may differ depending on generation."
- "Replace BAccount if the generated screen uses another primary view."


## Review checklist

Before finalizing an implementation, check:

- File/folder names are lowercase hyphenated and class names are PascalCase with `CustomElement` suffix.
- The control exposes only necessary `@bindable` properties.
- Interactive actions use `qp-button` unless there is a clear reason not to.
- Business logic is in the backend or screen logic, not in the reusable control.
- Backend data-passing pattern matches the scenario.
- Graph-specific read-only virtual data uses attached fields when appropriate.
- User-facing strings are localizable; technical tokens are not localized.
- The control is added through an HTML extension for existing screens.
- For existing Acumatica screens, TypeScript and HTML extensions are used instead of editing the base screen definition files.
- Both HTML and TypeScript extension files should follow the following naming convention: <ScreenID>_<CustomizationProjectName>_<CustomControlName>. For example, RS301000_PhoneRepairShop_RecordInsightsPanel.ts or RS301000_PhoneRepairShop_RecordInsightsPanel.html. Explicitly mention that the customization project name is assumed.
- Both TypeScript and HTML extension files should be added to the corresponding extensions folder of the screen. The standard folder and file structure is `FrontendSources/screen/src/development/screens/<FirstTwoLettersOfScreenID>/<ScreenID>/extensions`. For example, `FrontendSources/screen/src/development/screens/RS/RS301000/extensions`.
- Testing covers default, warning/error, empty/null, and state-transition cases.

## Reference examples

Load `references/patterns.md` when the user needs concrete code templates or a more detailed backend decision tree.
