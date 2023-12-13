//
//  ContentView.swift
//  SwiftUI.2
//
//  Created by Евгений Лойко on 13.12.23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sliderValue: Double = 100.0
    @State private var selection: CGColor = CGColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
    
    var body: some View {
        ZStack {
            Color(selection)
                .ignoresSafeArea()
            
            VStack {
                ColorSlider(sliderValue: $sliderValue, color: .white)
                
            }.padding()
        }
    }
}

#Preview {
    ContentView()
}
