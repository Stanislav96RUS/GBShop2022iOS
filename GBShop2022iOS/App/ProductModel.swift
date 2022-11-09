//
//  ProductModel.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 01.09.2022.
//

import Foundation

//class Product: Identifiable {
//    
//    let id: UUID = UUID()
//    let name: String
//    let imageName: String
//    let productPrice: Int
//    
//    internal init(name: String, imageName: String, productPrice: Int) {
//        self.name = name
//        self.imageName = imageName
//        self.productPrice = productPrice
//        
//    }
//}

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Smartphone", image: "smartphone", price: 154000),
                   Product(name: "Mouse", image: "mouse", price: 3000),
                   Product(name: "Notebook", image: "notebook", price: 54000),
                   Product(name: "Camera", image: "camera", price: 43000)]
