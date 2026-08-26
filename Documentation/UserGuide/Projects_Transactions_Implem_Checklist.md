# Project Transactions: Implementation Checklist {#_a53a0b58-16a1-a123-a86e-d9aead34d413 .concept}

The following sections provide details that you can use to ensure that the system is configured properly for processing project transactions, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially process project transactions, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Tasks to Perform|
|----|----------------|
|[Projects Preferences](PM_10_10_00.md) \(PM101000\) form|Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see [Basic Project Configuration: General Information](../ImplementationGuide/config_Project_Basic_GeneralInfo.md).|
|[Account Groups](PM_20_10_00.md) \(PM201000\) form|Make sure that all needed account groups have been configured and that all needed general ledger accounts are mapped to these groups. For more information about account groups, see [Account Groups: General Information](Account_Groups_GeneralInfo.md).|
|[Projects](PM_30_10_00.md) \(PM301000\) form|Make sure that the project has been created. For more details, see [Project Creation and Processing: General Information](Projects_Process_GeneralInfo.md).|
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\) form|Make sure that all needed labor items, non-stock items, and services have been defined. For more information about labor items, non-stock items, and services, see [Labor Items: General Information](Non_Stock_Item_Projects_GeneralInfo.md), [Non-Stock Items: General Information](Non_Stock_Items_OrderMgmt_GeneralInfo.md), and [Service Items: General Information](Services_GeneralInfo.md), respectively.|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of processing project transactions by specifying additional settings as follows:

-   To change the format of project transaction identifiers, adjust the *PMTRAN* numbering sequence on the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form, or create a new numbering sequence and select this sequence in the **Transaction Numbering Sequence** box on the **General** tab \(**Numbering Sequence** section\) of the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form. For more information on numbering sequences, see [Use of Numbering Sequences](CS__con_Multiple_Numbering_Sequences.md).

    **Important:** Project transaction identifiers must be assigned only automatically. That is, the **Manual Numbering** check box must be cleared in the Summary area of the [Numbering Sequences](CS_20_10_10.md) form for the numbering sequence used for project transactions.

    By default, the *PMTRAN* numbering sequence specifies that the project transaction identifier is an automatically generated alphanumeric string that starts with the *PM* prefix and is followed by eight digits, such as *PM00000001*.

-   To cause the system to post every document you enter as an individual batch to the general ledger, clear the **Generate Consolidated Batches** check box in the **Posting Settings** section of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form.
-   To make the system automatically associate additional project transactions that are generated \(such as discounts or freight charges\) with specific project tasks, map specific general ledger accounts to these project tasks within the project in the **Default Task for GL Account** section on the **Defaults** tab of the [Projects](PM_30_10_00.md) form. For more information, see [Default Project Tasks in Record Lines](Project_Tasks_GeneralInfo.md#section_nq2_xvf_z4b).

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process a project transaction by performing instructions similar to those described in [Project Transactions: Process Activity](Projects_Transactions_Process_Activity.md).

**Parent topic:**[Processing Project Transactions](../UserGuide/Projects_Transactions_Mapref.md)

