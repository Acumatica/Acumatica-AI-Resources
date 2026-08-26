# Connector Implementation: DAC for the Connector's Configuration Settings {#_4be5a17f-b51e-4ee5-a808-8f6b9a216a34 .concept}

You need to create a DAC with the configuration settings that are used by the connector. For this DAC, you also need to add a database table and include it in the customization project.

## Creation of the Database Table { .section}

In the database of the instance that you are using for the development of the connector, you create a database table with the settings used by the connector. An example of the SQL script for this table is shown below.

```language-sql
GO
IF NOT EXISTS (SELECT * FROM SYSOBJECTS 
  WHERE NAME='BCBINDINGWOOCOMMERCE' AND XTYPE='U')
BEGIN
  CREATE TABLE [dbo].[BCBindingWooCommerce](
	[CompanyID] [int] NOT NULL,
	[BindingID] [int] NOT NULL,
	[StoreBaseUrl] [nvarchar](100) NULL,
	[StoreXAuthToken] [nvarchar](max) NULL,
	[StoreXAuthClient] [nvarchar](max) NULL,
	[StoreAdminUrl] [nvarchar](200) NULL,
	[WooCommerceStoreTimeZone] [nvarchar](100) NULL,
	[WooCommerceDefaultCurrency] [nvarchar](12) NULL,
	[tstamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_BCBindingWooCommerce] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BindingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, 
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

ALTER TABLE [dbo].[BCBindingWooCommerce] ADD  DEFAULT ((0)) FOR [CompanyID]
END
```

You then add the table to the customization project, as described in [To Add a Custom Table to a Project](../CustomizationPlatform/CG_GL_Items_DBScripts_AddingCustTable.md).

## Creation of the DAC { .section}

In the Visual Studio project of the extension library, you create the DAC that stores the connector settings, as shown in the following example.

**Tip:**

-   You can generate the DAC from the table in the database by using the Customization Project Editor \(as described in [To Create a New DAC](../CustomizationPlatform/CG_GL_BL_DAC_NewDAC.md)\) and move it to the extension library \(as described in [To Move a Code Item to the Extension Library](../CustomizationPlatform/CG_GL_Items_Code_MovingToLib.md)\). Alternatively, you can create the DAC directly in the Visual Studio project.
-   You can see this code on [GitHub](https://github.com/Acumatica/Help-and-Training-Examples/blob/HEAD/PlugInDevelopment/Help/ImplementingConnector/WooCommerceTest/BCBindingWooCommerce.cs).

```language-csharp
﻿using PX.Commerce.Core;
using PX.Data;
using PX.Data.ReferentialIntegrity.Attributes;

namespace WooCommerceTest
{
    [PXCacheName("WooCommerce Settings")]
    public class BCBindingWooCommerce : PXBqlTable, IBqlTable
    {
        public class PK : PrimaryKeyOf<BCBindingWooCommerce>.
            By<BCBindingWooCommerce.bindingID>
        {
            public static BCBindingWooCommerce Find(
                PXGraph graph, int? binding) => FindBy(graph, binding);
        }

        #region BindingID
        [PXDBInt(IsKey = true)]
        [PXDBDefault(typeof(BCBinding.bindingID))]
        [PXUIField(DisplayName = "Store", Visible = false)]
        [PXParent(typeof(Select<BCBinding, Where<BCBinding.bindingID, 
            Equal<Current<BCBindingWooCommerce.bindingID>>>>))]
        public int? BindingID { get; set; }
        public abstract class bindingID : 
            PX.Data.BQL.BqlInt.Field<bindingID> { }
        #endregion

        //Connection
        #region StoreBaseUrl
        [PXDBString(50, IsUnicode = true, InputMask = "")]
        [PXUIField(DisplayName = "API Path")]
        [PXDefault()]
        public virtual string? StoreBaseUrl { get; set; }
        public abstract class storeBaseUrl : 
            PX.Data.BQL.BqlString.Field<storeBaseUrl> { }
        #endregion
        #region StoreXAuthClient
        [PXRSACryptString(IsUnicode = true, InputMask = "")]
        [PXUIField(DisplayName = "Consumer Key")]
        [PXDefault()]
        public virtual string? StoreXAuthClient { get; set; }
        public abstract class storeXAuthClient : 
            PX.Data.BQL.BqlString.Field<storeXAuthClient> { }
        #endregion
        #region StoreXAuthToken
        [PXRSACryptString(IsUnicode = true, InputMask = "")]
        [PXUIField(DisplayName = "Consumer Secret")]
        [PXDefault()]
        public virtual string? StoreXAuthToken { get; set; }
        public abstract class storeXAuthToken : 
            PX.Data.BQL.BqlString.Field<storeXAuthToken> { }
        #endregion

        #region WooCommerceDefaultCurrency
        [PXDBString(12, IsUnicode = true)]
        [PXUIField(DisplayName = "Default Currency", IsReadOnly = true)]
        public virtual string? WooCommerceDefaultCurrency { get; set; }
        public abstract class wooCommerceDefaultCurrency : 
            PX.Data.BQL.BqlString.Field<wooCommerceDefaultCurrency> { }
        #endregion

        #region WooCommerceStoreTimeZone 
        [PXDBString(100, IsUnicode = true)]
        [PXUIField(DisplayName = "Store Time Zone", IsReadOnly = true)]
        public virtual string? WooCommerceStoreTimeZone { get; set; }
        public abstract class wooCommerceStoreTimeZone : 
            PX.Data.BQL.BqlString.Field<wooCommerceStoreTimeZone> { }
        #endregion

        #region StoreAdminURL
        [PXDBString(100, IsUnicode = true, InputMask = "")]
        [PXUIField(DisplayName = "Store Admin Path")]
        [PXDefault()]
        public virtual string? StoreAdminUrl { get; set; }
        public abstract class storeAdminUrl : 
            PX.Data.BQL.BqlString.Field<storeAdminUrl> { }
        #endregion

    }
}
```

**Parent topic:**[Implementing a Connector for an External System](../PlugInDevelopmentGuide/CommerceConnector_Implementation_Mapref.md)

