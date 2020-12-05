//
//  CityLabel.swift
//  WeatherApp
//
//  Created by Fito Toledano on 12/5/20.
//

import SwiftUI

struct CityLabel: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}
