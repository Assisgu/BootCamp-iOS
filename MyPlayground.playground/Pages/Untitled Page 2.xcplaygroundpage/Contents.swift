//: [Previous](@previous)

import Foundation

let nome: String = "Steve"
var sobrenome: String? 

print("Nome completo: \(nome) \(sobrenome ?? "Wozniak")")

if let sobrenomeSteve = sobrenome {
    print("Nome completo: \(nome) \(sobrenomeSteve)")
}
