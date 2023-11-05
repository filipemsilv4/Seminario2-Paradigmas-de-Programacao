import Foundation

// Cria uma fila global para execução concorrente
let queue = DispatchQueue.global(qos: .utility)

// Função que será executada concorrentemente
func executarTarefa(_ id: Int) {
    for i in 1...5 {
        print("Tarefa \\(id): \\(i)")
    }
}

// Dispara tarefas concorrentes
for i in 1...3 {
    queue.async {
        executarTarefa(i)
    }
}

// Espera um pouco para permitir que as tarefas concorrentes sejam executadas
sleep(2)
