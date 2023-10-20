//
//  DetailViewController.swift
//  FashionCatalogApp
//
//  Created by MAC45 on 20/10/23.
//

import UIKit

class DetailViewController: UIViewController {

    
    var selectedClothingItem: ClothingItem?

    @IBOutlet weak var sName: UILabel!
    
    
    @IBOutlet weak var sImage: UIImageView!
    @IBOutlet weak var sPrice: UILabel!
    
    
    @IBOutlet weak var sCategory: UILabel!
    
    @IBOutlet weak var sIsNew: UILabel!
    
    @IBOutlet weak var sDescription: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let clothingItem = selectedClothingItem {
            // Configura los elementos de la interfaz de usuario con la información del clothingItem
            sName.text = clothingItem.name
            sImage.image = UIImage(named: clothingItem.image)
            sPrice.text = "S/\(clothingItem.price)"
            sCategory.text = clothingItem.category
            sIsNew.text = clothingItem.isNew ? "new" : "old"
            sDescription.text = clothingItem.description
        }
    }
}
