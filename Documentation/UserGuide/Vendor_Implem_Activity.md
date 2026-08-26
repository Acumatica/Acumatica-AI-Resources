# Vendors: Implementation Activity {#_727004d7-42b9-4663-b535-3da2671f0865 .task}

The following activity will walk you through the process of creating a new vendor.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story {#section_dsg_njv_vxb .section}

Suppose that SweetLife Fruits &amp; Jams company has found a vendor, the CleanUp company that provides cleaning services and that agreed to sell its services on credit, with payments due in 30 days and a 3% discount if the services are paid within 10 days.

Acting as a SweetLife administrator, you need to create the new vendor in the system.

## Process Overview {#section_gsg_njv_vxb .section}

In this activity, you will create a new vendor on the [Vendors](AP_30_30_00.md) \(AP303000\) form. On the tabs of this form, you will specify the vendor's address and contact information. You will then review the default settings, which the system inserts to the vendor account when creating the vendor, and then specify the payment settings for the vendor.

## System Preparation {#section_isg_njv_vxb .section}

Before you start creating a vendor, make sure that the following tasks have been performed in the system:

1.  The company has been created and its actual ledger has been specified; [Company Without Branches: To Configure a Company Without Branches](../ImplementationGuide/config_Basic_Company_Implem_Activity_Enabling_Features.md) and [General Ledger: To Create an Actual Ledger](../ImplementationGuide/config_Basic_Company_Implem_Activity_Actual_Ledger.md).
2.  The credit terms that are used by vendors have been created, as described in [Credit Terms: To Define Credit Terms with a Cash Discount](../ImplementationGuide/config_Basic_Company_Implem_Activity_Credit_Terms_w_CashDiscount.md).
3.  The default vendor class has been created, as described in [Accounts Payable: To Create a Vendor Class](../ImplementationGuide/config_Basic_Company_Implem_Activity_Vendor_Classes.md).

## Step 1: Creating a Vendor Account {#section_ksg_njv_vxb .section}

To create a vendor account, do the following:

1.  Sign in to the company you have prepared with the *admin* username.
2.  On the [Vendors](AP_30_30_00.md) \(AP303000\) form, add a new record.
3.  In the Summary area, specify the following settings:
    -   **Vendor ID**: `CLEANUP`
    -   **Vendor Status**: *Active* \(inserted automatically\)
    -   **Account Name**: `CleanUp Co.`

        **Attention:** The **Legal Name** box is filled in by default with the same value.

4.  On the **General** tab, make sure that **Vendor Class** is set to *DEFAULT*.
5.  On the form toolbar, click **Save** to save your changes.

## Step 2: Specifying Contact Information and Address {#section_nsg_njv_vxb .section}

To specify the vendor's contact information and address, do the following:

1.  On the **General** tab, specify the following settings in the **Primary Contact** section:
    -   **Name**: `Loretta W Glenn`
    -   **Job Title**: `General manager`
    -   **Email**: `lglenn@cleanup.example.com`
    -   **Business 1**: `315-719-5308`
2.  In the **Account Address** section of the **General** tab, specify the following main address for the vendor:
    -   **Address Line 1**: `893 Confederate Drive`
    -   **City**: `Geneva`
    -   **State**: *NY - New York*
    -   **Postal Code**: `14456`

## Step 3: Specifying Financial and Payment Settings {#section_psg_njv_vxb .section}

To specify the financial and payment settings for the vendor, do the following:

1.  On the **Financial** tab, in the **Terms** box, make sure that *310N30* is selected.

    This setting is inserted by default from the vendor class settings. The setting means that you will pay the net amount within 30 days or will take a 3% discount if you choose to pay within 10 days.

2.  On the **Payment** tab, in the **Default Payment Settings** section, make sure that *CHECK* is selected in the **Payment Method** box and *10200 - Checking Account* is selected in the **Cash Account** box.
3.  In the **Default Payment Settings** section, specify the following settings:
    -   **Payment By**: *Discount Date*
    -   **Payment Lead Time \(Days\)**: `3`
    -   **Pay Separately**: Cleared
4.  On the form toolbar, click **Save** to save your changes.

## Step 4: Reviewing the Default GL Accounts {#section_ssg_njv_vxb .section}

To review the default GL accounts of the vendor, do the following:

1.  Open the **GL Accounts** tab.
2.  In the boxes on this tab, review the GL accounts to be used for settlements with this vendor.

**Parent topic:**[Creating a Vendor](../UserGuide/Vendor_Mapref.md)

