# var
#     sequência_que_contêm_inteiros: seq[int] = @[]
#     sequência_de_sequências: seq[int] = @[]
#     ultimo_elemento: int
#     # sequência_que_contêm_inteiros = @[number]
#     # comprimento = sequência_que_contêm_inteiros.len
#     # comprimento_da_sequência_de_sequências = sequência_de_sequências.len

# for number in 2 .. 100:
#   # var
#     # sequência_que_contêm_inteiros = @[number]
#   #   ultimo_elemento = sequência_que_contêm_inteiros[^1]
#   #   # comprimento = sequência_que_contêm_inteiros.len
#   #   sequência_de_sequências: seq[int] = @[]
#   #   # comprimento_da_sequência_de_sequências = sequência_de_sequências.len

#   sequência_que_contêm_inteiros = @[number]
#   ultimo_elemento = sequência_que_contêm_inteiros[^1]

#   while ultimo_elemento >= 1:
#    if ultimo_elemento == 1:
#     # comprimento = sequência_que_contêm_inteiros.len
#     sequência_de_sequências.add(sequência_que_contêm_inteiros)
#     # echo "Número: ", number, " comprimento: ", comprimento, " -> ",sequência_que_contêm_inteiros
#     break
#    elif ultimo_elemento mod 2 == 0:
#     sequência_que_contêm_inteiros.add(ultimo_elemento div 2)
#     ultimo_elemento = sequência_que_contêm_inteiros[^1]
#    else:
#     sequência_que_contêm_inteiros.add(ultimo_elemento * 3 + 1)
#     ultimo_elemento = sequência_que_contêm_inteiros[^1]

# echo sequência_de_sequências


for number in 2 .. 10:
  var
    sequência_que_contêm_inteiros = @[number]
    ultimo_elemento = sequência_que_contêm_inteiros[^1]
    comprimento = sequência_que_contêm_inteiros.len

  while ultimo_elemento >= 1:
   if ultimo_elemento == 1:
    comprimento = sequência_que_contêm_inteiros.len
    echo "Número: ", number, " comprimento: ", comprimento, " -> ",sequência_que_contêm_inteiros
    break
   elif ultimo_elemento mod 2 == 0:
    sequência_que_contêm_inteiros.add(ultimo_elemento div 2)
    ultimo_elemento = sequência_que_contêm_inteiros[^1]
   else:
    sequência_que_contêm_inteiros.add(ultimo_elemento * 3 + 1)
    ultimo_elemento = sequência_que_contêm_inteiros[^1]


# var
#   sequência_de_inteiros = @[9]

# while sequência_de_inteiros[^1] >= 1:
#   if sequência_de_inteiros[^1] == 1:
#     echo sequência_de_inteiros
#     break
#   elif sequência_de_inteiros[^1] mod 2 == 0:
#     sequência_de_inteiros.add(sequência_de_inteiros[^1] div 2)
#   else:
#     sequência_de_inteiros.add(sequência_de_inteiros[^1] * 3 + 1)



# var
#   sequência_que_contêm_inteiros = @[9]
#   ultimo_elemento = sequência_que_contêm_inteiros[^1]
#   comprimento = sequência_que_contêm_inteiros.len

# while ultimo_elemento >= 1:
#  if ultimo_elemento == 1:
#   comprimento = sequência_que_contêm_inteiros.len
#   echo comprimento, " -> ",sequência_que_contêm_inteiros
#   break
#  elif ultimo_elemento mod 2 == 0:
#   sequência_que_contêm_inteiros.add(ultimo_elemento div 2)
#   ultimo_elemento = sequência_que_contêm_inteiros[^1]
#  else:
#   sequência_que_contêm_inteiros.add(ultimo_elemento * 3 + 1)
#   ultimo_elemento = sequência_que_contêm_inteiros[^1]
