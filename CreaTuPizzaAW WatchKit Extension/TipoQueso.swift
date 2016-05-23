//
//  TipoQueso.swift
//  CreaTuPizzaAW
//
//  Created by Xcaret A Ceniceros on 23/05/16.
//  Copyright © 2016 Xcaret Arellano Ceniceros. All rights reserved.
//

import WatchKit
import Foundation


class TipoQueso: WKInterfaceController {
    @IBOutlet var queso: WKInterfaceLabel!

    @IBOutlet var botonSiguiente: WKInterfaceButton!
    var tamañoQueso:String=""
    var masaQueso:String=""
    var tipoDeQueso:String=""
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        botonSiguiente.setEnabled(false)
        let c=context as! Valores
        tamañoQueso=c.valorTamaño
        masaQueso=c.valorMasa

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

    @IBAction func elegirQueso() {
        let quesoContexto=Valores(t: tamañoQueso, m: masaQueso, q: tipoDeQueso, i: "")
        pushControllerWithName("IdentificadorQueso", context: quesoContexto)
    }
    @IBAction func valoresQueso(value: Float) {
        switch value{
        case 1:
            tipoDeQueso="Mozarella"
            queso.setText(tipoDeQueso)
            botonSiguiente.setEnabled(true)
        case 2:
            tipoDeQueso="Parmesano"
            queso.setText(tipoDeQueso)
        case 3:
            tipoDeQueso="Cheddar"
            queso.setText(tipoDeQueso)
        case 4:
            tipoDeQueso="Sin Queso"
            queso.setText(tipoDeQueso)
        default:
            tipoDeQueso="Elige el Queso"
            queso.setText(tipoDeQueso)
            botonSiguiente.setEnabled(false)
        }
    }
}
