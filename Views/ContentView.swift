//
//  ContentView.swift
//  WeatherApp
//
//  Created by Fito Toledano on 12/5/20.
//

import SwiftUI

struct ContentView: View {
    
    let defaultCityWeather = CityWeather(title: "Madrid", woeid: 69)
    
    var body: some View {
        TabView {
            CityWeatherInfoView(cityCode: 968019)
                .tabItem { Text("Brussels") }
            CityWeatherInfoView(cityCode: 766273)
                .tabItem { Text("Madrid") }
            CityWeatherInfoView(cityCode: 2357536)
                .tabItem { Text("Austin, TX") }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}








