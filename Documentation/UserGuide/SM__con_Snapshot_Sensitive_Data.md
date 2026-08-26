# Snapshots: Examples of Sensitive Data Being Excluded from Snapshots {#_0afd16eb-a811-4ddb-ac97-359893e43b5e .concept}

The protection of sensitive data is critical to organizations and to users. Which data must be protected depends on many factors, including regulation \(which is often mandatory\), organizational policy, contractual obligations, and user expectations.

Because snapshots may copy data that you identify as sensitive, Acumatica ERP provides a way to exclude this data from the snapshots. You can preserve the data from particular SQL tables down to particular table fields by configuring snapshot configuration files. Use the following examples to better understand and configure snapshot configuration files.

## Exporting of a User Record { .section}

If you want to export the *Baker* user record but no other user records, add the following section to the snapshot content file.

```
<Include table="Users" preserve="true"
condition ="where Username = 'Baker'">
</Include>
```

## Exporting User Records with a Predefined Password { .section}

If you want to export user records but change users' passwords to a predefined value \(*password* in this example\), add the following section to the snapshot content file.

```
<Include table="Users" preserve="true"
<ResetColumn name="Password" value="password" />
</Include>
```

## Prohibiting the Export of the BLOB Provider Settings { .section}

If you do not want to export binary large object \(BLOB\) provider settings, add the following section to the snapshot content file.

```
<Exclude table="BlobStorageConfig" preserve="true"/>
<Exclude table="BlobProviderSettings" preserve="true"/>
```

## Prohibiting the Export of the Key of the BLOB Provider Settings { .section}

To export all BLOB provider settings except for the provider key, add the following section to the snapshot content file.

```
<Include table="BlobStorageConfig" preserve="true"/>
<Include table="BlobProviderSettings" preserve="true"
  condition="where Name <> 'Key'"/>
```

## Replacing the Key of the BLOB Provider Settings on Export { .section}

To export all settings of the BLOB provider but empty the provider key value, add the following section to the snapshot content file.

```
<Include table="BlobStorageConfig" preserve="true"/>
<Include table="BlobProviderSettings" preserve="true"
  condition="where Name = 'Key'">
  <ResetColumn name="Value" value=""/>
</Include>
```

**Parent topic:**[Using Snapshots](../UserGuide/SA_Using_Snapshots_Mapref.md)

