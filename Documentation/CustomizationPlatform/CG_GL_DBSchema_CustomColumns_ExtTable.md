# Requirements for an Extension Table Schema {#_d5881298-51ce-4ed9-8cef-2dddbb09261f .concept}

You should ensure that the following requirements are met when you create an extension table:

-   The extension table should have the same set of main key columns as the original database table has.
-   The extension table must include the following columns if they are declared within the original database table:
    -   `[CompanyID][int] NOT NULL`
    -   `[DeletedDatabaseRecord][bit] NOT NULL`
-   For an extension table that can be used separately, you should also declare the following audit columns:
    -   `[tstamp][timestamp] NULL`
    -   `[CreatedByID][uniqueidentifier] NOT NULL`
    -   `[CreatedByScreenID][char] ( 8 ) NOT NULL`
    -   `[CreatedDateTime][datetime] NOT NULL`
    -   `[LastModifiedByID][uniqueidentifier] NOT NULL`
    -   `[LastModifiedByScreenID][char] ( 8 ) NOT NULL`
    -   `[LastModifiedDateTime][datetime] NOT NULL`

The example below shows the declaration of the InventoryItemTableExtension extension table. Notice that this table will not be used independently from the original database table.

```

CREATE TABLE [dbo].[InventoryItemTableExtension]
(
    [CompanyID] [int] NOT NULL,
    [InventoryID] [int] NOT NULL,
    [DeletedDatabaseRecord] [bit] NOT NULL,
    [ExtTableDescr] [nvarchar](256) NULL
    CONSTRAINT [InventoryItemTableExtension_PK] PRIMARY KEY CLUSTERED 
    (
        [CompanyID] ASC,
        [InventoryID] ASC
    )
    WITH (PAD_INDEX  = OFF, 
          STATISTICS_NORECOMPUTE  = OFF, 
          IGNORE_DUP_KEY = OFF, 
          ALLOW_ROW_LOCKS  = ON, 
          ALLOW_PAGE_LOCKS  = ON) 
    ON [PRIMARY]
) ON [PRIMARY]
ALTER TABLE [dbo].[InventoryItemTableExtension] ADD  DEFAULT ((0))
    FOR [DeletedDatabaseRecord]
GO

```

**Parent topic:**[To Create an Extension Table](../CustomizationPlatform/CG_GL_DBSchema_CustomColumns.md)

