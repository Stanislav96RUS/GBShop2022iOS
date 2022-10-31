//
//  User.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 04.08.2022.
//

import Foundation

struct User: Codable {

    let idUser: Int
    let userName: String
    let password: String
    let email: String?
    let gender: String?
    let creditCard: String?
    let bio: String?

    enum CodingKeys: String, CodingKey {
            case idUser
            case userName
            case password
            case email
            case gender
            case creditCard
            case bio
        }

//    let id: Int
//    let login: String
//    let name: String
//    let lastname: String
//    let email: String?
//    let gender: String?
//    let creditcard: Int?
//    let bio: String?
//
//    enum CodingKeys: String, CodingKey {
//        case id = "idUser"
//        case login = "user_login"
//        case name = "user_name"
//        case lastname = "user_lastname"
//        case email = "user_email"
//        case gender = "user_gender"
//        case creditcard = "user_creditcard"
//        case bio = "user_bio"
//    }
}
