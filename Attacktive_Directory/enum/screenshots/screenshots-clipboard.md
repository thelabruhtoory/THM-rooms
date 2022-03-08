

```
enum4linux $ip | tee enum/enum4linux.md
```
![[Found Net BIOS Name.png]]

```
kerbrute userenum -d spookysec.local --dc 10.10.236.176 userlist.md | tee AD-enum/kerbrute_users.md
```
