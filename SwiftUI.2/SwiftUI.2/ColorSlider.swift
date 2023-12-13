//
//  ColorSlider.swift
//  SwiftUI.2
//
//  Created by Евгений Лойко on 13.12.23.
//

import SwiftUI

struct ColorSlider: View {
    
    @Binding var sliderValue: Double
    let color: Color
    
    var body: some View {
        HStack {
            Text("\(lround(sliderValue))").foregroundColor(.white)
            Slider(value: $sliderValue, in: 0 ... 255, step: 1)
        }.padding(.horizontal)
    }
}
