//
//  User.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 04.08.2022.
//

import Foundation

struct User: Codable {
    let id: Int
    let login: String
    let name: String
    let lastname: String
    let email: String?
    let gender: String?
    let creditcard: Int?
    let bio: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "id_user"
        case login = "user_login"
        case name = "user_name"
        case lastname = "user_lastname"
        case email = "user_email"
        case gender = "user_gender"
        case creditcard = "user_creditcard"
        case bio = "user_bio"
    }
}
