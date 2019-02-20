Fun with crypto
---------------

This repo contains some scripts that make cryptography fun.

### Vigenère cipher

The script `vigenere.rb` creates a
[Vigenère cipher](https://en.wikipedia.org/wiki/Vigenère_cipher) that
can be used to encode a given plaintext to a desired ciphertext. The point of
this is to demonstrate that decrypting a ciphertext can yield intelligible (but
possibly invalid) plaintext results.

Example grid:
```
  abcdefghijklmnopqrstuvwxyz 
 +---------------------------+
a|lfybpamukgweqxinzcr tshjdov|
b|as yrdcgeinfwhxzkpjltumvbqo|
c|phmgxicltybzqokrwesufv ajnd|
d|jwrhte dlkzocvuaifpysxngqmb|
e|xlwezsb iynvgjafptdoqrcumhk|
f|mpqhdusynla jfkcrbgzwxiovte|
g|xjgczuloaqsfiyrvpetkdwmhbn |
h|y qcwmeijvkznagtfpbxrhodslu|
i|d bhenojtfcaluswpyvrxzkimgq|
j|mwegqxb vahrjkzcuflotdiyspn|
k|pszogvitfkmnhxbjc reduylaqw|
l|hflptigrov wsmbcuzeqkdjaxny|
m|hpezu nqolxactgvjkfswybmidr|
n|digpjhacuorsebylxkfqm tvznw|
o|gtnhou cjykdpxswbeazvimfrql|
p|zjapfiqxbunkymtdvwrogslc he|
q|rykiabqdwsfcem gotpjzunhxvl|
r|gj ecrohfkusivzqtnmadbylxwp|
s|cklrp agsymviqenbfhodxwujtz|
t|juywrsxhntlidepb gkzcvmoqfa|
u|lagmp tondkisqbvrzexhjyfuwc|
v|rfeobwnxucjzhtvgdimsa kpylq|
w|njvizhf elycmgbduortpswqaxk|
x|nwdxhcbtmzugeqoafivp ylrksj|
y| arpgxztqynhcojlsmubfevikdw|
z|nvkjbztyfseadqwxulphgco rmi|
 |xzsbomcgk itvuaywdprhljenqf|
 +---------------------------+
```

Using the above grid, you can encrypt the plaintext `omg secret codez` into the
ciphertext `secretciphertext`. The randomly generated key to do this is
`oq mulivazfypecs`.
