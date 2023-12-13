//
//  ContentView.swift
//  SwiftUI.2
//
//  Created by Евгений Лойко on 13.12.23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redSliderValue: Double = 100.0
    @State private var greenSliderValue: Double = 100.0
    @State private var blueSliderValue: Double = 100.0
    
    @State private var selection: CGColor = CGColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1)
    
    var body: some View {
        ZStack {
            Color(selection)
                .ignoresSafeArea()
            
            VStack {
                ColorSlider(sliderValue: $redSliderValue, color: .red)
                ColorSlider(sliderValue: $greenSliderValue, color: .green)
                ColorSlider(sliderValue: $blueSliderValue, color: .blue)
                
            }.padding()
        }
    }
}

#Preview {
    ContentView()
}
