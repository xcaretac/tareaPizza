//
//  Valores.swift
//  CreaTuPizzaAW
//
//  Created by Xcaret A Ceniceros on 23/05/16.
//  Copyright © 2016 Xcaret Arellano Ceniceros. All rights reserved.
//

import WatchKit

class Valores: NSObject {
    var valorTamaño:String=""
    var valorMasa:String=""
    var valorQueso:String=""
    var valorIngredientes:String=""
    
    init(t:String, m:String, q:String,i:String) {
        valorTamaño=t
        valorMasa=m
        valorQueso=q
        valorIngredientes=i
    }

}
