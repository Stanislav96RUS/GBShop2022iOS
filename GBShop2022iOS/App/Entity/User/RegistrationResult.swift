//
//  RegistrationResult.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 04.08.2022.
//

import Foundation

struct RegistrationResult: Codable {

    let result: Int
    let userMessage: String
    let errorMessage: String?

}
