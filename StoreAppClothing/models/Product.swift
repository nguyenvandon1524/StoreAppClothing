//
//  Product.swift
//  ClothingApp
//
//  Created by Don on 5/21/22.
//

import Foundation
class Product {
    var images:String?
    var productName:String?
    var rating:Int?
    var productPrices:String?
    var productDescription:String?
    convenience init(images:String, productName:String, rating:Int, productPrices:String, productDescription:String){
        self.init()
        self.images = images
        self.productName = productName
        self.rating = rating
        self.productPrices = productPrices
        self.productDescription = productDescription
    }
}
