# Customers: Implementation Activity {#_9e9f3669-1d14-4dc4-a314-8c03ee2e5861 .task}

The following activity will walk you through the process of creating a new customer.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story {#section_wnl_4jv_vxb .section}

Suppose that the SweetLife Fruits &amp; Jams company wants to create a customer account for one of the local cafes, Prime Cafe, to enable them to buy the SweetLife products on credit, with payments due in 30 days.

Acting as a SweetLife administrator, you need to create the needed customer account in the system.

## Process Overview {#section_znl_4jv_vxb .section}

In this activity, you will create a new customer on the [Customers](AR_30_30_00.md) \(AR303000\) form. On the tabs of this form, you will specify the customer's address and contact information. You will then review the default settings, which the system inserted to the customer account when creating the customer, and then review the credit terms for the customer.

## System Preparation {#section_isg_njv_vxb .section}

Before you start creating a customer, make sure that the following tasks have been performed in the system:

1.  The company has been created and its actual ledger has been specified; [Company Without Branches: To Configure a Company Without Branches](../ImplementationGuide/config_Basic_Company_Implem_Activity_Enabling_Features.md) and [General Ledger: To Create an Actual Ledger](../ImplementationGuide/config_Basic_Company_Implem_Activity_Actual_Ledger.md).
2.  The credit terms that are used by customers have been created, as described in [Credit Terms: To Define Single-Installment Credit Terms](../ImplementationGuide/config_Basic_Company_Implem_Activity_Credit_Terms.md).
3.  The default customer class has been created, as described in [Accounts Receivable: To Create a Customer Class](../ImplementationGuide/config_Basic_Company_Implem_Activity_Customer_Classes.md).

## Step 1: Creating a Customer Account {#section_d4l_4jv_vxb .section}

To create a customer account, do the following:

1.  On the [Customers](AR_30_30_00.md) \(AR303000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Customer ID**: `PRIME`
    -   **Account Name**: `Prime Cafe`

        **Attention:** The **Legal Name** box is filled in by default with the same value.

    -   **Customer Status**: *Active* \(selected automatically\)
3.  On the **General** tab, make sure that **Customer Class** is set to *DEFAULT*.
4.  On the form toolbar, click **Save**.

## Step 2: Specifying Contact Information and Address {#section_f4l_4jv_vxb .section}

To specify contact information and address for the customer, do the following:

1.  On the **General** tab, specify the following settings in the **Primary Contact** section:
    -   **Name**: `Scott L Kennedy`
    -   **Job Title**: `General Manager`
    -   **Business 1**: `973-345-7083`
2.  In the **Account Address** section of the **General** tab, specify the following main address for the customer:
    -   **Address Line 1**: `2720 Jadewood Farms`
    -   **City**: `Paterson`
    -   **State**: *NJ*
    -   **Postal Code**: `07501`
3.  On the form toolbar, click **Save**.

## Step 3: Reviewing the Statement Cycle {#section_h4l_4jv_vxb .section}

To review the customer's statement cycle, do the following:

1.  In the **Financial Settings** section on the **Financial** tab, in the **Terms** box, make sure that *30D* is selected.
2.  In the **Statement Cycle ID** box, make sure that *EOM - End of Month* is selected.
3.  In the **Credit Verification Rules** section, select *Disabled* in the **Credit Verification** box.
4.  On the form toolbar, click **Save**.

## Step 4: Reviewing the Default Customer Information {#section_j4l_4jv_vxb .section}

To review the default customer information, do the following:

1.  On the **Billing** tab, review the customer's bill-to address.

    Because the **Override** check box is cleared for the bill-to address, the system has inserted the information from the **Account Address** section on the **General** tab.

2.  On the **Shipping** tab, review the customer's shipping information.

    Because the **Override** check box is cleared for the ship-to address, the system has inserted the information from the **Account Address** section on the **General** tab.

3.  On the **Payment Methods** tab, review the customer's payment methods and notice that the *CHECK* payment method is the default one for the customer \(the check box in the **Is Default** column is selected\).
4.  On the **GL Accounts** tab, review the GL accounts to be used for settlements with this customer.

**Parent topic:**[Creating a Customer](../UserGuide/Customer_Mapref.md)

