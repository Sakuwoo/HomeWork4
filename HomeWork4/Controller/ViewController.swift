//
//  ViewController.swift
//  HomeWork4
//
//  Created by Sevara on 3/6/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var table: UITableView!
    
    var products: [Product] = [
        Product(imageSmoll: "readingTable", mebelType: "Table", item: "121 items", imageBig: "table", name: "IDÅSEN", price: "€229", room: "Student room", color: "Brown", material: "Particleboard, Ash veneer", dimensions: "140cmx70cmx75cm", weight: "10kg"),
        Product(imageSmoll: "Kitchenware", mebelType: "Kitchenware", item: "435 items", imageBig: "kichen", name: "", price: "€1.132.54", room: "Kitchen", color: "White", material: "Fibreboard, Polyester paint", dimensions: "240cm-60cm-228cm", weight: "120kg"),
        Product(imageSmoll: "furniture", mebelType: "Furniture", item: "520 items", imageBig: "furnit", name: "", price: "€1.098", room: "Living room", color: "Black", material: "Polyester wadding, Highly", dimensions: "267cm-98cm-68cm", weight: "30kg")
        ]
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }
}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let model = products[indexPath.row]
        cell.name1.text = model.mebelType
        cell.name2.text = model.item
        cell.tableImage.image = UIImage(named: model.imageSmoll)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 240
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        vc.mebel = products[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}
