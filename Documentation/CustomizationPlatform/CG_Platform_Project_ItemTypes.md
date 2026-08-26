# Types of Items in a Customization Project {#_24df0b38-0393-470d-9211-21a07ded2e1b .concept}

When you customize an instance of Acumatica ERP by using the [Customization Project Editor](../Shared/../UserGuide/SM_20_45_10.md), the platform stores all items of a customization project as records in the CustObject table of the database. Each record in this table contains the data of an item, including the XML code of the item in a specific field. When you add an item to the customization project, the platform adds the new record to the table, creates the XML code of the item, and stores the code within the Content field of the record.

**Tip:** You can view the content of an item of a customization project by using the [Edit Project Items](../UserGuide/AU_ItemXMLEditor.md) of the Customization Project Editor.

## XML Code of the Items { .section}

Different item types have XML code that is structured differently. For example, if you create the UsrPersonalID bound custom field in the CR.Contact DAC \(which is mapped to the SOOrder table\) and the control for the field on the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form, the customization project might contain the following new objects:

-   An item with the following XML code to add the column to the DB table.

    ```
    <Table TableName="Contact">
      <Column TableName="Contact" ColumnName="UsrPersonalID" ColumnType="string" 
              AllowNull="True" MaxLength="15" DecimalPrecision="2"
              DecimalLength="15" IsNewColumn="True" IsUnicode="True" />
    </Table>
    ```

-   An item with the following XML code to add the field to the DAC.

    ```
    <DAC type="PX.Objects.CR.Contact">
      <Field FieldName="UsrPersonalID" TypeName="string" MapDbTable="Contact" 
             TextAttributes="#CDATA" StorageName="AddColumn">
        <CDATA name="TextAttributes">
        <![CDATA[[PXDBString(15)][PXUIField(DisplayName="Personal ID")]]]></CDATA>
      </Field>
    </DAC>
    ```

-   An item with the following XML code to add the control to the form.

    ```
    <Page path="~/pages/ar/ar303000.aspx" ControlId="5"
          pageSource="...binary content of the page...">
      <PXFormView ID="DefContact" ParentId="phG_tab_Items#0_DefContact"
                  TypeFullName="PX.Web.UI.PXFormView">
        <Children Key="Template">
          <AddItem>
            <PXTextEdit TypeFullName="PX.Web.UI.PXTextEdit">
              <Prop Key="Virtual:ApplyStylesheetSkin" />
              <Prop Key="ID" Value="CstPXTextEdit2" />
              <Prop Key="DataField" Value="UsrPersonalID" />
              <Prop Key="CommitChanges" Value="True" />
            </PXTextEdit>
          </AddItem>
        </Children>
      </PXFormView>
    </Page>
    ```


Note that the items in these code blocks differ by type \(Table, DAC, and Page\) and structure.

## Item Types Within a Customization Project { .section}

All the possible types of items in a customization project are summarized in the following table. The value in the **Can Be Unpublished** column identifies whether the changes introduced by the item type are reversed when you unpublish the customization project. For details on which changes are reversed, see [Project Unpublishing: General Information](CustomizationProjects_UnpublishingProjects_GeneralInfo.md).

|Item Type \(XML Tag, if differs\)|Object|Description|Edited Via|Can Be Unpublished|
|---------------------------------|------|-----------|----------|------------------|
|*Page*|A custom form, or changes to an existing form|Any of the following:

 -   For a custom form, the content of the form, and the path to the `.aspx` file of the form \(the path is required for the system to detect changes of the file on the file system in the development environment and to deploy the file while publishing the project\)
-   For an existing form, the layout change instructions and the action change instructions that have to be applied by the platform to the ASPX code of the form during the project publication

|[Screen Editor](../Shared/../UserGuide/AU_20_45_20.md)|Yes|
|*AutomationScreenCondition*|A condition that changes the business logic of a customized screen|A data set containing a list of conditions for a customized screen|[Condition Editor](../Shared/../UserGuide/AU_20_10_10.md)|Yes|
|*AUScreenAction*|An action that changes the business logic of a customized screen|A data set containing the properties of an action|[Screen Editor](../Shared/../UserGuide/AU_20_45_20.md)|Yes|
|*AUScreenNavigationAction*|An action that changes the business logic of a customized screen and navigates to another screen|A data set containing the properties of an action|[Screen Editor](../Shared/../UserGuide/AU_20_45_20.md)|Yes|
|*AutomationScreenField*|A field to which conditions are applied|A data set containing the properties of a field|[Screen Editor](../Shared/../UserGuide/AU_20_45_20.md)|Yes|
|*DAC*|Changes to an existing data access class|The data required to create the corresponding extension for the original data access class|[Data Class](../Shared/../UserGuide/AU_DataClassEditor.md)|Yes|
|*Table*|Changes to the schema of an existing database table|A definition of the custom columns added to a table for bound custom fields created in the appropriate DAC|[Table Editor](../Shared/../UserGuide/AU_20_90_00.md#_23e61b76-5ad2-49d0-8c5d-43b63ad56e5e)|No|
|*Code* \(Graph\)|Custom C\# code|Any of the following:

 -   A custom DAC, which has the PX.Data.IBqulTable base class
-   A custom BLC, which has the PXGraph&lt;&gt; base class
-   An extension for an existing DAC, which has the PXCacheExtension&lt;&gt; base class
-   An extension for an existing BLC, which has the PXGraphExtension&lt;&gt; base class
-   A customization plug-in, which has the CustomizationPlugin base class
-   Any custom class, which has no or any base class

|[Code Editor](../Shared/../UserGuide/AU_20_40_00_CodeEditor.md)|Yes|
|*File*|A custom file|The path to a custom file and the GUID of the file content in the file storage of the database. The path is relative to the website folder; new custom forms are added to the project as custom files.|[File Editor](../Shared/../UserGuide/AU_20_45_00.md)|Yes|
|*GenericInquiryScreen*|A custom or customized generic inquiry|A data set of a custom or customized generic inquiry form|[Generic Inquiry](../Shared/../UserGuide/SM_20_80_00.md) \(SM208000\) form|No|
|*Report*|A custom Acumatica Report Designer report|A data set of a custom report created by using the Acumatica Report Designer|Acumatica Report Designer|No|
|*Dashboard*|A custom or customized dashboard|A data set of a custom or customized dashboard|[Classic Dashboards](../Shared/../UserGuide/SM_20_86_00.md) \(SM208600\) form|No|
|*SiteMapNode*|A custom or customized site map node|A data set of a custom or customized site map node \(which includes information about the location of the custom form or report\); you should create a custom site map node for each custom form or report included in the customization project|[Site Map](../Shared/../UserGuide/SM_20_05_20.md) \(SM200520\) form|No|
|*Sql*|A custom SQL script|A custom database table definition or custom SQL script that has to be executed while the customization project is published|[SQL Script Editor](../Shared/../UserGuide/AU_20_90_00.md#_fc6ac68c-a25e-4f4b-944b-7644ddfbe94d)|No|
|*Locale*|A custom locale|A data set of a custom system locale, which is a set of parameters that defines the language and other local preferences—such as how to display numbers, dates, and times in the user interface—for a group of users|[System Locales](../Shared/../UserGuide/SM_20_05_50.md) \(SM200550\) form|No|
|*XportScenario*|A custom integration scenario|A data set of a custom export or import scenario used to perform data migration between a legacy application and Acumatica ERP|[Import Scenarios](../Shared/../UserGuide/SM_20_60_25.md) \(SM206025\) form and [Export Scenarios](../Shared/../UserGuide/SM_20_70_25.md) \(SM207025\) form|No|
|*SharedFilter*|A custom shared filter|A data set of a custom reusable shared filter created on a processing or inquiry form|[Filters](../Shared/../UserGuide/CS_20_90_10.md) \(CS209010\) form|No|
|*ScreenWithRights*|Custom access rights to a form|A data set of the custom access rights of roles to a form, down to the control of form elements, such as buttons, text boxes, and check boxes|[Access Rights by Screen](../Shared/../UserGuide/SM_20_10_20.md) \(SM201020\) form|No|
|*WikiArticle*|A custom wiki module|A data set of a custom wiki and all the articles created within this wiki|[Wiki](../Shared/../UserGuide/SM_20_20_05.md) \(SM202005\) form|No|
|*EntityEndpoint*|A custom web service endpoint|A data set of a custom web service endpoint|[Web Service Endpoints](../Shared/../UserGuide/SM_20_70_60.md) \(SM207060\) form|No|
|*ReportDefinition*|A custom analytical report|A data set of a custom analytical report, including the data of the predefined sets of rows, columns, and units|[Report Definitions](../Shared/../UserGuide/CS_20_60_00.md) \(CS206000\) form|No|
|*PushNotification*|Push notification configuration|A data set that includes the push notification destination and the data query that defines for which data changes Acumatica ERP sends notifications|[Push Notifications](../Shared/../UserGuide/SM_30_20_00.md#) \(SM302000\) form|No|
|*BpEvent*|A business event|A data set of a business event|[Business Events](../Shared/../UserGuide/SM_30_20_50.md) \(SM302050\) form|No|
|*MobileSiteMap*|A mobile app screen|A script for adding or changing a mobile app screen|[Mobile App Editor](../Shared/../UserGuide/AU_22_00_00.md)|Yes|
|*CSAttribute*|A user-defined field|A data set of a user-defined field with a list of screens on which the field is displayed|[Edit User-Defined Fields](../Shared/../UserGuide/cs_20_50_20.md) \(CS205020\) form|Yes|
|*Webhook*|A webhook|A description of a webhook for an external application and identification parameters of the webhook.|[Webhooks](../Shared/../UserGuide/SM_30_40_00.md) \(SM304000\) form|No|
|*OAuthClient*|A connected application|A data set of properties of a connected application and identification parameters of the connected application.|[Connected Applications](../Shared/../UserGuide/SM_30_30_10.md) \(SM303010\) form|No|
|*DeletedRecordsTrackingTable*|A data access class for which the system tracks the removed records|A data set of a data access class for which the system tracks the removed records|[Tables to Track Deleted Records](../Shared/../UserGuide/SM_20_70_10.md) \(SM207010\) form|No|

**Parent topic:**[Customization Project](../CustomizationPlatform/CG_Platform_Project.md)

