# Types of Items in a Customization Project

When you customize an instance of Acumatica ERP by using the [Customization Project Editor](../Shared/../UserGuide/SM_20_45_10.md), the platform stores all items of a customization project as records in the CustObject table of the database. Each record in this table contains the data of an item, including the XML code of the item in a specific field. When you add an item to the customization project, the platform adds the new record to the table, creates the XML code of the item, and stores the code within the Content field of the record.

**Tip:** You can view the content of an item of a customization project by using the [Edit Project Items](../UserGuide/AU_ItemXMLEditor.md) of the Customization Project Editor.

## XML Code of the Items

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

## Item Types Within a Customization Project

All the possible types of items in a customization project are summarized in the following table. The value in the **Can Be Unpublished** column identifies whether the changes introduced by the item type are reversed when you unpublish the customization project. For details on which changes are reversed, see [Project Unpublishing: General Information](CustomizationProjects_UnpublishingProjects_GeneralInfo.md).

<table id="_86b2ce21-c58b-4280-bf8f-9d423e439389"><thead><tr><th>

Item Type \(XML Tag, if differs\)

</th><th>

Object

</th><th>

Description

</th><th>

Edited Via

</th><th>

Can Be Unpublished

</th></tr></thead><tbody><tr><td>

*Page*

</td><td>

A custom form, or changes to an existing form

</td><td>

Any of the following:

 -   For a custom form, the content of the form, and the path to the `.aspx` file of the form \(the path is required for the system to detect changes of the file on the file system in the development environment and to deploy the file while publishing the project\)
-   For an existing form, the layout change instructions and the action change instructions that have to be applied by the platform to the ASPX code of the form during the project publication

</td><td>

[Screen Editor](../Shared/../UserGuide/AU_20_45_20.md)

</td><td>

Yes

</td></tr><tr><td>

*AutomationScreenCondition*

</td><td>

A condition that changes the business logic of a customized screen

</td><td>

A data set containing a list of conditions for a customized screen

</td><td>

[Condition Editor](../Shared/../UserGuide/AU_20_10_10.md)

</td><td>

Yes

</td></tr><tr><td>

*AUScreenAction*

</td><td>

An action that changes the business logic of a customized screen

</td><td>

A data set containing the properties of an action

</td><td>

[Screen Editor](../Shared/../UserGuide/AU_20_45_20.md)

</td><td>

Yes

</td></tr><tr><td>

*AUScreenNavigationAction*

</td><td>

An action that changes the business logic of a customized screen and navigates to another screen

</td><td>

A data set containing the properties of an action

</td><td>

[Screen Editor](../Shared/../UserGuide/AU_20_45_20.md)

</td><td>

Yes

</td></tr><tr><td>

*AutomationScreenField*

</td><td>

A field to which conditions are applied

</td><td>

A data set containing the properties of a field

</td><td>

[Screen Editor](../Shared/../UserGuide/AU_20_45_20.md)

</td><td>

Yes

</td></tr><tr><td>

*DAC*

</td><td>

Changes to an existing data access class

</td><td>

The data required to create the corresponding extension for the original data access class

</td><td>

[Data Class](../Shared/../UserGuide/AU_DataClassEditor.md)

</td><td>

Yes

</td></tr><tr><td>

*Table*

</td><td>

Changes to the schema of an existing database table

</td><td>

A definition of the custom columns added to a table for bound custom fields created in the appropriate DAC

</td><td>

[Table Editor](../Shared/../UserGuide/AU_20_90_00.md#_23e61b76-5ad2-49d0-8c5d-43b63ad56e5e)

</td><td>

No

</td></tr><tr><td>

*Code* \(Graph\)

</td><td>

Custom C\# code

</td><td>

Any of the following:

 -   A custom DAC, which has the PX.Data.IBqulTable base class
-   A custom BLC, which has the PXGraph&lt;&gt; base class
-   An extension for an existing DAC, which has the PXCacheExtension&lt;&gt; base class
-   An extension for an existing BLC, which has the PXGraphExtension&lt;&gt; base class
-   A customization plug-in, which has the CustomizationPlugin base class
-   Any custom class, which has no or any base class

</td><td>

[Code Editor](../Shared/../UserGuide/AU_20_40_00_CodeEditor.md)

</td><td>

Yes

</td></tr><tr><td>

*File*

</td><td>

A custom file

</td><td>

The path to a custom file and the GUID of the file content in the file storage of the database. The path is relative to the website folder; new custom forms are added to the project as custom files.

</td><td>

[File Editor](../Shared/../UserGuide/AU_20_45_00.md)

</td><td>

Yes

</td></tr><tr><td>

*GenericInquiryScreen*

</td><td>

A custom or customized generic inquiry

</td><td>

A data set of a custom or customized generic inquiry form

</td><td>

[Generic Inquiry](../Shared/../UserGuide/SM_20_80_00.md) \(SM208000\) form

</td><td>

No

</td></tr><tr><td>

*Report*

</td><td>

A custom Acumatica Report Designer report

</td><td>

A data set of a custom report created by using the Acumatica Report Designer

</td><td>

Acumatica Report Designer

</td><td>

No

</td></tr><tr><td>

*Dashboard*

</td><td>

A custom or customized dashboard

</td><td>

A data set of a custom or customized dashboard

</td><td>

[Classic Dashboards](../Shared/../UserGuide/SM_20_86_00.md) \(SM208600\) form

</td><td>

No

</td></tr><tr><td>

*SiteMapNode*

</td><td>

A custom or customized site map node

</td><td>

A data set of a custom or customized site map node \(which includes information about the location of the custom form or report\); you should create a custom site map node for each custom form or report included in the customization project

</td><td>

[Site Map](../Shared/../UserGuide/SM_20_05_20.md) \(SM200520\) form

</td><td>

No

</td></tr><tr><td>

*Sql*

</td><td>

A custom SQL script

</td><td>

A custom database table definition or custom SQL script that has to be executed while the customization project is published

</td><td>

[SQL Script Editor](../Shared/../UserGuide/AU_20_90_00.md#_fc6ac68c-a25e-4f4b-944b-7644ddfbe94d)

</td><td>

No

</td></tr><tr><td>

*Locale*

</td><td>

A custom locale

</td><td>

A data set of a custom system locale, which is a set of parameters that defines the language and other local preferences—such as how to display numbers, dates, and times in the user interface—for a group of users

</td><td>

[System Locales](../Shared/../UserGuide/SM_20_05_50.md) \(SM200550\) form

</td><td>

No

</td></tr><tr><td>

*XportScenario*

</td><td>

A custom integration scenario

</td><td>

A data set of a custom export or import scenario used to perform data migration between a legacy application and Acumatica ERP

</td><td>

[Import Scenarios](../Shared/../UserGuide/SM_20_60_25.md) \(SM206025\) form and [Export Scenarios](../Shared/../UserGuide/SM_20_70_25.md) \(SM207025\) form

</td><td>

No

</td></tr><tr><td>

*SharedFilter*

</td><td>

A custom shared filter

</td><td>

A data set of a custom reusable shared filter created on a processing or inquiry form

</td><td>

[Filters](../Shared/../UserGuide/CS_20_90_10.md) \(CS209010\) form

</td><td>

No

</td></tr><tr><td>

*ScreenWithRights*

</td><td>

Custom access rights to a form

</td><td>

A data set of the custom access rights of roles to a form, down to the control of form elements, such as buttons, text boxes, and check boxes

</td><td>

[Access Rights by Screen](../Shared/../UserGuide/SM_20_10_20.md) \(SM201020\) form

</td><td>

No

</td></tr><tr><td>

*WikiArticle*

</td><td>

A custom wiki module

</td><td>

A data set of a custom wiki and all the articles created within this wiki

</td><td>

[Wiki](../Shared/../UserGuide/SM_20_20_05.md) \(SM202005\) form

</td><td>

No

</td></tr><tr><td>

*EntityEndpoint*

</td><td>

A custom web service endpoint

</td><td>

A data set of a custom web service endpoint

</td><td>

[Web Service Endpoints](../Shared/../UserGuide/SM_20_70_60.md) \(SM207060\) form

</td><td>

No

</td></tr><tr><td>

*ReportDefinition*

</td><td>

A custom analytical report

</td><td>

A data set of a custom analytical report, including the data of the predefined sets of rows, columns, and units

</td><td>

[Report Definitions](../Shared/../UserGuide/CS_20_60_00.md) \(CS206000\) form

</td><td>

No

</td></tr><tr><td>

*PushNotification*

</td><td>

Push notification configuration

</td><td>

A data set that includes the push notification destination and the data query that defines for which data changes Acumatica ERP sends notifications

</td><td>

[Push Notifications](../Shared/../UserGuide/SM_30_20_00.md#) \(SM302000\) form

</td><td>

No

</td></tr><tr><td>

*BpEvent*

</td><td>

A business event

</td><td>

A data set of a business event

</td><td>

[Business Events](../Shared/../UserGuide/SM_30_20_50.md) \(SM302050\) form

</td><td>

No

</td></tr><tr><td>

*MobileSiteMap*

</td><td>

A mobile app screen

</td><td>

A script for adding or changing a mobile app screen

</td><td>

[Mobile App Editor](../Shared/../UserGuide/AU_22_00_00.md)

</td><td>

Yes

</td></tr><tr><td>

*CSAttribute*

</td><td>

A user-defined field

</td><td>

A data set of a user-defined field with a list of screens on which the field is displayed

</td><td>

[Edit User-Defined Fields](../Shared/../UserGuide/cs_20_50_20.md) \(CS205020\) form

</td><td>

Yes

</td></tr><tr><td>

*Webhook*

</td><td>

A webhook

</td><td>

A description of a webhook for an external application and identification parameters of the webhook.

</td><td>

[Webhooks](../Shared/../UserGuide/SM_30_40_00.md) \(SM304000\) form

</td><td>

No

</td></tr><tr><td>

*OAuthClient*

</td><td>

A connected application

</td><td>

A data set of properties of a connected application and identification parameters of the connected application.

</td><td>

[Connected Applications](../Shared/../UserGuide/SM_30_30_10.md) \(SM303010\) form

</td><td>

No

</td></tr><tr><td>

*DeletedRecordsTrackingTable*

</td><td>

A data access class for which the system tracks the removed records

</td><td>

A data set of a data access class for which the system tracks the removed records

</td><td>

[Tables to Track Deleted Records](../Shared/../UserGuide/SM_20_70_10.md) \(SM207010\) form

</td><td>

No

</td></tr></tbody>
</table>

**Parent topic:**[Customization Project](../CustomizationPlatform/CG_Platform_Project.md)

