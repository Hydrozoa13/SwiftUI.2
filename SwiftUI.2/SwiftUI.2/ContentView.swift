//
//  ContentView.swift
//  SwiftUI.2
//
//  Created by Евгений Лойко on 13.12.23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: CGColor = CGColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1)
    
    @State private var redSliderValue: Double = 100.0
    @State private var greenSliderValue: Double = 100.0
    @State private var blueSliderValue: Double = 100.0
    
    @State private var redColor = 100.0
    @State private var greenColor = 100.0
    @State private var blueColor = 100.0
    
    var body: some View {
        ZStack {
            Color(selection)
                .ignoresSafeArea()
            
            VStack {
                ColorView(redColor: redSliderValue,
                          greenColor: greenSliderValue,
                          blueColor: blueSliderValue)
                .padding()
                
                ColorView(redColor: redColor,
                          greenColor: greenColor,
                          blueColor: blueColor)
                .padding()
                
                ColorSlider(sliderValue: $redSliderValue, color: .red)
                ColorSlider(sliderValue: $greenSliderValue, color: .green)
                ColorSlider(sliderValue: $blueSliderValue, color: .blue)
                Spacer()
                
                Button(action: { saveColor() }, label: {
                    Text("SAVE COLOR")
                })
                .buttonStyle(.borderedProminent)
                .bold()
                Spacer()
            }.padding()
        }
    }
}

extension ContentView {
    private func saveColor() {
        redColor = redSliderValue
        greenColor = greenSliderValue
        blueColor = blueSliderValue
    }
}

#Preview {
    ContentView()
}
