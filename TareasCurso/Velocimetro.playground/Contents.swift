//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120


    init ( velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
}



class Auto{
    
    var velocidad = Velocidades.Apagado
    
    init( velocidadInicial : Velocidades ){
        velocidad = Velocidades(velocidadInicial: velocidadInicial) 
    }
    
    func cambioDeVelocidad( ) -> (actual : Int, velocidadEnCadena : String){
        
        let velocidadActual = velocidad
        
       switch velocidad {
        case .Apagado:
            velocidad = Velocidades.VelocidadBaja
        case .VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
        case .VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
        case .VelocidadAlta:
            velocidad = Velocidades.VelocidadMedia

        }
        return (velocidadActual.rawValue, "\(velocidadActual)")
        }
}

var auto = Auto (velocidadInicial: Velocidades.Apagado)

var cantidad = 1...20


for i in cantidad{
    let cambio = auto.cambioDeVelocidad()
    print("\(cambio.0), \(cambio.1)")
}




