import UIKit

enum TipoVeiculo {
    case carro(potenciaMotor: Double, capacidadePessoa: Int)
    case moto(cilindrada: Int)
    
    var descricao: String {
        switch self {
        case .carro:
            return "carro"
        case .moto:
            return "moto"
        }
    }
}

struct ConfiguracaoVeiculo {
    var marca: String
    var modelo: String
    var ano: Int
    var tipo: TipoVeiculo
}

class Veiculo {
    var veiculo: ConfiguracaoVeiculo
    var velocidade: Double = 0.0

    
    init(veiculo: ConfiguracaoVeiculo){
        self.veiculo = veiculo
    }
    
    func acelerar(velocidade: Double){
        self.velocidade += velocidade
        print("A velocidade atual da \(veiculo.tipo.descricao) (\(veiculo.marca)) \(veiculo.modelo) é \(velocidade) KM/H.")
    }
    
    func frear(){
        self.velocidade = 0.0
        print("rrrr... \(veiculo.tipo.descricao) (\(veiculo.marca)) freiou e a velocidade esta \(velocidade) KM/H")
    }
}

class Carro: Veiculo {
    var potencia: Double
    
    init(potencia: Double, veiculo: ConfiguracaoVeiculo, velocidade: Double) {
        self.potencia = potencia
        super.init(veiculo: veiculo)
    }
}

class Moto: Veiculo {
    var cilindradas: Double
    
    init(cilindradas: Double, veiculo: ConfiguracaoVeiculo) {
        self.cilindradas = cilindradas
        super.init(veiculo: veiculo)
    }
}

let carro = Veiculo(veiculo: ConfiguracaoVeiculo(marca: "Subaru", modelo: "Impreza", ano: 2011, tipo: .carro(potenciaMotor: 2.0, capacidadePessoa: 5)))

let moto = Veiculo(veiculo: ConfiguracaoVeiculo(marca: "Yamaha", modelo: "MT-03", ano: 2019, tipo: .moto(cilindrada: 300)))

moto.acelerar(velocidade: 200)
moto.frear()
carro.acelerar(velocidade: 10)
carro.frear()
