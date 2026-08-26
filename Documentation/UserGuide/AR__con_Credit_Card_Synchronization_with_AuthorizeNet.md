# Credit Card Synchronization with Acumatica Payments {#_48b65c1b-a099-4624-a415-583efd1a9ea8 .concept}

Acumatica ERP supports the synchronization of credit cards registered in the Acumatica Payments processing center. During the process of synchronizing the new credit card data, a user can associate each credit card with a payment method and a customer in Acumatica ERP. Credit card synchronization can be required when a card has been registered in the processing center but has not yet been used in Acumatica ERP; it can also be required when you need mass upload of new credit cards from the processing center.

You use the [Synchronize Cards](CA_20_60_00.md) \(CA206000\) form to view a listing of the basic settings for all the credit cards defined in the processing center and not yet defined in Acumatica ERP, and to synchronize them with Acumatica ERP.

You can perform this processing manually or automatically.

## Manual Processing {#section_sns_4jv_vxb .section}

To perform manual processing, you complete the following instructions:

1.  On the [Synchronize Cards](CA_20_60_00.md) \(CA206000\) form, you select a processing center with *Acumatica Payments Plug-In* in the **Processing Center** box.
2.  You click **Load Card/Account Data** on the form toolbar.

    Loading card data does not cause these results to be imported; instead, they are listed in the table of this form \(one row per credit card\), where you can make needed changes in the table before importing the data, saving the results as needed.

    As it loads the data, Acumatica ERP checks for unsynchronized cards and customer profiles in the processing center, and automatically matches customers in Acumatica ERP to processing center profiles. During this auto-matching, it fills in the **Customer ID** and **Customer Name** columns of the rows.

3.  Optional: You overwrite the values in the **Customer ID**, **Payment Method**, and **Cash Account** columns for each card.
4.  You select the check boxes in the Included column for the cards that you want to import and click **Process** or **Process All** on the form toolbar.

    The system imports the cards with all of the listed settings to Acumatica ERP as customer-specific payment methods that are maintained on the [Customer Payment Methods](AR_30_30_10.md) \(AR303010\) form.

    When you select a customer in the **Customer ID** column, if the system finds multiple credit cards in the table that are likely to belong to this customer, it displays a dialog box listing all these cards. In this dialog box, you select all of the payment profiles to be assigned to this customer. For details, see [To Synchronize Credit Cards from Acumatica Payments to Acumatica ERP](AR__HOW_Synchronize_Credit_Cards_from_AuthorizeNet.md).




## Automatic Processing {#section_wns_4jv_vxb .section}

You can set up the system to regularly load data from the processing center with new cards not defined in Acumatica ERP. On the [Synchronize Cards](CA_20_60_00.md) \(CA206000\) form, you can configure a schedule for the loading of data in the system by clicking **Schedules** &gt; **Add** on the form toolbar. In the **Automation Schedules** dialog box, which is opened, you specify how often you want the system to load data from the processing center. For details, see [To Schedule Automatic Loading of Card Data from External Processing Centers](AR__HOW_To_Schedule_Automatic_CC_Synchronization.md).

**Parent topic:**[Processing Credit Card Payments](../UserGuide/AR__MNG_ProcessingCCPayments.md)

