//
//  RestauranteController.swift
//  RestauranteIOS
//
//  Created by Alumno on 9/25/19.
//  Copyright © 2019 fer. All rights reserved.
//

import Foundation
import UIKit

class RestauranteController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tvRestaurante: UITableView!
    
    
    var restaurantes: [Restaurante] = []
    override func viewDidLoad() {
        restaurantes.append(Restaurante(direccion: "Su localcito", telefono: 89234124, descripcion: "restaurante bonito",nombre: "Restaurantecito"))
        restaurantes.append(Restaurante(direccion: "Su localcito2", telefono: 56784353, descripcion: "restaurante2 bonito",nombre: "Restaurantecito2"))
        restaurantes.append(Restaurante(direccion: "Su localcito3", telefono: 34235753, descripcion: "restaurante3 bonito",nombre: "Restaurantecito3"))
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaRestaurante")
        celda?.textLabel?.text = restaurantes[indexPath.row].nombre
        return celda!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetallesRestaurante" {
            let destino = segue.destination as? DetallesRestauranteController
            destino?.restaurante = restaurantes[tvRestaurante.indexPathForSelectedRow!.row]
    }
}
}
