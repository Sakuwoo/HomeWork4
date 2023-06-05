//
//  DetailViewController.swift
//  HomeWork4
//
//  Created by Sevara on 3/6/23.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var image2: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var room: UILabel!
    
    @IBOutlet weak var color: UILabel!
    
    @IBOutlet weak var material: UILabel!
    
    @IBOutlet weak var dimensions: UILabel!
    
    
    @IBOutlet weak var weight: UILabel!
    
    
    
    var mebel: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        image2.image = UIImage(named: mebel?.imageBig ?? "")
        name.text = mebel?.name
        price.text = mebel?.price
        room.text = mebel?.room
        color.text = mebel?.color
        material.text = mebel?.material
        dimensions.text = mebel?.dimensions
        weight.text = mebel?.weight
    
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
