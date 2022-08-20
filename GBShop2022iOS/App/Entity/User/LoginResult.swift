//
//  LoginResult.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 04.08.2022.
//

import Foundation

struct LoginResult: Codable {

    let result: Int
    let idUser: Int
    let userName: String
    let password: String
}
