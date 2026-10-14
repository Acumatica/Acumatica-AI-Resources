# Authoring and contextual form linkage, 2026 R1

For a new Wiki, use **Wiki (SM202005)**, also reachable through **Wikis > Manage
Wikis** in the Customization Project Editor. Within the intended Wiki/folder,
use **Add New Article**, choose its parent and supply Article ID, name and content.
Save, and complete any configured approval/publication workflow.

For form reference linkage, use the documented underscore-separated Article ID:
fictional screen `ZZ201000` maps to `ZZ_20_10_00`. Set it in the Wiki Editor's
Content tab. This human-readable ID is different from the persistent PageID;
preserve the latter on an update rather than creating another article. Verify
the real form's Help resolver because a correct-looking name alone is insufficient.

To include editor-authored content in a project, use **Wikis > Add New Record**,
select the custom Wiki and save. For subsequent editor changes use **Reload from
Database**, review all affected Wiki items and preserve the source owner. The
`WikiArticle` item carries the Wiki data required for recreation. An existing
package authoring pipeline can maintain that item directly; use its validated
schema and lifecycle instead of inventing XML or requiring editor-first authoring.

Article/folder rights inherit from the parent by default. Inspect the Wiki root,
folder and article rights together; give intended readers the appropriate viewing
right, not edit/publish authority to work around denial. The native article-rights
procedure requires Delete-level article access; the acting user also needs task
authority to change access. Do not infer an Administrator-role requirement.
Separate article publication
approval from customization-package publication.

## Vendor sources

- [Wiki management](../../../../Documentation/CustomizationPlatform/CG_GL_Items_Wiki_Redirecting.md)
- [Create an article](../../../../Documentation/UserGuide/DM__how_Wiki_Creating_a_New_Article.md)
- [Link an article to a form](../../../../Documentation/UserGuide/DM__how_Wiki_Link_to_Form.md)
- [Add a Wiki to a project](../../../../Documentation/CustomizationPlatform/CG_GL_Items_Wiki_Adding.md)
- [Update a packaged Wiki](../../../../Documentation/CustomizationPlatform/CG_GL_Items_Wiki_Updating.md)
- [Article access](../../../../Documentation/UserGuide/DM__how_Wiki_Adjusting_Access_Rights_to_an_Article.md)
- [Approval configuration](../../../../Documentation/UserGuide/DM__con_Wiki_Configuring_Approval_Procedures.md)
- [Multitenant publication](../../../../Documentation/UserGuide/SA_Publishing_Customization_Projects_Publication_to_Multitenant_Site_Concept.md)
