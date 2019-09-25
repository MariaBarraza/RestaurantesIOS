//
//  Restaurante.swift
//  RestauranteIOS
//
//  Created by Alumno on 9/25/19.
//  Copyright © 2019 fer. All rights reserved.
//

import Foundation

class Restaurante{
    var direccion : String?
    var telefono : Int?
    var descripcion : String?
    var nombre : String?
    
    init(direccion: String,telefono: Int,descripcion: String,nombre: String ){
        self.direccion = direccion
        self.descripcion = descripcion
        self.telefono = telefono
        self.nombre = nombre
    }
    
}
