//
//  GetGoodByIdResult.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 09.08.2022.
//

import Foundation

struct GetGoodByIdResult: Codable {
    
    let result: Int
    let product_name: String
    let product_price: Int
    let product_description: String
}
