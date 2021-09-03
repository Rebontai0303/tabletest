//
//  poketable.swift
//  tabletest
//
//  Created by 侯彥廷 on 2021/8/24.
//

import UIKit

class poketable: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var pokes: [Poke] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        pokes = createArray()
    }
    
    
    func createArray() -> [Poke] {

        let ppic1 = Poke(image: UIImage(named:"pk001")!, title: "妙蛙種子")
        let ppic2 = Poke(image: UIImage(named:"pk002")!, title: "My Dev Setup")
        let ppic3 = Poke(image: UIImage(named:"pk003")!, title: "iOS Interview")
        let ppic4 = Poke(image: UIImage(named:"pk004")!, title: "Buttons in TableViews")
        let ppic5 = Poke(image: UIImage(named:"pk005")!, title: "UIPickerView Tutorial")
        
        
        return [ppic1, ppic2, ppic3, ppic4, ppic5]
    }
    

}

extension poketable: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokes.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let pokemon = pokes[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokeinfo") as! pokeinfo
        
        cell.setPokemon(pokemon: pokemon)
        
        return cell
    }
}





