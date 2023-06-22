//
//  Persona.swift
//  Practica_Poo
//
//  Created by Adrian Velasco Carrasco on 21/6/23.
//


/*

 1) Crea una clase llamada Cuenta que tendrá los siguientes atributos: titular y cantidad (puede tener decimales).

 El titular será obligatorio y la cantidad es opcional. Crea dos constructores que cumpla lo anterior.

 Crea sus métodos get, set y toString.

 Tendrá dos métodos especiales:

 ingresar(double cantidad): se ingresa una cantidad a la cuenta, si la cantidad introducida es negativa, no se hará nada.
 
 retirar(double cantidad): se retira una cantidad a la cuenta, si restando la cantidad actual a la que nos pasan es negativa, la cantidad de la cuenta pasa a ser 0.

 
*/


import Foundation

// Creamos la clase Cuenta.
class Cuenta {
    // Y creamos sus atributos.
    var titular: String
    var cantidad: Float?
    
    // Constructor con todos los datos de la cuenta.
    init(titular: String, cantidad: Float? = nil) {
        self.titular = titular
        self.cantidad = cantidad
    }
    
    // Constructor con solo en nombre del titular.
    init(titular: String){
        self.titular = titular
    }
    
    
    // GETTERS Y SETTERS
    func getTitular()->String{
        return self.titular
    }

    func getCantidad()->Float{
        let cantidadTotal = self.cantidad ?? 0.0
        return cantidadTotal
    }

    func setCantidad(cantidadAPoner:Float){
        self.cantidad = cantidadAPoner
    }
    
    func setTitular(titularAPoner: String){
        self.titular = titularAPoner
    }
    
    // Metodos especiales.
    
    // Metodo que ingresa una cantidad en la cuenta. Si la cantidad introducida es negativa, no se hará nada.
    func ingresarDinero(ingreso: Float){
        let valorCuenta = self.getCantidad()
        if ingreso < 0 {
            self.cantidad = valorCuenta
        } else {
            let valorCuentaIngreso = ingreso + valorCuenta
            self.setCantidad(cantidadAPoner: valorCuentaIngreso)
        }
    }
    
    // Metodo retirar dinero.
    func retirarDinero(retiro: Float){
        let valorCuenta = self.getCantidad()
        if retiro < 0{
            self.cantidad = valorCuenta
        } else {
            let valorCuentaRetirada = valorCuenta - retiro
            if valorCuentaRetirada < 0 {
                self.setCantidad(cantidadAPoner: 0)
            } else {
                self.setCantidad(cantidadAPoner: valorCuentaRetirada)
            }
        }
    }
    
}
