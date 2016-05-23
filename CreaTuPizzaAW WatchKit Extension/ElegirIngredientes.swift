//
//  ElegirIngredientes.swift
//  CreaTuPizzaAW
//
//  Created by Xcaret A Ceniceros on 23/05/16.
//  Copyright © 2016 Xcaret Arellano Ceniceros. All rights reserved.
//

import WatchKit
import Foundation


class ElegirIngredientes: WKInterfaceController {

    @IBOutlet var mensaje: WKInterfaceLabel!
    @IBOutlet var botonRevisar: WKInterfaceButton!
    
    //INGREDIENTES
    @IBOutlet var jamon: WKInterfaceSwitch!
    @IBOutlet var peperoni: WKInterfaceSwitch!
    @IBOutlet var pimiento: WKInterfaceSwitch!
    @IBOutlet var Hongos: WKInterfaceSwitch!
    @IBOutlet var piña: WKInterfaceSwitch!
    @IBOutlet var cebolla: WKInterfaceSwitch!
    @IBOutlet var salchicha: WKInterfaceSwitch!

    //VARIABLES
    var queso:String=""
    var masa:String=""
    var tamaño:String=""
    var ingrediente:String=""
    var contar:Int=0
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        botonRevisar.setEnabled(false)
        let c=context as! Valores
        tamaño=c.valorTamaño
        masa=c.valorMasa
        queso=c.valorQueso

        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func RevisarOrden() {
        let revisarContexto=Valores(t:tamaño, m: masa, q: queso, i: ingrediente)
        pushControllerWithName("IdentificadorRevisar", context: revisarContexto)
    }
    func ingredientesElegidos(ingr:String){
        botonRevisar.setEnabled(true)
        if contar<=5{
            ingrediente = ingrediente+" "+ingr
        }else{
            mensaje.setText("Solo 5 Ingredientes")
            contar=0
            ingrediente=""
            jamon.setOn(false)
            salchicha.setOn(false)
            cebolla.setOn(false)
            piña.setOn(false)
            Hongos.setOn(false)
            pimiento.setOn(false)
            peperoni.setOn(false)
            botonRevisar.setEnabled(false)
            }
        
    }

    @IBAction func elegirJamon(value: Bool) {
        contar++
        ingredientesElegidos("Jamón")
        print(ingrediente)
        
    }

    @IBAction func elegirPeperoni(value: Bool) {        
        contar++
        ingredientesElegidos("Peperoni")
        print(ingrediente)

    }
    @IBAction func elegirPimiento(value: Bool) {
        contar++
        ingredientesElegidos("Pimiento")
        print(ingrediente)

    }
    @IBAction func elegirHongos(value: Bool) {
        contar++
        ingredientesElegidos("Hongos")
        print(ingrediente)

    }
    @IBAction func elegirPiña(value: Bool) {
        contar++
        ingredientesElegidos("Piña")
        print(ingrediente)

    }
    @IBAction func elegirCebolla(value: Bool) {
        contar++
        ingredientesElegidos("Cebolla")
        print(ingrediente)

    }
    @IBAction func elegirSalchicha(value: Bool) {
            contar++
            ingredientesElegidos("Salchicha")
        print(ingrediente)
    }
    
}
