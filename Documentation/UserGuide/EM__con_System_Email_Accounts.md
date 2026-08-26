# System Email Accounts {#_b8a9d5f6-be82-47ee-bcfa-06b17f54fda6 .concept}

In Acumatica ERP, you can configure and manage system email accounts by using the [Email Accounts](SM_20_40_02.md) \(SM204002\) form. You can create as many accounts as you may need, each serving a different purpose—for instance, one account for communications with your customer support department, and another account for sending newsletters. For each system email account, you specify the outgoing mail server, the incoming mail server \(optional\), and the protocol to be used. Also, you must specify ports, sign-in information for servers of both types, and the type of encrypted connection \(if required by the server\).

For any system account, you can enable the processing of incoming mail and select processing options that define how emails received to the account should be processed, such as whether to create a case for each email message or a new lead record \(for details, see [Incoming Mail Processing](EM__con_Mail_Processing.md)\). Also, you can specify the types of attachments that are permitted, if attachments are permitted at all. You can allow the deletion of processed emails or forbid it \(if your organization requires emails to be kept for a particular period of time, for instance\). If needed, you can set up the automatic confirmation of received emails or automatic replies to unassigned emails.

## Default Account for Outgoing Emails {#section_xh5_bsr_n5b .section}

To make it faster for users to select a system email account for sending emails on the related forms, you can specify an email account to be used by the system by default. To determine the default email account, the system proceeds as follows until it finds a value:

1.  If the email is specified in the **Default Email Account** box on the [User Profile](SM_20_30_10.md) \(SM203010\) form, copies this value.
2.  If the email is specified in the **Default Email Account** box on the [Lead Classes](CR_20_70_00.md) \(CR207000\), [Contact Classes](CR_20_50_00.md) \(CR205000\), [Business Account Classes](CR_20_80_00.md) \(CR208000\), or [Opportunity Classes](CR_20_90_00.md) \(CR209000\) form, copies this value. For a business account, the system also copies the **Mailing &amp; Printing** class settings from the following forms: [Customer Classes](AR_20_10_00.md) \(AR201000\), [Vendor Classes](AP_20_10_00.md) \(AP201000\), and [Business Account Classes](CR_20_80_00.md) \(CR208000\).
3.  If the email is specified in the **Default Email Account** box on the [Email Preferences](SM_20_40_01.md) \(SM204001\) form, copies this value.

## Support of OAuth 2.0 for System Email Accounts { .section}

If you use MS Exchange Server in the Azure cloud, have a subscription to MS Office 365, use Google Suite or Gmail, you can configure the system to use the OAuth 2.0 authentication method for accessing a system email account.

You use the [Email Accounts](SM_20_40_02.md) \(SM204002\) form to configure a system email account and select the *OAuth2* option in the **Authentication Method** box. Then you configure a connector on the [External Applications](SM_30_10_00.md) \(SM301000\) form and specify the connector in the **External Application** box on the [Email Accounts](SM_20_40_02.md) form. While you are performing these actions, you register the connector with the respective provider of email services. For details, see [To Create a System Email Account for Office 365 with OAuth 2.0](EM__HOW_To_Create_a_System_Email_Account_for_Office_365_with_OAuth_2_0.md) or [To Create a System Email Account for Gmail with OAuth 2.0](EM_HOW_To_Create_a_System_Email_Account_for_Gmail_with_OAuth_2_0_Activity.md).

**Parent topic:**[Configuring Email Accounts](../UserGuide/EM__con_Configuring_Email_Accounts.md)

