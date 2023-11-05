protocol PodeCorrer {
    func correr()
}

protocol PodeNadar {
    func nadar()
}

class Animal: PodeCorrer {
    func correr() {
        print("Correndo...")
    }
}

class Peixe: PodeNadar {
    func nadar() {
        print("Nadando...")
    }
}

class PeixeRapido: PodeCorrer, PodeNadar {
    func correr() {
        print("Correndo rapidamente...")
    }

    func nadar() {
        print("Nadando rapidamente...")
    }
}



class Motor {
    func ligar() {
        print("Motor ligado.")
    }
}

class Rodas {
    func girar() {
        print("Rodas girando.")
    }
}

class Carro {
    let motor = Motor()
    let rodas = Rodas()

    func dirigir() {
        motor.ligar()
        rodas.girar()
        print("Carro em movimento.")
    }
}

