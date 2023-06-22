//
//  ViewController.swift
//  Practica_Poo
//
//  Created by Adrian Velasco Carrasco on 21/6/23.
//

import UIKit

class ViewController: UIViewController {
    
    let cuenta = Cuenta(titular: "Adrian", cantidad: 1500)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Mostramos la cuenta creada.
        print("Tenemos como titular a \(cuenta.getTitular()), con \(cuenta.getCantidad())$ de saldo en la cuenta")
        
        // Hacemos ingreso en cuenta.
        cuenta.ingresarDinero(ingreso: -100)
        print("Tenemos como titular a \(cuenta.getTitular()), con \(cuenta.getCantidad())$ de saldo en la cuenta")
        
        cuenta.ingresarDinero(ingreso: 100)
        print("Tenemos como titular a \(cuenta.getTitular()), con \(cuenta.getCantidad())$ de saldo en la cuenta")
        
        // Hacemos una retirada de dinero.
        cuenta.retirarDinero(retiro: -100)
        print("Tenemos como titular a \(cuenta.getTitular()), con \(cuenta.getCantidad())$ de saldo en la cuenta")
        
        cuenta.retirarDinero(retiro: 100)
        print("Tenemos como titular a \(cuenta.getTitular()), con \(cuenta.getCantidad())$ de saldo en la cuenta")
        
        cuenta.retirarDinero(retiro: 1600)
        print("Tenemos como titular a \(cuenta.getTitular()), con \(cuenta.getCantidad())$ de saldo en la cuenta")
        
    }


}

