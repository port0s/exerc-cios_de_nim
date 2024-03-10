# fatorial:
const fatorial = (var x = 1; for i in 1..5: x *= i; x)

echo fatorial

# import strutils, rdstdin

# proc inverte() =
#   var
#     quero_inverter = readLineFromStdin "Digite uma palavra: "
#     comprimento = quero_inverter.len - 1
#     nova_palavra: seq[char]

#   for letras in countdown(comprimento, 0):
#     nova_palavra.add(quero_inverter[letras])

#   echo nova_palavra.join()

# inverte()

# import strutils, rdstdin, strformat

# stdout.write "Digite um número? "
# var numero_inteiro2 = readLine(stdin).strip().parseInt()

# let pessoa = readLineFromStdin "Qual seu nome? "
# echo fmt "Olá, {pessoa}"


# # EX 14: Crie um procedimento que cumprimente uma pessoa (imprima "Hello <name>").
# #        com base no nome fornecido. Crie uma sequência de nomes.
# #        Cumprimente cada pessoa usando o procedimento criado.


# # var name_string: seq[string] = @[]

# proc hello(sequence: seq[string]) =
#   for name in sequence:
#     echo "Hello, ", name, "!"


# let name_string = @["Boga", "Numa"]
# hello(name_string)


# # EX 16: Crie um procedimento findMax3 que retorne o maior dos três valores.
# proc findMax3(sequence: seq[int]): int =
#   for valor in sequence:
#     if valor > result:
#       result = valor


# let valor_max = @[3, 6, 1]
# echo valor_max.findMax3()



# proc twoPoints(x_from_twoPoints, y_from_twoPoints: float): float =
#   return x_from_twoPoints + y_from_twoPoints

# let
#   x_from_twoPoints = 2.0
#   y_from_twoPoints = 3.0

# echo twoPoints(x_from_twoPoints, y_from_twoPoints)


# var qte_tick_tock: int

# proc tick() = echo "Tick"
# proc tock() = echo "Tock"

# for cont in 0 .. 19:
#   tick()
#   tock()
#   inc qte_tick_tock

# echo qte_tick_tock


# var qte_global_tick_tock: int

# proc tick1() =
#   inc qte_global_tick_tock
#   echo "Tick"


# proc tock1() =
#   inc qte_global_tick_tock
#   echo "Tock"


# for cont in 1 .. 20:
#   tick1()
#   tock1()

# echo qte_global_tick_tock


# var qte_global_tick_tock2: int


# proc tock2() =
#   inc qte_global_tick_tock2
#   echo "Tock"


# proc tick2() =
#   inc qte_global_tick_tock2
#   echo "Tick"
#   tock2()


# for cont in 1 .. 20:
#   tick2()
#   tock2()

# echo qte_global_tick_tock2

# # var
# #   numero_inteiro = @[9]
# #   aux = 0

# # while numero_inteiro[^1] >= 1:
# #  if numero_inteiro[^1] == 1:
# #   echo numero_inteiro
# #   break
# #  elif numero_inteiro[^1] mod 2 != 0:
# #  # echo "-> ", numero_inteiro
# #  # numero_inteiro = numero_inteiro * 3 + 1
# #   numero_inteiro.add(numero_inteiro[^1] * 3 + 1)
# #  else:
# #  # echo "-> ", numero_inteiro
# #  # numero_inteiro = numero_inteiro div 2
# #   numero_inteiro.add(numero_inteiro[^1] div 2)

