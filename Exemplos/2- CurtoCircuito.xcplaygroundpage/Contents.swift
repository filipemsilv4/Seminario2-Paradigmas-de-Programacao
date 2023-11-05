// Curto Circuito: printalgo() não é chamado
var a = 10, b = 9

if a > b || printalgo() {
    print("\(a) \(b)")
}


func printalgo() -> Bool {
    print("algo")
    return true
}
