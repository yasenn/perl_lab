# Scenario 3:
         Read /etc/passwd file and classify and group the usernames with uid > 500 based on the user shell

# Example input:-
```
infra01:x:1000:1000:WO0000002569482 - SAM infra01 Account:/home/infra01:/bin/bash
infra02:x:1001:1001:WO0000002569482 - SAM infra02 Account:/home/infra02:/bin/bash
unbound:x:995:991:Unbound DNS resolver:/etc/unbound:/sbin/nologin
tss:x:59:59:Account used by the trousers package to sandbox the tcsd daemon:/dev/null:/sbin/nologin
ulamcdc:x:1005:1005:ULAM team account:/home/ulamcdc:/bin/csh
tie01:x:70005:70005:Account for AES TIE team:/home/tie01:/bin/csh
tio01:x:70006:70006:Account for AES TIO team:/home/tio01:/bin/ksh
jitu:x:70007:70007:Account for just in time access:/home/jitu:/bin/ksh
sos:x:70008:70008:Account for emergency access:/home/sos:/bin/ksh
app001:x:70009:70009:Account for application access:/home/app001:/bin/zsh
```

# Expected Output:-
```
bash, infra01 infra02
nologin, unbound
csh, ulamcdc tie01
ksh, tio01 jitu sos
zsh, app001
```
