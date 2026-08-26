# Account Groups: Configuration Prerequisites {#_9e484d58-714e-451f-90d9-268544fedbed .concept}

Before starting to create account groups, you must be sure that the system has been configured properly and that all required entities have been created, as described in the following sections.

## Enabling the Needed Features { .section}

On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Projects* feature, which provides the basic project management functionality, must be enabled.

## Configuring the System { .section}

Before you create account groups, you need to make sure that on the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, all GL accounts that are necessary for performing the financial operations of the company have been configured, as described in [General Ledger: To Create a Chart of Accounts](../ImplementationGuide/config_Basic_Company_Implem_Activity_COA.md).

## Configuring the Account Group Identifier { .section}

The *ACCGROUP* segmented key on the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form defines the structure of identifiers of account groups. By default, this segmented key specifies that the account group identifier is an alphanumeric string of up to 10 characters. For the key, you can define how many segments it is to have, what values may be used, whether these values should be validated, and whether auto-numbering should be used in one of the segments. You can also divide account group identifiers into segments with specific values. For more information on configuring segmented keys, see [Segmented Identifiers](CS__con_Identifier_Segmentation.md).

**Parent topic:**[Creating Account Groups](../UserGuide/Account_Groups_Mapref.md)

