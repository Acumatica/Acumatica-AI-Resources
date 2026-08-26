# Managing Project Files: Project Tag Templates {#_068518ab-7c54-429b-b79e-cc9366576131 .concept}

Projects often require different ways of organizing documents. To support this, you can use *project tag templates.*

Each project tag template contains a reusable tag hierarchy that defines the project’s default tags and their arrangement. When you assign a tag template to a project \(or project template\), the system copies the tag hierarchy to the project \(or template\) so that you don’t need to build it from scratch. Then you can modify the assigned project tag template, if needed.

## Defining a Tag Template for Projects { .section}

You define tag templates on the [Project Tag Templates](PM_20_45_00.md) \(PM204500\) form. For each new tag template, you:

1.  Enter the template ID and description and save your changes.
2.  In the **Tags** pane, create tags under the **All Tags** top-level node, which appears when the tag template is saved. You can create a hierarchical structure or a flat list of tags.
3.  To make the tag template available for users, select the **Active** check box.
4.  Save your changes.

You add tags to a node in the **Tags** pane as follows:

1.  Select the node.
2.  Click the Add button.
3.  In the dialog box that opens, select the tags.
4.  Click **Add** to insert the tags under the selected node.
5.  Save your changes.

**Tip:** You can move any tag in the **Tags** pane to another position by dragging it.

## Selecting a Tag Template for a Project { .section}

You assign a tag template to a project on the **Document Tag Setup** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form; the tab appears only in the Modern UI. When you select a template in the **Tag Template** box, the system inserts:

-   The tags in the **Tags** pane.
-   The name, description, and parent tag \(the tag the selected tag is beneath\) of the tag selected in the pane.
-   Each user role’s access level to the selected tag. The table is read-only; you can modify access rights only on the [File Tags](SM_20_25_60.md) \(SM202560\) form.

**Tip:** You can also assign a tag template to a project template. On the **Summary** tab of the [Project Templates](PM_20_80_00.md) \(PM208000\) form, select a project tag template in the **Tag Template** box. When you create a project from this project template, the system copies the tag structure to the project.

## Tailoring the Tag Template for a Project { .section}

Once the tag template is assigned to a project on the [Projects](PM_30_10_00.md) \(PM301000\) form, you can tailor this template for the project without affecting the tag template. You can do the following:

-   Add existing tags to the template
-   Select a different parent tag for an existing tag
-   Move tags within the **Tags** pane by dragging them

When make changes and save them, the system opens a confirmation dialog box. If you confirm the changes, the system inserts *&lt;MODIFIED&gt;* in the **Tag Template** box to indicate that the project’s tag structure differs from the original template.

**Parent topic:**[Managing Project Files](../UserGuide/Projects_File_Management_Mapref.md)

