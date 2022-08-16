//
//  CatalogDataResult.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 09.08.2022.
//

import Foundation

struct CatalogDataResult: Codable {
    
    let result: Int
    let page_number: Int
    let products: [ProductResult]
    
    
    enum CodingKeys: String, CodingKey {
        case result
        case page_number = "page_number"
        case products
    }
}

struct ProductResult: Codable {
    
    let id_product: Int
    let product_name: String
    let product_price: Int

    enum CodingKeys: String, CodingKey {
        case id_product = "id_product"
        case product_name = "product_name"
        case product_price
    }
}
