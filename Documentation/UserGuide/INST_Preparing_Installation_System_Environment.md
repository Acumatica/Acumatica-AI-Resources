# Preparation for the Acumatica ERP Installation: System Environment

Before proceeding with the installation of Acumatica ERP, make sure that the environment configuration on the computer where you plan to install the server software part of Acumatica ERP is properly set up.

This topic provides an overview of the configuration of Internet Information Services \(IIS\) web server features, the specification of HTTPS settings, and the installation of semantic search for Microsoft SQL Server.

## Configuration of IIS Web Server Features

You need to ensure that the system configuration is suitable for installing the Acumatica ERP server part and that the following features are enabled on the IIS web server:

-   **Internet Information Services** &gt; **Web Management Tools** &gt; **IIS Management Console**
-   **Internet Information Services** &gt; **World Wide Web Services** &gt; **Application Development Features**:
    -   **.NET Extensibility 4.8**
    -   **ASP.NET 4.8**
    -   **ISAPI Extensions**
    -   **ISAPI Filters**
    -   **WebSocket Protocol**
-   **Internet Information Services** &gt; **World Wide Web Services** &gt; **Common HTTP Features**:
    -   **Default Document**
    -   **Static Content**
-   **Internet Information Services** &gt; **World Wide Web Services** &gt; **Performance Features**:
    -   **Dynamic Content Compression**
    -   **Static Content Compression**
-   **Internet Information Services** &gt; **World Wide Web Services** &gt; **Security** &gt; **Request Filtering**

**Attention:** Make sure that for each application pool you are planning to use with Acumatica ERP, the **Enable 32-bit Applications** parameter is set to *False* \(the setting is located on the **IIS Manager** &gt; **Application Pools** &gt; **Edit Application Pool** &gt; **Advanced Settings** menu\).

## Setting Up HTTPS in an IIS Web Server

When configuring your computer's environment, you need to ensure that HTTPS is being used. HTTPS is a secure communication protocol that encrypts the data exchanged between a client computer and a server, ensuring its security during transmission. This secure connection is essential for various functionality within your system.

The use of HTTPS makes it possible for users to export data from Acumatica ERP to Microsoft Excel spreadsheets, facilitating automatic updates of the data. Additionally, HTTPS is required for the implementation of single sign-on \(SSO\) to Acumatica ERP, which provides users with the ability to access the system seamlessly with their Google or Microsoft accounts.

You need to enable the TLS protocol to establish HTTPS connections in the IIS web server. To do this, you obtain a certificate from a certification authority and then register it with the IIS web server. This certificate is used to encrypt and decrypt the information transferred over the network, ensuring secure communication between the client and the server. For details on enabling the TLS protocol, refer to the IIS documentation.

**Important:** Acumatica ERP does not support self-signed certificates.

## Enabling Semantic Search for Microsoft SQL Server

Acumatica ERP provides the full-text search functionality with the following capabilities within your instances:

-   Performing semantic searches within SQL databases
-   Identifying key phrases in text or documents
-   Uncovering similar or related documents
-   Offering insights into document similarities or relations

You can use this functionality if semantic search is enabled in Microsoft SQL Server.

**Important:** Semantic search is not enabled by default in Microsoft SQL Server, while in MySQL Server, the semantic search functionality is enabled by default.

If semantic search is not already installed, you can easily add it by installing an update and selecting this feature under **Database Engine Services**. To install semantic search, go to the **Features to Install** page during Microsoft SQL Server setup and select **Full-Text and Semantic Extractions for Search**. For details, see the documentation for Microsoft SQL Server.

**Parent topic:**[Preparing for Installing Acumatica ERP](../UserGuide/INST_Preparing_Installation_Mapref.md)

