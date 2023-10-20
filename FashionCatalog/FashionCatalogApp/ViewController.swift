//
//  ViewController.swift
//  FashionCatalogApp
//
//  Created by MAC45 on 20/10/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var clothestableview: UITableView!
    
    let clothes: [ClothingItem] = [
        ClothingItem(name: "Black Jacket", price: 180.0, description: "Black jacket with inner pockets and leather lining. Essential to combine with light colored garments.", category: "Coats", isNew: true, image: "jacket"),
        
        ClothingItem(name: "Flower Dress", price: 95.0, description: "A white flowered dress which will make you look great, one of the best dresses of the line.", category: "Casual Dresses", isNew: false, image: "dress"),
        
        ClothingItem(name: "Sexy Dress", price: 120.0, description: "An ideal dress for parties, it will make you look like a goddess on the dance floor. With intense red color.", category: "Party Dresses", isNew: true, image: "shortDress"),
        
        ClothingItem(name: "Large Skirt", price: 80.0, description: "A beautiful skirt that will make you look divine in your walks with your boyfriend UwU.", category: "Casual Clothes", isNew: true, image: "skirt")
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        clothestableview.delegate = self
        clothestableview.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return clothes.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedClothingItem = clothes[indexPath.row]
            performSegue(withIdentifier: "segue", sender: selectedClothingItem)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue", let selectedClothingItem = sender as? ClothingItem, let destinationVC = segue.destination as? DetailViewController {
                    // Pasa los datos del elemento seleccionado al controlador de detalles
                    destinationVC.selectedClothingItem = selectedClothingItem
                }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ClothesTableViewCell
        
        let clothe = clothes[indexPath.row]
        
        cell.cImage.image = UIImage(named: clothe.image)
        
        cell.cTitle.text = clothe.name
        cell.cCategory.text = clothe.category
        cell.cPrice.text = String(clothe.price)
        cell.cIsNew.text = clothe.isNew ? "new" : "old"
      
        
        return cell
    }

}
