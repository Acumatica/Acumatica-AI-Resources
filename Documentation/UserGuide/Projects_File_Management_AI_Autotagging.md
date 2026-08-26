# Managing Project Files: AI-Powered File Autotagging {#_50941366-601c-4d28-bba5-bd31c7d652e0 .concept}

AI-powered autotagging helps you quickly assign tags to project files, improving consistency and reducing manual work. You can use this autotagging while uploading new files on the [Manage Project Files by Tag](PM_50_90_00.md) \(PM509000\) and [Manage Project Files by Record Type](PM_50_95_50.md) \(PM509500\) forms.

Acumatica ERP provides autotagging by using the *FILE-AUTOTAG* prompt on the [LLM Prompts](ML_20_20_00.md) \(ML202000\) form.

**Important:** This functionality is available if:

-   The *AI Automation* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   Integration with an LLM provider has been set up.
-   The *FILE-AUTOTAG* prompt has been activated.

## How the *FILE-AUTOTAG* Prompt Works {#section_r31_nln_djc .section}

The *FILE-AUTOTAG* prompt analyzes file metadata—such as the file name, extension, uploader, project, linked document type and ID, and existing tags—to select a tag for each file. This prompt:

-   Selects exactly one tag from the existing list per file.
-   Doesn’t assign a tag to a file if it can’t find a suitable one.
-   Uses file metadata only—not contents.
-   Returns results in a JSON format used internally by the system. Specifically, the prompt outputs a JSON object with the `@((Batch.BatchResult))` array of the `{ "fileId": "", "tag": "" }` objects.

You can use only tags from the available list; if no appropriate tag exists, the file is skipped. Currently, the prompt analyzes only metadata \(not file content\).

## Modifying the Prompt {#section_srx_r5n_djc .section}

If needed, an administrator can modify the *FILE-AUTOTAG* prompt on the [LLM Prompts](ML_20_20_00.md) \(ML202000\) form.

If the prompt has been changed, the **Reset to Default** command appears on the Clipboard menu of the form toolbar. If the administrator clicks the command, the system:

-   Resets this prompt's name, instructions, and output format to its default state
-   Clears the **Active** check box

**Attention:** The prompt cannot be deleted and doesn't support prompt testing—that is, the **Test Prompt** button is unavailable on the [LLM Prompts](ML_20_20_00.md) form.

## Using Autotagging {#section_ksc_sln_djc .section}

When the *FILE-AUTOTAG* prompt is active and an LLM connection is configured, tags are automatically assigned when you upload new files. On the [Manage Project Files by Tag](PM_50_90_00.md) \(PM509000\) and [Manage Project Files by Record Type](PM_50_95_50.md) \(PM509500\) forms, file uploading automatically triggers the prompt.

On these forms, you can also autotag existing files by using these buttons:

-   **Autotag All**: Autotags all files currently displayed in the central pane. The button appears when no files are selected.
-   **Autotag**: Autotags the selected files in the central pane. The button appears when at least one file is selected.

**Attention:** Tags are assigned only if you have a user role with the *Edit and Upload \(Project Files\)* or *Delete \(Project Files\)* access rights for the tags.

For details about AI automation, see [Integration with LLM Providers: General Information](LLM_Providers_GeneralInfo.md).

**Parent topic:**[Managing Project Files](../UserGuide/Projects_File_Management_Mapref.md)

