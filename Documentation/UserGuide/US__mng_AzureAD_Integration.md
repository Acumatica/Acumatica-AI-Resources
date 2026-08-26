# Integrating Acumatica ERP with Microsoft Entra ID {#_68201e8c-05e5-42da-8028-360241a2aefe .concept}

The integration of Acumatica ERP with Microsoft Entra ID \(formerly known as Microsoft Azure Active Directory\) provides single sign-on \(SSO\) and centralized user and access management. You can use an instance of Microsoft Entra ID, which is a cloud version of the Active Directory service, if your organization is signed up for a Microsoft cloud service, such as Azure or Office 365.

With such integration in place, users of your Acumatica ERP instance will use their Entra ID domain credentials for authorization in Acumatica ERP.

**Attention:** This functionality is available only if the *Active Directory and Other External SSO* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

**Important:** You can integrate your Acumatica ERP instance with Active Directory Federation Services \(AD FS\) or Microsoft Entra ID, but not with both. These two identity management systems are mutually exclusive because they use the same functionality to connect to Acumatica ERP.

This chapter describes how to integrate Acumatica ERP with Microsoft Entra ID.

-   **[Integration with Microsoft Entra ID](../UserGuide/US__con_AzureAD_Integration.md)**  

-   **[To Configure Microsoft Entra ID for Integration with Your Acumatica ERP Instance](../UserGuide/US__how_AzureAD_Registering_with_Azure.md)**  

-   **[To Configure the Web.Config File for Integration with Microsoft Entra ID](../UserGuide/US__how_AzureAD_Enable.md)**  

-   **[To Map Microsoft Entra ID Groups to Roles in Acumatica ERP](../UserGuide/US__how_AzureAD_Integration_Map_Roles.md)**  

-   **[To Set Up Role Assignment for Domain Users](../UserGuide/US__how_AzureAD_Groups_Override.md)**  

-   **[To Enable Silent Logon](../UserGuide/US__how_AzureAD_Silent_Logon_Enable.md)**  


