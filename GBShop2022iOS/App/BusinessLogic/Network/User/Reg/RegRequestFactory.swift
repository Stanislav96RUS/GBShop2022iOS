//
//  RegRequestFactory.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 04.08.2022.
//

import Foundation
import Alamofire

protocol RegRequestFactory {
    func registration(idUser: Int, userName: String, password: String, email: String, gender: String, creditCard: Int, bio: String, completionHandler: @escaping
    (AFDataResponse<RegistrationResult>) -> Void)
}

