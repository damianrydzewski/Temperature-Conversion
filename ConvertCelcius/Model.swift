//
//  Model.swift
//  ConvertCelcius
//
//  Created by Damian on 14/06/2022.
//

import Foundation
import SwiftUI

let arrayOfUnits: [TempUnit] = [.celsius, .kelvin, .fahrenheit]

enum TempUnit: String {
    case celsius = "Celsius"
    case kelvin = "Kelvin"
    case fahrenheit = "Fahrenheit"
}

func recivingData(_ selectedUnit: TempUnit, _ selectedUnit2: TempUnit, _ recivedData: Double) -> Double {
    if selectedUnit == .celsius && selectedUnit2 == .kelvin {
        return recivedData + 274.15
    }
    if selectedUnit == .celsius && selectedUnit2 == .fahrenheit {
        return recivedData * 1.8 + 32.0
    }
    if selectedUnit == .celsius && selectedUnit2 == .celsius{
        return recivedData
    }
    if selectedUnit == .kelvin && selectedUnit2 == .celsius {
        return recivedData - 274.15
    }
    if selectedUnit == .kelvin && selectedUnit2 == .kelvin {
        return recivedData
    }
    if selectedUnit == .kelvin && selectedUnit2 == .fahrenheit {
        return (recivedData - 273)*1.8 + 32
    }
    if selectedUnit == .kelvin && selectedUnit2 == .celsius {
        return (recivedData - 32) / 1.8
    }
    if selectedUnit == .fahrenheit && selectedUnit2 == .kelvin {
        return (recivedData - 32)/1.8 + 273
    } else {
        return recivedData
    }
}
 
