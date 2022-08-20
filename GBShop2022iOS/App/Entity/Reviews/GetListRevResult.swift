//
//  GetListRevResult.swift.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 19.08.2022.
//

import Foundation

struct GetListRevResult: Codable {
    
    var result: Int
    var userMessage: String
    var listRev: [Reviews]
    
    enum CodingKeys: String, CodingKey {
        case result
        case userMessage
        case listRev
    }
}

struct Reviews: Codable {
    
    var idReview: Int
    var textReview: String
    
    enum CodingKeys: String, CodingKey {
        case idReview
        case textReview
    }
}
