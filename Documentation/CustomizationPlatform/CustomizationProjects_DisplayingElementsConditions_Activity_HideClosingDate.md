# Conditional Properties: To Hide an Element {#_f217b5bc-b601-49c2-884f-e5925829cc76 .task}

The following activity will walk you through the process of conditionally hiding a box on the form. You will do this by configuring the underlying field to be hidden when the condition is met.

## Story { .section}

Suppose that the employees of your company often work with the [Cases](../UserGuide/CR_30_60_00.md) \(CR306000\) form. Further suppose that you want to hide the boxes that contain the billable time and overtime of a case if the case is not billable. You need to configure a condition that checks whether the **Billable** check box on the **CRM Info** tab is selected.

## Process Overview { .section}

On the [Screens](../UserGuide/AU_20_10_00.md) page, you will add the [Cases](../UserGuide/CR_30_60_00.md) \(CR306000\) form so that it can be customized. By using the [Conditions](../UserGuide/AU_20_10_10.md) page, you will create a condition. On the [Fields](../UserGuide/AU_20_10_60.md) page, you will specify the created condition as a value for the *Hidden* property for the underlying fields of the **Billable Time** and **Billable Overtime** boxes; these settings will cause the boxes to be hidden if the condition is met. You will then publish the project. Finally, you will test the condition on the [Cases](../UserGuide/CR_30_60_00.md) form.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Prepare an Acumatica ERP instance by performing the [Customization Projects: To Deploy an Instance](CustomizationProjects_GettingStarted_Activity_CreateInstance.md) prerequisite activity.
2.  Create the *Yogifon* customization project by performing the [Customization Projects: To Create a Customization Project](CustomizationProjects_GettingStarted_Activity_CreateProject.md) prerequisite activity.

## Step 1: Modifying the List of Customized Screens { .section}

To hide a box on the [Cases](../UserGuide/CR_30_60_00.md) \(CR306000\) form, you first need to add the form \(screen\) to the list of customized screens. In the Customization Project Editor, do the following:

1.  In the navigation pane, click **Screens**.

    The [Screens](../UserGuide/AU_20_10_00.md) page opens.

2.  On the page toolbar, click **Customize Existing Screen**.

    The **Customize Existing Screen** dialog box opens.

3.  In the **Select Screen** box of the dialog box, click the magnifier button. In the lookup table, type `CR306000` in the Search box and double-click the *Cases* form.
4.  Click **OK** to close the dialog box.

    The [Cases](../UserGuide/CR_30_60_00.md) form is added to the list of forms on the [Screens](../UserGuide/AU_20_10_00.md) page, and the Screen Editor: CR306000 \(Cases\) page opens.


## Step 2: Defining the Condition { .section}

Suppose that you have already learned that the field name of the **Billable** box of the [Cases](../UserGuide/CR_30_60_00.md) \(CR306000\) form is the same as the box name. To define the condition, do the following in the Customization Project Editor:

1.  In the navigation pane, click **Screens** &gt; **CR306000** &gt; **Conditions**. The [Conditions](../UserGuide/AU_20_10_10.md) page opens.

    **Tip:** In the name that appears on the page, *Conditions: CR306000 \(Cases\)*, *Conditions* is followed by the form ID and then the form name in parentheses.

2.  On the page toolbar, click **Add New Record**.
3.  In the **Condition Properties** dialog box, which opens, enter the name of the condition: `Billable`.
4.  In the table, add a row with the following settings:
    -   **Active**: Selected
    -   **Field Name**: *Billable*
    -   **Condition**: *Equals*
    -   **Form Schema**: Selected
    -   **Value**: Cleared
5.  Click **OK** to save your changes and close the dialog box.

## Step 3: Specifying the Condition for the Property { .section}

Do the following to specify the condition as the value of the **Hidden** property of the `Billable Time` field and the `Billable Overtime` field:

1.  In the navigation pane, click **Screens** &gt; **CR306000** &gt; **Fields**. The CR306000 \(Cases\) Fields page opens.

    **Tip:** In the name that appears on the page, *CR306000 \(Cases\) Fields*, *Fields* is preceded by the form ID and then the form name in parentheses.

2.  On the page toolbar, click **Add New Record**.
3.  In the **Add Field** dialog box, which opens, specify the following settings:
    -   **Container**: *Case \(Case Summary\)*
    -   **DAC**: *PX.Objects.CR.CRCase* \(specified automatically\)
    -   **Field Name**: *Billable Time*
4.  In the table, select the unlabeled check box in the only row and click **Add &amp; Close** to save your changes.

    The dialog box is closed, and the added field appears in the table on the [Fields](../UserGuide/AU_20_10_60.md) page.

5.  On the page toolbar, click **Add New Record** again.
6.  In the **Add Field** dialog box, which opens, specify the following settings:
    -   **Container**: *Case \(Case Summary\)*
    -   **DAC**: *PX.Objects.CR.CRCase* \(specified automatically\)
    -   **Field Name**: *Billable Overtime*
7.  Select the unlabeled check box in the only row of the table, and click **Add &amp; Close** to save your changes.

    The dialog box is closed, and the added field appears in the table on the [Fields](../UserGuide/AU_20_10_60.md) page.

8.  In the **Hidden** column of both the *TimeBillable* row and the *OvertimeBillable* row, select *Billable*.

    With these settings, if the *Billable* condition is met on the [Cases](../UserGuide/CR_30_60_00.md) \(CR306000\) form \(that is, if the case is not billable\), the **Billable Time** and **Billable Overtime** boxes will be hidden.

9.  On the page toolbar, click **Save**.
10. To apply the changes to the instance, on the main menu of the Customization Project Editor, click **Publish** &gt; **Publish Current Project**.
11. Wait until the *Website updated* row appears in the **Compilation** pane, and click **Close Compilation Pane**.

## Step 4: Testing the Condition { .section}

Now you can test the condition. Do the following on the [Cases](../UserGuide/CR_30_60_00.md) \(CR306000\) form in Acumatica ERP:

1.  Create a case, and specify the following settings:
    -   **Case Class**: *SERVCONS*

        According to the settings specified on the [Case Classes](../UserGuide/CR_20_60_00.md) \(CR206000\) form, cases of this class are billable.

    -   **Business Account**: *C000000094*
    -   **Contact**: *Figer, Guillaume* \(inserted automatically\)
    -   **Subject**: `Installation consulting`
2.  On the form toolbar, click **Save**.
3.  In the **Billing** section of the **Additional Info** tab, notice that the **Billable** check box is selected and that the **Billable Time** and **Billable Overtime** boxes are displayed below the **Billable** check box.
4.  Create another case, and specify the following settings:
    -   **Case Class**: *SUPPORT*

        According to the settings specified on the [Case Classes](../UserGuide/CR_20_60_00.md) \(CR206000\) form, cases of this class are not billable.

    -   **Business Account**: *C000000095*
    -   **Contact**: *Yuan, Yi Xiang* \(inserted automatically\)
    -   **Subject**: `Scheduled maintenance`
5.  On the form toolbar, click **Save**.
6.  In the **Billing** section of the **Additional Info** tab, notice that the **Billable** check box is cleared and that the **Billable Time** and **Billable Overtime** boxes are not displayed.

**Parent topic:**[Defining Conditional Properties](../CustomizationPlatform/CustomizationProjects_DisplayingElementsConditions_Mapref.md)

