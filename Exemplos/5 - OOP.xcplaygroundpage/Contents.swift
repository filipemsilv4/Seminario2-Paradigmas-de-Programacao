// Definindo a classe base
class Veiculo {
    var marca: String
    var modelo: String
    
    init(marca: String, modelo: String) {
        self.marca = marca
        self.modelo = modelo
    }
    
    func fazerBarulho() {
        print("Vrum vrum!")
    }
}

// Subclasse Carro, herda de Veiculo
class Carro: Veiculo {
    var numeroPortas: Int
    
    init(marca: String, modelo: String, numeroPortas: Int) {
        self.numeroPortas = numeroPortas
        super.init(marca: marca, modelo: modelo)
    }
    
    // Sobrescreve o método fazerBarulho da classe base
    override func fazerBarulho() {
        print("Beep beep!")
    }
}

// Subclasse Moto, herda de Veiculo
class Moto: Veiculo {
    var temCapacete: Bool
    
    init(marca: String, modelo: String, temCapacete: Bool) {
        self.temCapacete = temCapacete
        super.init(marca: marca, modelo: modelo)
    }
    
    // Sobrescreve o método fazerBarulho da classe base
    override func fazerBarulho() {
        print("Vruum!")
    }
}

// Criando objetos
let carro = Carro(marca: "Toyota", modelo: "Corolla", numeroPortas: 4)
let moto = Moto(marca: "Honda", modelo: "CBR", temCapacete: true)

// Chamando métodos
carro.fazerBarulho()  // Saída: Beep beep!
moto.fazerBarulho()   // Saída: Vruum!
