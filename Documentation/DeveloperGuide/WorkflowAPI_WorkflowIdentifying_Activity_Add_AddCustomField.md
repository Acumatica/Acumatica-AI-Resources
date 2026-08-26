# Step 1: Adding the OrderType Field and Corresponding Box to the UI {#_baf1cfee-4226-411b-ae6c-cd45df691400 .task}

To add multiple workflows to a form, you need to define a workflow-identifying field, which will hold a value that defines a particular workflow to be used for a record. In this step, you will add the workflow-identifying field to the Repair Work Orders \(RS301000\) form.

Do the following:

1.  Add the `UsrOrderType` field to the `RSSVWorkOrder` database table by doing the following:
    1.  In the Customization Project Editor, open the [Database Scripts](../UserGuide/AU_20_90_00.md) page.
    2.  On the More menu, click **Add Custom Column to Table**.
    3.  In the **Add Custom Column to Table** dialog box which opens, specify the following values:
        -   **Table**: *RSSVWorkOrder*
        -   **Field Name**: `UsrOrderType`

            **Tip:** The field must have the `Usr` prefix because it is a custom field.

        -   **Data Type**: *string*
        -   **Length**: `2`
    4.  Click **OK**.
    5.  Publish the customization project to apply the database script.
2.  In the `Constants.cs` file, add the list of possible values for the `UsrOrderType` field as shown in the following code.

    ```language-csharp
        //Constants for the repair work order types
        public static class WorkOrderTypeConstants
        {
            public const string Simple = "SP";
            public const string Standard = "ST";
            public const string Awaiting = "AW";
        }
    ```

3.  In the `Messages.cs` file, add the list of UI string values corresponding to the added constant strings as shown in the following code.

    ```language-csharp
            //Work order types 
            public const string Simple = "Simple";
            public const string Standard = "Standard";
            public const string Awaiting = "Awaiting Delivery";
    ```

4.  Create an extension of the `RSSVWorkOrder` DAC and add the `UsrOrderType` field to the `RSSVWorkOrder` DAC by using the following code.

    ```
            public sealed class RSSVWorkOrder_Extension : 
                PXCacheExtension<RSSVWorkOrder>
            {
                #region Status
                [PXDBString(2, IsFixed = true)]
                [PXDefault(WorkOrderTypeConstants.Standard,
                  PersistingCheck = PXPersistingCheck.Nothing)]
                [PXUIField(DisplayName = "Order Type")]
                [PXStringList(
                  new string[]
                  {
                      WorkOrderTypeConstants.Simple,
                      WorkOrderTypeConstants.Standard,
                      WorkOrderTypeConstants.Awaiting
                  },
                  new string[]
                  {
                      Messages.Simple,
                      Messages.Standard,
                      Messages.Awaiting
                  })]
                public string? UsrOrderType { get; set; }
                public abstract class usrOrderType : 
                    PX.Data.BQL.BqlString.Field<usrOrderType> { }
                #endregion
            }
    ```

    **Tip:** Use Acuminator to suppress the [PX1016](https://github.com/Acumatica/Acuminator/blob/master/docs/diagnostics/PX1016.md) error in a comment. In this course, for simplicity, the extension is always active.

5.  Rebuild the `PhoneRepairShop_Code` project.
6.  Add the **Order Type** box to the Repair Work Orders form by doing the following:
    1.  Create the `development` folder \(if it doesn't exist\) in the `FrontendSources\screen\src\` folder of your instance. Within it, create the `screens` folder.
    2.  In the `FrontendSources\screen\src\development\screens\` folder, create the `RS` folder, and within it, create the `RS301000` folder.
    3.  In the `RS301000` folder, create the `extensions` folder, and within it, create the following files:

        -   `RS301000_PhoneRepairShop_UsrOrderType.html`
        -   `RS301000_PhoneRepairShop_UsrOrderType.ts`
        In these files, you’ll write the code that adds the **Order Type** box \(which corresponds to the `UsrOrderType` custom field\) to the UI of the Repair Work Orders form.

    4.  Add the following code in the `RS301000_PhoneRepairShop_UsrOrderType.ts` file.

        ```language-javascript
        import {
          PXFieldState,
          fieldInfo
          } from "client-controls";
        import { 
          RS301000, 
          RSSVWorkOrder
          } from "src/customizationScreens/Company/screens/RS/RS301000/RS301000";
        
        export interface RS301000_PhoneRepairShop_UsrOrderType extends RS301000 {}
        export class RS301000_PhoneRepairShop_UsrOrderType {}
        
        export interface RSSVWorkOrder_PhoneRepairShop_UsrOrderType
          extends RSSVWorkOrder {}
        export class RSSVWorkOrder_PhoneRepairShop_UsrOrderType {
          @fieldInfo({ commitChanges: true })
          UsrOrderType: PXFieldState;
        }
        ```

        In the code above, you’ve created an extension of the original TypeScript code of the Repair Work Orders form. The code extends the original screen and view class of the form and adds the `UsrOrderType` field in the extended view class. You’ve added the @fieldInfo decorator to the `UsrOrderType` field and set the `commitChanges` property to `true`. This ensures that once a new value is selected in the box corresponding to the `UsrOrderType` field, the system will apply the workflow that corresponds to the selected value.

    5.  Add the following code in the `RS301000_PhoneRepairShop_UsrOrderType.html` file.

        ```language-xml
        <template>
            <field name="WorkOrders.UsrOrderType" 
        	       before="#fsColumnA-Order FIELD[name='OrderNbr']">
        	</field>
        </template>
        ```

        In the code above, you’ve created an extension of the original HTML code of the Repair Work Orders form. This code specifies that a control should be created for the `UsrOrderType` field and placed before the `OrderNbr` field.

    6.  To build the extension code that you’ve written in the previous steps, do the following:
        1.  Open a terminal \(such as Command Prompt\) in the `FrontendSources\screen` folder of your instance.
        2.  In the terminal, run the following command.

            ```language-powershell
            npm run build-dev --- --env customFolder=development screenIds=RS301000
            ```

            Once the command finishes its execution, you should see a message about successful compilation of Webpack.

    7.  Include the extension files in your customization project as follows:
        1.  Open the *PhoneRepairShop* customization project.
        2.  In the navigation pane of the Customization Project Editor, click **Modern UI Files**. The [Modern UI Files](../UserGuide/AU_20_46_00.md) page opens.
        3.  Click **Add New Record** on the page toolbar. The **Add Files** dialog box opens.
        4.  Select the check box in the **Selected** column for the rows with the following file paths:
            -   `development\screens\RS\RS301000\extensions\RS301000_PhoneRepairShop_UsrOrderType.html`
            -   `development\screens\RS\RS301000\extensions\RS301000_PhoneRepairShop_UsrOrderType.ts`
        5.  Click **Save** in the dialog box.

            The system adds the selected files to the Modern UI Files page.

    8.  Publish the customization project.
    9.  Open the Repair Work Orders \(RS301000\) form and make sure the **Order Type** box is displayed in the Summary area of the form as a drop-down control.

**Parent topic:**[Workflow-Identifying Fields: To Add a Workflow for a Value of the Workflow-Identifying Field](../DeveloperGuide/WorkflowAPI_WorkflowIdentifying_Add_Activity.md)

