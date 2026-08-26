# Typical Hardware and Virtual Machine Configurations for PCS and PCP Licenses for the Acumatica ERP Installation {#_54ef574c-0adf-48a0-b5be-d3438a6e5400 .concept}

When your organization purchases a Private Cloud Subscription \(PCS\) or Private Cloud Perpetual \(PCP\) license for Acumatica ERP, your purchase manager selects a license tier, which limits the parameters that influence system performance. The license tiers are grouped into the following series:

-   S Series: Includes the S1, S2, and S3 tiers
-   M Series: Includes the M1, M2, and M3 tiers
-   L Series: Includes the L1, L2, L3, and L4 tiers
-   X Series: Includes the X1, X2, X3, and X4 tiers
-   E Series: Includes the E1, E2, E3, E4, and E5 tiers

This topic describes the typical server configurations for PCS and PCP licenses that depend on the series of your license tier.

## Server Configurations {#_a600af4c-34ee-40e4-b61f-87733ee47b1e .section}

This section describes the typical hardware specifications for the servers used to host Acumatica ERP \(which includes the application server and the database\) and the typical configurations of Amazon Web Services and Microsoft Azure instances for each series of license tiers.

You should install the application server and the database on separate virtual machines or physical servers. In the following subsections, you can find the typical specifications for each of these configurations.

|**License Series and Tiers/ Typical Configuration**|S Series|M Series|L Series|X Series|
|S1-S3|M1-M3|L1, L2|L3, L4|X1, X2|X3, X4|
|---------------------------------------------------|--------|--------|--------|--------|
|-----|-----|------|------|------|------|
|Physical server specification|
|*Number of physical CPUs*|1|1|1|2|2|2|
|*Total number of physical CPU cores*|6|6|6|12|12|12|
|*Typical processor*|Xeon E5 2620|Xeon E5 2620|Xeon E5 2620|Xeon E5 2620|Xeon E5 2620|Xeon E5 2658|
|*RAM*|32 GB|64 GB|64 GB|128 GB|128 GB|256 GB|
|*Hard drive size\**|250 GB|500 GB|500 GB|500 GB|750 GB|1 TB|
|*Hard drive type*|SSD Sata3

 90 K+ IOPS

 500 Mbps+ R/W

|SSD Sata3

 90 K+ IOPS

 500 Mbps+ R/W

|SSD Sata3

 90 K+ IOPS

 500 Mbps+ R/W

|SSD PCIE3x4

 300 K+ IOPS

 2000 MBbps+ R/W

|SSD PCIE3x4

 300 K+ IOPS

 2000 Mbps+ R/W

|SSD PCIE3x4

 300 K+ IOPS

 2000 Mbps+ R/W

|
|*RAID*|1|1|1|10|10|10|
|Application server VM|
|*VM allotted CPU cores*|2|2|4|4|8|8|
|*VM RAM*|16 GB|24 GB|24 GB|32 GB|32 GB|96 GB|
|Database server VM|
|*VM allotted CPU cores*|2|2|4|4|8|8|
|*VM RAM*|8 GB|32 GB|32 GB|64 GB|64 GB|128 GB|

\* You need two hard drives: one for the application server VM, and one for the database server VM.

**Tip:** Contact your partner for hardware guidance on the E series of license tiers.

When you install Acumatica ERP on virtual machines, you should consider the following:

-   You should install the application server and the database on separate virtual machines.
-   You should allocate these virtual machines for Acumatica ERP only. \(No other software should be installed there, including antivirus software.\)
-   Virtual machines decrease hardware performance by approximately 15%. For maximum performance, you could eliminate VMs and run Acumatica ERP directly on the node operating system; however, you will lose the benefits and flexibility of VMs. Most clients choose VMs for this reason.
-   You should not use dynamic memory for virtual machines. You need to allocate the required RAM capacity for each virtual machine.
-   Each virtual machine should use a separate physical hard drive. That is, you should not share one physical hard drive between multiple virtual machines.
-   If you use hard drives with a low writing speed, then increasing RAM will not improve the database performance. We recommend that you use hard drives with a high writing speed for the database server.

    **Important:** You should not use the RAID 5 level for hard drives because of the low writing speed.


|**License Series and Tiers/ Typical Configuration**|S Series|M Series|L Series|X Series|
|S1-S3|M1-M3|L1, L2|L3, L4|X1, X2|X3, X4|
|---------------------------------------------------|--------|--------|--------|--------|
|-----|-----|------|------|------|------|
|Application server|
|*Number of physical CPUs*|1|1|1|1|2|2|
|*Total number of physical CPU cores*|6|6|6|6|12|12|
|*Typical processor*|Xeon E5 2620|Xeon E5 2620|Xeon E5 2620|Xeon E5 2620|Xeon E5 2620|Xeon E5 2620|
|*Hypervisor*|OFF|OFF|OFF|OFF|OFF|OFF|
|*RAM*|32 GB|64 GB|64 GB|128 GB|128 GB|256 GB|
|*Hard drive size*|250 GB|500 GB|500 GB|500 GB|500 GB|500 GB|
|*Hard drive type*|SSD Sata3

 90 K+ IOPS

 500 Mbps+ R/W

|SSD Sata3

 90 K+ IOPS

 500 Mbps+ R/W

|SSD Sata3

 90 K+ IOPS

 500 Mbps+ R/W

|SSD Sata3

 90 K+ IOPS

 500 Mbps+ R/W

|SSD Sata3

 90 K+ IOPS

 500 Mbps+ R/W

|SSD Sata3

 90 K+ IOPS

 500 Mbps+ R/W

|
|*RAID*|1|1|1|10|10|10|
|Database server|
|*Number of physical CPUs*|1|1|1|2|2|2|
|*Total number of physical CPU cores*|6|6|6|12|12|16|
|*Typical processor*|Xeon E5 2620|Xeon E5 2620|Xeon E5 2620|Xeon E5 2620|Xeon E5 2620|Xeon E5 2658|
|*Hypervisor*|ON|ON|ON|ON|ON|ON|
|*RAM*|32 GB|64 GB|64 GB|128 GB|128 GB|256 GB|
|*Hard drive size*|250 GB|500 GB|500 GB|500 GB|750 GB|1 TB|
|*Hard drive type*|SSD Sata3

 90 K+ IOPS

 500 Mbps+ R/W

|SSD Sata3

 90 K+ IOPS

 500 Mbps+ R/W

|SSD Sata3

 90 K+ IOPS

 500 Mbps+ R/W

|SSD PCIE3x4

 300 K+ IOPS

 2000 Mbps+ R/W

|SSD PCIE3x4

 300 K+ IOPS

 2000 Mbps+ R/W

|SSD PCIE3x4

 300 K+ IOPS

 2000 Mbps+ R/W

|
|*RAID*|1|1|1|10|10|10|

**Tip:** Contact your partner for hardware guidance on the E series of license tiers.

When you install Acumatica ERP on separate physical servers, you should consider the following recommendations:

-   You should install the application server and the database on separate servers.
-   You should allocate these servers for Acumatica ERP only. \(No other software should be installed there, including antivirus software.\)
-   Network latency between an application server and a database should be less than 1 millisecond. \(Both servers should be in the same data center.\)
-   If you use hard drives with a low writing speed, then increasing RAM will not improve the database performance. We recommend that you use hard drives with a high writing speed for the database server.

    **Important:** You should not use the RAID 5 level for hard drives because of the low writing speed.


|License Series and Tiers/ Typical Configuration|S Series|M Series|L Series|X Series|
|S1-S3|M1-M3|L1, L2|L3, L4|X1, X2|X3, X4|
|-----------------------------------------------|--------|--------|--------|--------|
|-----|-----|------|------|------|------|
|Application server VM|
|*AWS instance type*|m4.large|r4.large|m4.xlarge|r4.xlarge|m4.2xlarge|r4.4xlarge|
|*vCPU\**|2|2|4|4|8|16|
|*RAM \(GB\)\**|8|15.25|16|30.5|32|64|
|*Hard drive type\*\**|gp2|gp2|gp2|gp2|gp2|gp2|
|*Hard drive size*|250 GB|500 GB|500 GB|500 GB|750 GB|1 TB|
|*Network performance*|Moderate|Up to 10 GB|High|Up to 10 GB|High|Up to 10 GB|
|Database Server VM|
|*AWS instance type*|m4.large|r4.xlarge|r4.xlarge|r4.2xlarge|r4.2xlarge|r4.4xlarge|
|*vCPU\**|2|4|4|8|8|16|
|*RAM \(GB\)\**|8|30.5|30.5|61|61|122|
|*Hard drive type\*\**|io1 + 3000 IOPS|io1 + 4000 IOPS|io1 + 5000 IOPS|io1 + 8000 IOPS|io1 + 8000 IOPS|io1 + 15000 IOPS|
|*Hard drive size*|250 GB|500 GB|500 GB|500 GB|750 GB|1 TB|

\* The number of CPUs and the RAM size are defined by the instance type; these parameters are provided in the table for reference.

\*\*The IOPS parameter for a hard drive of the *gp2* type is calculated automatically by AWS based on the hard drive size.

When you deploy Acumatica ERP in AWS, you should consider the following:

-   All AWS instances should be EBS-optimized.
-   If you want to increase the speed of storage, you need to select the higher network performance between the database server VM and the application server VM.

|License Series and Tiers/ Typical Configuration|S Series|M Series|L Series|X Series|
|S1-S3|M1-M3|L1, L2|L3, L4|X1, X2|X3, X4|
|-----------------------------------------------|--------|--------|--------|--------|
|-----|-----|------|------|------|------|
|Application server VM|
|*Azure instance type*|DS11\_v2 Standard|DS12\_v2 Standard|DS12\_v2 Standard|DS12\_v2 Standard|DS13\_v2 Standard|DS14\_v2 Standard|
|*vCPU\**|2|4|4|4|8|16|
|*RAM \(GB\)\**|14|28|28|28|56|112|
|*Hard drive size*|250GB|500GB|500GB|500GB|750GB|1TB|
|Database Server VM|
|*Azure instance type*|F4 Standard|DS12\_v2 Standard|DS12\_v2 Standard|DS13\_v2 Standard|DS13\_v2 Standard|DS14\_v2 Standard|
|*vCPU\**|4|4|4|8|8|16|
|*RAM \(GB\)\**|8|28|28|56|56|112|
|*Hard drive type*|3000 IOPS|4000 IOPS|5000 IOPS|8000 IOPS|8000 IOPS|15000 IOPS|
|*Hard drive size*|250 GB|500 GB|500 GB|500 GB|750 GB|1 TB|

\* The number of CPUs and the RAM size are defined by the instance type; these parameters are provided in the table for reference.

