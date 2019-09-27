//
//  DetallesRestauranteController.swift
//  RestauranteIOS
//
//  Created by Alumno on 9/27/19.
//  Copyright © 2019 fer. All rights reserved.
//

import Foundation
import UIKit

class DetallesRestauranteController : UIViewController{
    var restaurante: Restaurante?
    @IBOutlet weak var lblDireccion: UILabel!
    @IBOutlet weak var lblTelefono: UILabel!
    @IBOutlet weak var lblDescripcion: UILabel!
    
    override func viewDidLoad() {
        self.title = restaurante!.nombre!
        
        lblDireccion.text = restaurante!.direccion!
        lblTelefono.text = "\(restaurante!.telefono!)"
        lblDescripcion.text = restaurante!.descripcion!
    }
}
