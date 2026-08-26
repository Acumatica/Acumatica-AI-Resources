# Inventory Planning Configuration: Monitoring of Calculated Item Quantities by Period {#_6d818d4f-4878-46e1-aa38-8be1a289d1a3 .concept}

On the [Inventory Planning Requirements by Item](../UserGuide/AM_40_12_00.md) \(AM401200\) form, users can monitor the past and present supply of stock items and demand for items. To give users the ability to view item plans by time periods on this form, you should first create inventory planning buckets that correspond to periods of time—such as days, weeks, months, or years—on the [Inventory Planning Buckets](../UserGuide/AM_20_12_00.md) \(AM201200\) form.

A bucket is defined by the combination of its interval \(day, week, month, or year\) and its interval value \(the number of these intervals that makes up the bucket\). For example, to define a three-week bucket, you select *Week* as the interval and *3* as the value.

The start date of a bucket is the day after the ending date of the previous bucket. In the **Bucket** column, you define the bucket as follows:

-   For a future period, you specify a positive integer value. The positive value closest to zero starts from today.

    Suppose that buckets 1, 2, and 3 are created. In this case, 1 is the closest bucket to 0, so the 1 bucket will start from today and extend into the future.

-   For a past due period, you specify *0* or a negative integer value. Zero or the negative number closest to zero starts from the previous day.

    Suppose that buckets -3, -2, and -1 are created. In this case, -1 is the closest bucket to 0, so the -1 bucket will start from the previous day and extend into the past.


**Tip:** In addition to buckets for present and future periods of time, we recommend that you add at least one bucket for a past due period \(that is, a bucket whose value is a negative number\).

When you have created the needed buckets, a user can open the [Inventory Planning Requirements by Item](../UserGuide/AM_40_12_00.md) form and select the bucket ID, inventory ID, and warehouse. The table will show the data about the actual supply and demand and the planned supply and demand. The user can click **Results by Item** on the More menu, which opens the [Inventory Planning Results by Item](../UserGuide/AM_40_40_00.md) \(AM404000\) form. The form shows the item quantities that the system has calculated based on the results of inventory planning for a specific item in a specific warehouse.

**Parent topic:**[Configuring Inventory Planning](../ImplementationGuide/config_Inventory_Planning_Mapref.md)

