# Product Configurator: Implementation Activity {#_7cba73f3-57bf-4b4e-876e-5d11faf4c9ec .task}

In the following implementation activity, you will learn how to implement the product configuration functionality.

## Process Overview { .section}

In this activity, you will do the following:

1.  On the [Configurator Preferences](AM_10_40_00.md) \(AM104000\) form, review the default settings of the product configuration functionality.
2.  On the [Configuration Maintenance](AM_20_75_00.md) \(AM207500\) form, create a new revision of an existing configuration and add rules.
3.  On the [Configuration Entry](AM_30_60_00.md) \(AM306000\) form, test the configuration.

## System Preparation { .section}

Before you start implementing the product configuration functionality, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *SalesDemo* dataset preloaded. You should sign in as the system administrator with the *admin* username and the password for this user valid for your instance.
2.  Enable the *Product Configurator* feature in the *Manufacturing* group of features on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Step 1: Reviewing Default Settings of the Product Configurator { .section}

To review default settings of the product configurator, do the following:

1.  Open the [Configurator Preferences](AM_10_40_00.md) \(AM104000\) form.
2.  Notice that the following settings are specified in the **General** section:
    -   **Config Numbering Sequence**: *AMCONFIG*
    -   **Default Revision**: *A*
    -   **Config Key Format**: *No Keys* \(That is, a configuration key is not required.\)
    -   **Default Key Number Sequence**: Empty
    -   **Completion Required Before Production**: Selected \(That is, a user will have to complete the configuration before creating a production order.\)
3.  Notice that the following settings are specified in the **Price** section:
    -   **Hide Price Details**: Cleared \(That is, the price details will be displayed when a user configures items.\)
    -   **Rollup**: *Children All* \(That is, the system will calculate the selling price as the rolled up selling price of each option, including all fixed materials in the bill of material.\)
    -   **Override Default on Configuration**: Selected \(That is, the user can override the calculated price rollup for a configuration.\)
    -   **Calculate**: *After Selection* \(That is, the system calculates the selling price each time the user selects an option or enters a quantity.\)
    -   **Override Default on Configuration**: Selected \(That is, the user can override the calculation method of a selling price for a particular configuration.\)
4.  Notice that all check boxes are selected in the **Order Fields** section. This means that the corresponding boxes of a sales order line will be editable.

## Step 2: Setting Up a Configuration { .section}

To set up a configuration, do the following:

1.  Open the *Configuration Maintenance \(AM2075PL\)* form and click *AMC000002* in the **Configuration ID** column.

    The configuration for the *AMDOORDH01* item opens on the [Configuration Maintenance](AM_20_75_00.md) \(AM207500\) form.

2.  In the **Revision** box, type `B` to add a new revision of the configuration.
3.  On the form toolbar, click **Save**.
4.  On the **Features** tab, add rules to features as follows:
    1.  Click the row with the *JAMB* feature and on the **Rules** tab in the lower part of the form, add the rules listed in the following table.

        |Rule|Source Option|Target Feature|Target Option|
        |----|-------------|--------------|-------------|
        |Include|F/J Pine, 18x90 2 Piece|ARCHITRAVE|FJ Pine Ex 40x25 Profiled|
        |Include|FJ Pine 115x30 Arkline|ARCHITRAVE|FJ Pine Ex 75x25 Profiled|
        |Exclude|FJ Pine 115x30 Arkline|ARCHITRAVE|FJ Pine Ex 100x25 Profiled|
        |Require|Undershot Jamb|HARDWARE|AMDOORHDSS|

    2.  Click the row with the *ARCHITRAVE* feature and on the **Rules** tab in the lower part of the form, add the rules listed in the following table.

        |Rule|Source Option|Target Feature|Target Option|
        |----|-------------|--------------|-------------|
        |Exclude|FJ Pine Ex 100x25 Profiled|DOORS|Horizon SQ10 1980 x 510|
        |Include|FJ Pine Ex 75x25 Profiled|HARDWARE|AMDOORHDE1|
        |Require|FJ Pine Ex 40x25 Profiled|HARDWARE|AMDOORHDE2|

    3.  Click the row with the *DOORS* feature and on the **Rules** tab in the lower part of the form, add the rules listed in the following table.

        |Rule|Source Option|Target Feature|Target Option|
        |----|-------------|--------------|-------------|
        |Exclude|EPS S/C|HARDWARE|AMDOORHDD2|
        |Exclude|Solid Core|JAMB|J2P38/90 Set A|

5.  On the form toolbar, click **Save**.
6.  Select the attributes below on the **Attributes** tab, and then on the **Rules** tab in the lower part of the form, add the rules listed in the following table.

    |Rule|Condition|Value 1|Value 2|
    |----|---------|-------|-------|
    |**Label**: Jamb thickness, **Attribute ID**: Units|
    |Validate|Is Between|=CDbl\(1.25\)|=CDbl\(3\)|
    |**Label**: Height waste, **Attribute ID**: Units|
    |Validate|Is Greater Than or Equal To|=CDbl\(0\)| |
    |**Label**: Width waste, **Attribute ID**: Units|
    |Validate|Is Greater Than or Equal To|=CDbl\(0\)| |
    |**Label**: Architrave height, **Attribute ID**: Units|
    |Validate|Is Greater Than or Equal To|=CDbl\(0\)| |
    |Validate|Is Less Than or Equal To|=CDbl\(180\)| |
    |**Label**: Architrave height waste, **Attribute ID**: Units|
    |Validate|Is Greater Than or Equal To|=CDbl\(0\)| |
    |**Label**: Architrave width waste, **Attribute ID**: Units|
    |Validate|Is Greater Than or Equal To|=CDbl\(0\)| |

7.  On the form toolbar, click **Save**.

## Step 3: Testing the Configuration { .section}

To test the configuration, do the following:

1.  While you are still viewing the configuration on the [Configuration Maintenance](AM_20_75_00.md) \(AM207500\) form, on the form toolbar, click **Test Configuration**.
2.  On the [Configuration Entry](AM_30_60_00.md) \(AM306000\) form, which opens in the popup window, do the following:
    1.  In the Features pane on the **Options** tab, click *JAMBS*.
    2.  In the right pane, select the check box in the **Included** column for the row with the *FJ Pine 115x30 Arkline* option. The system displays this option under the *JAMB* feature in the Features pane.
    3.  Notice that the system added the *FJ Pine Ex 75x25 Profiled* option under the *ARCHITRAVE* feature because of the *Include* rule you added for the *JAMB* feature and the *FJ Pine 115x30 Arkline* option.
    4.  Notice that the system also added the *AMDOORHDE1* option under the *HARDWARE* feature according to the rule you added for the *ARCHITRAVE* feature and the *FJ Pine Ex 75x25 Profiled* option.
    5.  In the Features pane, click *DOORS*.
    6.  In the right pane, select the check box in the **Included** column for the row with the *Horizon SQ10 1980 x 760* option. The system displays this option under the *DOORS* feature on the Features pane.
    7.  On the **Attributes** tab, view the warning message displayed for the *Jamb thickness* attribute. According to the rule for this attribute, its value must be between 1.25 and 3 but the value of the attribute is *5*.
    8.  Change the value of the attribute to `3`. Notice that the warning message has disappeared.
    9.  On the form toolbar, click **Finish** to indicate that you finished testing, and close the form.

You have successfully implemented the product configuration.

**Parent topic:**[Product Configurator](../UserGuide/MFG_Product_Configurator_Mapref.md)

