var
    sequência_de_collatz: seq[int] = @[]
    maior_numero = 0
    ultimo_elemento = 0
    comprimento_atual = 0
    comprimento_anterior = 0

for numero in 2 .. 100:
  sequência_de_collatz = @[numero]
  ultimo_elemento = sequência_de_collatz[^1]

  while ultimo_elemento >= 1:
   if ultimo_elemento == 1:
     comprimento_atual = sequência_de_collatz.len
     if comprimento_anterior < comprimento_atual:
      maior_numero = sequência_de_collatz[0]
      comprimento_anterior = sequência_de_collatz.len
     break
   elif ultimo_elemento mod 2 == 0:
    sequência_de_collatz.add(ultimo_elemento div 2)
    ultimo_elemento = sequência_de_collatz[^1]
   else:
    sequência_de_collatz.add(ultimo_elemento * 3 + 1)
    ultimo_elemento = sequência_de_collatz[^1]

echo "Número: ", maior_numero, "\nComprimento da sequência: ", comprimento_anterior
