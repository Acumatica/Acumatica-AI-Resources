# Cases: To Create a Case Manually {#_931a8e0a-7508-4b91-b3a9-5048af81a49b .task}

The following activity demonstrates how to manually create a case and specify basic settings for this case.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are a customer service representative of the SweetLife Fruits &amp; Jams company. You have received a phone call from your customer, Kevin Grey, who is a buyer at the Groceriex chain of supermarkets in New York. Kevin ordered 25 jars each of apple, orange, and cherry jam, but only 15 jars of orange jam were delivered. \(The other jams were delivered in full.\) You need to arrange the delivery of 10 jars of orange jam to Groceriex within three working days.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Customer Management*: This feature provides the customer relationship management \(CRM\) functionality.
    -   *Case Management* in the *Customer Management* group of features: This feature gives customer support personnel the ability to create support cases, assign cases to owners, and process cases.
-   On the [Case Classes](CR_20_60_00.md) \(CR206000\) form, the *SUPPORT* case class has been created.

## Process Overview { .section}

In this activity, you will manually create a case on the [Cases](CR_30_60_00.md) \(CR306000\) form.

## System Preparation { .section}

Before you start creating a case manually, you should do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded
2.  Sign in to the system as delivery manager Marcos Garcia by using the following credentials:
    -   **Username**: *garcia*
    -   **Password**: *123*
3.  Make sure that on the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, the *SweetLife Head Office and Wholesale Center* branch is selected.

## Step: Creating a Case Manually { .section}

To manually create a case for the request submitted by Kevin Grey of *GROCERIEX*, do the following:

1.  On the [Cases](CR_30_60_00.md) \(CR306000\) form, add a new record.
2.  In the Summary area, do the following:
    1.  In the **Case Class** box, select *SUPPORT*.
    2.  In the **Business Account** box, select *GROCERIEX*.
    3.  In the **Contact** box, select *Kevin Grey*.
    4.  In the **Subject** box, type `Delivery of the missing 10 jars of orange jam`.
    5.  In the **Severity** box, select *Low*.
    6.  In the **Priority** box, select **Medium**.
3.  On the **Details** tab of the form, in the text area, type `10 jars of orange jam were not delivered to GROCERIEX`.
4.  On the form toolbar, click **Save**.

You have created a case based on the request from the existing *GROCERIEX* customer.

**Parent topic:**[Creating Cases](../UserGuide/CRM_Support_Creating_Cases_Mapref.md)

