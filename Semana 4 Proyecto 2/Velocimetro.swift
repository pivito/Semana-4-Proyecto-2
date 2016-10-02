//
//  AppDelegate.swift
//  Semana 4 Proyecto 2
//
//  Created by miguel Garcia Sanchez on 2/10/16.
//  Copyright © 2016 miguel Garcia Sanchez. All rights reserved.
//

import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades )
    {
        self = velocidadInicial
    }

}

class Auto {
    
    var velocidad : Velocidades
    
    init()
    {
        self.velocidad = .Apagado
    }
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String)
    {
        var velocidadActual : Int
        
        var velocidadEnCadena : String
        
        switch velocidad {
        case .Apagado:
            velocidadEnCadena = "Apagado"
            velocidadActual = velocidad.rawValue
            velocidad = .VelocidadBaja
        case .VelocidadBaja:
            velocidadActual = velocidad.rawValue
            velocidad = .VelocidadMedia
            velocidadEnCadena = "Velocidad Baja"
        case .VelocidadMedia:
            velocidadActual = velocidad.rawValue
            velocidad = .VelocidadAlta
            velocidadEnCadena = "Velocidad Media"
        case .VelocidadAlta:
            velocidadEnCadena = "Velocidad Alta"
            velocidadActual = velocidad.rawValue
            velocidad = .VelocidadMedia
        }
        
        return (velocidadActual, velocidadEnCadena)

    }
}

var auto = Auto()

for i in 1...20{
    print(auto.cambioDeVelocidad())
}

