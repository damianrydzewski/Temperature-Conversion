//
//  ContentView.swift
//  ConvertCelcius
//
//  Created by Damian on 09/05/2022.
//

import SwiftUI

struct ContentView: View {
    @FocusState private var isFocused: Bool
    @State private var recivedData: Double = 0.0
    @State private var selectedUnit = TempUnit.celsius
    @State private var selectedUnit2 = TempUnit.celsius
    
    var result: Double {
        recivingData(selectedUnit, selectedUnit2, recivedData)
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Option 1", selection: $selectedUnit) {
                        ForEach(arrayOfUnits, id: \.self){
                            Text($0.rawValue)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("From")
                }
                
                Section {
                    Picker("Option 2", selection: $selectedUnit2) {
                        ForEach(arrayOfUnits, id: \.self){
                            Text($0.rawValue)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("To")
                }
                
                Section {
                TextField("Type here", value: $recivedData, format: .number)
                    .keyboardType(.decimalPad)
                    .focused($isFocused)
                } header: {
                    Text("Enter the value")
                }
                
                Section {
                    Text(result, format: .number)
                } header: {
                    Text("Result")
                }
                
            }
            .navigationTitle("Temp. Conversion")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        isFocused = false
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

