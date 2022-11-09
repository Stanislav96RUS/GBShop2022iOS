//
//  CatalogDataResult.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 09.08.2022.
//

import Foundation

struct CatalogDataResult: Codable {

    let result: Int
    let pageNumber: Int
    let products: [ProductResult]

    enum CodingKeys: String, CodingKey {
        case result
        case pageNumber
        case products
    }
}

struct ProductResult: Codable {

    let idProduct: Int
    let productName: String
    let productPrice: Int

    enum CodingKeys: String, CodingKey {
        case idProduct
        case productName
        case productPrice
    }
}
