//
//  tipoMasa.swift
//  CreaTuPizzaAW
//
//  Created by Xcaret A Ceniceros on 23/05/16.
//  Copyright © 2016 Xcaret Arellano Ceniceros. All rights reserved.
//

import WatchKit
import Foundation


class tipoMasa: WKInterfaceController {

    @IBOutlet var botonSiguiente: WKInterfaceButton!
    @IBOutlet var masa: WKInterfaceLabel!
    var tipoMasa:String=""
    var tamañoMasa:String=""
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        botonSiguiente.setEnabled(false)
        let c=context as! Valores
        tamañoMasa=c.valorTamaño
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

    @IBAction func elegirMasa() {
        let masaContexto=Valores(t: tamañoMasa, m: tipoMasa, q: "", i: "")
        pushControllerWithName("IdentificadorMasa", context: masaContexto)

    }
    @IBAction func valorMasa(value: Float) {
        switch value{
        case 1:
            tipoMasa="Masa Delgada"
            masa.setText(tipoMasa)
            botonSiguiente.setEnabled(true)
        case 2:
            tipoMasa="Masa Crujiente"
            masa.setText(tipoMasa)
        case 3:
            tipoMasa="Masa Gruesa"
            masa.setText(tipoMasa)
        default:
            tipoMasa="Elige la Masa"
            masa.setText(tipoMasa)
            botonSiguiente.setEnabled(false)
        }
        
    }
}
