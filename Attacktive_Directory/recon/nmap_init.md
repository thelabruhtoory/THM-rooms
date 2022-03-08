# Nmap 7.92 scan initiated Mon Mar  7 16:04:40 2022 as: nmap -vvv -p 53,80,88,139,135,389,464,445,593,636,3268,3269,3389,5985,9389,47001,49669,49676,49664,49675,49683,49672,49665,49667,49679,49695,49822 -sC -sV -oN recon/nmap_init.md 10.10.236.176
Nmap scan report for 10.10.236.176
Host is up, received syn-ack (0.30s latency).
Scanned at 2022-03-07 16:04:41 EST for 83s

PORT      STATE SERVICE       REASON  VERSION
53/tcp    open  domain        syn-ack Simple DNS Plus
80/tcp    open  http          syn-ack Microsoft IIS httpd 10.0
|_http-server-header: Microsoft-IIS/10.0
| http-methods: 
|   Supported Methods: OPTIONS TRACE GET HEAD POST
|_  Potentially risky methods: TRACE
|_http-title: IIS Windows Server
88/tcp    open  kerberos-sec  syn-ack Microsoft Windows Kerberos (server time: 2022-03-07 21:04:49Z)
135/tcp   open  msrpc         syn-ack Microsoft Windows RPC
139/tcp   open  netbios-ssn   syn-ack Microsoft Windows netbios-ssn
389/tcp   open  ldap          syn-ack Microsoft Windows Active Directory LDAP (Domain: spookysec.local0., Site: Default-First-Site-Name)
445/tcp   open  microsoft-ds? syn-ack
464/tcp   open  kpasswd5?     syn-ack
593/tcp   open  ncacn_http    syn-ack Microsoft Windows RPC over HTTP 1.0
636/tcp   open  tcpwrapped    syn-ack
3268/tcp  open  ldap          syn-ack Microsoft Windows Active Directory LDAP (Domain: spookysec.local0., Site: Default-First-Site-Name)
3269/tcp  open  tcpwrapped    syn-ack
3389/tcp  open  ms-wbt-server syn-ack Microsoft Terminal Services
| ssl-cert: Subject: commonName=AttacktiveDirectory.spookysec.local
| Issuer: commonName=AttacktiveDirectory.spookysec.local
| Public Key type: rsa
| Public Key bits: 2048
| Signature Algorithm: sha256WithRSAEncryption
| Not valid before: 2022-03-06T20:35:15
| Not valid after:  2022-09-05T20:35:15
| MD5:   c41c bf7a ee4e db83 0067 56cc 55eb 478a
| SHA-1: 7f7c 912f f49e a914 959d db41 fd54 a632 4f76 8dc5
| -----BEGIN CERTIFICATE-----
| MIIDCjCCAfKgAwIBAgIQEWlZmENSdppEn/eQucA3rjANBgkqhkiG9w0BAQsFADAu
| MSwwKgYDVQQDEyNBdHRhY2t0aXZlRGlyZWN0b3J5LnNwb29reXNlYy5sb2NhbDAe
| Fw0yMjAzMDYyMDM1MTVaFw0yMjA5MDUyMDM1MTVaMC4xLDAqBgNVBAMTI0F0dGFj
| a3RpdmVEaXJlY3Rvcnkuc3Bvb2t5c2VjLmxvY2FsMIIBIjANBgkqhkiG9w0BAQEF
| AAOCAQ8AMIIBCgKCAQEAmj0gPp6N9R9DjEY0+6X/pg18er18ULXhvgjDuq8QjP/F
| OX5bligo15Fy+PPAgtM7XFrfS859094HT9zAZYABGizTK662zsg1B9g1XOZkmhGR
| x/jtRQ4NEbOWscOLEPIV9KBEx3SZzTyFdvciV2U11mOPztomjJH2yau6TFauuKwH
| G+yUO2c9wRBjConY8yfecB2TSAs0/9GmI/f5xDeuW+w29SWg5iKbU/tFsZbesi2s
| nMKJWYxBJb3bUsZOTqttspXZevlLfy1KN35hp7D3yRddQB4XuiTz8gHkR+lTMmoC
| fDw7+7loprYNKh8s8MtSrXhhlvSLhm30Qlc6mvrHpQIDAQABoyQwIjATBgNVHSUE
| DDAKBggrBgEFBQcDATALBgNVHQ8EBAMCBDAwDQYJKoZIhvcNAQELBQADggEBAEoq
| t5DzIpChqd2ptzy9gtu2cLtJk/1/T3ouNAyNpyfdw2ttjpMskAEiYNPkUsYd1VnK
| 6n0dIlqe4PW97ujyM7iuaMvv7VBGrg3WvhHIB6YbudpxmakcD5FkD/JVZpLv8DMz
| HSw33d+j2ipZXfzxwohPeUnFOUkTPtRJtV8hcImMmIJaCe9KH305uCzCVGhbwlO2
| W2Of9Xhs4vcgTFn8PCpeBOsh01rLVETKc5W5zfGf3tUMG7j7WCyEsvRHMJXzSqns
| s60xTN0VoWK5I4O2woxmDV4yHE2xKonIqZ2C6vCbiBpUSnnVysLMr7fGLhr3QYEL
| M1lCsFr4XCOhf/pBbr0=
|_-----END CERTIFICATE-----
| rdp-ntlm-info: 
|   Target_Name: THM-AD
|   NetBIOS_Domain_Name: THM-AD
|   NetBIOS_Computer_Name: ATTACKTIVEDIREC
|   DNS_Domain_Name: spookysec.local
|   DNS_Computer_Name: AttacktiveDirectory.spookysec.local
|   Product_Version: 10.0.17763
|_  System_Time: 2022-03-07T21:05:49+00:00
|_ssl-date: 2022-03-07T21:05:57+00:00; 0s from scanner time.
5985/tcp  open  http          syn-ack Microsoft HTTPAPI httpd 2.0 (SSDP/UPnP)
|_http-title: Not Found
|_http-server-header: Microsoft-HTTPAPI/2.0
9389/tcp  open  mc-nmf        syn-ack .NET Message Framing
47001/tcp open  http          syn-ack Microsoft HTTPAPI httpd 2.0 (SSDP/UPnP)
|_http-server-header: Microsoft-HTTPAPI/2.0
|_http-title: Not Found
49664/tcp open  msrpc         syn-ack Microsoft Windows RPC
49665/tcp open  msrpc         syn-ack Microsoft Windows RPC
49667/tcp open  msrpc         syn-ack Microsoft Windows RPC
49669/tcp open  msrpc         syn-ack Microsoft Windows RPC
49672/tcp open  msrpc         syn-ack Microsoft Windows RPC
49675/tcp open  ncacn_http    syn-ack Microsoft Windows RPC over HTTP 1.0
49676/tcp open  msrpc         syn-ack Microsoft Windows RPC
49679/tcp open  msrpc         syn-ack Microsoft Windows RPC
49683/tcp open  msrpc         syn-ack Microsoft Windows RPC
49695/tcp open  msrpc         syn-ack Microsoft Windows RPC
49822/tcp open  msrpc         syn-ack Microsoft Windows RPC
Service Info: Host: ATTACKTIVEDIREC; OS: Windows; CPE: cpe:/o:microsoft:windows

Host script results:
| smb2-time: 
|   date: 2022-03-07T21:05:48
|_  start_date: N/A
|_clock-skew: mean: 0s, deviation: 0s, median: 0s
| smb2-security-mode: 
|   3.1.1: 
|_    Message signing enabled and required
| p2p-conficker: 
|   Checking for Conficker.C or higher...
|   Check 1 (port 11688/tcp): CLEAN (Couldn't connect)
|   Check 2 (port 46009/tcp): CLEAN (Couldn't connect)
|   Check 3 (port 25876/udp): CLEAN (Failed to receive data)
|   Check 4 (port 52023/udp): CLEAN (Timeout)
|_  0/4 checks are positive: Host is CLEAN or ports are blocked

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Mon Mar  7 16:06:04 2022 -- 1 IP address (1 host up) scanned in 83.61 seconds
