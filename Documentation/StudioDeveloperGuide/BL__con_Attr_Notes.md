# Notes {#_1206ded4-46ba-4d69-868e-ecf4a1f2ed09 .concept}

By using the PXNote attribute, you can give users the ability to attach text notes, files, and activity items to data records, and to search for an entity by using the full-text search index.

You should use the PXNote attribute in the data access class of these data records to mark the field that stores the identifier of a note in the Note table. Notes are used to attach text to a data record. This text is stored in the note data record in the Note table. Additionally, you can attach files or other entities to a data record through a note. This feature is implemented through additional tables that store the identifiers of a note and the attached entity.

The PXNote attribute can also be configured to save the specified table fields in a note. In this case, by using the Acumatica Framework application website search, the user will be able to search the data records by the values saved in the note.

**Parent topic:**[Working with Attributes](../StudioDeveloperGuide/BL__mng_Working_With_Attributes.md)

