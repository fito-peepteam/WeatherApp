//
//  BackgroundView.swift
//  WeatherApp
//
//  Created by Fito Toledano on 12/5/20.
//

import SwiftUI

struct BackgroundView: View {
    
    @Binding var isNighttime: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNighttime ? .black : .blue,
                                                   isNighttime ? .gray : Color("lightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}
