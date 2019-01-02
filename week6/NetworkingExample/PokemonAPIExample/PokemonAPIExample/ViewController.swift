//
//  ViewController.swift
//  PokemonAPIExample
//
//  Created by Salman Fakhri on 11/14/18.
//  Copyright © 2018 Salman Fakhri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var names = ["sal", "vin", "sha"]
    let api = PokemonDataSource()
    var pokemon: [Pokemon] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
        
        api.getPokemon { (pokemonData) in
            self.pokemon = pokemonData.results
            self.tableView.reloadData()
            //DispatchQueue.main.async {
              //  self.tableView.reloadData()
            //}
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemon.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonCell", for: indexPath)
        cell.textLabel?.text = pokemon[indexPath.row].name
        
        //code for getting image from url
        let url = URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/\(indexPath.row + 1).png")
        let data = try? Data(contentsOf: url!) //make sure your image in this url does exist, otherwise unwrap in a if let check / try-catch
        guard let imageData = data else {
            return cell
        }
        cell.imageView?.image = UIImage(data: imageData)
    
        return cell
    }
    
}

