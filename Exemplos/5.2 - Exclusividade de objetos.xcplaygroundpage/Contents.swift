let numero: Int = 42
let texto: String = "Olá, Swift!"

print(numero.description)  // Método de Int
print(texto.count)         // Propriedade de String



class Pessoa {
    var nome: String
    init(nome: String) {
        self.nome = nome
    }

    func dizerOla() {
        print("Olá, meu nome é \\(nome)!")
    }
}

let pessoa1 = Pessoa(nome: "Alice")
pessoa1.dizerOla()  // Método de Pessoa




enum DiaDaSemana {
    case segunda, terca, quarta, quinta, sexta, sabado, domingo

    func descricao() -> String {
        switch self {
        case .segunda, .terca, .quarta, .quinta, .sexta:
            return "Dia útil"
        case .sabado, .domingo:
            return "Fim de semana"
        }
    }
}

let dia = DiaDaSemana.quarta
print(dia.descricao())  // Método de DiaDaSemana
