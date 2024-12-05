


- sleep with random time - temporiser un script 
```bash
MINWAIT=10
MAXWAIT=30
sleep $((MINWAIT+RANDOM % (MAXWAIT-MINWAIT)))
```
