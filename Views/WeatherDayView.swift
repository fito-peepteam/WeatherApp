//
//  WeatherDayView.swift
//  WeatherApp
//
//  Created by Fito Toledano on 12/5/20.
//

import SwiftUI

struct WeatherDayView: View {
    
    var weekday: String
    var imageName: String
    var temp: Int
    
    var body: some View {
        VStack {
            Text(weekday)
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temp)°")
                .foregroundColor(.white)
        }
    }
}
