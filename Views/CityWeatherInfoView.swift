//
//  CityWeatherInfoView.swift
//  WeatherApp
//
//  Created by Fito Toledano on 12/5/20.
//

import SwiftUI

struct CityWeatherInfoView: View {
    
    var cityCode: Int
    
    @State private var cityWeather: CityWeather? = nil
    @State private var isNighttime = false
    
    func getWeather() {
        NetworkManager.shared.fetchCityWeather(cityCode: cityCode) { result in
            switch result {
            case .success(let cityWeather):
                self.cityWeather = cityWeather
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    var body: some View {
        ZStack {
            BackgroundView(isNighttime: $isNighttime)
            
            VStack {
                CityLabel(cityName: cityWeather?.title ?? "loading...")
                    .padding()
                
                VStack(spacing: 10) {
                    
                    CurrentDayView(imageName: "cloud.sun.fill", cityTemp: cityWeather?.woeid ?? 69)
                    
                    HStack(spacing: 20) {
                        WeatherDayView(weekday: "TUE", imageName: isNighttime ? "moon.stars.fill":"cloud.sun.fill", temp: 74)
                        WeatherDayView(weekday: "WED", imageName: isNighttime ? "moon.stars.fill":"sun.max.fill", temp: 88)
                        WeatherDayView(weekday: "THU", imageName: "wind.snow", temp: 55)
                        WeatherDayView(weekday: "FRI", imageName: "snow", temp: 25)
                        WeatherDayView(weekday: "SAT", imageName: "tornado", temp: 42)
                    }
                    .padding()
                                        
                    VStack(spacing: 20) {
                        Button(action: {
                            isNighttime.toggle()
                        }, label: {
                            FTDefaultButtonView(title: "Toggle Dark Mode", backgroundColor: .white)
                        })
                        
                        Button(action: {
                            getWeather()
                        }, label: {
                            FTDefaultButtonView(title: "Reload", backgroundColor: .white)
                        })
                    }
                    Spacer()
                }
            }
        }
    }
}

