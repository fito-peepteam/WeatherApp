//
//  FTDefaultButton.swift
//  WeatherApp
//
//  Created by Fito Toledano on 12/5/20.
//

import SwiftUI

struct FTDefaultButtonView: View {
    
    var title: String
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .fontWeight(.bold)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .cornerRadius(10)
    }
}
