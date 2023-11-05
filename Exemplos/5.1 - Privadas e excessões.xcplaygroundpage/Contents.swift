enum ErroVeiculo: Error {
    case combustivelInsuficiente
    case pneuFurado
}

class Veiculo {
    private var nivelCombustivel: Int
    private var pneus: Int
    
    init(nivelCombustivel: Int, pneus: Int) {
        self.nivelCombustivel = nivelCombustivel
        self.pneus = pneus
    }
    
    // Métodos para acessar propriedades privadas
    func obterNivelCombustivel() -> Int {
        return nivelCombustivel
    }
    
    func obterQuantidadePneus() -> Int {
        return pneus
    }
    
    // Métodos que podem cuspir exceções
    func dirigir() throws {
        guard nivelCombustivel > 0 else {
            throw ErroVeiculo.combustivelInsuficiente
        }
        
        guard pneus > 0 else {
            throw ErroVeiculo.pneuFurado
        }
        
        print("Vrum vrum!")
        nivelCombustivel -= 10
    }
    
    func trocarPneu() {
        print("Pneu trocado!")
        pneus -= 1
    }
}

// Exemplo de uso
let meuCarro = Veiculo(nivelCombustivel: 50, pneus: 4)

do {
    try meuCarro.dirigir()
} catch ErroVeiculo.combustivelInsuficiente {
    print("Sem combustível. Abasteça antes de dirigir.")
} catch ErroVeiculo.pneuFurado {
    print("Pneu furado. Troque o pneu antes de dirigir.")
}

meuCarro.trocarPneu()
