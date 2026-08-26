# Step 4.2: Check the Configuration of MySQL Database Server {#_118e7252-c776-4517-be94-19f0e2183e31 .task}

In this topic, you can find general recommendations for optimal performance of a MySQL database and a list of common problems and solutions.

For more detailed information on MySQL settings, see the [MySQL Reference Manual](https://dev.mysql.com/doc/refman/5.7/en/).

## General Recommendations {#_9a11de24-75a0-45c2-95a2-5910127a571d .section}

To optimize the performance of a MySQL database, do the following:

1.  Back up the database regularly.
2.  Change the default values of the parameters in the `my.cnf` file as follows \(for numerical parameters, the minimum recommended values are specified, and you should specify values appropriate to your processing load\):
    1.  `max_allowed_packet=10M`

        For this parameter, you specify the maximum size of a file that can be stored in the database. It is important that you limit the file size to prevent the database from becoming overfilled with large files.

    2.  `innodb_buffer_pool_size=256M`

        For this parameter, you specify the size of the buffer pool, which should be 70 to 80 percent of the available RAM.

    3.  `innodb_log_file_size=64M`

        For this parameter, you specify the size of the transaction log file for `InnoDB`. Large `InnoDB` transaction logs are crucial for good and stable writing performance, but larger log files mean that the recovery process will be slower if a crash occurs. You should find a balance between a reasonable recovery time and high performance in your system.

    4.  `innodb_log_buffer_size=16M`

        For this parameter, you specify the size of the buffer for the transaction log. `InnoDB` writes the changed data records into its log buffer, which is kept in memory. This buffer saves disk input and output operations for large transactions because it is not necessary for `InnoDB` to write the log of changes to disk before it commits a transaction.

    5.  `innodb_flush_method=O_DIRECT`

        For this parameter, you specify the method MySQL uses to flush files from RAM to a hard drive. When you use the `O_DIRECT` flush method, you avoid double buffering and reduce swap pressure, which improves performance.

    6.  `key_buffer_size=64M`

        For this parameter, you specify the amount of RAM you reserve for the database key buffer. This parameter is very important if you use MyISAM tables. You should specify the value of this parameter as 30 to 40 percent of available RAM if you use MyISAM tables exclusively.

    7.  `read_rnd_buffer_size=1M`

        For this parameter, you specify the size of the buffer that the database uses after a sort, when it is reading rows in sorted order. When the database is reading rows from a `MyISAM` table in sorted order following a key-sorting operation, the rows are read through this buffer to avoid disk seeks. If you use many queries with `ORDER BY`, you can increase this parameter value to improve performance.

    8.  `query_cache_size=0`

        For this parameter, you specify the RAM amount allocated for the query cache. The caching mechanism works ineffectively; therefore, we recommend that the query cache be switched off.

    9.  `innodb_flush_log_at_trx_commit=2`

        For this parameter, you specify how often the log buffer is flushed on disk. The default value of this parameter is *1*, which means that each `UPDATE` transaction will be flushed to a hard drive and therefore this mode is resource-demanding. When you set this parameter to *2*, the log buffer is flushed to the OS file cache on every transaction commit, which significantly increases the speed of writing to the database. The drawback of this mode is that the database can lose transactions for the last second or two if OS crashes.


## Common Problems and Solutions { .section}

|Problem|Solution|
|-------|--------|
|The *Out of memory* error message occurs|Check that at least 20% of the hard drive on which the Acumatica ERP database is installed is free.|
|Not all requests are completed|Check that enough free space is allocated for the folder with temporary files.|
|The *Too many connections* error message occurs|Increase the value of the `max_connections` parameter in the `my.cnf` file.|

**Parent topic:**[Troubleshooting Performance](../UserGuide/how_Troubleshoot_Performance.md)

