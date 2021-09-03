//
//  pokeinfo.swift
//  tabletest
//
//  Created by 侯彥廷 on 2021/8/25.
//

import UIKit

class pokeinfo: UITableViewCell {
    
    @IBOutlet weak var PokeImageView: UIImageView!
    @IBOutlet weak var PokeNameTitle: UILabel!
    
    func setPokemon(pokemon:Poke){
        PokeImageView.image = pokemon.image
        PokeNameTitle.text = pokemon.title
        
    }
}
