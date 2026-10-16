# Conversion procedures, 2026 R2

Use the installed build's source and typings to resolve exact bindings. These
links point to the repository's release-specific vendor documentation; the
workflow below is original guidance, not redistributed vendor examples.

## Select the converter

For a published customization project, prefer a bounded form conversion in the
Customization Project Editor. In **Screens**, select the form and use **Convert
to Modern UI**. The entire-project action is on **Customization Projects**
(SM204505); use it only when the entire project needs conversion. Modern UI must
be enabled and default, the relevant features enabled, and the account must
have the Customizer role. Do not change shared configuration outside task scope.

The project converter creates full TS/HTML files for custom forms and extension
files for customized native forms, available under **Modern UI Files**. It can
overwrite existing Modern customizations. Preserve those first; a working Modern
implementation normally calls for repair rather than reconversion.

Alternatively, from a Classic form use **Customization > Convert to Modern UI**
to download generated sources for inspection. This route requires Modern UI
enabled and the Customizer role; the release guide describes configuration that
can hide the command. A missing command is a prerequisite/configuration issue,
not proof that the screen needs custom conversion code.

Review view initialization, graph/primary-view mapping, field options, actions
and layout. Neither converter ports ASPX JavaScript or ASPX.CS behavior. Edit
Modern UI Files directly, or export to the development folder and use **Detect
Modified Files** to bring edits back into the project. Build against the target
release, then use the existing package lifecycle skill for publication/readback.

## Vendor sources

- [Project converter](../../../../Documentation/DeveloperGuide/UIDev_Customization_Convert_CustomizationConverter.md)
- [Form converter](../../../../Documentation/DeveloperGuide/UIDev_UIDefinition_Converter.md)
- [UI definitions](../../../../Documentation/DeveloperGuide/UIDev_UIDefinition_GeneralInfo.md)
- [Development folder](../../../../Documentation/DeveloperGuide/UIDev_ModernUI_DevelopmentFolder.md)
- [Building sources](../../../../Documentation/DeveloperGuide/UIDev_ModernUI_BuildingSources.md)
- [Grid-dependent action state](../../../../Documentation/DeveloperGuide/UIDevRef_Button_GridDependant.md)

Client-side action state is not server authorization or proof that the server
received the selected row. Verify both separately.
