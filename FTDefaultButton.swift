//
//  FTDefaultButton.swift
//  WeatherApp
//
//  Created by Fito Toledano on 12/5/20.
//

import SwiftUI

struct FTDefaultButton: View {
    
    var title: String
    var backgroundColor: Color
    
    var body: some View {
        Button(action: {
            print(123)
        }, label: {
            Text(title)
                .fontWeight(.bold)
                .frame(width: 280, height: 50)
                .background(Color.white)
                .cornerRadius(10)
        })
    }
}
