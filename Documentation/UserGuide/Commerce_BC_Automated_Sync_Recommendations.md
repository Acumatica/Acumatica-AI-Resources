# Automated Synchronization: Recommended Setup {#_cf539af2-a3bc-4cdc-ad33-a326dccdafff .concept}

Depending on the volume of orders processed by your company, we recommend that you configure entities to be synchronized automatically as indicated in the following tables.

The schedules in the following table are recommended for companies that process no more than 1,000 orders daily.

|Entity|Real-Time Synchronization|Data Preparation|Data Processing|
|------|-------------------------|----------------|---------------|
|*Sales Order*|*Started*

 Real-time mode: *Prepare &amp; Process*

|Daily, once a night|Daily, once a night|
|*Refund*|*Started*

 Real-time mode: *Prepare &amp; Process*

|Daily, once a night|Daily, once a night|
|*Shipment*|*Started*

 Real-time mode: *Prepare &amp; Process*

|Daily, once a night|Daily, once a night|
|*Stock Item*, *Non-Stock Item*, *Template Item*|*Started*

 Real-time mode: *Prepare &amp; Process*

|Daily, once a night|Daily, once a night|
|*Product Availability*|*Stopped*|Daily, every 60 minutes|Daily, every 60 minutes|
|Other entities|*Stopped*|Daily, once a night|Daily, once a night|

**Attention:** We recommend that you not enable real-time synchronization if you plan to change configuration settings or to perform mass-addition, mass-deletion, and mass-update operations, including by means of import scenarios. We also recommend that you start real-time synchronization only after you begin production use to avoid unnecessary server traffic during the implementation.

The schedules in the following table are recommended for companies that process 1,000 or more online orders daily.

|Entity|Real-Time Synchronization|Data Preparation|Data Processing|
|------|-------------------------|----------------|---------------|
|*Sales Order*|*Stopped*|Daily, every 10 minutes|Daily, every 10 minutes|
|*Refund*|*Stopped*|Daily, every 20 minutes|Daily, every 10 minutes|
|*Shipment*|*Stopped*|Daily, every 30 minutes|Daily, every 10 minutes|
|*Stock Item*, *Non-Stock Item*, *Template Item*|*Stopped*|Daily, once a night|Daily, every 60 minutes|
|*Product Availability*|*Stopped*|Daily, every 60 minutes|Daily, every 60 minutes|
|Other entities|*Stopped*|Daily, once a night|Daily, once a night|

**Parent topic:**[Automating Synchronization](../UserGuide/Commerce_BC_Automated_Sync_Mapref.md)

