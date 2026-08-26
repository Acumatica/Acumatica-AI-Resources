# Managing Project Files: Tag and File Access Setup {#_cf97eaef-5277-407c-9453-b8601c052757 .concept}

When multiple users work on the same project, they often need different levels of access to project files. In Acumatica ERP, you control this access by using tags.

With tag-based access, you assign tags to project files and define the access levels each user role has to files with those tags. Access levels define what users with the role can do with these files. For example, some user roles may have view-only access, while others can update or delete project files.

**Attention:** The functionality is available in the Modern UI when the *Document Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Tag Creation { .section}

You use the [File Tags](SM_20_25_60.md) \(SM202560\) form to define tags, their descriptions, and their access rights. In an out-of-the-box system, the **Untagged** default tag appears on the **Tags** pane. This system tag is invisible to users and automatically added to each file with no other tags.

You create tags by performing these steps:

1.  In the **Tags** pane, add a tag.
2.  In the **Tag Name** box, enter the name of the tag.
3.  Optional: In the **Description** box, enter the tag's description.
4.  Save your changes.

The system creates the tag and displays it in the **Tags** pane alphabetically.

## Tag and File Access Setup { .section}

You set up user roles’ access to tags and project files on the [File Tags](SM_20_25_60.md) \(SM202560\) form by performing these steps:

1.  Assign access rights to the **Untagged** node. These access rights apply to all files without tags.
2.  In the **Tags** pane, select a tag.
3.  In the **Access Rights** table, assign an access level to each role access level to the selected tag.
4.  Repeat the two previous steps as needed for each tag.

For each user role, you can assign one of these access levels to each tag:

-   *Revoked* \(default\): Users can't access the tag or its files.
-   *View Only*: Users can view and download the files.
-   *Create Version \(Project Files\)*: Users can view, download, and check out the files, as well as upload new versions.
-   *Edit and Upload \(Project Files\)*: Users can view, download, check out, and upload new files. They can also upload new versions and assign the tag.
-   *Delete \(Project Files\)*: Users can perform all available actions; they can also delete the files.

**Attention:** If a file has multiple tags that grant different access levels to a user role, the system applies the most permissive access level.

After you’ve created all the tags and assigned access rights to them, you can assign tags to project files. For details, see [Managing Project Files: General Information](Projects_File_Management_GeneralInfo.md).

**Parent topic:**[Managing Project Files](../UserGuide/Projects_File_Management_Mapref.md)

