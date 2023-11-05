let diaDaSemana = "domingo"

switch diaDaSemana {
case "segunda-feira":
    print("Dia útil")
case "terça-feira":
    print("Dia útil")
case "quarta-feira":
    print("Meio da semana")
case "quinta-feira":
    print("Meio da semana")
case "sexta-feira":
    print("Dia útil")
case "sábado", "domingo":
    print("Final de semana")
default:
    print("Dia inválido")
}


// Iterando sobre um intervalo de números
for numero in 1...5 {
    print(numero)
}

// Iterando sobre uma array de strings
let frutas = ["maçã", "banana", "laranja"]
for fruta in frutas {
    print(fruta)
}

// Iterando sobre um dicionário
let capitais = ["Brasil": "Brasília", "EUA": "Washington", "França": "Paris"]
for (pais, capital) in capitais {
    print("\(pais): \(capital)")
}

// Filtrando elementos com forEach
let numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var numerosPares: [Int] = []

numeros.forEach { numero in
    if numero % 2 == 0 {
        numerosPares.append(numero)
    }
}

print("Números Pares: \(numerosPares)")


