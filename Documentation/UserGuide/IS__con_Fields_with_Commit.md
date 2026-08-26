# Fields with Commit in Import and Export Scenarios {#_3f5047b1-51e2-4089-956c-32a888aeda55 .concept}

There are two types of fields on Acumatica ERP forms: fields with commit, and fields without commit. A commit is an action initiated by the form that, when triggered, sends the data to the server. On the server, the commit causes all data on the form to be updated, including the insertion of default values and the recalculation of appropriate fields on the form.

A commit is a costly operation that causes the browser to make requests to the server and takes server time. As such, a commit is invoked for only a limited number of fields: mainly the key fields and the fields on which the other fields depend. On the **Mapping** tab of the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form or the [Export Scenarios](SM_20_70_25.md) \(SM207025\) form, if you select a field for which the system performs a commit, the system automatically selects the **Commit** check box.

If the **Commit** check box is cleared on this tab, the field is filled in with data, but no update of the form is invoked. If the **Commit** check box is selected, after the field is filled in, the commit is invoked on the server and the form is updated.

For example, when you select a customer on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, the system assigns values to fields related to customer settings, such as the customer terms, due date, and cash discount date. When you create an import scenario for this form, for fields such as **Customer**, the system automatically selects the **Commit** check box on the **Mapping** tab of the [Import Scenarios](SM_20_60_25.md) form.

In most cases, when you compose the mapping of an import or export scenario, you can use the **Commit** check boxes as they are set by default. However, you may need to force the system to invoke a commit to the server—for example, when you need to commit the value of one field before entering another field value, or to indicate the beginning and the end of a record if you enter records without specifying the key field value. In such cases, you should manually select the **Commit** check box for the field or action. For more information on the situations when the **Commit** check box should be selected in export scenarios, see [Data Modification During Export: Use of Commit and Actions](IS__con_Commit_and_Actions_in_Export_Scenarios.md#).

**Tip:** The **Commit** check box is read-only for the &lt;Action: Save&gt; command.

**Parent topic:**[Configuring Scenario Mapping](../UserGuide/IS__mng_Scenario_Mapping.md)

