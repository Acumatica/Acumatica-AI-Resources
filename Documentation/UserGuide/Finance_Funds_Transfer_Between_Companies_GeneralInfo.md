# Intercompany Funds Transfers: General Information {#_e46ddfec-559c-45cb-a777-fbc72560fcdb .concept}

It may happen that you need to transfer funds from one company to another one within one tenant. When you enter an intercompany funds transfer on the [Funds Transfers](CA_30_10_00.md) \(CA301000\) form, you perform the same steps as you do when you add a funds transfer of a single company, specifying the correct source account and destination account.

On posting of an intercompany transaction related to a funds transfer, an intercompany transfer, the system adds balancing entries to the batch according to the account mapping rules that have been specified in the system. For details, see [Interbranch Account Mapping: General Information](../ImplementationGuide/config_InterBranch_Mapping_Rules_GeneralInfo.md).

## Learning Objectives {#section_pqc_kjv_vxb .section}

In this chapter, you will learn how to process a funds transfer between companies.

## Applicable Scenarios {#section_rqc_kjv_vxb .section}

You create intercompany funds transfers in the following cases:

-   If you want to redistribute funds among companies of your organization. For example, at the end of the financial period, the companies reconcile their due-to and due-from amounts to pay each other. This process is described in [Intercompany Funds Transfers: Process Activity](Finance_Funds_Transfer_Between_Companies_Activity.md).
-   If you want to transfer funds between companies that use different base currencies. In this case, you process two payments: an outgoing payment in the source company and an incoming payment in the destination company.

**Parent topic:**[Processing Inter-Company Funds Transfers](../UserGuide/Finance_Funds_Transfer_Between_Companies_Mapref.md)

