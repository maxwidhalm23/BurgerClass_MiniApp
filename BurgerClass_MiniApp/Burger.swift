//
//  Burger.swift
//  BurgerClass_MiniApp
//
//  Created by MAX WIDHALM on 10/10/22.
//

import Foundation

enum CookedLevel {
    case rare, medium, wellDone
}

public class Burger {
    
    var type : String
    var cooked : CookedLevel
    var condiment : String
    var pickle : String
    var onion : String
    var cheese : String
    var tomato : String
    var lettuce : String
    var mayo : String
    
    init(type:String, cooked:CookedLevel, condiment:String, pickle:String, onion:String, cheese:String, tomato:String, lettuce:String, mayo:String) {
        self.type = type
        self.cooked = cooked
        
        self.condiment = condiment
        self.pickle = pickle
        self.onion = onion
        self.cheese = cheese
        self.tomato = tomato
        self.lettuce = lettuce
        self.mayo = mayo
    }
    
    func getCooked() -> String {
        if cooked == CookedLevel.rare {
            return "Rare"
        } else if cooked == CookedLevel.medium {
            return "Medium"
        } else if cooked == CookedLevel.wellDone {
            return "Well Done"
        }
        return ""
    }
    
    func toString() -> String {
        return "\(getCooked()) \(type) with \(condiment), \(pickle), \(onion), \(cheese), \(tomato), \(lettuce), and \(mayo)"
    }
    
}
