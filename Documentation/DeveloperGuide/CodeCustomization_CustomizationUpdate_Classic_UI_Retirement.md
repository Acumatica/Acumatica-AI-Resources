# Customization Update to 2026 R2: Retirement of the Classic UI

As part of the ongoing transition to the Modern UI, Acumatica ERP 2026 R2 takes the next step toward retiring the Classic UI. The Modern UI is now the default user interface, and users can no longer switch between it and the Classic UI.

**Attention:** Starting in Acumatica ERP 2027 R1, forms that support only Classic UI will no longer be available.

Most importantly, this release gives organizations time to prepare for the next stage of the transition. Screens that are available only in the Classic UI can still be opened in 2026 R2, but they display a warning that they will be deprecated in the next release.

Organizations should use the 2026 R2 release to identify any remaining forms, dashboards, pivot tables, and customizations that use Classic UI and prepare them for the Modern UI.

## Modern UI as the Default User Experience

By default, the Classic UI is disabled in Acumatica ERP 2026 R2. When a form has a Modern UI version, it always opens in the Modern UI.

With the Classic UI disabled, options to select or switch the UI no longer appear in the installer, system menu, [Site Map](../UserGuide/SM_20_05_20.md) \(SM200520\), or [Site Preferences](../UserGuide/SM_20_05_05.md) \(SM200505\) forms.

Administrators can temporarily enable the Classic UI by setting the `EnableLegacyUI=True` flag in the `web.config` file. When set, users can still switch between the Modern UI and the Classic UI.

## Preparing Classic UI-Only Forms for Retirement

Forms and functionality not yet converted to the Modern UI remain accessible in 2026 R2, but users will be warned they will be deprecated in the next release.


The warning applies to Classic UI-only functionality such as:

-   Dashboards that haven't been migrated to the Modern UI and the [Classic Dashboards](../UserGuide/SM_20_86_00.md) \(SM208600\) form
-   Pivot tables that haven't been migrated to the Modern UI and the [Pivot Tables](../UserGuide/SM_20_80_10.md)\(SM208010\) form
-   Wizard forms \(WZxxxxxx\)
-   The Layout Editor in the Customization Editor
-   Custom forms that haven't been converted to the Modern UI
-   Other forms that are available only in the Classic UI

## No New Classic Dashboards or Pivot Tables

When the Classic UI is disabled, creating Classic dashboards or pivot tables is no longer possible.

Existing Classic dashboards and pivot tables can still be accessed in 2026 R2, giving organizations an opportunity to migrate the ones they need before the Classic UI functionality is removed in 2027 R1.


**Parent topic:**[Updating Customization Projects to Acumatica ERP 2026 R2](../DeveloperGuide/CodeCustomization_CustomizationUpdate_Mapref.md)

