//
//  NetworkManager.swift
//  WeatherApp
//
//  Created by Fito Toledano on 12/5/20.
//

import Foundation

final class NetworkManager {
    
    private init() {}
    
    static let shared = NetworkManager()
    
    let baseUrl = "https://www.metaweather.com/api/location/"
    
    func fetchCityWeather(cityCode: Int, completion: @escaping (Result<CityWeather, Error>) -> Void) {
        let endpoint = baseUrl + "\(cityCode)"
        guard let url = URL(string: endpoint) else { return }
        
        let dataTask = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error == nil {
                guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                    completion(.failure(error!))
                    return
                }
                
                guard let data = data else {
                    completion(.failure(error!))
                    return
                }
                
                do  {
                    let decoder = JSONDecoder()
                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                    let cityWeather = try decoder.decode(CityWeather.self, from: data)
                    completion(.success(cityWeather))
                } catch {
                    completion(.failure(error))
                }
            }
        }
        dataTask.resume()
    }
}
