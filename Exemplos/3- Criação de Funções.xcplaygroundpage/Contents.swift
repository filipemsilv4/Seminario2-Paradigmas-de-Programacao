//func nomeDaFuncao(parametro1: Tipo, parametro2: Tipo) -> TipoDeRetorno {
    // Corpo da função
    // Código que faz algo
//    return valorDeRetorno
//}


func saudacao(nome: String) -> String {
    let mensagem = "Olá, \(nome)!"
    return mensagem
}

let resultado = saudacao(nome: "João")
print(resultado)



func calcularSoma(paraNumero numero: Int, eOutroNumero outroNumero: Int) -> Int {
    return numero + outroNumero
}

let resultadoSoma = calcularSoma(paraNumero: 5, eOutroNumero: 3)



func saudacaoPersonalizada(nome: String, saudacao: String = "Olá") -> String {
    return "\(saudacao), \(nome)!"
}

let resultadoSaudacao = saudacaoPersonalizada(nome: "Maria")


func aplicarOperacao(a: Int, b: Int, operacao: (Int, Int) -> Int) -> Int {
    return operacao(a, b)
}

func soma(x: Int, y: Int) -> Int {
    return x + y
}

let resultadoOperacao = aplicarOperacao(a: 3, b: 4, operacao: soma)
