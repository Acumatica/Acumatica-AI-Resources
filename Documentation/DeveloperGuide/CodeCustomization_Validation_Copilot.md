# Validation of Customization Projects: Using AI Tools {#_31cff265-34e1-4938-abcc-24e0de139273 .concept}

Suppose that you have a customization project that works properly for Acumatica ERP 2025 R2, and you need to upgrade an application instance to 2026 R1. Before the upgrade, you validate the customization project with the newer version, as described in [Validation of Customization Projects: Compatibility Validation](CodeCustomization_Validation_BeforeUpgrade.md). If validation errors occur, you need to fix these errors.

You can use an AI tool, such as GitHub Copilot, to speed up and simplify fixing of errors.

## Using an AI Tool in Visual Studio { .section}

You can use the following general steps to update your customization project by using an AI tool:

1.  Review the developer release notes to understand the changes in the new version.
2.  Open your customization project’s extension library in Visual Studio.
3.  Add the **Markdown** version of the developer release notes from the [Acumatica Community](https://community.acumatica.com/) website to the project of the extension library.
4.  Open a file with the Acumatica ERP-specific code, such as a graph or DAC extension.
5.  Launch a chat with your AI tool.
6.  Write a prompt, such as *Update this class to Acumatica ERP 2026 R1, use \#&lt;project name&gt;/AcumaticaERP\_2026R1\_ReleaseNotes\_for\_Developers.md*.

    **Tip:** Instead of referencing the file in the prompt, you can copy and paste the contents of the file to the chat.

7.  Wait for the AI agent to process the context.
8.  Carefully review the provided recommendations and apply valid ones. Double-check them with the developer release notes if you aren’t sure about the changes.
9.  Use the same context for other files in the project of your extension library.

**Parent topic:**[Validating Customization Projects](../DeveloperGuide/CodeCustomization_Validation_Mapref.md)

