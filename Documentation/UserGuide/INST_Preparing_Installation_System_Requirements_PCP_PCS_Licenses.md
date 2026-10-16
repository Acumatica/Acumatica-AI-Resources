# Typical Hardware and Virtual Machine Configurations for PCS and PCP Licenses for the Acumatica ERP Installation

When your organization purchases a Private Cloud Subscription \(PCS\) or Private Cloud Perpetual \(PCP\) license for Acumatica ERP, your purchase manager selects a license tier, which limits the parameters that influence system performance. The license tiers are grouped into the following series:

-   S Series: Includes the S1, S2, and S3 tiers
-   M Series: Includes the M1, M2, and M3 tiers
-   L Series: Includes the L1, L2, L3, and L4 tiers
-   X Series: Includes the X1, X2, X3, and X4 tiers
-   E Series: Includes the E1, E2, E3, E4, and E5 tiers

This topic describes the typical server configurations for PCS and PCP licenses that depend on the series of your license tier.

## Server Configurations

This section describes the typical hardware specifications for the servers used to host Acumatica ERP \(which includes the application server and the database\) and the typical configurations of Amazon Web Services and Microsoft Azure instances for each series of license tiers.

You should install the application server and the database on separate virtual machines or physical servers. In the following subsections, you can find the typical specifications for each of these configurations.

<table id="_a291d308-7471-4aee-9e01-6dfb7a3adf21"><thead><tr><th rowspan="2">

**License Series and Tiers/ Typical Configuration**

</th><th align="center">

S Series

</th><th align="center">

M Series

</th><th colspan="2" align="center">

L Series

</th><th colspan="2" align="center">

X Series

</th></tr><tr><th align="center">

S1-S3

</th><th align="center">

M1-M3

</th><th align="center">

L1, L2

</th><th align="center">

L3, L4

</th><th align="center">

X1, X2

</th><th align="center">

X3, X4

</th></tr></thead><tbody><tr><td colspan="7">

Physical server specification

</td></tr><tr><td>

*Number of physical CPUs*

</td><td align="center">

1

</td><td align="center">

1

</td><td align="center">

1

</td><td align="center">

2

</td><td align="center">

2

</td><td align="center">

2

</td></tr><tr><td>

*Total number of physical CPU cores*

</td><td align="center">

6

</td><td align="center">

6

</td><td align="center">

6

</td><td align="center">

12

</td><td align="center">

12

</td><td align="center">

12

</td></tr><tr><td>

*Typical processor*

</td><td align="center">

Xeon E5 2620

</td><td align="center">

Xeon E5 2620

</td><td align="center">

Xeon E5 2620

</td><td align="center">

Xeon E5 2620

</td><td align="center">

Xeon E5 2620

</td><td align="center">

Xeon E5 2658

</td></tr><tr><td>

*RAM*

</td><td align="center">

32 GB

</td><td align="center">

64 GB

</td><td align="center">

64 GB

</td><td align="center">

128 GB

</td><td align="center">

128 GB

</td><td align="center">

256 GB

</td></tr><tr><td>

*Hard drive size\**

</td><td align="center">

250 GB

</td><td align="center">

500 GB

</td><td align="center">

500 GB

</td><td align="center">

500 GB

</td><td align="center">

750 GB

</td><td align="center">

1 TB

</td></tr><tr><td>

*Hard drive type*

</td><td align="center">

SSD Sata3

 90 K+ IOPS

 500 Mbps+ R/W

</td><td align="center">

SSD Sata3

 90 K+ IOPS

 500 Mbps+ R/W

</td><td align="center">

SSD Sata3

 90 K+ IOPS

 500 Mbps+ R/W

</td><td align="center">

SSD PCIE3x4

 300 K+ IOPS

 2000 MBbps+ R/W

</td><td align="center">

SSD PCIE3x4

 300 K+ IOPS

 2000 Mbps+ R/W

</td><td align="center">

SSD PCIE3x4

 300 K+ IOPS

 2000 Mbps+ R/W

</td></tr><tr><td>

*RAID*

</td><td align="center">

1

</td><td align="center">

1

</td><td align="center">

1

</td><td align="center">

10

</td><td align="center">

10

</td><td align="center">

10

</td></tr><tr><td colspan="7">

Application server VM

</td></tr><tr><td>

*VM allotted CPU cores*

</td><td align="center">

2

</td><td align="center">

2

</td><td align="center">

4

</td><td align="center">

4

</td><td align="center">

8

</td><td align="center">

8

</td></tr><tr><td>

*VM RAM*

</td><td align="center">

16 GB

</td><td align="center">

24 GB

</td><td align="center">

24 GB

</td><td align="center">

32 GB

</td><td align="center">

32 GB

</td><td align="center">

96 GB

</td></tr><tr><td colspan="7">

Database server VM

</td></tr><tr><td>

*VM allotted CPU cores*

</td><td align="center">

2

</td><td align="center">

2

</td><td align="center">

4

</td><td align="center">

4

</td><td align="center">

8

</td><td align="center">

8

</td></tr><tr><td>

*VM RAM*

</td><td align="center">

8 GB

</td><td align="center">

32 GB

</td><td align="center">

32 GB

</td><td align="center">

64 GB

</td><td align="center">

64 GB

</td><td align="center">

128 GB

</td></tr></tbody>
</table>

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


<table id="_f673cd3a-4c32-4ed5-8f83-e82e39efdd6d"><thead><tr><th rowspan="2">

**License Series and Tiers/ Typical Configuration**

</th><th align="center">

S Series

</th><th align="center">

M Series

</th><th colspan="2" align="center">

L Series

</th><th colspan="2" align="center">

X Series

</th></tr><tr><th align="center">

S1-S3

</th><th align="center">

M1-M3

</th><th align="center">

L1, L2

</th><th align="center">

L3, L4

</th><th align="center">

X1, X2

</th><th align="center">

X3, X4

</th></tr></thead><tbody><tr><td colspan="7">

Application server

</td></tr><tr><td>

*Number of physical CPUs*

</td><td align="center">

1

</td><td align="center">

1

</td><td align="center">

1

</td><td align="center">

1

</td><td align="center">

2

</td><td align="center">

2

</td></tr><tr><td>

*Total number of physical CPU cores*

</td><td align="center">

6

</td><td align="center">

6

</td><td align="center">

6

</td><td align="center">

6

</td><td align="center">

12

</td><td align="center">

12

</td></tr><tr><td>

*Typical processor*

</td><td align="center">

Xeon E5 2620

</td><td align="center">

Xeon E5 2620

</td><td align="center">

Xeon E5 2620

</td><td align="center">

Xeon E5 2620

</td><td align="center">

Xeon E5 2620

</td><td align="center">

Xeon E5 2620

</td></tr><tr><td>

*Hypervisor*

</td><td align="center">

OFF

</td><td align="center">

OFF

</td><td align="center">

OFF

</td><td align="center">

OFF

</td><td align="center">

OFF

</td><td align="center">

OFF

</td></tr><tr><td>

*RAM*

</td><td align="center">

32 GB

</td><td align="center">

64 GB

</td><td align="center">

64 GB

</td><td align="center">

128 GB

</td><td align="center">

128 GB

</td><td align="center">

256 GB

</td></tr><tr><td>

*Hard drive size*

</td><td align="center">

250 GB

</td><td align="center">

500 GB

</td><td align="center">

500 GB

</td><td align="center">

500 GB

</td><td align="center">

500 GB

</td><td align="center">

500 GB

</td></tr><tr><td>

*Hard drive type*

</td><td align="center">

SSD Sata3

 90 K+ IOPS

 500 Mbps+ R/W

</td><td align="center">

SSD Sata3

 90 K+ IOPS

 500 Mbps+ R/W

</td><td align="center">

SSD Sata3

 90 K+ IOPS

 500 Mbps+ R/W

</td><td align="center">

SSD Sata3

 90 K+ IOPS

 500 Mbps+ R/W

</td><td align="center">

SSD Sata3

 90 K+ IOPS

 500 Mbps+ R/W

</td><td align="center">

SSD Sata3

 90 K+ IOPS

 500 Mbps+ R/W

</td></tr><tr><td>

*RAID*

</td><td align="center">

1

</td><td align="center">

1

</td><td align="center">

1

</td><td align="center">

10

</td><td align="center">

10

</td><td align="center">

10

</td></tr><tr><td colspan="7">

Database server

</td></tr><tr><td>

*Number of physical CPUs*

</td><td align="center">

1

</td><td align="center">

1

</td><td align="center">

1

</td><td align="center">

2

</td><td align="center">

2

</td><td align="center">

2

</td></tr><tr><td>

*Total number of physical CPU cores*

</td><td align="center">

6

</td><td align="center">

6

</td><td align="center">

6

</td><td align="center">

12

</td><td align="center">

12

</td><td align="center">

16

</td></tr><tr><td>

*Typical processor*

</td><td align="center">

Xeon E5 2620

</td><td align="center">

Xeon E5 2620

</td><td align="center">

Xeon E5 2620

</td><td align="center">

Xeon E5 2620

</td><td align="center">

Xeon E5 2620

</td><td align="center">

Xeon E5 2658

</td></tr><tr><td>

*Hypervisor*

</td><td align="center">

ON

</td><td align="center">

ON

</td><td align="center">

ON

</td><td align="center">

ON

</td><td align="center">

ON

</td><td align="center">

ON

</td></tr><tr><td>

*RAM*

</td><td align="center">

32 GB

</td><td align="center">

64 GB

</td><td align="center">

64 GB

</td><td align="center">

128 GB

</td><td align="center">

128 GB

</td><td align="center">

256 GB

</td></tr><tr><td>

*Hard drive size*

</td><td align="center">

250 GB

</td><td align="center">

500 GB

</td><td align="center">

500 GB

</td><td align="center">

500 GB

</td><td align="center">

750 GB

</td><td align="center">

1 TB

</td></tr><tr><td>

*Hard drive type*

</td><td align="center">

SSD Sata3

 90 K+ IOPS

 500 Mbps+ R/W

</td><td align="center">

SSD Sata3

 90 K+ IOPS

 500 Mbps+ R/W

</td><td align="center">

SSD Sata3

 90 K+ IOPS

 500 Mbps+ R/W

</td><td align="center">

SSD PCIE3x4

 300 K+ IOPS

 2000 Mbps+ R/W

</td><td align="center">

SSD PCIE3x4

 300 K+ IOPS

 2000 Mbps+ R/W

</td><td align="center">

SSD PCIE3x4

 300 K+ IOPS

 2000 Mbps+ R/W

</td></tr><tr><td>

*RAID*

</td><td align="center">

1

</td><td align="center">

1

</td><td align="center">

1

</td><td align="center">

10

</td><td align="center">

10

</td><td align="center">

10

</td></tr></tbody>
</table>

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

