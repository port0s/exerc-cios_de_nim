# EX 1: Crie uma variável imutável contendo sua idade (em anos). Imprima sua idade em dias. (1 ano = 365 dias)
const idadeEmAnos = 30
echo "Idade em dias: ", idadeEmAnos * 365



# EX 2: Verifique se a sua idade é divisível por 3. (Dica: use mod)
echo "É divisível por 3? ", idadeEmAnos mod 3 == 0



# EX 3: Crie uma variável imutável contendo sua altura em centímetros. Imprima sua altura em polegadas. (1 pol = 2,54 cm)
# Converta a sua altura de metros para centímetros,
  # altura * 10^2: 1.80 * 10^2 ou 180e2
const altura_em_centimetros = 1.95e2
echo "Altura em polegadas é: ",  altura_em_centimetros/2.54



# EX 4: Um tubo tem um diâmetro de 3/8 de polegada. Expresse o diâmetro em centímetros.
echo "Diâmetro em centímetros: ", (3/8) * 2.54



# EX 5: Crie uma variável imutável contendo seu primeiro nome e outra contendo seu sobrenome.
# 	Crie uma variável fullName concatenando as duas variáveis anteriores.
# 	Não se esqueça de colocar um espaço em branco no meio. Imprima seu nome completo.
let
 nome = "Jericho"
 espaço = " "
 sobrenome = "Dois"

echo "Meu nome é: ", nome & espaço & sobrenome



# EX 6: Alice ganha US$ 400 a cada 15 dias.
#	Bob ganha US$ 3,14 por hora e trabalha 8 horas por dia, 7 dias por semana.
#	Depois de 30 dias, Alice ganhou mais que Bob? (Dica: use operadores relacionais)
let
 aline = 400.0 * 2.0
 # bob = (qte_ganha * por_hora * em_dias * em_semanas) + (qte_ganha * por_hora * em_dias)
 bob = (3.14 * 8 * 7 * 4) + (3.14 * 8 * 3)

echo "Aline ganhou mais que Bob no dia 31? ", aline > bob



# EX 7: A conjectura de Collatz é um problema matemático popular com regras simples.
#	Primeiro escolha um número.
#	Se for ímpar, multiplique por três e adicione um.
#	Se for par, divida-o por dois.
#	Repita este procedimento até chegar a um.
#	Por exemplo, 5 → ímpar → 3 * 5 + 1 = 16 → par → 16/2 = 8 → par → 4 → 2 → 1 → final!
#	Escolha um número inteiro (como uma variável mutável) e crie um loop que imprimirá todas as etapas da conjectura Collatz. (Dica: use divpara divisão)
var numero_inteiro = 5

while numero_inteiro >= 1:
 if numero_inteiro == 1:
  echo "-> ", numero_inteiro
  break
 elif numero_inteiro mod 2 != 0:
  echo "-> ", numero_inteiro
  numero_inteiro = numero_inteiro * 3 + 1
 else:
  echo "-> ", numero_inteiro
  numero_inteiro = numero_inteiro div 2



# EX 8: Crie uma variável imutável contendo seu nome completo.
#	Escreva um loop for que itere através dessa string e imprima apenas as vogais (a, e, i, o, u).
#	(Dica: use a caseinstrução com vários valores por filial)
const nome_completo = "Jericho Dois"

for vogais in nome_completo:
 case vogais
  of 'a':
   echo "-> ", vogais
  of 'e':
   echo "-> ", vogais
  of 'i':
   echo "-> ", vogais
  of 'o':
   echo "-> ", vogais
  of 'u':
   echo "-> ", vogais
  else:
   discard



# EX 9: O Fizz Buzz é um jogo infantil, às vezes usado para testar conhecimentos básicos de programação.
#	Contamos números de um para cima.
#	Se um número é divisível por 3, substitua-o por fizz , se for divisível por 5, substitua-o por buzz e se um número é divisível por 15 (3 e 5) substitua-o por fizzbuzz.
#	Primeiras rodadas ficaria assim: 1, 2, fizz, 4, zumbido, fizz, 7, ...
#	Criar um programa que irá imprimir primeiros 30 rodadas de Fizz buzz. (Dica: cuidado com a ordem dos testes de divisibilidade)
for numero in 1..30:
 if numero mod 3 == 0:
  echo "fizz"
 elif numero mod 5 == 0:
  echo "buzz"
 elif numero mod 15 == 0:
  echo "fizzbuzz"
 else:
  echo "-> ", numero



# EX 10: Nos exercícios anteriores, você converteu polegadas em centímetros e vice-versa.
#	Crie uma tabela de conversão com vários valores.
#	Por exemplo, a tabela pode ficar assim:
echo "   in\t|   cm"
echo "   --------------"

var
 polegadas = 1.0
 iterators = 1

while iterators < 8:
 echo "   ", iterators, "\t|", "   ", polegadas*2.54
 inc iterators
 polegadas = polegadas + 3



# EX 11: Crie uma matriz vazia que possa conter dez números inteiros.
#	 Preencha essa matriz com os números 10, 20,…, 100. (Dica: use loops)
#	 Imprima apenas os elementos dessa matriz que estão em índices ímpares (valores 20, 40,…).
#	 Multiplique elementos em índices pares por 5. Imprima a matriz modificada.
var
   matrix: array[10, int]
#   aux = 0


#while aux < 10:
# matrix[aux] = 10 + 10 * aux
# if aux mod 2 != 0:
#  echo matrix[aux]
# else:
#  matrix[aux] = 5 * matrix[aux]
# inc aux


for index in 0 .. 9:
 matrix[index] = 10 + 10 * index
 if index mod 2 != 0:
  echo matrix[index]
 else:
  matrix[index] = 5 * matrix[index]

echo matrix



# EX 12: Refaça o exercício de conjectura de Collatz,
#	 mas desta vez, em vez de imprimir cada etapa, adicione-o a uma sequência.
var sequência_numérica = @[9]

# [^1] = pwga o último elemento da matriz (backward index operator)
while sequência_numérica[^1] >= 1:
 if sequência_numérica[^1] == 1:
  echo "comprimento: ", sequência_numérica.len, " de -> ", sequência_numérica
  break
 elif sequência_numérica[^1] mod 2 != 0:
  sequência_numérica.add(sequência_numérica[^1] * 3 + 1)
 else:
  sequência_numérica.add(sequência_numérica[^1] div 2)


var sequência_de_inteiros = @[9]

while sequência_de_inteiros[^1] >= 1:
  if sequência_de_inteiros[^1] == 1:
    echo "comprimento: ", sequência_de_inteiros.len, " de -> ", sequência_de_inteiros
    break
  elif sequência_de_inteiros[^1] mod 2 == 0:
    sequência_de_inteiros.add(sequência_de_inteiros[^1] div 2)
  else:
    sequência_de_inteiros.add(sequência_de_inteiros[^1] * 3 + 1)


var
  sequência_que_contêm_inteiros = @[9]
  ultimo_elemento_que_contêm_inteiros = sequência_que_contêm_inteiros[^1]

while ultimo_elemento_que_contêm_inteiros >= 1:
 if ultimo_elemento_que_contêm_inteiros == 1:
  let comprimento_desta_sequência = sequência_que_contêm_inteiros.len
  echo "comprimento: ", comprimento_desta_sequência, " de -> ", sequência_que_contêm_inteiros
  break
 elif ultimo_elemento_que_contêm_inteiros mod 2 == 0:
  sequência_que_contêm_inteiros.add(ultimo_elemento_que_contêm_inteiros div 2)
  ultimo_elemento_que_contêm_inteiros = sequência_que_contêm_inteiros[^1]
 else:
  sequência_que_contêm_inteiros.add(ultimo_elemento_que_contêm_inteiros * 3 + 1)
  ultimo_elemento_que_contêm_inteiros = sequência_que_contêm_inteiros[^1]



# EX 14: Encontre o número em um intervalo de 2 a 100 que produzirá a sequência Collatz mais longa.
# Imprima o número inicial que fornece a sequência mais longa e seu comprimento.
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
      maior_numero = numero
      comprimento_anterior = comprimento_atual
     break
   elif ultimo_elemento mod 2 == 0:
    sequência_de_collatz.add(ultimo_elemento div 2)
    ultimo_elemento = sequência_de_collatz[^1]
   else:
    sequência_de_collatz.add(ultimo_elemento * 3 + 1)
    ultimo_elemento = sequência_de_collatz[^1]


echo "Número: ", maior_numero, "\nComprimento da sequência: ", comprimento_anterior



# EX 15: Crie um procedimento que cumprimente uma pessoa (imprima "Hello <name>").
#        com base no nome fornecido. Crie uma sequência de nomes.
#        Cumprimente cada pessoa usando o procedimento criado.
proc hello(sequence: seq[string]) =
  for name in sequence:
    echo "Hello, ", name, "!"


let name_string = @["Boga", "Numa"]
hello(name_string)



# EX 16: Crie um procedimento findMax3 que retorne o maior dos três valores.
proc findMax3(sequence: seq[int]): int =
  for valor in sequence:
    if valor > result:
      result = valor


let valor_max = @[3, 6, 1]
echo valor_max.findMax3()



# EX 17: Os pontos no plano 2D podem ser representados como tuple[x, y: float].
#        Escreva um procedimento que receberá dois pontos e retorne um novo ponto,
#        que é a soma desses dois pontos (adicione x e y separadamente).
proc twoPoints(x_from_twoPoints, y_from_twoPoints: float): float =
  return x_from_twoPoints + y_from_twoPoints

let
  x = 2.0
  y = 3.0

echo twoPoints(x, y)



# EX 18: Crie dois procedimentos ticke tock que ecoem as palavras "tick" e "tock".
# Tenha uma variável global para controlar quantas vezes eles foram executados
# e execute um do outro até que o contador atinja 20.
# O resultado esperado é obter linhas com "tick" e "tock" alternando 20 vezes. (Dica: use declarações avançadas.)
var
  qte_tick_tock: int

proc tick() = echo "Tick"
proc tock() = echo "Tock"

for cont in 0 .. 19:
  tick()
  tock()
  inc qte_tick_tock

echo qte_tick_tock



# EX 19: Peça a um usuário sua altura e peso. Calcular o seu IMC . Relate o valor do IMC e a categoria.
import strutils

echo "Qual é o seu peso? "
let peso = readLine(stdin).strip().parseFloat()

echo "Qual sua altura? "
let altura = readLine(stdin).strip().parseFloat()

proc imc(peso, altura: float): float =
  result = (peso/(altura*altura))

echo imc(peso, altura)



# EX 20: Repita o exercício de conjectura de Collatz para que seu programa solicite ao usuário um número inicial. Imprima a sequência resultante.
echo "Digite um número? "
var numero_inteiro_recebido = readLine(stdin).strip().parseInt()

while numero_inteiro_recebido >= 1:
 if numero_inteiro_recebido == 1:
  echo "-> ", numero_inteiro_recebido
  break
 elif numero_inteiro_recebido mod 2 != 0:
  echo "-> ", numero_inteiro_recebido
  numero_inteiro_recebido = numero_inteiro_recebido * 3 + 1
 else:
  echo "-> ", numero_inteiro_recebido
  numero_inteiro_recebido = numero_inteiro_recebido div 2



# EX 21: Peça a um usuário uma string que ele queira reverter.
#        Crie um procedimento que use uma string e retorne uma versão invertida.
#        Por exemplo, se o usuário digitar Nim-lang,
#        o procedimento deverá retornar gnal-miN.
#        (Dica: use indexação e countdown)
import rdstdin

proc inverte() =
  var
    quero_inverter = readLineFromStdin "Digite uma palavra: "
    comprimento = quero_inverter.len - 1
    palavra_invertida: seq[char]

  for letras in countdown(comprimento, 0):
    palavra_invertida.add(quero_inverter[letras])

  echo palavra_invertida.join()

inverte()
