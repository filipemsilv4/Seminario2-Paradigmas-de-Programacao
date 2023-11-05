import Foundation

// Criar um semáforo com uma contagem inicial
let semaforo = DispatchSemaphore(value: 1)

// Função que simula o acesso concorrente a um recurso compartilhado
func acessarRecursoCompartilhado() {
    // Esperar pelo semáforo (decrementa a contagem)
    semaforo.wait()

    // Seção crítica: código que acessa o recurso compartilhado
    print("Acessando o recurso compartilhado")

    // Liberar o semáforo (incrementa a contagem)
    semaforo.signal()
}

// Exemplo de uso em um contexto concorrente
for _ in 1...5 {
    // Simula threads concorrentes acessando o recurso compartilhado
    DispatchQueue.global().async {
        acessarRecursoCompartilhado()
    }
}

// Aguardar para garantir que todas as threads tenham terminado
sleep(2)
