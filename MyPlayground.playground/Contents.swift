import UIKit

protocol Falar {
    func falar(_ mensagem: String)
}

protocol Andar {
    func andar(passos: Int)
}

protocol Comer {
    func comer(_ alimento: String)
}

protocol Latir {
    func latir()
}

class Pessoa: Falar, Andar, Comer {
    
    var nome: String

    init(nome: String) {
        self.nome = nome
    }
    
    func falar(_ mensagem: String) {
        print("\(nome) diz: \(mensagem)")
    }
    
    func andar(passos: Int) {
        for _ in 1...passos{
            print("\(nome) está andandno...")
        }
    }
    
    func comer(_ alimento: String) {
        print("Hummm \(alimento) estava muito bom.")
    }
    
}

class Cachorro: Comer, Latir {
    var nome: String
    
    init(nome: String) {
        self.nome = nome
    }
    
    func comer(_ alimento: String) {
        print("\(nome) ficou feliz com \(alimento)")
    }
    
    func latir() {
        print("\(nome) diz: Auauauau")
    }
        
}

let joao = Pessoa(nome: "João")
joao.andar(passos: 3)
joao.falar("Olá, vamos aprender protocolos")
joao.comer("Melancia")

let caramelo = Cachorro(nome: "caramelo")
caramelo.comer("Cenoura")
caramelo.latir()

