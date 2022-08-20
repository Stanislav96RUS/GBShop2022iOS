//
//  GetGoodByIdResult.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 09.08.2022.
//

import Foundation

struct GetGoodByIdResult: Codable {

    let result: Int
    let productName: String
    let productPrice: Int
    let productDescription: String
}
