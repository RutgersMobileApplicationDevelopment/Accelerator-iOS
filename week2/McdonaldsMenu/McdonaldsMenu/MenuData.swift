//
//  MenuData.swift
//  McdonaldsMenu
//
//  Created by Salman Fakhri on 10/17/18.
//  Copyright © 2018 Salman Fakhri. All rights reserved.
//

import Foundation
import UIKit

struct MenuItem {
    let name: String
    let calories: Int
    let price: Double
    let image: UIImage
}

struct Menu {
    let burgers: [MenuItem]
    let deserts: [MenuItem]
    let sections: Int
}



struct MenuData {
    private var burgerNames = ["Big Mac", "Quarter Pounder", "Double Quarter Pounder", "Cheese Burger", "Mcdouble"]
    private var desertNames = ["Chocolate shake", "Vanilla shake", "Strawberry shake", "Vanilla cone", "Hot Fudge Sundae", "McFlurry"]
    private var burgerPrices = [3.99, 3.79, 4.79, 1.00, 2.00]
    private var desertPrices = [2.19, 2.19, 2.19, 1.00, 1.29, 1.79]
    private var burgerCalories = [540, 530, 770, 300, 390]
    private var desertCalories = [530, 490, 500, 200, 380, 510]
    private var burgerImages = [#imageLiteral(resourceName: "bigmac"), #imageLiteral(resourceName: "quarter-pounder"), #imageLiteral(resourceName: "double-quarter-pounder"), #imageLiteral(resourceName: "cheese-burger"), #imageLiteral(resourceName: "mcdouble")]
    private var desertImages = [#imageLiteral(resourceName: "chocolate-shake"), #imageLiteral(resourceName: "vanilla-shake"), #imageLiteral(resourceName: "strawberry-shake"), #imageLiteral(resourceName: "vanilla-cone"), #imageLiteral(resourceName: "hot-fudge-sundae"), #imageLiteral(resourceName: "mcflurry")]
    
    let menu: Menu
    
    init() {
        var burgers: [MenuItem] = []
        var deserts: [MenuItem] = []
        
        for (i, burgerName) in burgerNames.enumerated() {
            let item = MenuItem(name: burgerName, calories: burgerCalories[i], price: burgerPrices[i], image: burgerImages[i])
            burgers.append(item)
        }
        
        for (i, desertName) in desertNames.enumerated() {
            let item = MenuItem(name: desertName, calories: desertCalories[i], price: desertPrices[i], image: desertImages[i])
            deserts.append(item)
        }
        
        menu = Menu(burgers: burgers, deserts: deserts, sections: 2)
    }
    
}


