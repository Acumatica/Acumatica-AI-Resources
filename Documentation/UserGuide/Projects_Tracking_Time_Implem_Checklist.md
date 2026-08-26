# Employee Time Billing: Implementation Checklist {#_a53a0444-16a1-4385-a86e-d9aead34d214 .concept}

To ensure that the system is configured properly for billing employee time spent for projects, make sure that the features and settings listed in the table are configured as described in the following table.

|Form|Validation of Settings|
|----|----------------------|
|Multiple forms|Make sure that all necessary settings of time tracking have been specified, as demonstrated in the examples of [Time Tracking Configuration: To Configure Time Tracking in Projects](../ImplementationGuide/config_Project_Time_Tracking_Implem_Activity.md) and [Time Tracking Configuration: To Track Time with Time Activities](../ImplementationGuide/config_Project_Time_Tracking_Implem_Activity2.md).|
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\), [Employees](EP_20_30_00.md) \(EP203000\)|Create the needed labor items to represent project work and assign them to employees, as illustrated in the [Labor Items: To Configure a Labor Item](Non_Stock_Item_Projects_Implem_Activity.md).|
|[Labor Rates](PM_20_99_00.md) \(PM209900\)|Define labor cost rates for employees, as demonstrated in [Labor Items: To Define Labor Cost Rates](Non_Stock_Item_Projects_Implem_Activity_LaborCostRates.md).|
|[Projects](PM_30_10_00.md) \(PM301000\)|Make sure that the project has been created, as described in [Project Creation and Processing: General Information](Projects_Process_GeneralInfo.md), and that labor items are assigned to the appropriate project tasks on the **Tasks** tab.|

## Other Settings That Affect the Workflow {#section_zff_s33_4mb .section}

You can affect the workflow of time reporting by specifying additional settings as follows:

-   To cause the system to require a particular employee to enter time cards, select the **Time Card is Required** check box on the [Employees](../Shared/../UserGuide/EP_20_30_00.md) \(EP203000\) form. If the reporting of time with time activities is configured, the selection of this check box means that time activities can be released only within a time card.
-   To cause the system to post project transactions that have been generated on release of time activities to the off-balance account group, select *Post PM to Off-Balance Account Group* in the **Posting Option for Non-Payroll Employee** box, and specify the account group of the *Off-Balance Type* in the **Off-Balance Account Group** on the [Time and Expenses Preferences](../Shared/../UserGuide/EP_10_10_00.md) \(EP101000\) form.
-   To cause project transactions to be automatically generated and released on release of time cards, select the **Automatically Release PM Documents** on the [Time and Expenses Preferences](../Shared/../UserGuide/EP_10_10_00.md) \(EP101000\) form.
-   To associate an earning type with a particular project or project task, on the [Earning Types](../Shared/../UserGuide/EP_10_20_00.md) \(EP102000\) form, for an earning type, specify the project or project task in the **Default Project Code** box and **Default Task** box, respectively.
-   To copy notes and attached documents from time cards to generated project transactions, select the **Copy Files to PM Documents** and **Copy Notes to PM Documents** check boxes on the [Time and Expenses Preferences](../Shared/../UserGuide/EP_10_10_00.md) form.

**Parent topic:**[Billing Employee Time](../UserGuide/Projects_Tracking_Time_Mapref.md)

