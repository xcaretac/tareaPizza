//
//  confirmarOrden.swift
//  CreaTuPizzaAW
//
//  Created by Xcaret A Ceniceros on 23/05/16.
//  Copyright © 2016 Xcaret Arellano Ceniceros. All rights reserved.
//

import WatchKit
import Foundation


class confirmarOrden: WKInterfaceController {

    @IBOutlet var orden: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c=context as! Valores
        let paso="\(c.valorTamaño)\n\(c.valorMasa)\n\(c.valorQueso)\n\(c.valorIngredientes)"
        orden.setText(paso)
        
        
        
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

}
