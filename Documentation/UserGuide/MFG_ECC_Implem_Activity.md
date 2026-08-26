# Engineering Change Control: Implementation Activity {#_a1847e4b-353d-4310-a92e-5e688086794c .task}

In the following implementation activity, you will learn how to configure engineering change control.

## Process Overview { .section}

In this activity, you will review the settings related to engineering change control by using the [BOM Preferences](AM_10_10_00.md) \(AM101000\) form.

## System Preparation { .section}

Before you start implementing the product configuration functionality, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *SalesDemo* dataset preloaded. You should sign in as the system administrator with the *admin* username and the password for this user valid for your instance.
2.  Enable the *Engineering Change Control* feature in the *Manufacturing* group of features on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Step: Reviewing ECC Settings { .section}

To review the default settings of engineering change control, do the following:

1.  Open the [BOM Preferences](AM_10_10_00.md) \(AM101000\) form.
2.  Go to the **General** tab, and notice that the following settings related to engineering change control have been specified:
    -   **ECR Numbering Sequence**: *AMECR*
    -   **ECO Numbering Sequence**: *AMECO*
    -   **Require ECR/ECO for New BOM Revisions**: Cleared

        With this setting, a user can create new revisions of bills of material based on ECR or ECO directly on the [Bill of Material](AM_20_80_00.md) \(AM208000\) form.

    -   **Require ECR Before Creating ECO**: Selected

        With this setting, a user must create an engineering change request first and then create an engineering change order based on the request.

3.  Go to the **ECR Approval** tab, and notice that the following settings have been specified:
    -   The **ECR Require Approval** check box is selected.
    -   The *Engineering Change Request* approval map has been added to the table.
4.  Go to the **ECO Approval** tab, and notice that the following settings have been specified:
    -   The **ECO Require Approval** check box is selected.
    -   The *Engineering Change Order* approval map has been added to the table.

**Parent topic:**[Engineering Change Control](../UserGuide/MFG_ECC_Mapref.md)

