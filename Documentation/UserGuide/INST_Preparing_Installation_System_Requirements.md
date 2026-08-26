# System Requirements for the Acumatica ERP Installation {#_5cf164e5-889f-458b-8757-320c96598ab7 .concept}

An Acumatica ERP system consists of the following parts: the web interface, the server part, and the database. For each of these parts to work properly, the environment where you install and use Acumatica ERP should meet particular requirements, which are described in this topic.

**Important:** Before you start the installation process, install at least all critical updates \(or, preferably, most of the recent updates\) for the operating system and the required software. You should also make sure that all required third-party components listed in this topic are properly installed and configured on your computer.

For details about the typical hardware and virtual machine configurations, see [Typical Hardware and Virtual Machine Configurations for PCS and PCP Licenses for the Acumatica ERP Installation](INST_Preparing_Installation_System_Requirements_PCP_PCS_Licenses.md).

## Workstations { .section}

The workstations that are used by the employees of your organization to work with Acumatica ERP should meet the hardware and software requirements listed in the following table.

|Hardware/Software|Requirements|
|-----------------|------------|
|Display resolution|-   Minimum 1024 х 768
-   Typical 1920 x 1080

|
|Adobe Acrobat Reader \(to open Acumatica ERP PDF documents\)|2022 or later|
|Microsoft Office \(to view documents exported from Acumatica ERP\)|-   Office 365
-   2021
-   2019
-   2016

|
|Web Browsers|
|Microsoft Edge|120 or later|
|Mozilla Firefox|130 or later|
|Apple Safari|17 or later|
|Google Chrome|143 or later|

## Server Environment { .section}

The environment where you install the server part of Acumatica ERP should meet the hardware and software requirements listed in the following table.

|Hardware/Software|Requirements|
|-----------------|------------|
|Operating systems|-   Windows Server 2022 64-bit edition
-   Windows Server 2019 64-bit edition

**Attention:** You can install the server part of Acumatica ERP on non-server operating systems, such as Windows 10 64-bit edition, and Windows 11 64-bit edition, but only for testing purposes. For production, you must use a server operating system.

|
|Microsoft .NET Framework|4.8|
|Microsoft Internet Information Services|10

**Attention:** You must set **Enable 32-bit Applications** to *False* in the IIS settings.

Acumatica ERP 2026 R1 supports only the Integrated mode of the application pool. Classic mode is not supported. If you try to upgrade an earlier version of Acumatica ERP with Classic mode of the application pool to 2026 R1, the upgrade will not be performed, and a corresponding error message will be displayed.

|
|Memory|16 GB RAM|
|CPU|2 cores; 3.5 GHz|
|Hard disk space|1 GB available hard disk space, plus 200 MB for each additional instance of Acumatica ERP|

## Database { .section}

You can find the system requirements for the Acumatica ERP database in the following table.

|Hardware/Software|Requirements|
|-----------------|------------|
|Microsoft SQL Server|-   2022
-   2019

|
|MySQL Community Server|8.0 64-bit edition|
|PostgreSQL|18.1 **Attention:** The 2026 R1 version provides a preview of this functionality, which will be further enhanced in future releases. It is not yet recommended for production environments.

|
|Memory|8 GB RAM|
|CPU|2 cores; 2 GHz|
|Hard Disk Space|For each database, 1 GB available hard disk space; depending on the number of transactions, additional hard disk space may be required to store large numbers of transactions|

## Development Environment { .section}

To create standalone applications with Acumatica ERP or develop customization projects and add-on solutions on top of Acumatica ERP, you need the software listed in the following table.

|Software|Requirements|
|--------|------------|
|Microsoft Visual Studio with Microsoft Web Developer Tools|2022: Community, Professional, or Enterprise edition|
|Node.js|22.11.0|

