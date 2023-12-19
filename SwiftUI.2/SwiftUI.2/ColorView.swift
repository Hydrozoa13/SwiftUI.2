//
//  ColorView.swift
//  SwiftUI.2
//
//  Created by Евгений Лойко on 13.12.23.
//

import SwiftUI

struct ColorView: View {
    
    var redColor: Double
    var greenColor: Double
    var blueColor: Double
    
    var body: some View {
        Color(red: redColor / 255, green: greenColor / 255, blue: blueColor / 255)
            .frame(width: 300, height: 150)
            .clipShape(.rect(cornerRadius: 25))
            .overlay(RoundedRectangle(cornerRadius: 25)
                .stroke(lineWidth: 3)
                .foregroundColor(.white))
    }
}
