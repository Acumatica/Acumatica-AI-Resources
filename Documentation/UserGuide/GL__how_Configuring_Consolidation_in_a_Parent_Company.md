# GL Consolidation Configuration \(Optional\): To Configure Consolidation in a Parent Company with Subaccounts {#_dc8bfc9d-62a4-476e-8361-e25947ead8be .task}

To set up consolidation, the following actions should be performed in the system of the parent tenant:

1.  Access should be provided to each subsidiary \(that is, a consolidation unit\) to Acumatica ERP website by specifying valid credentials.
2.  Synchronization should be performed to update the list of ledgers and branches available in each subsidiary as sources of consolidation data.

## Before You Proceed {#section_wzl_mjv_vxb .section}

-   In each consolidation unit whose branches store the data to be consolidated, on the [Ledgers](GL_20_15_00.md) \(GL201500\) form, make sure that the necessary ledgers have been specified as the consolidation sources.
-   Provide personnel at consolidation units with information about accounts and subaccounts of the branch of parent tenant, so that this information can be used for mapping.
-   Give these personnel information about the parent tenant base currency, to allow consolidation units to translate the data intended for consolidation from the base currency of each consolidation unit to the base currency used by the parent tenant.

## To Provide Access to Consolidation Units in the System that Uses Subaccounts {#section_yzl_mjv_vxb .section}

1.  Open the [Consolidation](GL_10_30_00.md) \(GL103000\) form.
2.  In the **Consolidation Segment Number** box, specify the subaccount segment ID that is used in the parent company to designate the subsidiaries \(consolidation units\).
3.  In the table, provide access information for each of the branches of the parent company that will be importing data from the branches of subsidiaries, performing the following steps for each subsidiary:
    1.  Click **Add Row** on the table toolbar.
    2.  In the **Consolidation Branch** column, select the branches of the parent tenant to hold the consolidated data.
    3.  In the **Consolidation Ledger** column, make sure that the necessary consolidation ledger associated with the branch of the parent tenant.
    4.  Specify the **Consolidation Segment Value**, which is used to designate this subsidiary or this branch of the subsidiary.
    5.  If the consolidation segment is not present in the subsidiary segments, select the **Paste Segment Value** check box.
    6.  In the **Consolidation Unit** column, type a brief description of the unit whose data will be imported to the branch of the parent tenant.
    7.  In the **Username** column, provide the combination of the username that is used to access the website of the consolidation unit along with the name of the consolidation unit in the following format: *your username@tenant username*—for instance, *admin@Headquarter*.
    8.  In the **Password** column, type the password that is used to access the website of the consolidation unit.
    9.  In the **URL** column, provide the URL of the website of the consolidation unit.
    10. Optional: In the **Source Company/Branch** column, specify the branch of the company or the company whose data will be imported to the parent company.
    11. Optional: In the **Start Period** and **End Period** columns, specify the start and end period for consolidation.
4.  Click **Save**.

**Parent topic:**[Configuring GL Consolidation](../UserGuide/Finance_GL_Consolidation_Configuration_Mapref.md)

