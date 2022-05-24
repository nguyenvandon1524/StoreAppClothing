//
//  ViewController.swift
//  ClothingApp
//
//  Created by Don on 5/21/22.
//

import UIKit

class ProductController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView?
    
    var products = [
        Product(images: "clothing3", productName: "Viet Nam Traditional Clothing", rating: 5, productPrices: "125000", productDescription: "The product made in Viet Nam. This is a beatiful most in Viet Nam"),
        Product(images: "clothing2", productName: "THF Clothing", rating: 2, productPrices: "25000", productDescription: "The product made in Campodia."),
        Product(images: "clothing5", productName: "CHW Clothing", rating: 3, productPrices: "505000", productDescription: "The product made in Korea"),
        Product(images: "clothing6", productName: "MM21 Clothing", rating: 1, productPrices: "65000", productDescription: "The product made in Hong Kong")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell") as! ProductTableViewCell
        let product:Product = products[indexPath.row]
        cell.imagesProduct?.image = UIImage(named: product.images!)
        cell.lblProductName?.text = product.productName
        cell.lblProductPrices?.text = product.productPrices
        cell.lblProductDescription?.text = product.productDescription
        cell.lblRating?.text = ""
        for _ in 1...(product.rating ?? 1) {
            cell.lblRating?.text = (cell.lblRating?.text ?? "") + "★"
        }
        
        return cell
    }
}

