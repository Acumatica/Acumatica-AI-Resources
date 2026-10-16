# Validation of Customization Projects: Using AI Tools

Suppose that you have a customization project that works properly for Acumatica ERP 2026 R1, and you need to upgrade an application instance to 2026 R2. Before the upgrade, you validate the customization project with the newer version, as described in [Validation of Customization Projects: Compatibility Validation](CodeCustomization_Validation_BeforeUpgrade.md). If validation errors occur, you need to fix these errors.

You can use an AI tool, such as Claude Code or GitHub Copilot, to speed up and simplify fixing of errors.

## Using the AI Tool Skill for Customization Project Update

In the [Acumatica-AI-Resources](https://github.com/Acumatica/Acumatica-AI-Resources) repository on GitHub, you can find plug-ins and skills that you can use for development of your Acumatica ERP applications. The [acumatica-customization-update](https://github.com/Acumatica/Acumatica-AI-Resources/blob/2026R1/DEV/skills/acumatica-customization-update) skill helps your AI tool to edit, update, validate, and publish customization projects. Follow the documentation of your AI tool to use the repository and the skill in it.

## Using the Release Notes in an AI Tool in Visual Studio

You can use the following general steps to update your customization project by using an AI tool:

1.  Review the developer release notes to understand the changes in the new version.
2.  Open your customization project’s extension library in Visual Studio.
3.  Add the **Markdown** version of the developer release notes from [https://beacon.acumatica.com/p/download](https://beacon.acumatica.com/p/download) to the project of the extension library.
4.  Open a file with the Acumatica ERP-specific code, such as a graph or DAC extension.
5.  Launch a chat with your AI tool.
6.  Write a prompt, such as *Update this class to Acumatica ERP 2026 R2, use \#&lt;project name&gt;/AcumaticaERP\_2026R1\_ReleaseNotes\_for\_Developers.md*.

    **Tip:** Instead of referencing the file in the prompt, you can copy and paste the contents of the file to the chat.

7.  Wait for the AI agent to process the context.
8.  Carefully review the provided recommendations and apply valid ones. Double-check them with the developer release notes if you aren’t sure about the changes.
9.  Use the same context for other files in the project of your extension library.

**Parent topic:**[Validating Customization Projects](../DeveloperGuide/CodeCustomization_Validation_Mapref.md)

