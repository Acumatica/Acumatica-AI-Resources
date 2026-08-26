# Foreign Keys and Nullable Columns {#_8da9e9c6-ebbf-409a-b43d-a13d2081a62e .concept}

In the database, you have to define the primary key in each application table that you create. The primary key defines the unique data record identifier, which provides table-level integrity of data.

There are no strict requirements to define column-level constraints and foreign keys in application tables. Whether you define the constraints at the database level depends on the design approach you use. At a higher level of the application object model, which is represented by data access classes, you can flexibly define any level of constraints, including default values, nullable fields, and parent-child relationships between data access classes. If you are not sure whether a column should allow a null value, you can allow null values for it in the database. Later, in the data access class, you can make the data field either required or nullable; you can even make the field required on one form and optional on another.

**Tip:** For Boolean and decimal columns, we recommend that you define default values either in the database or in data access classes. This simplifies the application code by helping to avoid checking of values for nulls multiple times.

**Parent topic:**[Designing the Database Structure and DACs](../StudioDeveloperGuide/DA__mng_Designing_Database_Structure.md)

