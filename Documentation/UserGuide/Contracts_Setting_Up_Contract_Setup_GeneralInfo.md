# Contract Setup and Activation: General Information {#_9ae6ce62-071e-4fa6-8148-4765a5301137 .concept}

After you have created a contract draft and specified the needed settings, you need to set up the contract and activate it to continue performing operations with it.

## Learning Objectives { .section}

In this chapter, you will learn how to perform the setup and activation of the contract.

## Applicable Scenarios { .section}

You set up and activate the contract to start recording the business processes that occur during the lifecycle of the contract.

## Contract Setup and Activation as Separate Actions { .section}

After you have implemented the contract functionality, drafted a particular contract, and made needed revisions to the contract based on internal and customer feedback, you can proceed to the setup and activation of the contract.

In Acumatica ERP, *contract setup* is used to describe both organizations signing the contract, which codifies their agreement to its terms and causes it to become legally enforceable. The date when the contract is signed is called the *setup date*. The start of the provision of services is referred to as *contract activation*, and the date of contract activation is called the *activation date*.

To reflect contract setup in the system, on the [Customer Contracts](CT_30_10_00.md) \(CT301000\) form, select the contract with the *Draft* status that has been signed. On the form toolbar or More menu, click **Set Up Contract**. The contract is assigned the *Pending Activation* status, and an invoice is generated for any service to be provided on setup.

You activate the contract on the [Customer Contracts](CT_30_10_00.md) form by clicking **Activate Contract** on the form toolbar or More menu. \(This button or command is available only if the contract has the *Pending Activation* status.\) The contract is assigned the *Active* status and an invoice for prepaid services is generated.

You can record contract usage after you have activated the contract.

## Simultaneous Contract Setup and Activation { .section}

The way you initiate a contract may depend on the services you provide. You may want the contract signing and the start of provision of services to occur at different times. For example, you might need some time to install the equipment required for the provision of services, and you may want to bill the customer for this equipment before the installation. In this case, the recurring billing should begin at the start date of provision. If you don't need to separate the time of the contract signing and the service provision, then you can perform these two actions simultaneously.

To set up and activate a contract simultaneously, on the More menu \(under **Processing**\) of the [Customer Contracts](CT_30_10_00.md) \(CT301000\) form, click **Set Up and Activate Contract**. This command is available only if the contract has the *Draft* status. The contract is assigned the *Active* status, and an invoice is generated for the setup and prepaid services.

**Parent topic:**[Setting Up and Activating Contracts](../UserGuide/Contracts_Setting_Up_Contracts_Mapref.md)

