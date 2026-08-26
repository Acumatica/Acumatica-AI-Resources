# Esignature Providers: Setting Up User Accounts for Esignature Providers {#_95e37597-5dab-4c26-86b0-05da98a458c8 .concept}

In this topic, you will learn about the dedicated role for the electronic signing functionality. You will also learn how to create an electronic signing account and connect to the esignature provider.

## Managing Access Rights { .section}

To give a user full access to the esignature functionality, you assign the *eSign* role on the [User Roles](SM_20_10_05.md) \(SM201005\) form. By default, users with the following roles have the *Delete* access level to the [Manage eSign Documents](ES_40_10_00.md) \(ES401000\) and [eSign Sync](ES_50_10_00.md) \(ES501000\) forms:

-   *System Administrator*
-   *Acumatica Support*

## Creating Electronic Signing Accounts { .section}

You create at least one account that’s used to connect Acumatica ERP to an esignature provider. To do this, you use the [eSign Accounts](ES_30_10_00.md) \(ES301000\) form. You can create multiple accounts for the same provider—for example, one per employee or one shared account for a team.

To create an account, perform the following steps:

1.  In the **eSign** account box, enter the account name.
2.  In the **Provider** box, select the esignature provider.
3.  In the **Type** box, select the account type:
    -   *Individual* for one employee. If you select this option, you also must select a employee in the **Employee** box.
    -   *Shared* for multiple employees. If you select this option, you need to create a list of employees on the **Employees** tab that appears.
4.  In the **API Connection** section, enter the API URL of the esignature provider and the credentials for the provider's API application you have created earlier.
5.  Save the record.

## Connecting to the Esignature Provider { .section}

After you specify the API connection settings for an account on the [eSign Accounts](ES_30_10_00.md) \(ES301000\) form, you click **Connect** on the form toolbar. The system then:

-   Starts the esignature provider’s OAuth authorization flow
-   Makes the **Connect** button unavailable and the **Disconnect** button available if the connection is successful

Now that the account is connected, you're ready to submit documents for an esignature.

**Parent topic:**[Integrating with Esignature Providers](../UserGuide/Integrations_eSignature_Serviice_Mapref.md)

