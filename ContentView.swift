//
//  ContentView.swift
//  WeatherApp
//
//  Created by Fito Toledano on 12/5/20.
//

import SwiftUI

struct ContentView: View {
 
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Cupertino, CA")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
            }
        }
    }
}











struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
