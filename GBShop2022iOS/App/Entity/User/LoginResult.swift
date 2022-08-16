//
//  LoginResult.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 04.08.2022.
//

import Foundation

struct LoginResult: Codable {
    
    let result: Int
    let id_user: Int?
    let username: String?
    let password: String?
}
