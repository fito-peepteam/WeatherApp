//
//  ContentView.swift
//  WeatherApp
//
//  Created by Fito Toledano on 12/5/20.
//

import SwiftUI

struct ContentView: View {
    
    // this data model would come from an API in the future.
    private var cityName: String = "Cupertino, CA"
    private var cityTemp: String = "76°"
    private var weekdays: [String] = ["TUE", "WED", "THU", "FRI", "SAT", "SUN"]
 
    var body: some View {
        ZStack {
            BackgroundView(topColor: Color.blue, bottomColor: Color("ligtBlue"))
            
            VStack {
                CityLabel(cityName: cityName)
                    .padding()
                
                VStack(spacing: 10) {
                    
                    CurrentDayView(imageName: "cloud.sun.fill", cityTemp: 74)
                    
                    HStack(spacing: 20) {
                        WeatherDayView(weekday: "TUE", imageName: "cloud.sun.fill", temp: 74)
                        WeatherDayView(weekday: "WED", imageName: "sun.max.fill", temp: 88)
                        WeatherDayView(weekday: "THU", imageName: "wind.snow", temp: 55)
                        WeatherDayView(weekday: "FRI", imageName: "snow", temp: 25)
                        WeatherDayView(weekday: "SAT", imageName: "tornado", temp: 42)
                    }
                    .padding()
                    
                    Spacer()
                    
                    FTDefaultButton(title: "Change day and time", backgroundColor: .white)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

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

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityLabel: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct CurrentDayView: View {
    
    var imageName: String
    var cityTemp: Int
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(cityTemp)°")
                .font(.system(size: 70, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}
