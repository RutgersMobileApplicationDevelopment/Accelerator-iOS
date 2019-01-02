//
//  PokemonDataSource.swift
//  PokemonAPIExample
//
//  Created by Salman Fakhri on 11/14/18.
//  Copyright © 2018 Salman Fakhri. All rights reserved.
//

import Foundation

struct Pokemon: Codable {
    let name: String
    let url: String
}

struct PokemonData: Codable {
    let results: [Pokemon]
}

struct PokemonDataSource {
    
    let urlString = "https://pokeapi.co/api/v2/pokemon/"
    
    func getPokemon(completion: @escaping (PokemonData)->())  {
        guard let url = URL(string: urlString) else { return }
        

        let request = URLRequest(url: url)
        let session = URLSession(configuration: URLSessionConfiguration.default)
        
        let task = session.dataTask(with: request) { (data, response, error) in
            if let jsonData = data {
                let decoder = JSONDecoder()
                do {
                    let parsed = try decoder.decode(PokemonData.self, from: jsonData)
                    completion(parsed)
                } catch {
                    print(error)
                }
            } else {
                print("something went wrong")
            }
            
        }
        task.resume()
    }
    
    
}
