//
//  ContentView.swift
//  WeatherApp
//
//  Created by Fito Toledano on 12/5/20.
//

import SwiftUI

struct ContentView: View {
    
    private var cityName: String = "Cupertino, CA"
 
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(cityName)
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                Spacer()
            }
        }
    }
}
















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
